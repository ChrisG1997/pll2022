# Design
set ::env(DESIGN_NAME) "fll_wrapper_2"

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(CLOCK_PERIOD) "40"
set ::env(CLOCK_PORT) "clk"

set ::env(FP_CORE_UTIL) "40"
set ::env(PL_BASIC_PLACEMENT) "0"
set ::env(PL_TARGET_DENSITY) "0.75"
#set ::env(PSN_ENABLE_RESIZING) "0"
#set ::env(PL_RANDOM_GLB_PLACEMENT) "1"
#set ::env(PL_RESIZER_OVERBUFFER) "1"


#set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

set filename ./designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
