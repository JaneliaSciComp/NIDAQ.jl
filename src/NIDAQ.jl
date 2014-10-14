module NIDAQ

import Base.write, Base.read, Base.start
gtk_absent = true
try
  import Gtk.setproperty!
  gtk_absent = false
end

# tasks
export stop, clear

# channels
export analog_input, analog_output, digital_input, digital_output
export count_edges, measure_duty_cycle, quadrature_input, line_to_line, generate_pulses

# properties
export devices, channel_type, getproperties
gtk_absent && (export setproperty!)
export analog_input_ranges, analog_output_ranges
export analog_input_channels, analog_output_channels
export digital_input_channels, digital_output_channels
export counter_input_channels, counter_output_channels

const NIDAQmx = "C:\\Windows\\System32\\nicaiu.dll"

bitstype 32 Bool32 <: Integer
export Bool32

# could only Pkg.add("Clang") on mac with BUILD_LLVM_CLANG=1 in Make.user option
# julia> using Clang
# julia> context = wrap_c.init()
# julia> context.common_file="common.jl"
# julia> wrap_c.wrap_c_headers(context, {"NIDAQmx.h"})
# $ edit common.jl:
#     typealias bool32 uInt32 -> typealias bool32 Bool32
#     comment out const CVICALLBACK = CVICDECL
# $ mv NIDAQmx.jl functions_V*.jl
# $ mv common.jl constants_V*.jl

try
  global ver
  major = Uint32[0]
  ccall((:DAQmxGetSysNIDAQMajorVersion,NIDAQmx),Int32,(Ptr{Uint32},),major)
  minor = Uint32[0]
  ccall((:DAQmxGetSysNIDAQMinorVersion,NIDAQmx),Int32,(Ptr{Uint32},),minor)
  update = Uint32[0]
  ccall((:DAQmxGetSysNIDAQUpdateVersion,NIDAQmx),Int32,(Ptr{Uint32},),update)
  ver = "$(major[1]).$(minor[1]).$(update[1])"
catch
  error("can not determine NIDAQmx version.")
end

try
  include("constants_V$ver.jl")
  include("functions_V$ver.jl")
catch
  error("NIDAQmx version $ver is not supported.")
end

include("task.jl")
include("analog.jl")
include("digital.jl")
include("counter.jl")
include("properties.jl")

function catch_error(code::Int32, extra::ASCIIString=""; err_fcn=error)
    sz = DAQmxGetErrorString(code, convert(Ptr{Uint8},C_NULL), convert(Uint32,0))
    data = zeros(Uint8,sz)
    ret = DAQmxGetErrorString(code, convert(Ptr{Uint8},data), convert(Uint32,sz))
    ret>0 && warn("DAQmxGetErrorString error $ret")
    ret<0 && err_fcn("DAQmxGetErrorString error $ret")
    data = chop(convert(ASCIIString, data))
    code>0 && warn("NIDAQmx: "*extra*data)
    code<0 && err_fcn("NIDAQmx: "*extra*data)
end

end
