analog_input_configs = Dict{AbstractString,Number}(
    "referenced single-ended" => Val_RSE,
    "non-referenced single-ended" => Val_NRSE,
    "pseudo-differential" => Val_PseudoDiff,
    "differential" => Val_Diff )

"""
`analog_input(channel, config, range) -> task`

`analog_input(task, channel, config, range)`

create an analog input channel, and a new task if one is not specified
"""
function analog_input(channel::String; terminal_config="differential", range=nothing)
    t = AITask()
    analog_input(t, channel, terminal_config=terminal_config, range=range)
    t
end

function analog_input(t::AITask, channel::String;
        terminal_config="differential", range=nothing)
    if range==nothing
        device::String = split(channel,'/')[1]
        range=float(analog_input_ranges(device)[end,:])
    end
    catch_error( CreateAIVoltageChan(t.th,
            Ref(codeunits(channel),1),
            Ref(codeunits(""), 1),
            analog_input_configs[terminal_config],
            range[1], range[2],
            Val_Volts,
            convert(Ptr{UInt8},C_NULL)) )
    nothing
end

"""
`analog_output(channel, range) -> task`

`analog_output(task, channel, range)`

create an analog output channel, and a new NIDAQ task if one is not specified
"""
function analog_output(channel::String; range=nothing)
    t = AOTask()
    analog_output(t, channel, range=range)
    t
end

function analog_output(t::AOTask, channel::String; range=nothing)
    if range==nothing
        device::String = split(channel,'/')[1]
        range=float(analog_output_ranges(device)[end,:])
    end
    catch_error( CreateAOVoltageChan(t.th,
            Ref(codeunits(channel),1),
            Ref(codeunits(""),1),
            range[1], range[2],
            Val_Volts,
            convert(Ptr{UInt8},C_NULL)) )
    nothing
end

read_analog_cfunctions = Dict{Type,Function}(
    Float64 => ReadAnalogF64,
    Int16 => ReadBinaryI16,
    Int32 => ReadBinaryI32,
    UInt16 => ReadBinaryU16,
    UInt32 => ReadBinaryU32 )

function read(t::AITask, precision::DataType, num_samples_per_chan::Integer = -1)
    num_channels = getproperties(t)["NumChans"][1]
    num_samples_per_chan_read = Int32[0]
    buffer_size = num_samples_per_chan==-1 ? 1024 : num_samples_per_chan
    data = Array{precision}(undef, buffer_size*num_channels)
    catch_error( read_analog_cfunctions[precision](t.th,
        convert(Int32,num_samples_per_chan),
        1.0,
        reinterpret(Bool32,Val_GroupByChannel),
        Ref(data,1),
        convert(UInt32,buffer_size*num_channels),
        Ref(num_samples_per_chan_read,1),
        reinterpret(Ptr{Bool32},C_NULL)) )
    data = data[1:num_samples_per_chan_read[1]*num_channels]
    num_channels==1 ? data : reshape(data, (div(length(data),num_channels), convert(Int64,num_channels)))
end

for (cfunction, types) in (
        (WriteAnalogF64, Float64),
        (WriteBinaryI16, Int16),
        (WriteBinaryI32, Int32),
        (WriteBinaryU16, UInt16),
        (WriteBinaryU32, UInt32))
    @eval function write(t::AOTask, data::Matrix{$types})
        num_samples_per_chan::Int32 = size(data, 1)
        data = reshape(data, length(data))
        num_samples_per_chan_written = Int32[0]
        catch_error( $cfunction(t.th,
            num_samples_per_chan,
            reinterpret(Bool32, UInt32(false)),
            1.0,
            reinterpret(Bool32,Val_GroupByChannel),
            Ref(data,1),
            Ref(num_samples_per_chan_written,1),
            reinterpret(Ptr{Bool32},C_NULL)) )
        num_samples_per_chan_written[1]
    end
    @eval write(t::AOTask, data::Vector{$types}) =
        write(t, reshape(data,(length(data),1)))
end
