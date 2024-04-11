
if { [info exist ::env(MAGIC_EXT_USE_GDS)] && $::env(MAGIC_EXT_USE_GDS) } {
	gds read $::env(CURRENT_GDS)
} else {
	lef read /foss/pdk/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef
	if {  [info exist ::env(EXTRA_LEFS)] } {
		set lefs_in $::env(EXTRA_LEFS)
		foreach lef_file $lefs_in {
			lef read $lef_file
		}
	}
	def read /foss/designs/ma2022/fll_2/runs/RUN_2022.11.02_10.22.32/results/routing/fll_wrapper_2.def
}
load fll_wrapper_2 -dereference
cd /foss/designs/ma2022/fll_2/runs/RUN_2022.11.02_10.22.32/results/finishing/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
if { ! 0 } {
	extract unique
}
# extract warn all
extract

ext2spice lvs
ext2spice -o /foss/designs/ma2022/fll_2/runs/RUN_2022.11.02_10.22.32/results/finishing/fll_wrapper_2.spice fll_wrapper_2.ext
feedback save /foss/designs/ma2022/fll_2/runs/RUN_2022.11.02_10.22.32/logs/finishing/29-ext2spice.feedback.txt
# exec cp fll_wrapper_2.spice /foss/designs/ma2022/fll_2/runs/RUN_2022.11.02_10.22.32/results/finishing/fll_wrapper_2.spice

