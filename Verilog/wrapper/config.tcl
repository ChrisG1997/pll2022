# Design
set ::env(DESIGN_NAME) "wrapper"

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_PORT) "ref_in clk_in"
set ::env(CLOCK_NET) "ref_in clk_in"

set ::env(FP_CORE_UTIL) "40"
#set ::env(PL_BASIC_PLACEMENT) "1"
set ::env(PL_TARGET_DENSITY) "0.60"
#set ::env(PSN_ENABLE_RESIZING) "0"
#set ::env(PL_RANDOM_GLB_PLACEMENT) "1"
#set ::env(PL_RESIZER_OVERBUFFER) "1"
#set ::env(GLB_RT_ALLOW_CONGESTION) "1"
#set ::env(CELL_PAD) "1"
#set ::env(QUIT_ON_LVS_ERROR) "0"
#set ::env(DIE_AREA) "0 0 550 550"
set ::env(VDD_NETS) "vdd"
set ::env(GND_NETS) "vss"
set ::env(PSN_ENABLE_PIN_SWAP) "0"
#set ::env(RT_MIN_LAYER) "1"
set ::env(RT_MAX_LAYER) "met3"
set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg
set ::env(BASE_SDC_FILE) $::env(DESIGN_DIR)/clock.sdc
set filename ./designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
