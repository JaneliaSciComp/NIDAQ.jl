using Revise
using NIDAQ

devices()
getproperties()
prop = getproperties("Dev1")
show(stdout, "text/plain", prop)
# show all functions in NIDAQ
show(stdout, "text/plain", names(NIDAQ))

## test analog input
analog_input_channels("Dev1")
analog_voltage_input_ranges("Dev1")
t = analog_input("Dev1/ai0")
getproperties(t)
ch_prop = getproperties(t, "Dev1/ai0")
show(stdout, "text/plain", ch_prop)
#setproperty!(t, "Dev1/ai0", "Max", Float64(10.0))
val = getproperty(t, "Dev1/ai0", "Max")
start(t)
NIDAQ.read(t)
stop(t)
clear(t)


## test analog output
analog_output_channels("Dev1")
analog_voltage_output_ranges("Dev1")
t = analog_output("Dev1/ao0")
getproperties(t)
ch_prop = getproperties(t, "Dev1/ao0")
val = getproperty(t, "Dev1/ao0", "Min")
start(t)
NIDAQ.write(t, [2.2])
stop(t)
clear(t)


## test digital output
digital_output_channels("Dev1")
t = digital_output("Dev1/port0/line0")
getproperties(t)
ch_prop = getproperties(t, "Dev1/port0/line0")
start(t)
NIDAQ.write(t, [UInt8(1)])
stop(t)
clear(t)

#major = Ref{UInt32}(0)
#NIDAQmx = "C:\\Windows\\System32\\nicaiu.dll" 
#ccall((:DAQmxGetSysNIDAQMajorVersion,NIDAQmx),Int32,(Ref{UInt32},),major)

#err = @ccall "nicaiu.dll".DAQmxGetSysNIDAQMajorVersion(major::Ref{UInt32})::Int32