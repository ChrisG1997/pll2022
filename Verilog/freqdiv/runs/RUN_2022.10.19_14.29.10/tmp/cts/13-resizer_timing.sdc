###############################################################################
# Created by write_sdc
# Wed Oct 19 14:35:30 2022
###############################################################################
current_design clock_divider
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 0.5000 
set_clock_uncertainty 0.2500 clk
set_input_delay 0.1000 -clock [get_clocks {clk}] -add_delay [get_ports {clock_in}]
set_output_delay 0.1000 -clock [get_clocks {clk}] -add_delay [get_ports {clock_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {clock_out}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clock_in}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
