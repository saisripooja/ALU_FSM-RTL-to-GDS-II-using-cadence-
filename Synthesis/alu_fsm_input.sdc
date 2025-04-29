create_clock -name clk -period 12 -waveform {0 1} [get_ports "clk"]
set_clock_transition -rise 0.2 [get_clocks "clk"]
set_clock_transition -fall 0.2 [get_clocks "clk"]
set_clock_uncertainty 0.02 [get_clocks "clk"]

set_input_transition 0.1 [all_inputs]

set_input_delay -max 1.5 [get_ports "clk"] -clock [get_clocks "clk"]
set_input_delay -max 1.5 [get_ports "reset"] -clock [get_clocks "clk"]
set_input_delay -max 1.5 [get_ports "start"] -clock [get_clocks "clk"]
set_input_delay -max 1.5 [get_ports "A"] -clock [get_clocks "clk"]
set_input_delay -max 1.5 [get_ports "B"] -clock [get_clocks "clk"]
set_input_delay -max 1.5 [get_ports "op_sel"] -clock [get_clocks "clk"]

set_output_delay -max 1.5 [get_ports "result"] -clock [get_clocks "clk"]
set_output_delay -max 1.5 [get_ports "done"] -clock [get_clocks "clk"]
