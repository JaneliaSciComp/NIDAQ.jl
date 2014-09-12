National Instruments Data Acquisition Interface [![Picture](/hhmi_janelia_160px.png)](http://www.janelia.org)
===============================================

This package provides an interface to NIDAQmx-- National Instruments' driver
for their data acquisition boards.  Their entire header file was ported
using clang.jl, and a higher-level API is provided for ease of use.


System Requirements
===================

NI-DAQmx Base is not supported, so you'll need a Windows box, and a National
Instruments card of course.


Installation
============

First download and install the latest version of NI-DAQmx from National
Instruments.  Then on the Julia command line:

```
Pkg.add("NIDAQ")
```


Basic Usage
===========

Digital output:

```
t = task()
digital_output(t, "Dev1/Port0/Line1")
start(t)
write_digital(t, uint32([1,0,1,0,1,0]))
stop(t)
clear(t)
```

For analog output, replace the obvious lines above with:

```
analog_output(t, "Dev1/ao0")
write_analog(t, rand(6))
```

Counters can be used, for example, to generate a pulse train:

```
generate_pulses(t, "Dev1/ctr0", 1000, 2000)
NIDAQ.DAQmxCfgImplicitTiming(t, convert(Int32,NIDAQ.DAQmx_Val_ContSamps), uint64(1))
```

The properties of the system, devices, tasks, and channels can all be queried:

```
julia> properties()
Dict{Any,Any} with 7 entries:
  "Tasks"=>("",false)
  "NIDAQUpdateVersion"=>(0x00000000,false)
  "NIDAQMinorVersion"=>(0x00000000,false)
  "Scales"=>("",false)
  "DevNames"=>("Dev1",false)
  "GlobalChans"=>("",false)
  "NIDAQMajorVersion"=>(0x0000000e,false)

julia> properties(t)
Dict{Any,Any} with 6 entries:
  "NumDevices"=>(0x00000000,false)
  "NumChans"=>(0x00000000,false)
  "Devices"=>("",false)
  "Channels"=>("",false)
  "Name"=>("_unnamedTask<0>",false)
  "Complete"=>(0x00000001,false)
```

For a full list of convenience function see the export list in src/NIDAQ.jl.
If these don't suit your needs you'll have to dive deep into src/NIDAQmx.jl
as in the counter output example above.


Author
======

Ben Arthur, arthurb@hhmi.org  
[Scientific Computing](http://www.janelia.org/research-resources/computing-resources)  
[Janelia Research Campus](http://www.janelia.org)  
[Howard Hughes Medical Institute](http://www.hhmi.org)
