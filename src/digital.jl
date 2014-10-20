for (cfunction, jfunction, ntask) in (
        (CreateDIChan, :digital_input, :DITask),
        (CreateDOChan, :digital_output, :DOTask))
    @eval function $jfunction(channel::ASCIIString)
      t = $ntask()
      $jfunction(t, channel)
      t
    end
    @eval function $jfunction(t::$ntask, channel::ASCIIString)
        catch_error( $cfunction(t.th,
                convert(Ptr{Uint8},channel),
                convert(Ptr{Uint8},""),
                Val_ChanPerLine) )
        nothing
    end
end

read_digital_cfunctions = {
    (Uint8 => ReadDigitalU8),
    (Uint16 => ReadDigitalU16),
    (Uint32 => ReadDigitalU32) }

function read(t::DITask, precision::DataType, num_samples_per_chan::Integer = -1)
    num_channels = getproperties(t)["NumChans"][1]
    num_samples_per_chan_read = Int32[0]
    if num_samples_per_chan==-1;  num_samples_per_chan=1024;  end
    data = Array(precision, num_samples_per_chan*num_channels)
    catch_error( read_digital_cfunctions[precision](t.th,
        convert(Int32,num_samples_per_chan),
        1.0,
        reinterpret(Bool32,Val_GroupByChannel),
        convert(Ptr{precision},data),
        convert(Uint32,num_samples_per_chan*num_channels),
        convert(Ptr{Int32},num_samples_per_chan_read),
        reinterpret(Ptr{Bool32},C_NULL)) )
    data = data[1:num_samples_per_chan_read[1]*num_channels]
    num_channels==1 ? data : reshape(data, (num_samples_per_chan, convert(Int64,num_channels)))
end 
    
for (cfunction, types) in (
        (WriteDigitalU8,  Uint8),
        (WriteDigitalU16, Uint16),
        (WriteDigitalU32, Uint32))
    @eval function write(t::DOTask, data::Matrix{$types})
        num_samples_per_chan::Int32 = size(data, 1)
        data = reshape(data, length(data))
        num_samples_per_chan_written = Int32[0]
        catch_error( $cfunction(t.th,
            num_samples_per_chan,
            reinterpret(Bool32,uint32(false)),
            1.0,
            reinterpret(Bool32,Val_GroupByChannel),
            convert(Ptr{$types},data),
            convert(Ptr{Int32},num_samples_per_chan_written),
            reinterpret(Ptr{Bool32},C_NULL)) )
        num_samples_per_chan_written[1]
    end
    @eval write(t::DOTask, data::Vector{$types}) = 
        write(t, reshape(data, (length(data),1)))
end     
