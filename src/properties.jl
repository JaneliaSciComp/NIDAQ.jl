function devices()
    sz = DAQmxGetSysDevNames(convert(Ptr{Uint8},C_NULL), convert(Uint32,0))
    data=zeros(Uint8,sz)
    catch_error(DAQmxGetSysDevNames(convert(Ptr{Uint8},data), convert(Uint32,sz)))
    map((x)->convert(ASCIIString,x), split(chop(string(char(data)...)),", "))
end

for (cfunction, jfunction) in (
        (DAQmxGetDevAIPhysicalChans, :analog_input_channels),
        (DAQmxGetDevAOPhysicalChans, :analog_output_channels),
        (DAQmxGetDevDILines, :digital_input_channels),
        (DAQmxGetDevDOLines, :digital_output_channels),
        (DAQmxGetDevCIPhysicalChans, :counter_input_channels),
        (DAQmxGetDevCOPhysicalChans, :counter_output_channels))
    @eval function $jfunction(device::ASCIIString)
        sz = $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Uint8},C_NULL), convert(Uint32,0))
        data=zeros(Uint8,sz)
        catch_error( $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Uint8},data),
                convert(Uint32,sz)) )
        map((x)->convert(ASCIIString,x), split(chop(string(char(data)...)),", "))
    end

    @eval function $jfunction()
        d = devices()
        length(d)!=1 && error("NIDAQmx: more than one device")
        $(symbol(jfunction))(d[1])
    end
end

for (cfunction, jfunction) in (
        (DAQmxGetDevAIVoltageRngs, :analog_input_ranges),
        (DAQmxGetDevAOVoltageRngs, :analog_output_ranges))

    @eval function $jfunction(device::ASCIIString)
        sz = $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Float64},C_NULL), convert(Uint32,0))
        data=zeros(sz)
        catch_error( $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Float64},data),
                convert(Uint32,sz)) )
        reshape(data,(2,length(data)>>1))'
    end

    @eval function $jfunction()
        d = devices()
        length(d)!=1 && error("NIDAQmx: more than one device")
        $jfunction(d[1])
    end
end

function channel_type(t::TaskHandle, channel::ASCIIString)
    val1 = Cint[0]
    catch_error(
        DAQmxGetChanType(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val1)) )
      
    val2 = Cint[0]
    if val1[1]==DAQmx_Val_AI
        ret = DAQmxGetAIMeasType(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    elseif val1[1]==DAQmx_Val_AO
        ret = DAQmxGetAOOutputType(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    elseif val1[1]==DAQmx_Val_DI || val1[1]==DAQmx_Val_DO
        return val1[1], nothing
    elseif val1[1]==DAQmx_Val_CI
        ret = DAQmxGetCIMeasType(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    elseif val1[1]==DAQmx_Val_CO
        ret = DAQmxGetCOOutputType(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    end
    catch_error(ret)

    val1[1], val2[1]
end

function getproperties_guts(args, suffix::ASCIIString, warning=false)
    ret_val = Dict()
    local settable
    local data
    local ret
    for cfunction in names(NIDAQ,true)
        tmp = string(cfunction)
        if length(tmp)>=8+length(suffix) && tmp[1:8+length(suffix)]=="DAQmxGet"*suffix
            cfunction = getfield(NIDAQ, cfunction)
            signature = cfunction.env.defs.sig
            try
                basetype = eval(parse(string(signature[1+length(args)])[5:end-1]))
                if length(signature)==1+length(args)
                    data = basetype[0]
                    ret = cfunction(args..., convert(Ptr{basetype},data))
                    data = data[1]
                else
                    sz = cfunction(args..., convert(Ptr{basetype},C_NULL), convert(Uint32,0))
                    data = zeros(basetype,sz)
                    ret = cfunction(args..., convert(Ptr{basetype},data), convert(Uint32,sz))
                    data = string(char(chop(data))...)
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

function getproperties()
    getproperties_guts((), "Sys")
end

function getproperties(device::ASCIIString)
    getproperties_guts((convert(Ptr{Uint8},device),), "Dev")
end

function getproperties(t::TaskHandle)
    getproperties_guts((t,), "Task")
end

channel_types = ["DAQmx_Val_AI", "DAQmx_Val_AO",
                 "DAQmx_Val_DI", "DAQmx_Val_DO",
                 "DAQmx_Val_CI", "DAQmx_Val_CO"]

function getproperties(t::TaskHandle, channel::ASCIIString)
    kind = channel_types[ find(channel_type(t, channel)[1] .==
            map((x)->getfield(NIDAQ,symbol(x)), channel_types))[1]][end-1:end]

    getproperties_guts((t, convert(Ptr{Uint8},channel)), kind)
end

function setproperty!(t::TaskHandle, channel::ASCIIString, property::ASCIIString, value)
    kind = channel_types[ find(channel_type(t, channel)[1] .==
            map((x)->getfield(NIDAQ,symbol(x)), channel_types))[1]][end-1:end]

    @eval ret = $(symbol("DAQmxSet"*kind*property))($t, convert(Ptr{Uint8},$channel), $value)
    catch_error(ret, "DAQmxSet$kind$property: ")
    nothing
end
