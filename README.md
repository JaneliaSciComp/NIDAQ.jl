National Instruments Data Acquisition Interface
===============================================

This package provides an interface to NIDAQmx-- National Instruments' driver
for their data acquisition boards.  Their entire C header file was ported
using [clang.jl](https://github.com/ihnorton/Clang.jl), and a rudimentary
higher-level API is provided for ease of use.


System Requirements
===================

NI-DAQmx Base is not supported, so you'll need a Windows box, and a National
Instruments card of course.


Installation
============

First download and install NI-DAQmx version
[14.0](http://www.ni.com/download/ni-daqmx-14.0/4918/en/) from National
Instruments.  Then on the Julia command line:

```
Pkg.add("NIDAQ")
```


Basic Usage
===========

With no input arguments, the high-level ```getproperties``` function can
be used to query the system:

```
julia> getproperties()
Dict{Any,Any} with 7 entries:
  "Tasks"              => ("MyVoltageOutTdask",false)
  "NIDAQUpdateVersion" => (0x00000000,false)
  "NIDAQMinorVersion"  => (0x00000000,false)
  "Scales"             => ("",false)
  "NIDAQMajorVersion"  => (0x0000000e,false)
  "GlobalChans"        => ("",false)
  "DevNames"           => ("Dev1",false)
```

Returned is a Dict of tuples, the first member indicating the property value and
the second a Bool indicating whether the former is mutable.

```getproperties``` can also input a String containing the name of a device:

```
julia> getproperties("Dev1")
Dict{Union(ASCIIString,UTF8String),Any} with 67 entries:
  "CITrigUsage"                   => (34,false)
  "COPhysicalChans"               => ("Dev1/ctr0, Dev1/ctr1, Dev1/freqout",false)
  "COSampClkSupported"            => (false,false)
  "AOCurrentRngs"                 => ("",false)
  "AICurrentRngs"                 => ("",false)
  "AIMaxMultiChanRate"            => (500000.0,false)
  "COSupportedOutputTypes"        => ("➇⠜",false)
  "AIFreqRngs"                    => ("",false)
  "AOSupportedOutputTypes"        => ("",false)
  "COTrigUsage"                   => (42,false)
  "CIMaxTimebase"                 => (8.0e7,false)
  "DILines"                       => ("Dev1/port0/line0, Dev1/port0/line1, Dev1/port0/line2, Dev1/p…
  "AICouplings"                   => (:DAQmx_Val_ChannelHighImpedance,false)
  "CIMaxSize"                     => (0x00000020,false)
  "BusType"                       => (:DAQmx_Val_USB,false)
  "CISampClkSupported"            => (true,false)
  "AILowpassCutoffFreqDiscreteVa… => ("",false)
  "AILowpassCutoffFreqRangeVals"  => ("",false)
  "ProductCategory"               => (:DAQmx_Val_MSeriesDAQ,false)
  "AIBridgeRngs"                  => ("",false)
  "DIMaxRate"                     => (1.0e6,false)
  "COSampModes"                   => ("",false)
  "AOPhysicalChans"               => ("Dev1/ao0, Dev1/ao1",false)
  "AOGains"                       => ("",false)
  "AIPhysicalChans"               => ("Dev1/ai0, Dev1/ai1, Dev1/ai2, Dev1/ai3, Dev1/ai4, Dev1/ai5, …
  "AOMaxRate"                     => (2.8571428571428573e6,false)
  "DOPorts"                       => ("Dev1/port0, Dev1/port1, Dev1/port2",false)
  "AccessoryProductNums"          => ("",false)
  "NumDMAChans"                   => (0x00000000,false)
  "COMaxTimebase"                 => (8.0e7,false)
  "AIResistanceRngs"              => ("",false)
  "Terminals"                     => ("/Dev1/PFI0, /Dev1/PFI1, /Dev1/PFI2, /Dev1/PFI3, /Dev1/PFI4, …
  "AOMinRate"                     => (0.004656612874161595,false)
  "AISupportedMeasTypes"          => ("\u2796⠦⠼⠽⠾⠿⡇⡒⡓",false)
  "DITrigUsage"                   => (:DAQmx_Val_ChannelVoltage,false)
  "AIVoltageRngs"                 => ("",false)
  "AnlgTrigSupported"             => (true,false)
  "COMaxSize"                     => (0x00000020,false)
  "DOLines"                       => ("Dev1/port0/line0, Dev1/port0/line1, Dev1/port0/line2, Dev1/p…
  "TEDSHWTEDSSupported"           => (false,false)
  "AccessorySerialNums"           => ("",false)
  "AOTrigUsage"                   => (10,false)
  "AIVoltageIntExcitRangeVals"    => ("",false)
  "CISupportedMeasTypes"          => ("➍⟃⠐⠛⠱⡷⡸",false)
  "AOSampModes"                   => ("⟂",false)
  "IsSimulated"                   => (false,false)
  "AOSampClkSupported"            => (true,false)
  "DIPorts"                       => ("Dev1/port0, Dev1/port1, Dev1/port2",false)
  "SerialNum"                     => (0x017596c1,false)
  "AIMaxSingleChanRate"           => (666666.6666666666,false)
  "DigTrigSupported"              => (true,false)
  "DOMaxRate"                     => (1.0e7,false)
  "AITrigUsage"                   => (14,false)
  "AIMinRate"                     => (0.004656612874161595,false)
  "ProductType"                   => ("USB-6281 (Mass Termination)",false)
  "AccessoryProductTypes"         => ("",false)
  "AISimultaneousSamplingSupport… => (false,false)
  "DOTrigUsage"                   => (:DAQmx_Val_ChannelVoltage,false)
  "CISampModes"                   => ("⟂",false)
  "ChassisModuleDevNames"         => ("",false)
  "AISampModes"                   => ("⟂",false)
  "CIPhysicalChans"               => ("Dev1/ctr0, Dev1/ctr1",false)
  "AOVoltageRngs"                 => ("\U42f03e45�",false)
  "ProductNum"                    => (0x00007340,false)
  "AICurrentIntExcitDiscreteVals" => ("",false)
  "AIVoltageIntExcitDiscreteVals" => ("",false)
  "AIGains"                       => ("",false)
```

One can index into the Dict to get a list of channels:

```
julia> getproperties("Dev1")["AIPhysicalChans"]
("Dev1/ai0, Dev1/ai1, Dev1/ai2, Dev1/ai3, Dev1/ai4, Dev1/ai5, Dev1/ai6, Dev1/ai7, Dev1/ai8, Dev1/ai9, De v1/ai10, Dev1/ai11, Dev1/ai12, Dev1/ai13, Dev1/ai14, Dev1/ai15",false)
```

A bit simpler in this case though is to use another high-level
function which splits the channel String into an Array:

```
julia> analog_input_channels("Dev1")
16-element Array{ASCIIString,1}:
 "Dev1/ai0"
 "Dev1/ai1"
 "Dev1/ai2"
 "Dev1/ai3"
 "Dev1/ai4"
 "Dev1/ai5"
 "Dev1/ai6"
 "Dev1/ai7"
 "Dev1/ai8"
 "Dev1/ai9"
 "Dev1/ai10"
 "Dev1/ai11"
 "Dev1/ai12"
 "Dev1/ai13"
 "Dev1/ai14"
 "Dev1/ai15"
```

To add, for example, analog input channels, use the high-level ```analog_input``` function:

```
julia> t = analog_input("Dev1/ai0:1")
AITask(Ptr{Void} @0x0000000025d18600)

julia> typeof(t)
AITask (constructor with 3 methods)

julia> super(AITask)
Task
```

Two channels were added above using the ```:``` notation.  Additional
channels can be added later by inputing the returned Task:

```
julia> analog_input(t, "Dev1/ai2")
```

```getproperties``` can also input a Task:

```
julia> getproperties(t)
Dict{Any,Any} with 6 entries:
  "NumDevices" => (0x00000001,false)
  "NumChans"   => (0x00000003,false)
  "Devices"    => ("Dev1",false)
  "Channels"   => ("Dev1/ai0, Dev1/ai1, Dev1/ai2",false)
  "Name"       => ("_unnamedTask<0>",false)
  "Complete"   => (true,false)
```

as well as a channel:

```
julia> getproperties(t, "Dev1/ai0")
Dict{Any,Any} with 60 entries:
  "LowpassEnable"                  => (false,true)
  "CurrentACRMSUnits"              => (:DAQmx_Val_Amps,true)
  "ResolutionUnits"                => (:DAQmx_Val_Bits,false)
  "ChanCalApplyCalIfExp"           => (false,true)
  "Max"                            => (10.0,true)
  "UsbXferReqCount"                => (0x00000004,true)
  "EddyCurrentProxProbeUnits"      => (:DAQmx_Val_Meters,true)
  "VoltageUnits"                   => (:DAQmx_Val_Volts,true)
  "MeasType"                       => (:DAQmx_Val_Voltage,false)
  "ChanCalPolyForwardCoeff"        => ("",true)
  "TorqueUnits"                    => (:DAQmx_Val_NewtonMeters,true)
  "ChanCalDesc"                    => ("",true)
  "ChanCalVerifRefVals"            => ("",true)
  "ChanCalTablePreScaledVals"      => ("",true)
  "ChanCalScaleType"               => (:DAQmx_Val_Table,true)
  "AccelUnits"                     => (:DAQmx_Val_AccelUnit_g,true)
  "RngHigh"                        => (10.0,true)
  "LossyLSBRemovalCompressedSampS. => (0x00000010,true)
  "IsTEDS"                         => (false,false)
  "Coupling"                       => (:DAQmx_Val_DC,true)
  "SoundPressureUnits"             => (:DAQmx_Val_Pascals,true)
  "StrainGageCfg"                  => (:DAQmx_Val_FullBridgeI,true)
  "MemMapEnable"                   => (false,true)
  "ChanCalVerifAcqVals"            => ("",true)
  "VelocityUnits"                  => (:DAQmx_Val_MetersPerSecond,true)
  "RngLow"                         => (-10.0,true)
  "ResistanceUnits"                => (:DAQmx_Val_Ohms,true)
  "FreqUnits"                      => (:DAQmx_Val_Hz,true)
  "CustomScaleName"                => ("",true)
  "DataXferReqCond"                => (:DAQmx_Val_OnBrdMemNotEmpty,true)
  "VoltageACRMSUnits"              => (:DAQmx_Val_Volts,true)
  "Min"                            => (-10.0,true)
  "ChanCalHasValidCalInfo"         => (false,false)
  "CurrentUnits"                   => (:DAQmx_Val_Amps,true)
  "DitherEnable"                   => (true,true)
  "BridgeUnits"                    => (:DAQmx_Val_VoltsPerVolt,true)
  "LowpassCutoffFreq"              => (40000.0,true)
  "StrainUnits"                    => (:DAQmx_Val_Strain,true)
  "ChanCalEnableCal"               => (false,true)
  "Resolution"                     => (18.0,false)
  "RawSampJustification"           => (:DAQmx_Val_RightJustified,false)
  "ChanCalPolyReverseCoeff"        => ("",true)
  "DevScalingCoeff"                => ("\0\0\0",false)
  "TempUnits"                      => (:DAQmx_Val_DegC,true)
  "RawSampSize"                    => (0x00000020,false)
  "UsbXferReqSize"                 => (0x00008000,true)
  "ForceReadFromChan"              => (false,true)
  "ChanCalTableScaledVals"         => ("",true)
  "ForceUnits"                     => (:DAQmx_Val_Newtons,true)
  "RVDTUnits"                      => (:DAQmx_Val_Degrees,true)
  "RawDataCompressionType"         => (:DAQmx_Val_None,true)
  "ThrmcplCJCVal"                  => (25.0,true)
  "AutoZeroMode"                   => (:DAQmx_Val_None,true)
  "VoltagedBRef"                   => (1.0,true)
  "PressureUnits"                  => (:DAQmx_Val_PoundsPerSquareInch,true)
  "TermCfg"                        => (:DAQmx_Val_Diff,true)
  "LVDTUnits"                      => (:DAQmx_Val_Meters,true)
  "ChanCalOperatorName"            => ("",true)
  "InputSrc"                       => ("",true)
  "DataXferMech"                   => (:DAQmx_Val_ProgrammedIO,true)
```

Use ```setproperty!``` to change a channel's mutable property:

```
julia> setproperty!(t, "Dev1/ai0", "Max", 5.0)
```

Once everything is configured, get some data using the ```read``` function:

```
julia> start(t)

julia> read(t, Float64, 10)
10x3 Array{Float64,2}:
 1.52407   -0.448835   0.381075
 1.37546   -0.213537   0.305847
 1.2363    -0.0268698  0.262826
 1.109      0.118619   0.243117
 0.995797   0.2311     0.240073
 0.896695   0.315782   0.248004
 0.811452   0.378752   0.262746
 0.739429   0.424257   0.281893
 0.679263   0.456223   0.302402
 0.629672   0.477774   0.323473

julia> stop(t)

julia> clear(t)
```

```read``` can also return ```Int16```, ```Int32```, ```Uint16```, and ```Uint32```.

Similar work flows exist for ```analog_output```, ```digital_input```,
and ```digital_output```.  The high-level API also supports many counter
functions, including ```count_edges``` and ```generate_pulses```.  For a
full list of convenience functions use the ```names``` function in Julia Base:

```
julia> names(NIDAQ)
25-element Array{Symbol,1}:
 :analog_output_channels 
 :digital_input_channels 
 :setproperty!           
 :line_to_line           
 :counter_input_channels 
 :counter_output_channels
 :NIDAQ                  
 :measure_duty_cycle     
 :analog_input_ranges    
 :digital_input          
 :stop                   
 :generate_pulses        
 :count_edges            
 :digital_output_channels
 :analog_input           
 :channel_type           
 :analog_output_ranges   
 :devices                
 :digital_output         
 :getproperties          
 :quadrature_input       
 :analog_input_channels  
 :analog_output          
 :Bool32                 
 :clear                  
```

NIDAQmx is a powerful interface, and while NIDAQ.jl provides wrappers
for all of it's functions, it only abstracts a few of them.  If these
don't suit your needs you'll have to dive deep into src/functions.jl
and src/constants.jl.  Complete documentation of this low-level API
is [here](http://zone.ni.com/reference/en-XX/help/370466V-01/) and
[here](http://zone.ni.com/reference/en-XX/help/370471W-01/).

One situation where the low-level API is currently needed is to specify
continous output of pulses using a counter:

```
julia> t = generate_pulses("Dev1/ctr0")
COTask(Ptr{Void} @0x00000000059d8790)

julia> names(t)
1-element Array{Symbol,1}:
 :th

julia> NIDAQ.DAQmxCfgImplicitTiming(t.th, int32(NIDAQ.DAQmx_Val_ContSamps), uint64(1))
0
```

Note that tasks consist of just a single field ```th```, and that this "task
handle" is what must be passed into many low-level routines.  One must also
take care to caste the inputs appropriately.


Author
======

[Ben Arthur](http://www.janelia.org/people/research-resources-staff/ben-arthur), arthurb@hhmi.org  
[Scientific Computing](http://www.janelia.org/research-resources/computing-resources)  
[Janelia Research Campus](http://www.janelia.org)  
[Howard Hughes Medical Institute](http://www.hhmi.org)

[![Picture](/hhmi_janelia_160px.png)](http://www.janelia.org)
