function count_edges(channel::ASCIIString;
        edge::AbstractString="rising", initial_count::Integer=0, direction::AbstractString="up")
    t = CITask()
    if edge ∉ ["rising", "falling"]
        error("edge must either be \"rising\" or \"falling\"")
    end
    if direction ∉ ["up", "down"]
        error("direction must either be \"up\" or \"down\"")
    end
    catch_error( CreateCICountEdgesChan(t.th,
        convert(Ptr{UInt8},channel),
        convert(Ptr{UInt8},""),
        edge == "rising" ? Val_Rising : Val_Falling,
        UInt32(initial_count),
        direction == "up" ? Val_CountUp : Val_CountDown) )
    t
end

# broken
function measure_duty_cycle(channel::ASCIIString;  units::AbstractString="seconds")
    t = CITask()
    if units == "seconds"
        ret = CreateCIPulseChanTime(t.th,
                convert(Ptr{UInt8},channel), convert(Ptr{UInt8},""),
                2.0, 1000.0,
                Val_Seconds)
    elseif units == "ticks"
        ret = CreateCIPulseChanTicks(t.th,
                convert(Ptr{UInt8},channel),
                convert(Ptr{UInt8},""),
                convert(Ptr{UInt8},""),
                2.0, 1000.0)
    else
        error("units must either be \"seconds\" or \"ticks\"")
    end
    catch_error(ret)
    t
end

function quadrature_input(channel::ASCIIString;  z_enable::Bool=true)
    t = CITask()
    ret = CreateCIAngEncoderChan(t.th,
            convert(Ptr{UInt8},channel),
            convert(Ptr{UInt8},""),
            Val_X4,
            reinterpret(Bool32, UInt32(z_enable)),
            0.0,
            Val_AHighBHigh,
            Val_Ticks,
            UInt32(1), 0.0,
            convert(Ptr{UInt8},""))
    ret>0 && warn(error(ret))
    ret<0 && error(error(ret))
    t
end

function line_to_line(channel::ASCIIString;
        units::AbstractString="seconds", edge1::AbstractString="rising", edge2::AbstractString="rising")
    t = CITask()
    if units ∉ ["seconds", "ticks"]
        error("units must either be \"seconds\" or \"ticks\"")
    end
    if edge1 ∉ ["rising", "falling"]
        error("edge1 must either be \"rising\" or \"falling\"")
    end
    if edge2 ∉ ["rising", "falling"]
        error("edge2 must either be \"rising\" or \"falling\"")
    end
    catch_error( CreateCITwoEdgeSepChan(t.th,
            convert(Ptr{UInt8},channel),
            convert(Ptr{UInt8},""),
            1.0, 1000.0,
            units == "seconds" ? Val_Seconds : Val_Ticks,
            edge1 == "rising" ? Val_Rising : Val_Falling,
            edge2 == "rising" ? Val_Rising : Val_Falling,
            convert(Ptr{UInt8},"")) )
    t
end

function generate_pulses{T<:Number}(channel::ASCIIString, low::T=2, high::T=2; delay::T=0)
    t = COTask()
    if T<:FloatingPoint
        ret = CreateCOPulseChanTime(t.th,
                pointer(channel),
                pointer(""),
                Val_Seconds,
                Val_Low,
                convert(Float64,delay),
                convert(Float64,low),
                convert(Float64,high))
    elseif T<:Integer
        ret = CreateCOPulseChanTicks(t.th,
                pointer(channel),
                pointer(""),
                pointer(""),
                Val_Low,
                convert(Int32,delay),
                convert(Int32,low),
                convert(Int32,high))
    else
        error("low, high, and delay must either be \"FloatingPoint\" or \"Integer\"")
    end
    catch_error(ret)
    t
end

function read(t::CITask, channel::ASCIIString, num_samples::Integer = -1)
    if num_samples==-1;  num_samples=1024;  end

    #function read_counter_scalar(precision::DataType, cfunction::Function)
    #    data = precision[0]
    #    ret = cfunction(t, 1.0, convert(Ptr{precision},data), convert(Ptr{UInt32},C_NULL))
    #    ret>0 && warn("NIDAQmx: $ret")
    #    ret<0 && error("NIDAQmx: $ret")
    #    data
    #end

    function read_counter_vector(precision::DataType, cfunction::Function)
        num_samples_read = Int32[0]
        data = Array(precision, num_samples)
        catch_error( cfunction(t.th,
            pointer(num_samples),
            1.0,
            pointer(data),
            convert(UInt32,num_samples),
            pointer(num_samples_read),
            reinterpret(Ptr{Bool32},C_NULL)) )
        data = data[1:num_samples_read[1]]
        reshape(data, (num_samples, div(length(data),num_samples)))
    end

    function read_counter_2vectors(precision::DataType, cfunction::Function)
        num_samples_read = Int32[0]
        high = Array(precision, num_samples)
        low = Array(precision, num_samples)
        catch_error( cfunction(t.th,
            convert(Int32,num_samples),
            1.0,
            Val_GroupByChannel,
            pointer(high),
            pointer(low),
            convert(UInt32,num_samples),
            pointer(num_samples_read),
            reinterpret(Ptr{Bool32},C_NULL)) )
        high = high[1:num_samples_read[1]]
        low = low[1:num_samples_read[1]]
        reshape(high, (num_samples, div(length(high),num_samples))),
            reshape(low, (num_samples, div(length(low),num_samples)))
    end

    tmp = channel_type(t.th, channel)
    if tmp[2] == Val_CountEdges
        data = read_counter_vector(UInt32, ReadCounterU32)
    elseif tmp[2] == Val_PulseTime
        data = read_counter_2vectors(Float64, ReadCtrTime)
    elseif tmp[2] == Val_PulseTicks
        data = read_counter_2vectors(UInt32, ReadCtrTicks)
    elseif tmp[2] == Val_Position_AngEncoder
        data = read_counter_vector(UInt32, ReadCounterU32)
    elseif tmp[2] == Val_TwoEdgeSep  # might be broken
        val = Cint[0]
        catch_error( GetCITwoEdgeSepUnits(t.th,
                pointer(channel),
                pointer(val)) )
        if val[1] == Val_Ticks
            data = read_counter_vector(UInt32, ReadCounterU32)
            #data = read_counter_scalar(UInt32, ReadCounterScalarU32)
        elseif val[1] == Val_Seconds
            data = read_counter_vector(Float64, ReadCounterF64)
            #data = read_counter_scalar(Float64, ReadCounterScalarF64)
        end
    end
    data
end
