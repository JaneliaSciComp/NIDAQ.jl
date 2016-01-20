National Instruments Data Acquisition Interface
===============================================

This package provides an interface to NIDAQmx-- National Instruments' driver
for their data acquisition boards.  Their entire C header file was ported
using [Clang.jl](https://github.com/ihnorton/Clang.jl), and a rudimentary
higher-level API is provided for ease of use.


System Requirements
===================

NI-DAQmx Base is not supported, so you'll need a Windows box, and a National
Instruments card of course.


Installation
============

First download and install NI-DAQmx version
[15.1.1](http://www.ni.com/download/ni-daqmx-15.1.1/5665/en/) (or for Julia v3,
[14.1.0](http://www.ni.com/download/ni-daqmx-14.1/4953/en/),
[14.0.0](http://www.ni.com/download/ni-daqmx-14.0/4918/en/),
[9.6.0](http://www.ni.com/download/ni-daqmx-9.6/3423/en/)) from National
Instruments.  Then on the Julia command line:

```
Pkg.add("NIDAQ")
```


Basic Usage
===========

With no input arguments, the high-level `getproperties` function can
be used to query the system:

```
julia> getproperties()
Dict{Any,Any} with 7 entries:
  "Tasks"              => ("",false)
  "NIDAQUpdateVersion" => (0x00000000,false)
  "NIDAQMinorVersion"  => (0x00000001,false)
  "Scales"             => ("",false)
  "NIDAQMajorVersion"  => (0x0000000e,false)
  "GlobalChans"        => ("",false)
  "DevNames"           => ("Dev1",false)
```

Returned is a Dict of tuples, the first member indicating the property value and
the second a Bool indicating whether the former is mutable.

`getproperties` can also input a String containing the name of a device:

```
julia> getproperties("Dev1")
Dict{Any,Any} with 69 entries:
  "CITrigUsage"                     => (42,false)
  "COPhysicalChans"                 => (SubString{ASCIIString}["Dev1/ctr0","Dev1/ctr1","Dev1/ctr2","Dev1/ctr3","Dev1/freqout"],false)
  "COSampClkSupported"              => (true,false)
  "AOCurrentRngs"                   => ([],false)
  "AICurrentRngs"                   => ([],false)
  "AIMaxMultiChanRate"              => (2.0e6,false)
  "COSupportedOutputTypes"          => ([:Val_Pulse_Freq,:Val_Pulse_Ticks,:Val_Pulse_Time],false)
  "AIFreqRngs"                      => ([],false)
  "AOSupportedOutputTypes"          => ([:Val_Voltage],false)
  "COTrigUsage"                     => (42,false)
  "CIMaxTimebase"                   => (1.0e8,false)
  "DILines"                         => (SubString{ASCIIString}["Dev1/port0/line0","Dev1/port0/line1","Dev1/port0/line2","Dev1/port0/line3","Dev1/port0/lin.

  "PXISlotNum"                      => (0xffffffff,false)
  "AICouplings"                     => (:Val_Task_Verify,false)
  "CIMaxSize"                       => (0x00000020,false)
  "BusType"                         => (:Val_USB,false)
  "CISampClkSupported"              => (true,false)
  "AILowpassCutoffFreqDiscreteVals" => ([],false)
  "AILowpassCutoffFreqRangeVals"    => ([],false)
  "ProductCategory"                 => (:Val_XSeriesDAQ,false)
  "AIBridgeRngs"                    => ([],false)
  "DIMaxRate"                       => (1.0e7,false)
  "COSampModes"                     => ([:Val_FiniteSamps,:Val_ContSamps],false)
  "AOPhysicalChans"                 => (SubString{ASCIIString}["Dev1/ao0","Dev1/ao1"],false)
  "AOGains"                         => ([],false)
  "PXIChassisNum"                   => (0xffffffff,false)
  "AIPhysicalChans"                 => (SubString{ASCIIString}["Dev1/ai0","Dev1/ai1","Dev1/ai2","Dev1/ai3","Dev1/ai4","Dev1/ai5","Dev1/ai6","Dev1/ai7"],fa.

  "AOMaxRate"                       => (3.3333333333333335e6,false)
  "DOPorts"                         => (SubString{ASCIIString}["Dev1/port0","Dev1/port1","Dev1/port2"],false)
  "AccessoryProductNums"            => (Uint32[0],false)
  "NumDMAChans"                     => (0x00000000,false)
  "COMaxTimebase"                   => (1.0e8,false)
  "AIResistanceRngs"                => ([],false)
  "Terminals"                       => (SubString{ASCIIString}["/Dev1/PFI0","/Dev1/PFI1","/Dev1/PFI2","/Dev1/PFI3","/Dev1/PFI4","/Dev1/PFI5","/Dev1/PFI6",.

  "AOMinRate"                       => (0.023283064370807974,false)
  "AISupportedMeasTypes"            => ([:Val_Current,:Val_Resistance,:Val_Strain_Gage,:Val_Temp_RTD,:Val_Temp_Thrmstr,:DAQm.

  "DITrigUsage"                     => (14,false)
  "AIVoltageRngs"                   => ([-1.0,1.0,-2.0,2.0,-5.0,5.0,-10.0,10.0],false)
  "AnlgTrigSupported"               => (true,false)
  "COMaxSize"                       => (0x00000020,false)
  "DOLines"                         => (SubString{ASCIIString}["Dev1/port0/line0","Dev1/port0/line1","Dev1/port0/line2","Dev1/port0/line3","Dev1/port0/lin.

  "TEDSHWTEDSSupported"             => (false,false)
  "AccessorySerialNums"             => (Uint32[0],false)
  "AOTrigUsage"                     => (10,false)
  "AIVoltageIntExcitRangeVals"      => ([],false)
  "CISupportedMeasTypes"            => ([:Val_CountEdges,:Val_Freq,:Val_Period,:Val_TwoEdgeSep,:Val_SemiPeriod,:Val_Pu.

  "AOSampModes"                     => ([:Val_FiniteSamps,:Val_ContSamps],false)
  "IsSimulated"                     => (false,false)
  "AOSampClkSupported"              => (true,false)
  "DIPorts"                         => (SubString{ASCIIString}["Dev1/port0","Dev1/port1","Dev1/port2"],false)
  "SerialNum"                       => (0x01719e54,false)
  "AIMaxSingleChanRate"             => (2.0e6,false)
  "DigTrigSupported"                => (true,false)
  "DOMaxRate"                       => (1.0e7,false)
  "AITrigUsage"                     => (14,false)
  "AIMinRate"                       => (0.023283064370807974,false)
  "ProductType"                     => ("USB-6366 (64 MS) (Mass Termination)",false)
  "AccessoryProductTypes"           => ("",false)
  "AISimultaneousSamplingSupported" => (true,false)
  "DOTrigUsage"                     => (10,false)
  "ChassisModuleDevNames"           => ("",false)
  "CISampModes"                     => ([:Val_FiniteSamps,:Val_ContSamps],false)
  "CIPhysicalChans"                 => (SubString{ASCIIString}["Dev1/ctr0","Dev1/ctr1","Dev1/ctr2","Dev1/ctr3"],false)
  "AISampModes"                     => ([:Val_FiniteSamps,:Val_ContSamps],false)
  "AOVoltageRngs"                   => ([-5.0,5.0,-10.0,10.0],false)
  "ProductNum"                      => (0x000075a1,false)
  "AICurrentIntExcitDiscreteVals"   => ([],false)
  "AIVoltageIntExcitDiscreteVals"   => ([],false)
  "AIGains"                         => ([],false)
```

One can index into the Dict to get a list of channels:

```
julia> getproperties("Dev1")["AIPhysicalChans"]
(SubString{ASCIIString}["Dev1/ai0","Dev1/ai1","Dev1/ai2","Dev1/ai3","Dev1/ai4","Dev1/ai5","Dev1/ai6","Dev1/ai7"],false)
```

A bit simpler in this case though is to use another high-level function
which returns just the String Array:

```
julia> analog_input_channels("Dev1")
8-element Array{ASCIIString,1}:
 "Dev1/ai0"
 "Dev1/ai1"
 "Dev1/ai2"
 "Dev1/ai3"
 "Dev1/ai4"
 "Dev1/ai5"
 "Dev1/ai6"
 "Dev1/ai7"
```

To add, for example, analog input channels, use the high-level `analog_input` function:

```
julia> t = analog_input("Dev1/ai0:1")
AITask(Ptr{Void} @0x0000000025d18600)

julia> typeof(t)
AITask (constructor with 3 methods)

julia> super(AITask)
Task
```

Two channels were added above using the `:` notation.  Additional
channels can be added later by inputing the returned Task:

```
julia> analog_input(t, "Dev1/ai2")
```

`getproperties` can also input a Task:

```
julia> getproperties(t)
Dict{Any,Any} with 6 entries:
  "NumDevices" => (0x00000001,false)
  "NumChans"   => (0x00000003,false)
  "Devices"    => ("Dev1",false)
  "Channels"   => (SubString{ASCIIString}["Dev1/ai0","Dev1/ai1","Dev1/ai2"],false)
  "Name"       => ("_unnamedTask<1>",false)
  "Complete"   => (true,false)
```

as well as a channel:

```
julia> getproperties(t, "Dev1/ai0")
Dict{Any,Any} with 60 entries:
  "LowpassEnable"                     => (false,true)
  "CurrentACRMSUnits"                 => (:Val_Amps,true)
  "ResolutionUnits"                   => (:Val_Bits,false)
  "ChanCalApplyCalIfExp"              => (false,true)
  "Max"                               => (10.0,true)
  "UsbXferReqCount"                   => (0x00000004,true)
  "EddyCurrentProxProbeUnits"         => (:Val_Meters,true)
  "VoltageUnits"                      => (:Val_Volts,true)
  "MeasType"                          => (:Val_Voltage,false)
  "ChanCalPolyForwardCoeff"           => ([],true)
  "TorqueUnits"                       => (:Val_NewtonMeters,true)
  "ChanCalDesc"                       => ("",true)
  "ChanCalVerifRefVals"               => ([],true)
  "Gain"                              => (1.0,true)
  "ChanCalTablePreScaledVals"         => ([],true)
  "ChanCalScaleType"                  => (:Val_Table,true)
  "AccelUnits"                        => (:Val_g,true)
  "RngHigh"                           => (10.0,true)
  "LossyLSBRemovalCompressedSampSize" => (0x00000010,true)
  "IsTEDS"                            => (false,false)
  "Coupling"                          => (:Val_DC,true)
  "SoundPressureUnits"                => (:Val_Pascals,true)
  "StrainGageCfg"                     => (:Val_FullBridgeI,true)
  "MemMapEnable"                      => (false,true)
  "ChanCalVerifAcqVals"               => ([],true)
  "VelocityUnits"                     => (:Val_MetersPerSecond,true)
  "RngLow"                            => (-10.0,true)
  "ResistanceUnits"                   => (:Val_Ohms,true)
  "FreqUnits"                         => (:Val_Hz,true)
  "CustomScaleName"                   => ("",true)
  "DataXferReqCond"                   => (:Val_OnBrdMemNotEmpty,true)
  "VoltageACRMSUnits"                 => (:Val_Volts,true)
  "Min"                               => (-10.0,true)
  "ChanCalHasValidCalInfo"            => (false,false)
  "CurrentUnits"                      => (:Val_Amps,true)
  "DitherEnable"                      => (true,true)
  "BridgeUnits"                       => (:Val_VoltsPerVolt,true)
  "StrainUnits"                       => (:Val_Strain,true)
  "ChanCalEnableCal"                  => (false,true)
  "Resolution"                        => (16.0,false)
  "RawSampJustification"              => (:Val_RightJustified,false)
  "ChanCalPolyReverseCoeff"           => ([],true)
  "DevScalingCoeff"                   => ([0.00010292415409129518,0.0003126729979278514,5.87392931606528e-14,-3.3185468161982717e-19],false)
  "TempUnits"                         => (:Val_DegC,true)
  "RawSampSize"                       => (0x00000010,false)
  "UsbXferReqSize"                    => (0x00008000,true)
  "ForceReadFromChan"                 => (false,true)
  "ChanCalTableScaledVals"            => ([],true)
  "ForceUnits"                        => (:Val_Newtons,true)
  "RVDTUnits"                         => (:Val_Degrees,true)
  "RawDataCompressionType"            => (:Val_None,true)
  "ThrmcplCJCVal"                     => (25.0,true)
  "AutoZeroMode"                      => (:Val_None,true)
  "PressureUnits"                     => (:Val_PoundsPerSquareInch,true)
  "VoltagedBRef"                      => (1.0,true)
  "TermCfg"                           => (:Val_Diff,true)
  "LVDTUnits"                         => (:Val_Meters,true)
  "ChanCalOperatorName"               => ("",true)
  "InputSrc"                          => ("_external_channel",true)
  "DataXferMech"                      => (:Val_ProgrammedIO,true)
```

Use `setproperty!` to change a mutable property:

```
julia> setproperty!(t, "Dev1/ai0", "Max", 5.0)
```

Once everything is configured, get some data using the `read` function:

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

`read` can also return `Int16`, `Int32`, `Uint16`, and `Uint32`.

Similar work flows exist for `analog_output`, `digital_input`,
and `digital_output`.  The high-level API also supports many counter
functions, including `count_edges` and `generate_pulses`.  For a
full list of convenience functions use the `names` function in Julia Base:

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
don't suit your needs you'll have to dive deep into `src/functions_V*.jl`
and `src/constants_V*.jl`.  Complete documentation of this low-level API
is [here](http://zone.ni.com/reference/en-XX/help/370466V-01/) and
[here](http://zone.ni.com/reference/en-XX/help/370471W-01/).

One situation where the low-level API is needed is to specify
continous output of pulses using a counter:

```
julia> t = generate_pulses("Dev1/ctr0")
COTask(Ptr{Void} @0x00000000059d8790)

julia> names(t)
1-element Array{Symbol,1}:
 :th

julia> NIDAQ.CfgImplicitTiming(t.th, NIDAQ.Val_ContSamps, uint64(1))
0
```

Note that tasks consist of just a single field `th`, and that this "task
handle" is what must be passed into many low-level routines.  For brevity
NIDAQ.jl strips the "DAQmx" prefix to all functions and constants in NI-DAQmx,
and converts the latter to 32 bits.  One must still take care to caste the
other inputs appropriately though.


Adding Support for a Version of NI-DAQmx
========================================

Julia must be built with the same version of Clang as
[Clang.jl](https://github.com/ihnorton/Clang.jl) uses to parse NIDAQmx.h.  This
is most easily ensured by compiling Julia from source and setting
`BUILD_LLVM_CLANG=1` in Make.user, instead of using a pre-compiled
distribution.  Then,

```
julia> using Clang
julia> context = wrap_c.init()
julia> context.common_file="common.jl"
julia> wrap_c.wrap_c_headers(context, {"NIDAQmx.h"})
$ mv NIDAQmx.h src/functions_V<version>.h
$ mv NIDAQmx.jl src/functions_V<version>.jl
$ mv common.jl src/constants_V<version>.jl
```

The following manual edits are then necessary:

+ In `constants_V<version>.jl`
  + comment out `const CVICALLBACK = CVICDECL`,
  + change `typealias bool32 uInt32` to `typealias bool32 Bool32`.
  + in NI-DAQmx v15.1.1 comment out `using Compat`
+ For NI-DAQmx v9.6.0 in `NIDAQmx.h` change 
`defined(__linux__)` to `defined(__linux__) || defined(__APPLE__)`.


Author
======

[Ben Arthur](http://www.janelia.org/people/research-resources-staff/ben-arthur), arthurb@hhmi.org  
[Scientific Computing](http://www.janelia.org/research-resources/computing-resources)  
[Janelia Research Campus](http://www.janelia.org)  
[Howard Hughes Medical Institute](http://www.hhmi.org)

[![Picture](/hhmi_janelia_160px.png)](http://www.janelia.org)
