# Design
set ::env(DESIGN_NAME) "clk_divider"

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(CLOCK_PERIOD) "20"
set ::env(CLOCK_PORT) "clk"

set ::env(FP_CORE_UTIL) "30"
set ::env(PL_BASIC_PLACEMENT) "0"
set ::env(PL_TARGET_DENSITY) "0.4"
#set ::env(PSN_ENABLE_RESIZING) "0"
#set ::env(PL_RANDOM_GLB_PLACEMENT) "1"
#set ::env(PL_RESIZER_OVERBUFFER) "1"
#set ::env(PDN_CORE_RING) "0"
#set ::env(PDN_ENABLE_RAILS) "0"
#set ::env(PDN_AUTO_ADJUST) "0"
#set ::env(DIE_AREA) "0 0.01 0.01 0.01"
#set ::env(FP_PDN_VPITCH) "4.3"
#set ::env(CORE_AREA) "0 0 6.0 6.0"


#set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

set filename ./designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
