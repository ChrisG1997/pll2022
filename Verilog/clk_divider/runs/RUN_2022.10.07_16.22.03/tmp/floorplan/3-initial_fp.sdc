###############################################################################
# Created by write_sdc
# Fri Oct  7 16:22:14 2022
###############################################################################
current_design clk_divider
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 20.0000 
set_clock_uncertainty 0.2500 clk
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {clk_in}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {divider[0]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {divider[1]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {divider[2]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {divider[3]}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {clk_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {clk_out}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {divider[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {divider[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {divider[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {divider[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
