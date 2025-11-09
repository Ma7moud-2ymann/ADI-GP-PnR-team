
################################################################################Open_Lib
open_lib $ARC_TOP
copy_block -from_block  ${DESIGN_NAME}_4_place_ends -to temp_place_ends
open_block temp_place_ends
################################################################################Checking
report_lib $ARC_TOP
################################################################################Set_Clock_Tree_Options 
check_legality  -verbose > /home/ICer/Desktop/pulpissimo/CTS/reports/place_report.rpt

set_ignored_layers -min_routing_layer ${route_min_layer} -max_routing_layer ${route_max_layer}

set_app_options -name cts.compile.enable_cell_relocation -value all
set_app_options -name cts.compile.size_pre_existing_cell_to_cts_references -value true

set_clock_tree_options    -clocks [all_clocks] \
                          -target_skew 0.1 
################################################################################Set_Clock_Tree_References

set_lib_cell_purpose -include cts {saed32rvt_ss0p95vn40c/INVX0_RVT saed32rvt_ss0p95vn40c/INVX1_RVT saed32rvt_ss0p95vn40c/INVX2_RVT \
saed32rvt_ss0p95vn40c/INVX32_RVT saed32rvt_ss0p95vn40c/INVX4_RVT saed32rvt_ss0p95vn40c/INVX8_RVT saed32rvt_ss0p95vn40c/NBUFFX16_RVT saed32rvt_ss0p95vn40c/NBUFFX2_RVT \
saed32rvt_ss0p95vn40c/NBUFFX32_RVT saed32rvt_ss0p95vn40c/NBUFFX4_RVT saed32rvt_ss0p95vn40c/NBUFFX8_RVT saed32rvt_ss0p95vn40c/TBUFFX16_RVT saed32rvt_ss0p95vn40c/\
TBUFFX2_RVT saed32rvt_ss0p95vn40c/TBUFFX32_RVT saed32rvt_ss0p95vn40c/TBUFFX4_RVT saed32rvt_ss0p95vn40c/TBUFFX8_RVT}

################################################################################Set_Clock_Tree_Options 
set_clock_uncertainty 0.05 [all_clocks]

create_routing_rule CLK_SPACING -spacings {M2 0.3 M3 0.5 M4 0.7 M5 0.9}
set_clock_routing_rules -rules CLK_SPACING -min_routing_layer M2 -max_routing_layer M5

report_clock_settings

set_app_options -name opt.common.user_instance_name_prefix -value clock
source /home/ICer/after_pp/pulp/placment/report/pulpissimo.sdc
clock_opt -from build_clock -to build_clock

################################################################################Save_Cell
set_app_option -name time.snapshot_storage_location -value "./"
create_qor_snapshot -name clock_pre_route -significant_digits 4

################################################################################Reports 
report_qor_snapshot -name clock_pre_route > /home/ICer/Desktop/pulpissimo/CTS/reports/clock_pre_route.qor_snapshot.rpt
report_qor > /home/ICer/Desktop/pulpissimo/CTS/reports/clock_pre_route.qor
report_constraints -all_violators > //home/ICer/Desktop/pulpissimo/CTS/reports/clock_pre_route.con
report_timing -capacitance -transition_time -input_pins -nets -delay_type max > /home/ICer/Desktop/pulpissimo/CTS/reports/clock_pre_route.max.tim
report_timing -capacitance -transition_time -input_pins -nets -delay_type min > /home/ICer/Desktop/pulpissimo/CTS/reports/clock_pre_route.min.tim
################################################################################Clock_optimiaztion
set_app_options -name opt.common.user_instance_name_prefix -value clock
clock_opt -from route_clock -to final_opto
################################################################################Reports
report_clock_qor > /home/ICer/Desktop/pulpissimo/CTS/reports/clock_tree.rpt
report_clock_timing -type skew > /home/ICer/Desktop/pulpissimo/CTS/reports/clock_timing.rpt

create_qor_snapshot -name clock -significant_digits 4

report_qor_snapshot -name clock > /home/ICer/Desktop/pulpissimo/CTS/reports/clock.qor_snapshot.rpt
report_qor > /home/ICer/Desktop/pulpissimo/CTS/reports/clock.qor
report_constraints -all_violators > /home/ICer/Desktop/pulpissimo/CTS/reports/clock_route.con
report_timing -capacitance -transition_time -input_pins -nets -delay_type max > /home/ICer/Desktop/pulpissimo/CTS/reports/clock.max.tim
report_timing -capacitance -transition_time -input_pins -nets -delay_type min > /home/ICer/Desktop/pulpissimo/CTS/reports/clock.min.tim
write_sdc -output /home/ICer/Desktop/pulpissimo/CTS/reports/pulpissimo.sdc
################################################################################Connecting_power/Ground_Nets_And_Pins
connect_pg_net -net VDD [get_pins -physical_context */VDD]
connect_pg_net -net VSS [get_pins -physical_context */VSS]
################################################################################Save_Block
save_block -as ${DESIGN_NAME}_5_clock_ends
save_lib
