@deprecate read(t::AITask, precision::DataType, num_samples_per_chan::Integer = -1) read(t::AITask, num_samples_per_chan, precision)
@deprecate read(t::DITask, precision::DataType, num_samples_per_chan::Integer = -1) read(t::DITask, num_samples_per_chan, precision)
@deprecate analog_input_ranges(device::String)  analog_voltage_input_ranges(device::String)
@deprecate analog_output_ranges(device::String) analog_voltage_output_ranges(device::String)

# see also `analog_input` and `analog_input_configs`

