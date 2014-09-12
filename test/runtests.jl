using NIDAQ, Base.Test

t = task()
@test digital_output(t, "Dev1/Port0/Line1") == nothing
@test start(t) == nothing
@test write_digital(t, uint32([1,0,1,0,1,0])) == 6
@test stop(t) == nothing
@test clear(t) == nothing

t = task()
@test analog_output(t, "Dev1/ao0") == nothing
@test analog_output(t, "Dev1/ao1") == nothing
@test start(t) == nothing
@test write_analog(t, rand(6,2)) == 6
@test stop(t) == nothing
@test clear(t) == nothing

t = task()
@test generate_pulses(t, "Dev1/ctr0", 1000, 2000) == nothing
@test NIDAQ.DAQmxCfgImplicitTiming(t, convert(Int32,NIDAQ.DAQmx_Val_FiniteSamps), uint64(10)) == 0
@test start(t) == nothing
@test stop(t) == nothing
@test clear(t) == nothing
