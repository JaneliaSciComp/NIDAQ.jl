function devices()
    sz = DAQmxGetSysDevNames(convert(Ptr{Uint8},C_NULL), uint32(0))
    data=zeros(Uint8,sz)
    catch_error(DAQmxGetSysDevNames(convert(Ptr{Uint8},data), uint32(sz)))
    map((x)->convert(ASCIIString,x), split(chop(string(char(data)...)),", "))
end

for (jfunction, cfunction) in (
        (:analog_input_channels, DAQmxGetDevAIPhysicalChans),
        (:analog_output_channels, DAQmxGetDevAOPhysicalChans),
        (:digital_input_channels, DAQmxGetDevDILines),
        (:digital_output_channels, DAQmxGetDevDOLines),
        (:counter_input_channels, DAQmxGetDevCIPhysicalChans),
        (:counter_output_channels, DAQmxGetDevCOPhysicalChans))
    @eval function $jfunction(device::ASCIIString)
        sz = $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Uint8},C_NULL), uint32(0))
        data=zeros(Uint8,sz)
        catch_error( $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Uint8},data),
                uint32(sz)) )
        map((x)->convert(ASCIIString,x), split(chop(string(char(data)...)),", "))
    end

    @eval function $jfunction()
        d = devices()
        length(d)!=1 && error("NIDAQmx: more than one device")
        $(symbol(jfunction))(d[1])
    end
end

for (jfunction, cfunction) in (
        (:analog_input_ranges, DAQmxGetDevAIVoltageRngs),
        (:analog_output_ranges, DAQmxGetDevAOVoltageRngs))
    @eval function $jfunction(device::ASCIIString)
        sz = $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Float64},C_NULL), uint32(0))
        data=zeros(sz)
        catch_error( $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Float64},data),
                uint32(sz)) )
        reshape(data,(2,length(data)>>1))'
    end

    @eval function $jfunction()
        d = devices()
        length(d)!=1 && error("NIDAQmx: more than one device")
        $jfunction(d[1])
    end
end

function channel_type(t::Task, channel::ASCIIString)
    val1 = Cint[0]
    catch_error(
        DAQmxGetChanType(t.th, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val1)) )
      
    val2 = Cint[0]
    if val1[1]==DAQmx_Val_AI
        ret = DAQmxGetAIMeasType(t.th, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    elseif val1[1]==DAQmx_Val_AO
        ret = DAQmxGetAOOutputType(t.th, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    elseif val1[1]==DAQmx_Val_DI || val1[1]==DAQmx_Val_DO
        return val1[1], nothing
    elseif val1[1]==DAQmx_Val_CI
        ret = DAQmxGetCIMeasType(t.th, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    elseif val1[1]==DAQmx_Val_CO
        ret = DAQmxGetCOOutputType(t.th, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    end
    catch_error(ret)

    val1[1], val2[1]
end

unsigned_constants = (Uint16=>Symbol)[]
signed_constants = (Int16=>Symbol)[]

for sym in names(NIDAQ,true)
    isdefined(sym) || continue
    eval(:(typeof($sym) <: Unsigned)) || continue
    unsigned_constants[eval(:($sym))] = sym
end

for sym in names(NIDAQ,true)
    isdefined(sym) || continue
    eval(:(typeof($sym) <: Signed)) || continue
    string(sym)[1:min(end,10)]=="DAQmx_Val_" || continue
    signed_constants[eval(:($sym))] = sym
end

function getproperties_guts(args, suffix::ASCIIString, warning::Bool)
    ret_val = Dict()
    local settable
    local data
    local ret
    for sym in names(NIDAQ,true)
        eval(:(typeof($sym)!=Function)) && continue
        if string(sym)[1:min(end,8+length(suffix))]=="DAQmxGet"*suffix
            cfunction = getfield(NIDAQ, sym)
            signature = cfunction.env.defs.sig
            try
                basetype = eval(parse(string(signature[1+length(args)])[5:end-1]))
                if length(signature)==1+length(args)
                    data = Array(basetype,1)
                    ret = cfunction(args..., convert(Ptr{basetype},data))
                    data = data[1]
                else
                    sz = cfunction(args..., convert(Ptr{basetype},C_NULL), convert(Uint32,0))
                    data = zeros(basetype,sz)
                    ret = cfunction(args..., convert(Ptr{basetype},data), convert(Uint32,sz))
                    data = chop(string(char(data)...))
                end
                if basetype == Bool32
                    data = reinterpret(Uint32, data) != 0
                elseif basetype == Int32 && data ∈ keys(signed_constants)
                    data = signed_constants[data]
                elseif basetype == Uint32 && data ∈ keys(unsigned_constants)
                    data = unsigned_constants[data]
                end
            catch
                warning && warn("can't handle function signature for $cfunction: $signature")
                continue
            end
            if ret==0
              try
                  getfield(NIDAQ, symbol(replace(string(cfunction),"Get"*suffix,"Set"*suffix)))
                  settable=true
              catch
                  settable=false
              end
              ret_val[string(cfunction)[9+length(suffix):end]] = (data, settable)
            end
        end
    end
    ret_val
end

function getproperties(; warning=false)
    getproperties_guts((), "Sys", warning)
end

function getproperties(device::ASCIIString; warning=false)
    getproperties_guts((convert(Ptr{Uint8},device),), "Dev", warning)
end

function getproperties(t::Task; warning=false)
    getproperties_guts((t.th,), "Task", warning)
end

channel_types = ["DAQmx_Val_AI", "DAQmx_Val_AO",
                 "DAQmx_Val_DI", "DAQmx_Val_DO",
                 "DAQmx_Val_CI", "DAQmx_Val_CO"]

function getproperties(t::Task, channel::ASCIIString; warning=false)
    kind = channel_types[ find(channel_type(t, channel)[1] .==
            map((x)->getfield(NIDAQ,symbol(x)), channel_types))[1]][end-1:end]

    getproperties_guts((t.th, convert(Ptr{Uint8},channel)), kind, warning)
end

function setproperty!(t::Task, channel::ASCIIString, property::ASCIIString, value)
    kind = channel_types[ find(channel_type(t, channel)[1] .==
            map((x)->getfield(NIDAQ,symbol(x)), channel_types))[1]][end-1:end]

    @eval ret = $(symbol("DAQmxSet"*kind*property))($t.th, convert(Ptr{Uint8},$channel), $value)
    catch_error(ret, "DAQmxSet$kind$property: ")
    nothing
end
