analog_input_configs = Dict{Any,Any}(
    "referenced single-ended" => Val_RSE,
    "non-referenced single-ended" => Val_NRSE,
    "differential" => Val_Diff )

function analog_input(channel::ASCIIString; terminal_config="differential", range=nothing)
    t = AITask()
    analog_input(t, channel, terminal_config=terminal_config, range=range)
    t
end

function analog_input(t::AITask, channel::ASCIIString;
        terminal_config="differential", range=nothing)
    if range==nothing
        device::ASCIIString = split(channel,'/')[1]
        range=float(analog_input_ranges(device)[end,:])
    end
    catch_error( CreateAIVoltageChan(t.th,
            pointer(channel),
            pointer(""),
            analog_input_configs[terminal_config],
            range[1], range[2],
            Val_Volts,
            convert(Ptr{UInt8},C_NULL)) )
    nothing
end

function analog_output(channel::ASCIIString; range=nothing)
    t = AOTask()
    analog_output(t, channel, range=range)
    t
end

function analog_output(t::AOTask, channel::ASCIIString; range=nothing)
    if range==nothing
        device::ASCIIString = split(channel,'/')[1]
        range=float(analog_output_ranges(device)[end,:])
    end
    catch_error( CreateAOVoltageChan(t.th,
            pointer(channel),
            pointer(""),
            range[1], range[2],
            Val_Volts,
            convert(Ptr{UInt8},C_NULL)) )
    nothing
end

read_analog_cfunctions = Dict{Any,Any}(
    (Float64 => ReadAnalogF64),
    (Int16 => ReadBinaryI16),
    (Int32 => ReadBinaryI32),
    (UInt16 => ReadBinaryU16),
    (UInt32 => ReadBinaryU32) )

function read(t::AITask, precision::DataType, num_samples_per_chan::Integer = -1)
    num_channels = getproperties(t)["NumChans"][1]
    num_samples_per_chan_read = Int32[0]
    if num_samples_per_chan==-1;  num_samples_per_chan=1024;  end
    data = Array(precision, num_samples_per_chan*num_channels)
    catch_error( read_analog_cfunctions[precision](t.th,
        convert(Int32,num_samples_per_chan),
        1.0,
        reinterpret(Bool32,Val_GroupByChannel),
        pointer(data),
        convert(UInt32,num_samples_per_chan*num_channels),
        pointer(num_samples_per_chan_read),
        reinterpret(Ptr{Bool32},C_NULL)) )
    data = data[1:num_samples_per_chan_read[1]*num_channels]
    num_channels==1 ? data : reshape(data, (num_samples_per_chan, convert(Int64,num_channels)))
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
            pointer(data),
            pointer(num_samples_per_chan_written),
            reinterpret(Ptr{Bool32},C_NULL)) )
        num_samples_per_chan_written[1]
    end
    @eval write(t::AOTask, data::Vector{$types}) =
        write(t, reshape(data,(length(data),1)))
end
