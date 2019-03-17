abstract type Task end

for pre in ("AI", "AO", "DI", "DO", "CI", "CO")
  @eval mutable struct $(Symbol(pre*"Task")) <: Task
      th::TaskHandle
  end
  @eval $(Symbol(pre*"Task"))() = $(Symbol(pre*"Task"))(task())
  @eval $(Symbol(pre*"Task"))(s::String) = $(Symbol(pre*"Task"))(task(s))
end

function task(name::String)
    t = TaskHandle[0]
    catch_error( DAQmxCreateTask(Ref(codeunits(name),1), pointer(t)) )
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

    @eval @doc $(string("`", jfunction, """(task)`

    """,jfunction," the specified NIDAQ task")) $jfunction
end
