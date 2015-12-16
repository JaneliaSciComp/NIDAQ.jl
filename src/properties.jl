function devices()
    sz = GetSysDevNames(convert(Ptr{UInt8},C_NULL), UInt32(0))
    data=zeros(UInt8,sz)
    catch_error(GetSysDevNames(pointer(data), UInt32(sz)))
    res = map((x)->convert(ASCIIString,x), split(chop(string(map(Char, data)...)),", "))
    res = res[res .!= ""]
end

for (jfunction, cfunction) in (
        (:analog_input_channels, GetDevAIPhysicalChans),
        (:analog_output_channels, GetDevAOPhysicalChans),
        (:digital_input_channels, GetDevDILines),
        (:digital_output_channels, GetDevDOLines),
        (:counter_input_channels, GetDevCIPhysicalChans),
        (:counter_output_channels, GetDevCOPhysicalChans))
    @eval function $jfunction(device::ASCIIString)
        sz = $cfunction(pointer(device), convert(Ptr{UInt8},C_NULL), UInt32(0))
        data=zeros(UInt8,sz)
        catch_error( $cfunction(pointer(device), pointer(data),
                UInt32(sz)) )
        map((x)->convert(ASCIIString,x), split(chop(string(char(data)...)),", "))
    end

    @eval function $jfunction()
        d = devices()
        length(d)!=1 && error("NIDAQmx: more than one device")
        $(symbol(jfunction))(d[1])
    end
end

for (jfunction, cfunction) in (
        (:analog_input_ranges, GetDevAIVoltageRngs),
        (:analog_output_ranges, GetDevAOVoltageRngs))
    @eval function $jfunction(device::ASCIIString)
        sz = $cfunction(pointer(device), convert(Ptr{Float64},C_NULL), UInt32(0))
        data=zeros(sz)
        catch_error( $cfunction(pointer(device),pointer(data),
                UInt32(sz)) )
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
        GetChanType(t.th, pointer(channel), pointer(val1)) )

    val2 = Cint[0]
    if val1[1] == Val_AI
        ret = GetAIMeasType(t.th, pointer(channel), pointer(val2))
    elseif val1[1] == Val_AO
        ret = GetAOOutputType(t.th, pointer(channel), pointer(val2))
    elseif val1[1] == Val_DI || val1[1] == Val_DO
        return val1[1], nothing
    elseif val1[1] == Val_CI
        ret = GetCIMeasType(t.th, pointer(channel), pointer(val2))
    elseif val1[1] == Val_CO
        ret = GetCOOutputType(t.th, pointer(channel), pointer(val2))
    end
    catch_error(ret)

    val1[1], val2[1]
end

function getproperties_guts(args, suffix::ASCIIString, warning::Bool)
    ret_val = Dict()
    local settable
    local data
    local ret
    for sym in names(NIDAQ,true)
        #isdefined(sym)||continue
        eval(:(typeof(NIDAQ.$sym)!=Function)) && continue
        if string(sym)[1:min(end,8+length(suffix))]=="DAQmxGet"*suffix
            cfunction = getfield(NIDAQ, sym)
            signature = cfunction.env.defs.sig
            try
                #basetype = eval(parse(string(signature[1+length(args)])[5:end-1]))
                #basetype = eval(parse(string(signature.types[1+length(args)])[5:end-1]))
                basetype = eltype(signature.types[1+length(args)])
                if length(signature.types)==1+length(args)
                    data = Array(basetype,1)
                    ret = cfunction(args..., pointer(data))
                    data = data[1]
                else
                    sz = cfunction(args..., convert(Ptr{basetype},C_NULL), convert(UInt32,0))
                    if sz<0
                      ret=sz
                      throw()
                    end
                    data = zeros(basetype,sz)
                    ret = cfunction(args..., pointer(data), convert(UInt32,sz))
                end
                if ret!=0
                    throw()
                elseif basetype == Bool32
                    data = reinterpret(UInt32, data) != 0
                elseif basetype == Int32
                    try
                        data = map((x)->signed_constants[x], data)
                    end
                elseif basetype == UInt32
                    try
                        data = map((x)->unsigned_constants[x], data)
                    end
                elseif basetype == UInt8
                    #data = chop(string(char(data)...))
                    #data = chop(string(map(Char, data)...))
                    data = chop(ascii(data))
                    if search(data,',')>0
                        data = split(data,", ")
                    end
                end
            catch
                if warning
                    if ret!=0
                        catch_error(ret, string(cfunction)*": ", err_fcn=warn)
                    else
                        warn("can't handle function signature for $cfunction: $signature")
                    end
                end
                continue
            end
            try
                getfield(NIDAQ, symbol(replace(string(cfunction),"Get"*suffix,"Set"*suffix)))
                settable=true
            catch
                settable=false
            end
            ret_val[string(cfunction)[6+9+length(suffix):end]] = (data, settable)
        end
    end
    ret_val
end

function getproperties(; warning=false)
    getproperties_guts((), "Sys", warning)
end

function getproperties(device::ASCIIString; warning=false)
    getproperties_guts((pointer(device),), "Dev", warning)
end

function getproperties(t::Task; warning=false)
    getproperties_guts((t.th,), "Task", warning)
end

channel_types = ["Val_AI", "Val_AO",
                 "Val_DI", "Val_DO",
                 "Val_CI", "Val_CO"]

function getproperties(t::Task, channel::ASCIIString; warning=false)
    kind = channel_types[ find(channel_type(t, channel)[1] .==
            map((x)->getfield(NIDAQ,symbol(x)), channel_types))[1]][end-1:end]

    getproperties_guts((t.th, pointer(channel)), kind, warning)
end

function setproperty!(t::Task, channel::ASCIIString, property::ASCIIString, value)
    kind = channel_types[ find(channel_type(t, channel)[1] .==
            map((x)->getfield(NIDAQ,symbol(x)), channel_types))[1]][end-1:end]

    @eval ret = $(symbol("DAQmxSet"*kind*property))($t.th, pointer($channel), $value)
    catch_error(ret, "DAQmxSet$kind$property: ")
    nothing
end
