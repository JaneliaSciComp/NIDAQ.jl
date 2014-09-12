module NIDAQ

# tasks
export task, start, stop, clear

# channels
export analog_input, analog_output, digital_input, digital_output
export count_edges, measure_duty_cycle, quadrature_input, line_to_line, generate_pulses

# read/write
export read_analog, read_digital, write_analog, write_digital, read_counter

# properties
export devices, channel_type, properties, set_property
export analog_input_ranges, analog_output_ranges
export analog_input_channels, analog_output_channels
export digital_input_lines, digital_output_lines
export digital_input_ports, digital_output_ports
export counter_input_channels, counter_output_channels

const NIDAQmx = "C:\\Windows\\System32\\nicaiu.dll"

# could only Pkg.add("Clang") on mac with BUILD_LLVM_CLANG=1 in Make.user option
# julia> using Clang
# julia> context = wrap_c.init()
# julia> context.common_file="common.jl"
# julia> wrap_c.wrap_c_headers(context, {"NIDAQmx.h"})

include("common.jl")
include("NIDAQmx.jl")

include("task.jl")
include("analog.jl")
include("digital.jl")
include("counter.jl")
include("properties.jl")

end
