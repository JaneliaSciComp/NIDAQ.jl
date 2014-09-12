function count_edges(t::TaskHandle, channel::ASCIIString;
        edge::String="rising", initial_count::Integer=0, direction::String="up")
    if edge ∉ {"rising", "falling"}
        error("edge must either be \"rising\" or \"falling\"")
    end
    if direction ∉ {"up", "down"}
        error("direction must either be \"up\" or \"down\"")
    end
    ret = DAQmxCreateCICountEdgesChan(t,
        convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
        convert(Int32, edge == "rising" ? DAQmx_Val_Rising : DAQmx_Val_Falling),
        uint32(initial_count),
        convert(Int32, direction == "up" ? DAQmx_Val_CountUp : DAQmx_Val_CountDown))
    ret>0 && warn("NIDAQmx: $ret")
    ret<0 && error("NIDAQmx: $ret")
    nothing
end

# broken
function measure_duty_cycle(t::TaskHandle, channel::ASCIIString;  units::String="seconds")
    if units == "seconds"
        ret = DAQmxCreateCIPulseChanTime(t, convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
                2.0, 1000.0, convert(Int32,DAQmx_Val_Seconds))
    elseif units == "ticks"
        ret = DAQmxCreateCIPulseChanTicks(t, convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
                convert(Ptr{Uint8},""), 2.0, 1000.0)
    else
        error("units must either be \"seconds\" or \"ticks\"")
    end
    ret>0 && warn("NIDAQmx: $ret")
    ret<0 && error("NIDAQmx: $ret")
    nothing
end

function quadrature_input(t::TaskHandle, channel::ASCIIString;  z_enable::Bool=true)
    ret = DAQmxCreateCIAngEncoderChan(t, convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
            convert(Int32,DAQmx_Val_X4), convert(Uint32,z_enable), 0.0,
            convert(Int32,DAQmx_Val_AHighBHigh), convert(Int32,DAQmx_Val_Ticks),
            uint32(1), 0.0, convert(Ptr{Uint8},""))
    ret>0 && warn("NIDAQmx: $ret")
    ret<0 && error("NIDAQmx: $ret")
    nothing
end

function line_to_line(t::TaskHandle, channel::ASCIIString;
        units::String="seconds", edge1::String="rising", edge2::String="rising")
    if units ∉ {"seconds", "ticks"}
        error("units must either be \"seconds\" or \"ticks\"")
    end
    if edge1 ∉ {"rising", "falling"}
        error("edge1 must either be \"rising\" or \"falling\"")
    end
    if edge2 ∉ {"rising", "falling"}
        error("edge2 must either be \"rising\" or \"falling\"")
    end
    ret = DAQmxCreateCITwoEdgeSepChan(t, convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
            1.0, 1000.0, 
            convert(Int32, units == "seconds" ? DAQmx_Val_Seconds : DAQmx_Val_Ticks),
            convert(Int32, edge1 == "rising" ? DAQmx_Val_Rising : DAQmx_Val_Falling),
            convert(Int32, edge2 == "rising" ? DAQmx_Val_Rising : DAQmx_Val_Falling),
            convert(Ptr{Uint8},""))
    ret>0 && warn("NIDAQmx: $ret")
    ret<0 && error("NIDAQmx: $ret")
    nothing
end

function generate_pulses{T<:Number}(t::TaskHandle, channel::ASCIIString, low::T, high::T;
        delay::T=0)
    if T<:FloatingPoint
        ret = DAQmxCreateCOPulseChanTime(t, convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
                convert(Int32,DAQmx_Val_Seconds), convert(Int32,DAQmx_Val_Low),
                convert(Float64,delay), convert(Float64,low), convert(Float64,high))
    elseif T<:Integer
        ret = DAQmxCreateCOPulseChanTicks(t, convert(Ptr{Uint8},channel), convert(Ptr{Uint8},""),
                convert(Ptr{Uint8},""), convert(Int32,DAQmx_Val_Low),
                convert(Int32,delay), convert(Int32,low), convert(Int32,high))
    else
        error("low, high, and delay must either be \"FloatingPoint\" or \"Integer\"")
    end
    ret>0 && warn("NIDAQmx: $ret")
    ret<0 && error("NIDAQmx: $ret")
    nothing
end

function read_counter(t::TaskHandle, channel::ASCIIString, num_samples::Integer = -1)
    if num_samples==-1;  num_samples=1024;  end

    #function read_counter_scalar(precision::DataType, cfunction::Function)
    #    data = precision[0]
    #    ret = cfunction(t, 1.0, convert(Ptr{precision},data), convert(Ptr{Uint32},C_NULL))
    #    ret>0 && warn("NIDAQmx: $ret")
    #    ret<0 && error("NIDAQmx: $ret")
    #    data
    #end

    function read_counter_vector(precision::DataType, cfunction::Function)
        num_samples_read = Int32[0]
        data = Array(precision, num_samples)
        ret = cfunction(t, convert(Int32,num_samples), 1.0,
            convert(Ptr{precision},data), convert(Uint32,num_samples),
            convert(Ptr{Int32},num_samples_read), convert(Ptr{Uint32},C_NULL))
        ret>0 && warn("NIDAQmx: $ret")
        ret<0 && error("NIDAQmx: $ret")
        data = data[1:num_samples_read[1]]
        reshape(data, (num_samples, div(length(data),num_samples)))
    end

    function read_counter_2vectors(precision::DataType, cfunction::Function)
        num_samples_read = Int32[0]
        high = Array(precision, num_samples)
        low = Array(precision, num_samples)
        ret = cfunction(t, convert(Int32,num_samples), 1.0,
            convert(Uint32,DAQmx_Val_GroupByChannel),
            convert(Ptr{Float64},high), convert(Ptr{Float64},low), convert(Uint32,num_samples),
            convert(Ptr{Int32},num_samples_read), convert(Ptr{Uint32},C_NULL))
        ret>0 && warn("NIDAQmx: $ret")
        ret<0 && error("NIDAQmx: $ret")
        high = high[1:num_samples_read[1]]
        low = low[1:num_samples_read[1]]
        reshape(high, (num_samples, div(length(high),num_samples))),
            reshape(low, (num_samples, div(length(low),num_samples)))
    end

    tmp = channel_type(t, channel)
    if tmp[2] == DAQmx_Val_CountEdges
        data = read_counter_vector(Uint32, DAQmxReadCounterU32)
    elseif tmp[2] == DAQmx_Val_PulseTime
        data = read_counter_2vectors(Float64, DAQmxReadCtrTime)
    elseif tmp[2] == DAQmx_Val_PulseTicks
        data = read_counter_2vectors(Uint32, DAQmxReadCtrTicks)
    elseif tmp[2] == DAQmx_Val_Position_AngEncoder
        data = read_counter_vector(Uint32, DAQmxReadCounterU32)
    elseif tmp[2] == DAQmx_Val_TwoEdgeSep  # might be broken
        val = Cint[0]
        ret = DAQmxGetCITwoEdgeSepUnits(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val))
        ret>0 && warn("NIDAQmx: $ret")
        ret<0 && error("NIDAQmx: $ret")
        if val[1]==DAQmx_Val_Ticks
            data = read_counter_vector(Uint32, DAQmxReadCounterU32)
            #data = read_counter_scalar(Uint32, DAQmxReadCounterScalarU32)
        elseif val[1]==DAQmx_Val_Seconds
            data = read_counter_vector(Float64, DAQmxReadCounterF64)
            #data = read_counter_scalar(Float64, DAQmxReadCounterScalarF64)
        end
    end
    data
end
