function task(name::ASCIIString)
    t = TaskHandle[0]
    catch_error( DAQmxCreateTask(convert(Ptr{Uint8},name), convert(Ptr{TaskHandle},t)) )
    t[1]
end
task() = task("")

for (cfunction, jfunction) in (
        (DAQmxStartTask, :start),
        (DAQmxStopTask, :stop),
        (DAQmxClearTask, :clear))
    @eval function $jfunction(t::TaskHandle)
        catch_error( $cfunction(t) )
        nothing
    end
end
