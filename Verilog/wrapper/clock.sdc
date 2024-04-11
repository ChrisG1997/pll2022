create_clock -name "ref_in" -add -period 40 [get_ports ref_in]
create_clock -name "clk_in" -add -period 40 [get_ports clk_in]
create_clock -name "vco_in" -add -period 10 [get_ports vco_in]