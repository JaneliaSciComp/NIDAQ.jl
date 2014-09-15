analog_input_configs = {
    "referenced single-ended" => convert(Int32,DAQmx_Val_RSE),
    "non-referenced single-ended" => convert(Int32,DAQmx_Val_NRSE),
    "differential" => convert(Int32,DAQmx_Val_Diff) }

function analog_input(t::TaskHandle, channel::ASCIIString;
        terminal_config="differential", range=nothing)
    if range==nothing
        device::ASCIIString = split(channel,'/')[1]
        range=float(analog_input_ranges(device)[end,:])
    end
    catch_error( DAQmxCreateAIVoltageChan(t,
            convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
            analog_input_configs[terminal_config], range[1], range[2],
            convert(Int32,DAQmx_Val_Volts), convert(Ptr{Uint8},C_NULL)) )
    nothing
end

function analog_output(t::TaskHandle, channel::ASCIIString; range=nothing)
    if range==nothing
        device::ASCIIString = split(channel,'/')[1]
        range=float(analog_output_ranges(device)[end,:])
    end
    catch_error( DAQmxCreateAOVoltageChan(t,
            convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""), range[1], range[2],
            convert(Int32,DAQmx_Val_Volts), convert(Ptr{Uint8},C_NULL)) )
    nothing
end

read_analog_cfunctions = {
    (Float64 => DAQmxReadAnalogF64),
    (Int16 => DAQmxReadBinaryI16),
    (Int32 => DAQmxReadBinaryI32),
    (Uint16 => DAQmxReadBinaryU16),
    (Uint32 => DAQmxReadBinaryU32) }

function read_analog(t::TaskHandle, precision::DataType, num_samples::Integer = -1)
    num_samples_read = Int32[0]
    if num_samples==-1;  num_samples=1024;  end
    data = Array(precision, num_samples)
    catch_error( read_analog_cfunctions[precision](t, convert(Int32,num_samples), 1.0,
        convert(Uint32,DAQmx_Val_GroupByChannel), convert(Ptr{precision},data),
        convert(Uint32,num_samples), convert(Ptr{Int32},num_samples_read),
        convert(Ptr{Uint32},C_NULL)) )
    data = data[1:num_samples_read[1]]
    reshape(data, (num_samples, div(length(data),num_samples)))
end

for (cfunction, types) in (
        (DAQmxWriteAnalogF64, Float64),
        (DAQmxWriteBinaryI16, Int16),
        (DAQmxWriteBinaryI32, Int32),
        (DAQmxWriteBinaryU16, Uint16),
        (DAQmxWriteBinaryU32, Uint32))
    @eval function write_analog(t::TaskHandle, data::Matrix{$types})
        num_samples::Int32 = size(data, 1)
        data = reshape(data, length(data))
        num_samples_written = Int32[0]
        catch_error( $cfunction(t, num_samples, uint32(false), 1.0,
            convert(Uint32,DAQmx_Val_GroupByChannel), convert(Ptr{$types},data),
            convert(Ptr{Int32},num_samples_written), convert(Ptr{Uint32},C_NULL)) )
        num_samples_written[1]
    end
    @eval write_analog(t::TaskHandle, data::Vector{$types}) =
        write_analog(t, reshape(data,(length(data),1)))
end
