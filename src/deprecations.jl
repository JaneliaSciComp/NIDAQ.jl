@deprecate read(t::AITask, precision::DataType, num_samples_per_chan::Integer = -1) read(t::AITask, num_samples_per_chan, precision)
@deprecate read(t::DITask, precision::DataType, num_samples_per_chan::Integer = -1) read(t::DITask, num_samples_per_chan, precision)

# see also `analog_input` and `analog_input_configs`
