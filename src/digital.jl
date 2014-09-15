for (cfunction, jfunction) in (
        (DAQmxCreateDIChan, :digital_input),
        (DAQmxCreateDOChan, :digital_output))
    @eval function $jfunction(t::TaskHandle, channel::ASCIIString)
        catch_error( $cfunction(t,
                convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
                convert(Int32,DAQmx_Val_ChanPerLine)) )
        nothing
    end
end

read_digital_cfunctions = {
    (Uint8 => DAQmxReadDigitalU8),
    (Uint16 => DAQmxReadDigitalU16),
    (Uint32 => DAQmxReadDigitalU32) }

function read_digital(t::TaskHandle, precision::DataType, num_samples::Integer = -1)
    num_samples_read = Int32[0]
    if num_samples==-1;  num_samples=1024;  end
    data = Array(precision, num_samples)
    catch_error( read_digital_cfunctions[precision](t,
        convert(Int32,num_samples),  1.0, convert(Uint32,DAQmx_Val_GroupByChannel),
        convert(Ptr{precision},data), convert(Uint32,num_samples),
        convert(Ptr{Int32},num_samples_read), convert(Ptr{Uint32},C_NULL)) )
    data = data[1:num_samples_read[1]]
    reshape(data, (num_samples, div(length(data),num_samples)))
end 
    
for (cfunction, types) in (
        (DAQmxWriteDigitalU8,  Uint8),
        (DAQmxWriteDigitalU16, Uint16),
        (DAQmxWriteDigitalU32, Uint32))
    @eval function write_digital(t::TaskHandle, data::Matrix{$types})
        num_samples::Int32 = size(data, 1)
        data = reshape(data, length(data))
        num_samples_written = Int32[0]
        catch_error( $cfunction(t,
            num_samples, uint32(false), 1.0, convert(Uint32,DAQmx_Val_GroupByChannel),
            convert(Ptr{$types},data), convert(Ptr{Int32},num_samples_written),
            convert(Ptr{Uint32},C_NULL)) )
        num_samples_written[1]
    end
    @eval write_digital(t::TaskHandle, data::Vector{$types}) = 
        write_digital(t, reshape(data, (length(data),1)))
end     
