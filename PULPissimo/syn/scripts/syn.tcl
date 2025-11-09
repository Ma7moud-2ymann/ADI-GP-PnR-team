# ===============================
#     synthesis script
# ===============================

##################### setting variable ######################


set design pulpissimo


##################### Define Working Library Directory ######################


sh rm -rf work
sh mkdir -p work
define_design_lib work -path /home/ICer/Desktop/pulpissimo/syn/work


################## Design Compiler Library Files ######################

set MainSearchDir "/home/ICer/Desktop/pulpissimo"
set dbFilesOfRVT "/home/ICer/Desktop/pulp/libraries/SAED32/STD"
set dbFilesOfIO "/home/ICer/Desktop/pulp/libraries/SAED32/IO"
set dbFilesOfSram "/home/ICer/Desktop/pulp/libraries/SAED32/SRAM"
set dbFilesOfpll "/home/ICer/Desktop/pulp/libraries/SAED32/PLL"

set trialNo Flat_saed32nm_no_PGpads

set_app_var search_path "$MainSearchDir/RTL \
                         $MainSearchDir/RTL/axi \
                         $MainSearchDir/RTL/common_cells \
                         $MainSearchDir/RTL/include \
                         $MainSearchDir/RTL/include \
                         $MainSearchDir/RTL/include \
                         $dbFilesOfRVT \
                         $dbFilesOfIO \
                         $dbFilesOfSram \
                         $dbFilesOfpll"


## Standard Cell libraries 


set_app_var target_library "$dbFilesOfRVT/saed32rvt_ss0p95vn40c.db"
set_app_var link_library "* \
    $dbFilesOfRVT/saed32rvt_ss0p95vn40c.db \
    $dbFilesOfIO/saed32io_wb_ss0p95vn40c_2p25v.db \
    $dbFilesOfSram/saed32sram_ss0p95vn40c.db \
    $dbFilesOfpll/saed32pll_ss0p95vn40c_2p25v.db"


####################### analyze all files ##########################################



source /home/ICer/Desktop/pulpissimo/syn/analyze.tcl




####################### elaborate ##########################################

elaborate $design -lib work

current_design 

check_design


####################### constraints ##########################################

source /home/ICer/Desktop/pulpissimo/syn/cons/constraints.tcl

link

####################### compile ##########################################

compile -map_effort high




####################### reporting ##########################################


report_area > ./report/synth_area.rpt
report_cell > ./report/synth_cells.rpt
report_qor  > ./report/synth_qor.rpt
report_resources > ./report/synth_resources.rpt
report_timing -max_paths 10 > ./report/synth_timing.rpt 
report_constraint -all_violators -nosplit > ./report/Syn_violations.rpt



####################### output ##########################################


write_sdc  output/${design}.sdc 

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

write -hierarchy -format verilog -output output/${design}.v 
write -f ddc -hierarchy -output output/${design}.ddc



exit