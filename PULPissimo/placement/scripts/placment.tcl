set design pulpissimo
sh rm /home/ICer/Desktop/pulpissimo/design_lib/pulpissimo_3.dlib/pulpissimo_pp/design.ndm.lock

set design_lib_path /home/ICer/Desktop/pulpissimo/design_lib
open_block $design_lib_path/${design}_3.dlib:${design}_pp.design
copy_block -from_block ${design}_3.dlib:${design}_pp.design -to_block ${design}_pl
current_block ${design}_pl.design
start_gui






set_app_options -name time.disable_recovery_removal_checks -value false
set_app_options -name time.disable_case_analysis -value false
set_app_options -name place.coarse.continue_on_missing_scandef -value true
################################################################################Place_Optimization
set_app_options -name opt.common.user_instance_name_prefix -value place
source /home/ICer/Desktop/pulpissimo/placement/mcmm/mcmm.tcl
place_opt
legalize_placement
################################################################################Reports
set_app_option -name time.snapshot_storage_location -value "./"
create_qor_snapshot -name place_qor_snp -significant_digits 4

report_qor_snapshot -name place_qor_snp > /home/ICer/after_pp/pulp/placment/ouput3/place.qor_snapshot.rpt
report_qor > /home/ICer/after_pp/pulp/placment/ouput3/place.qor
report_constraints -all_violators > /home/ICer/after_pp/pulp/placment/ouput3/place.con
report_timing -capacitance -transition_time -input_pins -nets -delay_type max > /home/ICer/after_pp/pulp/placment/ouput3/place.max.tim
report_timing -capacitance -transition_time -input_pins -nets -delay_type min > /home/ICer/after_pp/pulp/placment/ouput3/place.min.tim
report_global_timing -sig 3 > /home/ICer/after_pp/pulp/placment/ouput3/place.global.tim
################################################################################Save_Block
save_block -as ${DESIGN_NAME}_4_place_ends
save_lib
################################################################################






check_legality -verbose  > /home/ICer/Desktop/pulpissimo/placement/report/legality.rpt
check_routability   > /home/ICer/Desktop/pulpissimo/placement/report/routeability.rpt
report_utilization > /home/ICer/Desktop/pulpissimo/placement/report/utilization.rpt
check_pg_drc  > /home/ICer/Desktop/pulpissimo/placement/report/drc_final.rpt
report_design > /home/ICer/Desktop/pulpissimo/placement/report/design.rpt
report_cell   > /home/ICer/Desktop/pulpissimo/placement/report/cells.rpt
report_qor    > /home/ICer/Desktop/pulpissimo/placement/report/qor.rpt
report_timing > /home/ICer/Desktop/pulpissimo/placement/report/timing.rpt

# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def /home/ICer/Desktop/pulpissimo/placement/output/${design}.def
write_verilog -include {all} /home/ICer/Desktop/pulpissimo/placement/output/${design}.v
save_block ; 








