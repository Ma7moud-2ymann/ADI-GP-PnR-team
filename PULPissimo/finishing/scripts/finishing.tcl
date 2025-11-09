set_app_var target_library "/home/ICer/after_pp/pulp/libraries/SAED32/STD/saed32rvt_ss0p95vn40c.db"
set_app_var link_library "* \
    /home/ICer/after_pp/pulp/libraries/SAED32/STD/saed32rvt_ss0p95vn40c.db \
    /home/ICer/after_pp/pulp/libraries/SAED32/IO/saed32io_wb_ss0p95vn40c_2p25v.db \
    /home/ICer/after_pp/pulp/libraries/SAED32/SRAM/saed32sram_ss0p95vn40c.db \
    /home/ICer/after_pp/pulp/libraries/SAED32/PLL/saed32pll_ss0p95vn40c_2p25v.db"
set Std_cell_gds	"/home/ICer/after_pp/pulp/libraries/SAED32/saed32nm_rvt_oa.gds"
set Gds_map_file          "/home/ICer/after_pp/pulp/libraries/SAED32/saed32nm_1p9m_gdsout_m.map"
set icv_mfill_runset      "/home/ICer/after_pp/tech/icv_drc/saed32nm_1p9m_mfill_rules.rs"
################################################################################Insert_Redundant_Vias
add_redundant_vias

set place.legalize.enable_advanced_legalizer true
check_legality
################################################################################Insert_Filler
# Recommended ordering (largest to smallest)
set pnr_std_fillers "SHFILL128_RVT SHFILL64_RVT DHFILLHLHLS11_RVT DHFILLH2_RVT SHFILL3_RVT SHFILL2_RVT SHFILL1_RVT DCAP_RVT"
set std_fillers ""
foreach filler $pnr_std_fillers { lappend std_fillers "*/${filler}" }
create_stdcell_fillers \
	-lib_cells $std_fillers

#connect_pg_net -automatic

remove_stdcell_fillers_with_violation
check_legality
check_lvs -max_errors 5000
################################################################################Use correct ICV version
set_app_options -name signoff.create_metal_fill.runset -value "${icv_mfill_runset}"
signoff_create_metal_fill -select_layers {M2 M6}
################################################################################Preroute_Standard_Cells
set_attribute -objects [get_nets VDD] -name net_type -value power
set_attribute -objects [get_nets VSS] -name net_type -value ground

connect_pg_net -net VDD [get_pins -physical_context */VDD]
connect_pg_net -net VSS [get_pins -physical_context */VSS]

check_mv_design 

check_legality -chipfinishing all
################################################################################Verify_DRC/LVS
check_lvs -max_errors 1000 > /home/ICer/Desktop/pulpissimo/finishing/output/pulpissimo.lvs.rpt
################################################################################Reports
report_design -all > /home/ICer/Desktop/pulpissimo/finishing/output/pulpissimo.PR_summary.rpt
report_utilization > /home/ICer/Desktop/pulpissimo/finishing/output/utilization.rpt
report_global_timing -sig 3 > /home/ICer/Desktop/pulpissimo/finishing/output/finishing.global.tim
report_timing -capacitance -transition_time -input_pins -nets -delay_type max > /home/ICer/Desktop/pulpissimo/finishing/output/finishing.max.tim
report_timing -capacitance -transition_time -input_pins -nets -delay_type min > /home/ICer/Desktop/pulpissimo/finishing/output/finishing.min.tim
################################################################################Write Verilogs
write_verilog \
	-include {pg_netlist unconnected_ports} \
	/home/ICer/Desktop/pulpissimo/finishing/output/pulpissimo.pg.v

write_verilog -exclude {physical_only_cells} /home/ICer/Desktop/pulpissimo/finishing/output/pulpissimo_finishing_out.v

################################################################################SDC_OUT
write_sdc -output /home/ICer/Desktop/pulpissimo/finishing/output/pulpissimo.out.sdc
################################################################################SPEF_OUT
report_timing -crosstalk_delta
write_parasitics -format SPEF -output /home/ICer/Desktop/pulpissimo/finishing/output/pulpissimo_parasitics.out.spef
################################################################################DEF_OUT
write_def /home/ICer/Desktop/pulpissimo/finishing/output/pulpissimo_def.out.def
################################################################################GDS_OUT

#save_block -as ${DESIGN_NAME}_7_power_finished
#save_block -as ${DESIGN_NAME}_7_area_finished
save_block -as pulpissimo_7_finished

write_gds -design ${DESIGN_NAME}_7_timing_finished \
	  -layer_map $Gds_map_file \
	  -keep_data_type \
	  -fill include \
	  -output_pin all \
	  -merge_files $Std_cell_gds \
	  -long_names \
	  /home/ICer/Desktop/pulpissimo/finishing/output/pulpissimo.gds

################################################################################Save_Block
save_block
save_lib
