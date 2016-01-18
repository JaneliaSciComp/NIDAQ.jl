using NIDAQ, Base.Test

@test typeof(getproperties()) == Dict{ASCIIString,Tuple{Any,Bool}}
d = devices()[1]
@test typeof(getproperties(d)) == Dict{ASCIIString,Tuple{Any,Bool}}
@test typeof(analog_input_channels()) == Vector{ASCIIString}
@test typeof(analog_output_channels()) == Vector{ASCIIString}
@test typeof(digital_input_channels()) == Vector{ASCIIString}
@test typeof(digital_output_channels()) == Vector{ASCIIString}
@test typeof(counter_input_channels()) == Vector{ASCIIString}
@test typeof(counter_output_channels()) == Vector{ASCIIString}
@test typeof(analog_input_ranges()) == Matrix{Float64}
@test typeof(analog_output_ranges()) == Matrix{Float64}

t = analog_input(d*"/ai0")
@test typeof(getproperties(t)) == Dict{ASCIIString,Tuple{Any,Bool}}
@test typeof(getproperties(t,d*"/ai0")) == Dict{ASCIIString,Tuple{Any,Bool}}
@test typeof(t) == NIDAQ.AITask
@test start(t) == nothing
@test length(read(t, Float64, 3)) == 3
@test stop(t) == nothing
@test analog_input(t, d*"/ai1") == nothing
@test start(t) == nothing
@test length(read(t, UInt32, 6)) == 12
@test stop(t) == nothing
@test clear(t) == nothing

t = analog_output(d*"/ao0")
@test typeof(t) == NIDAQ.AOTask
@test start(t) == nothing
@test write(t, rand(3)) == 3
@test stop(t) == nothing
@test analog_output(t, d*"/ao1") == nothing
@test start(t) == nothing
@test write(t, rand(UInt32,6,2)) == 6
@test stop(t) == nothing
@test clear(t) == nothing

t = digital_input(d*"/Port0/Line0")
@test typeof(t) == NIDAQ.DITask
@test start(t) == nothing
@test length(read(t, UInt32, 3)) == 3
@test stop(t) == nothing
@test digital_input(t, d*"/Port0/Line1") == nothing
@test start(t) == nothing
@test length(read(t, UInt8, 6)) == 12
@test stop(t) == nothing
@test clear(t) == nothing

t = digital_output(d*"/Port0/Line0")
@test typeof(t) == NIDAQ.DOTask
@test start(t) == nothing
@test write(t, round(UInt32,[1,0,1,0,1,0])) == 6
@test stop(t) == nothing
@test digital_output(t, d*"/Port0/Line1") == nothing
@test start(t) == nothing
@test write(t, round(UInt8,[1 0; 0 0; 1 0; 0 1; 1 1; 0 1])) == 6
@test stop(t) == nothing
@test clear(t) == nothing

t = generate_pulses(d*"/ctr0")
@test typeof(t) == NIDAQ.COTask
@test NIDAQ.CfgImplicitTiming(t.th, NIDAQ.Val_FiniteSamps, round(UInt64,10)) == 0
@test start(t) == nothing
@test stop(t) == nothing
@test clear(t) == nothing
