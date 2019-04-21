for (cfunction, jfunction, ntask) in (
        (CreateDIChan, :digital_input, :DITask),
        (CreateDOChan, :digital_output, :DOTask))
    @eval function $jfunction(channel::String)
      t = $ntask()
      $jfunction(t, channel)
      t
    end
    @eval function $jfunction(t::$ntask, channel::String)
        catch_error( $cfunction(t.th,
                Ref(codeunits(channel),1),
                Ref(codeunits(""),1),
                Val_ChanPerLine) )
        nothing
    end
end

@doc """
`digital_output(channel) -> task`

`digital_output(task, channel)`

create a digital output channel, and a new NIDAQ task if one is not specified
""" digital_output

@doc """
`digital_input(channel) -> task`

`digital_input(task, channel)`

create a digital input channel, and a new task if one is not specified
""" digital_input

read_digital_cfunctions = Dict{Type,Function}(
    UInt8 => ReadDigitalU8,
    UInt16 => ReadDigitalU16,
    UInt32 => ReadDigitalU32 )

function read(t::DITask, num_samples_per_chan::Integer = -1, precision::DataType = UInt32)
    outdata_ref = Ref{Cuint}()
    DAQmxGetTaskNumChans(t.th, outdata_ref)
    num_channels = outdata_ref.x
    num_samples_per_chan_read = Int32[0]
    buffer_size = num_samples_per_chan==-1 ? 1024 : num_samples_per_chan
    data = Array{precision}(undef, buffer_size*num_channels)
    catch_error( read_digital_cfunctions[precision](t.th,
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
        (WriteDigitalU8,  UInt8),
        (WriteDigitalU16, UInt16),
        (WriteDigitalU32, UInt32))
    @eval function write(t::DOTask, data::Matrix{$types})
        num_samples_per_chan::Int32 = size(data, 1)
        data = reshape(data, length(data))
        num_samples_per_chan_written = Int32[0]
        catch_error( $cfunction(t.th,
            num_samples_per_chan,
            reinterpret(Bool32,UInt32(false)),
            1.0,
            reinterpret(Bool32,Val_GroupByChannel),
            Ref(data,1),
            Ref(num_samples_per_chan_written,1),
            reinterpret(Ptr{Bool32},C_NULL)) )
        num_samples_per_chan_written[1]
    end
    @eval write(t::DOTask, data::Vector{$types}) = 
        write(t, reshape(data, (length(data),1)))
end     
