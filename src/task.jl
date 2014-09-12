function task(name::ASCIIString)
    t = TaskHandle[0]
    ret = DAQmxCreateTask(convert(Ptr{Uint8},name), convert(Ptr{TaskHandle},t))
    ret>0 && warn("NIDAQmx: $ret")
    ret<0 && error("NIDAQmx: $ret")
    t[1]
end
task() = task("")

for (cfunction, jfunction) in (
        (DAQmxStartTask, :start),
        (DAQmxStopTask, :stop),
        (DAQmxClearTask, :clear))
    @eval function $jfunction(t::TaskHandle)
        ret = $cfunction(t)
        ret>0 && warn("NIDAQmx: $ret")
        ret<0 && error("NIDAQmx: $ret")
        nothing
    end
end
