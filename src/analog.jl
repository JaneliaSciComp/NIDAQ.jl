analog_input_configs = {
    "referenced single-ended" => convert(Int32,DAQmx_Val_RSE),
    "non-referenced single-ended" => convert(Int32,DAQmx_Val_NRSE),
    "differential" => convert(Int32,DAQmx_Val_Diff) }

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
    catch_error( DAQmxCreateAIVoltageChan(t.th,
            convert(Ptr{Uint8},channel),
            convert(Ptr{Uint8},""),
            analog_input_configs[terminal_config],
            range[1], range[2],
            convert(Int32,DAQmx_Val_Volts),
            convert(Ptr{Uint8},C_NULL)) )
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
    catch_error( DAQmxCreateAOVoltageChan(t.th,
            convert(Ptr{Uint8},channel),
            convert(Ptr{Uint8},""),
            range[1], range[2],
            convert(Int32,DAQmx_Val_Volts),
            convert(Ptr{Uint8},C_NULL)) )
    nothing
end

read_analog_cfunctions = {
    (Float64 => DAQmxReadAnalogF64),
    (Int16 => DAQmxReadBinaryI16),
    (Int32 => DAQmxReadBinaryI32),
    (Uint16 => DAQmxReadBinaryU16),
    (Uint32 => DAQmxReadBinaryU32) }

function read(t::AITask, precision::DataType, num_samples_per_chan::Integer = -1)
    num_channels = getproperties(t)["NumChans"][1]
    num_samples_per_chan_read = Int32[0]
    if num_samples_per_chan==-1;  num_samples_per_chan=1024;  end
    data = Array(precision, num_samples_per_chan*num_channels)
    catch_error( read_analog_cfunctions[precision](t.th,
        convert(Int32,num_samples_per_chan),
        1.0,
        reinterpret(Bool32,uint32(DAQmx_Val_GroupByChannel)),
        convert(Ptr{precision},data),
        convert(Uint32,num_samples_per_chan*num_channels),
        convert(Ptr{Int32},num_samples_per_chan_read),
        reinterpret(Ptr{Bool32},C_NULL)) )
    data = data[1:num_samples_per_chan_read[1]*num_channels]
    num_channels==1 ? data : reshape(data, (num_samples_per_chan, convert(Int64,num_channels)))
end

for (cfunction, types) in (
        (DAQmxWriteAnalogF64, Float64),
        (DAQmxWriteBinaryI16, Int16),
        (DAQmxWriteBinaryI32, Int32),
        (DAQmxWriteBinaryU16, Uint16),
        (DAQmxWriteBinaryU32, Uint32))
    @eval function write(t::AOTask, data::Matrix{$types})
        num_samples_per_chan::Int32 = size(data, 1)
        data = reshape(data, length(data))
        num_samples_per_chan_written = Int32[0]
        catch_error( $cfunction(t.th,
            num_samples_per_chan,
            reinterpret(Bool32, uint32(false)),
            1.0,
            reinterpret(Bool32,uint32(DAQmx_Val_GroupByChannel)),
            convert(Ptr{$types},data),
            convert(Ptr{Int32},num_samples_per_chan_written),
            reinterpret(Ptr{Bool32},C_NULL)) )
        num_samples_per_chan_written[1]
    end
    @eval write(t::AOTask, data::Vector{$types}) =
        write(t, reshape(data,(length(data),1)))
end
