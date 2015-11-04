abstract Task

for pre in ("AI", "AO", "DI", "DO", "CI", "CO")
  @eval type $(symbol(pre*"Task")) <: Task
      th::TaskHandle
  end
  @eval $(symbol(pre*"Task"))() = $(symbol(pre*"Task"))(task())
  @eval $(symbol(pre*"Task"))(s) = $(symbol(pre*"Task"))(task(s))
end

function task(name::ASCIIString)
    t = TaskHandle[0]
    catch_error( DAQmxCreateTask(pointer(name), pointer(t)) )
    t[1]
end
task() = task("")

for (cfunction, jfunction) in (
        (DAQmxStartTask, :start),
        (DAQmxStopTask, :stop),
        (DAQmxClearTask, :clear))
    @eval function $jfunction(t::Task)
        catch_error( $cfunction(t.th) )
        nothing
    end
end
