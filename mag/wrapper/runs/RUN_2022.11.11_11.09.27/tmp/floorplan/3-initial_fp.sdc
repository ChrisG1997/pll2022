###############################################################################
# Created by write_sdc
# Fri Nov 11 11:09:44 2022
###############################################################################
current_design wrapper
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name ref_in -add -period 40.0000 [get_ports {ref_in}]
create_clock -name clk_in -add -period 40.0000 [get_ports {clk_in}]
create_clock -name vco_in -add -period 10.0000 [get_ports {vco_in}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
