#!/bin/sh
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir;
export LAYERS_RC=' li1 1.499e-04 7.176e-02, met1 1.449e-04 8.929e-04, met2 1.331e-04 8.929e-04, met3 1.464e-04 1.567e-04, met4 1.297e-04 1.567e-04, met5 1.501e-04 1.781e-05';
export VIAS_RC=' mcon 9.249146E-3, via 4.5E-3, via2 3.368786E-3, via3 0.376635E-3, via4 0.00580E-3';
export LIB_SYNTH_COMPLETE='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib';
export CLOCK_PORT='clk';
export PL_OPTIMIZE_MIRRORING='1';
export SAVE_DEF='./out.def';
export OR_SCRIPT_0='foss/tools/openlane/2022.04.07_02.53.08/scripts/openroad/resizer.tcl';
export CURRENT_SDC='./tmp/floorplan/3-initial_fp.sdc';
export SCRIPTS_DIR='foss/tools/openlane/2022.04.07_02.53.08/scripts';
export WIRE_RC_LAYER='met1';
export RUN_STANDALONE='1';
export MERGED_LEF_UNPADDED='./tmp/merged_unpadded.lef';
export LIB_RESIZER_OPT='./tmp/synthesis/resizer_sky130_fd_sc_hd__tt_025C_1v80.lib';
export STA_PRE_CTS='1';
export CURRENT_DEF='./in.def';
export DONT_USE_CELLS='sky130_fd_sc_hd__a2111oi_0 sky130_fd_sc_hd__a21boi_0 sky130_fd_sc_hd__and2_0 sky130_fd_sc_hd__buf_16 sky130_fd_sc_hd__clkdlybuf4s15_1 sky130_fd_sc_hd__clkdlybuf4s18_1 sky130_fd_sc_hd__fa_4 sky130_fd_sc_hd__lpflow_bleeder_1 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 sky130_fd_sc_hd__lpflow_clkbufkapwr_16 sky130_fd_sc_hd__lpflow_clkbufkapwr_2 sky130_fd_sc_hd__lpflow_clkbufkapwr_4 sky130_fd_sc_hd__lpflow_clkbufkapwr_8 sky130_fd_sc_hd__lpflow_clkinvkapwr_1 sky130_fd_sc_hd__lpflow_clkinvkapwr_16 sky130_fd_sc_hd__lpflow_clkinvkapwr_2 sky130_fd_sc_hd__lpflow_clkinvkapwr_4 sky130_fd_sc_hd__lpflow_clkinvkapwr_8 sky130_fd_sc_hd__lpflow_decapkapwr_12 sky130_fd_sc_hd__lpflow_decapkapwr_3 sky130_fd_sc_hd__lpflow_decapkapwr_4 sky130_fd_sc_hd__lpflow_decapkapwr_6 sky130_fd_sc_hd__lpflow_decapkapwr_8 sky130_fd_sc_hd__lpflow_inputiso0n_1 sky130_fd_sc_hd__lpflow_inputiso0p_1 sky130_fd_sc_hd__lpflow_inputiso1n_1 sky130_fd_sc_hd__lpflow_inputiso1p_1 sky130_fd_sc_hd__lpflow_inputisolatch_1 sky130_fd_sc_hd__lpflow_isobufsrc_1 sky130_fd_sc_hd__lpflow_isobufsrc_16 sky130_fd_sc_hd__lpflow_isobufsrc_2 sky130_fd_sc_hd__lpflow_isobufsrc_4 sky130_fd_sc_hd__lpflow_isobufsrc_8 sky130_fd_sc_hd__lpflow_isobufsrckapwr_16 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_1 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_2 sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_4 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_4 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_1 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_2 sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_4 sky130_fd_sc_hd__mux4_4 sky130_fd_sc_hd__o21ai_0 sky130_fd_sc_hd__o311ai_0 sky130_fd_sc_hd__or2_0 sky130_fd_sc_hd__probe_p_8 sky130_fd_sc_hd__probec_p_8 sky130_fd_sc_hd__xor3_1 sky130_fd_sc_hd__xor3_2 sky130_fd_sc_hd__xor3_4 sky130_fd_sc_hd__xnor3_1 sky130_fd_sc_hd__xnor3_2 sky130_fd_sc_hd__xnor3_4 ';
export PL_RESIZER_REPAIR_TIE_FANOUT='1';
export SYNTH_TIELO_PORT='sky130_fd_sc_hd__conb_1 LO';
export PL_RESIZER_MAX_SLEW_MARGIN='20';
export PL_RESIZER_MAX_WIRE_LENGTH='0';
export OR_SCRIPT_3='foss/tools/openlane/2022.04.07_02.53.08/scripts/openroad/set_rc.tcl';
export CELL_PAD_EXCLUDE='sky130_fd_sc_hd__tap* sky130_fd_sc_hd__decap* sky130_fd_sc_hd__fill*';
export OR_SCRIPT_4='foss/tools/openlane/2022.04.07_02.53.08/scripts/openroad/sta.tcl';
export OR_SCRIPT_1='./tmp/floorplan/3-initial_fp.sdc';
export CELL_PAD='4';
export SYNTH_TIEHI_PORT='sky130_fd_sc_hd__conb_1 HI';
export PL_RESIZER_MAX_CAP_MARGIN='20';
export PL_RESIZER_TIE_SEPERATION='0';
export SAVE_SDC='./tmp/placement/8-resizer.sdc';
export DESIGN_NAME='fll_wrapper_2';
export PL_RESIZER_BUFFER_INPUT_PORTS='1';
export CURRENT_NETLIST='./results/synthesis/fll_wrapper_2.v';
export OR_SCRIPT_2='./tmp/placement/8-resizer.sdc';
export PL_RESIZER_BUFFER_OUTPUT_PORTS='1';
OPENROAD_BIN=${OPENROAD_BIN:-openroad}
$OPENROAD_BIN -exit $OR_SCRIPT_0
    