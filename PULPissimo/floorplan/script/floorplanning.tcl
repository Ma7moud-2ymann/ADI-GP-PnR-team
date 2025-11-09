set design pulpissimo
sh rm /home/ICer/Desktop/pulpissimo/design_lib/pulpissimo_3.dlib/pul2pissimo_setup/design.ndm.lock

 
set design_lib_path /home/ICer/Desktop/pulpissimo/design_lib
open_block /home/ICer/Desktop/pulpissimo/design_lib/pulpissimo_3.dlib:pul2pissimo_setup.design
copy_block -from_block pulpissimo_3.dlib:pul2pissimo_setup.design -to_block ${design}_fp
current_block ${design}_fp.design
start_gui


set_attribute [get_layers M1] routing_direction vertical
set_attribute [get_layers M2] routing_direction horizontal
set_attribute [get_layers M3] routing_direction vertical
set_attribute [get_layers M4] routing_direction horizontal
set_attribute [get_layers M5] routing_direction vertical
set_attribute [get_layers M6] routing_direction horizontal
set_attribute [get_layers M7] routing_direction vertical
set_attribute [get_layers M8] routing_direction horizontal
set_attribute [get_layers M9] routing_direction vertical
set_attribute [get_layers MRDL] routing_direction horizontal



initialize_floorplan \
-control_type core \
  -core_utilization 0.6 \
  -flip_first_row true \
  -core_offset {12.4 12.4 12.4 12.4}



set_block_pin_constraints -allowed_layers {M3 M4 M5} -pin_spacing 8 -self
place_pins -ports [get_ports *] -self

set MIN_ROUTING_LAYER            "M1"   ;# Min routing layer
set MAX_ROUTING_LAYER            "M9"   ;# Max routing layer

set_ignored_layers \
    -min_routing_layer  $MIN_ROUTING_LAYER \
    -max_routing_layer  $MAX_ROUTING_LAYER




##############################################################################################
###############################################################################################

create_net -power $NDM_POWER_NET
create_net -ground $NDM_GROUND_NET 

connect_pg_net -net $NDM_POWER_NET [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net $NDM_GROUND_NET [get_pins -hierarchical "*/VSS"]

##############################  floorplanning initial placement ####################

create_placement -floorplan -timing_driven
legalize_placement


# ================================================ #
# ================== Reports ===================== #
# ================================================ #
report_ports [all_inputs] > /home/ICer/Desktop/pulpissimo/floor_planning/report/input_port.rpt
report_ports [all_outputs] > /home/ICer/Desktop/pulpissimo/floor_planning/report/output_port.rpt
report_cell  > /home/ICer/Desktop/pulpissimo/floor_planning/report/cells.rpt
report_nets  > /home/ICer/Desktop/pulpissimo/floor_planning/report/nets.rpt
report_qor   > /home/ICer/Desktop/pulpissimo/floor_planning/report/qor.rpt
report_utilization > /home/ICer/Desktop/pulpissimo/floor_planning/report/utilization.rpt
get_placement_blockages > /home/ICer/Desktop/pulpissimo/floor_planning/report/Blockage.rpt
report_timing -delay_type max -max_paths 20 > /home/ICer/Desktop/pulpissimo/floor_planning/report/timing.rpt

# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def /home/ICer/Desktop/pulpissimo/floor_planning/output/pulpissimo_top.def
write_verilog -include {all} /home/ICer/Desktop/pulpissimo/floor_planning/output/pulpissimo_top.v
write_sdc -output /home/ICer/Desktop/pulpissimo/floor_planning/output/pulpissimo_top.sdc

# =================== End_Step =================== #
save_block 

