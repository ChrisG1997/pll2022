# Design
set ::env(DESIGN_NAME) "clock_divider"

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/freqdiv.v]

set ::env(CLOCK_PERIOD) "0.5"
set ::env(CLOCK_PORT) "clk"

set ::env(PL_TARGET_DENSITY) "50"


#set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

set filename ./designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
