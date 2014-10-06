using NIDAQ, Base.Test

t = analog_input("Dev1/ai0")
@test typeof(t) == NIDAQ.AITask
@test start(t) == nothing
@test length(read(t, Float64, 3)) == 3
@test stop(t) == nothing
@test analog_input(t, "Dev1/ai1") == nothing
@test start(t) == nothing
@test length(read(t, Uint32, 6)) == 12
@test stop(t) == nothing
@test clear(t) == nothing

t = analog_output("Dev1/ao0")
@test typeof(t) == NIDAQ.AOTask
@test start(t) == nothing
@test write(t, rand(3)) == 3
@test stop(t) == nothing
@test analog_output(t, "Dev1/ao1") == nothing
@test start(t) == nothing
@test write(t, rand(Uint32,6,2)) == 6
@test stop(t) == nothing
@test clear(t) == nothing

t = digital_input("Dev1/Port0/Line0")
@test typeof(t) == NIDAQ.DITask
@test start(t) == nothing
@test length(read(t, Uint32, 3)) == 3
@test stop(t) == nothing
@test digital_input(t, "Dev1/Port0/Line1") == nothing
@test start(t) == nothing
@test length(read(t, Uint8, 6)) == 12
@test stop(t) == nothing
@test clear(t) == nothing

t = digital_output("Dev1/Port0/Line0")
@test typeof(t) == NIDAQ.DOTask
@test start(t) == nothing
@test write(t, uint32([1,0,1,0,1,0])) == 6
@test stop(t) == nothing
@test digital_output(t, "Dev1/Port0/Line1") == nothing
@test start(t) == nothing
@test write(t, uint8([1 0; 0 0; 1 0; 0 1; 1 1; 0 1])) == 6
@test stop(t) == nothing
@test clear(t) == nothing

t = generate_pulses("Dev1/ctr0")
@test typeof(t) == NIDAQ.COTask
@test NIDAQ.DAQmxCfgImplicitTiming(t.th, int32(NIDAQ.DAQmx_Val_FiniteSamps), uint64(10)) == 0
@test start(t) == nothing
@test stop(t) == nothing
@test clear(t) == nothing
