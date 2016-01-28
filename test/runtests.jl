using NIDAQ, Base.Test

info("NIDAQ: Checking installation - no measurement hardware is needed for this section")
@test typeof(getproperties()) == Dict{ASCIIString,Tuple{Any,Bool}}
@test haskey(getproperties(), "NIDAQMajorVersion")
d = devices()

if length(d) == 0
    info("NIDAQ: no measurement HW found, skipping rest of the test suite")
    device_available = false
else
    d=d[1]
    info("NIDAQ: found at least one measurement HW: $(d)")
    @test typeof(getproperties(d)) == Dict{ASCIIString,Tuple{Any,Bool}}
    pr = getproperties(d)
    device_available = true

    @test typeof(getproperties(d)) == Dict{ASCIIString,Tuple{Any,Bool}}
    @test typeof(analog_input_channels()) == Vector{ASCIIString}
    @test typeof(analog_output_channels()) == Vector{ASCIIString}
    @test typeof(digital_input_channels()) == Vector{ASCIIString}
    @test typeof(digital_output_channels()) == Vector{ASCIIString}
    @test typeof(counter_input_channels()) == Vector{ASCIIString}
    @test typeof(counter_output_channels()) == Vector{ASCIIString}
    @test typeof(analog_input_ranges()) == Matrix{Float64}
    @test typeof(analog_output_ranges()) == Matrix{Float64}
end


if !(device_available && length(pr["AIPhysicalChans"][1]) > 0)
    info("NIDAQ: measurement HW does not support any AIPhysicalChans, skipping part of the suite")
else
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
end

if !(device_available && length(pr["AOPhysicalChans"][1]) > 0)
    info("NIDAQ: measurement HW does not support any AOPhysicalChans, skipping part of the suite")
else
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
end

if !(device_available && length(pr["DILines"][1]) > 0)
    info("NIDAQ: measurement HW does not support DILines, skipping part of the suite")
else
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
end
if !(device_available && length(pr["DOLines"][1]) > 0)
    info("NIDAQ: measurement HW does not support DILines, skipping part of the suite")
else
    t = digital_output(d*"/Port0/Line0")
    @test typeof(t) == NIDAQ.DOTask
    @test start(t) == nothing
    @test write(t, round(UInt32, [1,0,1,0,1,0])) == 6
    @test stop(t) == nothing
    @test digital_output(t, d*"/Port0/Line1") == nothing
    @test start(t) == nothing
    @test write(t, round(UInt8, [1 0; 0 0; 1 0; 0 1; 1 1; 0 1])) == 6
    @test stop(t) == nothing
    @test clear(t) == nothing
end

if !(device_available && length(pr["COPhysicalChans"][1]) > 0)
    info("NIDAQ: measurement HW does not support COPhysicalChans, skipping part of the suite")
else
    t = generate_pulses(d*"/ctr0")
    @test typeof(t) == NIDAQ.COTask
    @test NIDAQ.CfgImplicitTiming(t.th, NIDAQ.Val_FiniteSamps, UInt64(10)) == 0
    @test start(t) == nothing
    @test stop(t) == nothing
    @test clear(t) == nothing
end
