function devices()
    data=zeros(Uint8,256)
    catch_error(DAQmxGetSysDevNames(convert(Ptr{Uint8},data), convert(Uint32,256)))
    split(rstrip(string(char(data)...),'\0'),", ")
end

for (cfunction, jfunction) in (
        (DAQmxGetDevAIPhysicalChans, :analog_input_channels),
        (DAQmxGetDevAOPhysicalChans, :analog_output_channels),
        (DAQmxGetDevDILines, :digital_input_lines),
        (DAQmxGetDevDOLines, :digital_output_lines),
        (DAQmxGetDevDIPorts, :digital_input_ports),
        (DAQmxGetDevDOPorts, :digital_output_ports),
        (DAQmxGetDevCIPhysicalChans, :counter_input_channels),
        (DAQmxGetDevCOPhysicalChans, :counter_output_channels))
    @eval function $jfunction(device::String)
        data=zeros(Uint8,256)
        catch_error( $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Uint8},data),
                convert(Uint32,256)) )
        split(rstrip(string(char(data)...),'\0'),", ")
    end

    @eval function $jfunction()
        d::Vector{ASCIIString} = devices()
        length(d)!=1 && error("NIDAQmx: more than one device")
        $(symbol(jfunction))(d[1])
    end
end

for (cfunction, jfunction) in (
        (DAQmxGetDevAIVoltageRngs, :analog_input_ranges),
        (DAQmxGetDevAOVoltageRngs, :analog_output_ranges))

    @eval function $jfunction(device::ASCIIString)
        data=zeros(32)
        catch_error( $cfunction(convert(Ptr{Uint8},device), convert(Ptr{Float64},data),
                convert(Uint32,32)) )
        data=data[data.!=0.0]
        reshape(data,(2,length(data)>>1))'
    end

    @eval function $jfunction()
        d::Vector{ASCIIString} = devices()
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
    elseif val1[1]==DAQmx_Val_DI
        ret = 0
        val2[1]=nothing
    elseif val1[1]==DAQmx_Val_DO
        ret = DAQmxGetDOOutputDriveType(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    elseif val1[1]==DAQmx_Val_CI
        ret = DAQmxGetCIMeasType(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    elseif val1[1]==DAQmx_Val_CO
        ret = DAQmxGetCOOutputType(t, convert(Ptr{Uint8},channel), convert(Ptr{Int32}, val2))
    end
    catch_error(ret)

    val1[1], val2[1]
end

function properties_guts(args, suffix::ASCIIString)
    ret_val = Dict()
    local settable
    for cfunction in names(NIDAQ,true)
        tmp = string(cfunction)
        if length(tmp)>=8+length(suffix) && tmp[1:8+length(suffix)]=="DAQmxGet"*suffix
            cfunction = getfield(NIDAQ, cfunction)
            signature = cfunction.env.defs.sig
            basetype = eval(parse(string(signature[1+length(args)])[5:end-1]))
            if length(signature)==2+length(args)
              data = zeros(basetype,256)
              ret = cfunction(args..., convert(Ptr{basetype},data),
                      convert(Uint32,256))
              data = rstrip(string(char(data)...),'\0')
            else
              data = basetype[0]
              ret = cfunction(args..., convert(Ptr{basetype},data))
              data = data[1]
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

function properties()
    properties_guts((), "Sys")
end

function properties(device::ASCIIString)
    properties_guts((convert(Ptr{Uint8},device),), "Dev")
end

function properties(t::TaskHandle)
    properties_guts((t,), "Task")
end

function properties(t::TaskHandle, channel::ASCIIString)
    tmp = channel_type(t, channel)
    if tmp[1]==DAQmx_Val_AI
        properties_guts((t, convert(Ptr{Uint8},channel),), "AI")
    elseif tmp[1]==DAQmx_Val_AO
        properties_guts((t, convert(Ptr{Uint8},channel),), "AO")
    elseif tmp[1]==DAQmx_Val_DI
        properties_guts((t, convert(Ptr{Uint8},channel),), "DI")
    elseif tmp[1]==DAQmx_Val_DO
        properties_guts((t, convert(Ptr{Uint8},channel),), "DO")
    elseif tmp[1]==DAQmx_Val_CI
        properties_guts((t, convert(Ptr{Uint8},channel),), "CI")
    elseif tmp[1]==DAQmx_Val_CO
        properties_guts((t, convert(Ptr{Uint8},channel),), "CO")
    end
end

function set_property(t::TaskHandle, channel::ASCIIString, property::ASCIIString, value)
    @eval ret = $(symbol("DAQmxSetCO"*property))($t, convert(Ptr{Uint8},$channel), $value)
    catch_error(ret, "DAQmxSetCO$property: ")
    nothing
end
