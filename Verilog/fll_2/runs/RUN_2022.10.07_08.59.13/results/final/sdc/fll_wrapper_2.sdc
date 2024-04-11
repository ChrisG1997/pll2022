###############################################################################
# Created by write_sdc
# Fri Oct  7 09:01:05 2022
###############################################################################
current_design fll_wrapper_2
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 40.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[0]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[1]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[2]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[3]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[4]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[5]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[6]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[7]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[8]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lower[9]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[0]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[1]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[2]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[3]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[4]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[5]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[6]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[7]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[8]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref_time[9]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[0]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[1]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[2]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[3]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[4]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[5]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[6]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[7]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[8]}]
set_input_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {upper[9]}]
set_output_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {corner[0]}]
set_output_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {corner[1]}]
set_output_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {corner[2]}]
set_output_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lock}]
set_output_delay 8.0000 -clock [get_clocks {clk}] -add_delay [get_ports {pwm}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {lock}]
set_load -pin_load 0.0334 [get_ports {pwm}]
set_load -pin_load 0.0334 [get_ports {corner[2]}]
set_load -pin_load 0.0334 [get_ports {corner[1]}]
set_load -pin_load 0.0334 [get_ports {corner[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lower[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref_time[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {upper[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
