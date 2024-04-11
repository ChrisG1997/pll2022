set env FP_PDN_CHECK_NODES 1
set env VDD_NET VPWR
set env FP_PDN_CORE_RING_VOFFSET 6
set env FP_PDN_HORIZONTAL_HALO 10
set env FP_PDN_VPITCH 1.0733333333333335
set env FP_PDN_LOWER_LAYER met4
set env SAVE_DEF ./out.def
set env OR_SCRIPT_2 foss/tools/openlane/2022.04.07_02.53.08/scripts/openroad/set_rc.tcl
set env MACRO_BLOCKAGES_LAYER li1 met1 met2 met3 met4
set env FP_PDN_CORE_RING_HOFFSET 6
set env MERGED_LEF_UNPADDED ./tmp/merged_unpadded.lef
set env FP_PDN_CORE_RING_HWIDTH 1.6
set env FP_PDN_CORE_RING 0
set env FP_PDN_HOFFSET 0.45333333333333314
set env FP_PDN_ENABLE_GLOBAL_CONNECTIONS 1
set env PGA_RPT_FILE ./tmp/floorplan/6-pdn.pga.rpt
set env FP_PDN_IRDROP 1
set env PDN_CFG foss/tools/openlane/2022.04.07_02.53.08/scripts/openroad/pdn_cfg.tcl
set env FP_PDN_ENABLE_RAILS 1
set env SCRIPTS_DIR foss/tools/openlane/2022.04.07_02.53.08/scripts
set env FP_PDN_RAIL_WIDTH 0.48
set env OR_SCRIPT_0 foss/tools/openlane/2022.04.07_02.53.08/scripts/openroad/pdn.tcl
set env FP_PDN_VOFFSET 0.5366666666666667
set env FP_PDN_VWIDTH 1.6
set env FP_PDN_HWIDTH 1.6
set env WIRE_RC_LAYER met1
set env STD_CELL_GROUND_PINS VGND VNB
set env GND_PIN VGND
set env FP_PDN_MACROS 
set env FP_PDN_HPITCH 0.9066666666666663
set env LAYERS_RC  li1 1.499e-04 7.176e-02, met1 1.449e-04 8.929e-04, met2 1.331e-04 8.929e-04, met3 1.464e-04 1.567e-04, met4 1.297e-04 1.567e-04, met5 1.501e-04 1.781e-05
set env DESIGN_IS_CORE 1
set env VIAS_RC  mcon 9.249146E-3, via 4.5E-3, via2 3.368786E-3, via3 0.376635E-3, via4 0.00580E-3
set env STD_CELL_POWER_PINS VPWR VPB
set env CURRENT_DEF ./in.def
set env FP_PDN_RAILS_LAYER met1
set env FP_PDN_UPPER_LAYER met5
set env OR_SCRIPT_1 foss/tools/openlane/2022.04.07_02.53.08/scripts/openroad/pdn_cfg.tcl
set env FP_PDN_CORE_RING_HSPACING 1.7
set env VDD_PIN VPWR
set env FP_PDN_CORE_RING_VSPACING 1.7
set env FP_PDN_VERTICAL_HALO 10
set env FP_PDN_ENABLE_MACROS_GRID 1
set env FP_PDN_CORE_RING_VWIDTH 1.6
set env GND_NET VGND
set env LIB_SYNTH_COMPLETE pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    