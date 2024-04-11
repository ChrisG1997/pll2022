###############################################################################
# Created by write_sdc
# Fri Oct  7 16:09:22 2022
###############################################################################
current_design shiftregister
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 100.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {load}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[0]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[10]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[11]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[12]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[13]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[14]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[15]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[16]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[17]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[18]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[19]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[1]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[20]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[21]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[22]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[23]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[24]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[25]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[26]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[27]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[28]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[29]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[2]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[30]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[31]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[3]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[4]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[5]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[6]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[7]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[8]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_read[9]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {read}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {s_in}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[0]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[10]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[11]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[12]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[13]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[14]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[15]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[16]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[17]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[18]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[19]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[1]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[20]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[21]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[22]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[23]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[24]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[25]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[26]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[27]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[28]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[29]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[2]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[30]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[31]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[3]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[4]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[5]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[6]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[7]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[8]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {r_load[9]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {s_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {s_out}]
set_load -pin_load 0.0334 [get_ports {r_load[31]}]
set_load -pin_load 0.0334 [get_ports {r_load[30]}]
set_load -pin_load 0.0334 [get_ports {r_load[29]}]
set_load -pin_load 0.0334 [get_ports {r_load[28]}]
set_load -pin_load 0.0334 [get_ports {r_load[27]}]
set_load -pin_load 0.0334 [get_ports {r_load[26]}]
set_load -pin_load 0.0334 [get_ports {r_load[25]}]
set_load -pin_load 0.0334 [get_ports {r_load[24]}]
set_load -pin_load 0.0334 [get_ports {r_load[23]}]
set_load -pin_load 0.0334 [get_ports {r_load[22]}]
set_load -pin_load 0.0334 [get_ports {r_load[21]}]
set_load -pin_load 0.0334 [get_ports {r_load[20]}]
set_load -pin_load 0.0334 [get_ports {r_load[19]}]
set_load -pin_load 0.0334 [get_ports {r_load[18]}]
set_load -pin_load 0.0334 [get_ports {r_load[17]}]
set_load -pin_load 0.0334 [get_ports {r_load[16]}]
set_load -pin_load 0.0334 [get_ports {r_load[15]}]
set_load -pin_load 0.0334 [get_ports {r_load[14]}]
set_load -pin_load 0.0334 [get_ports {r_load[13]}]
set_load -pin_load 0.0334 [get_ports {r_load[12]}]
set_load -pin_load 0.0334 [get_ports {r_load[11]}]
set_load -pin_load 0.0334 [get_ports {r_load[10]}]
set_load -pin_load 0.0334 [get_ports {r_load[9]}]
set_load -pin_load 0.0334 [get_ports {r_load[8]}]
set_load -pin_load 0.0334 [get_ports {r_load[7]}]
set_load -pin_load 0.0334 [get_ports {r_load[6]}]
set_load -pin_load 0.0334 [get_ports {r_load[5]}]
set_load -pin_load 0.0334 [get_ports {r_load[4]}]
set_load -pin_load 0.0334 [get_ports {r_load[3]}]
set_load -pin_load 0.0334 [get_ports {r_load[2]}]
set_load -pin_load 0.0334 [get_ports {r_load[1]}]
set_load -pin_load 0.0334 [get_ports {r_load[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {load}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {read}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {r_read[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]