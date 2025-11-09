set design pulpissimo
sh rm /home/ICer/Desktop/pulpissimo/design_lib/pulpissimo_3.dlib/pulpissimo_fp/design.ndm.lock

set design_lib_path /home/ICer/Desktop/pulpissimo/design_lib
open_block $design_lib_path/pulpissimo_3.dlib:pulpissimo_pp.design
copy_block -from_block pulpissimo_3.dlib:pulpissimo_fp.design -to_block ${design}_pp
current_block ${design}_pp.design
start_gui


create_placement -floorplan -timing_driven
legalize_placement


# --- Creation VDD and VSS nets for Network {PDN} 
create_net -power VDD 
create_net -ground VSS

# --- Connect pins of cells and submodules  to rails   
# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]

set_pg_via_master_rule PG_VIA_3x1 -cut_spacing 0.25 -via_array_dimension {3 1}
set_app_options -name plan.pgroute.merge_shapes_for_via_creation -value false  


# ================================================ #
# ================= Third Step =================== #
# ================================================ #
# -- Create region,patterns , Define strategie,Compile stra  
# --- Variables 
set ring_offset 2 ;  set ring_width 5 ; set ring_spacing 5 ; 

# ---- Create region to define region pg network 
create_pg_region power_ring_region -core -expand_by_edge  \
          "{{side: 1} {offset: $ring_offset}} \
		   {{side: 2} {offset: $ring_offset}} \ 
		   {{side: 3} {offset: $ring_offset}} \
		   {{side: 4} {offset: $ring_offset}} "
		   

# ---- Create Pattern Rings Structure {Layers , Width , Space }
# --- Variables 
set hm_top M8 ;  set vm_top M9 ; 
create_pg_ring_pattern ring_pattern \
                 -horizontal_layer $hm_top -vertical_layer $vm_top \
                 -horizontal_width $ring_width -vertical_width $ring_width \
                 -horizontal_spacing $ring_spacing -vertical_spacing $ring_spacing

# ---- Stratgie for design Rings
set_pg_strategy core_ring \
					-pg_regions { power_ring_region } \
					-pattern {{ name: ring_pattern} { nets: "VSS VDD" }}

# ---- Compile /Implement Ring   
compile_pg -strategies core_ring





######### Create rail strategy #########################
create_pg_std_cell_conn_pattern rail_pattern -layers {M1} -rail_width {0.06 0.06}
set_pg_strategy rail_strat -pattern {{pattern: rail_pattern} {nets: VDD VSS}} -core
compile_pg -strategies rail_strat 

create_pg_mesh_pattern m7_mesh -layers {{{vertical_layer: M7} {width: 1} {spacing: 4} {pitch: 10} {offset: 2}}}
set_pg_strategy m7_s -core -extension {{direction: T B L R} {stop: core_boundary}} -pattern {{name: m7_mesh} {nets: VDD VSS}} 
compile_pg -strategies m7_s

#### CREATE PG VIAS
create_pg_vias -to_layers M7 -from_layers M1 -via_masters PG_VIA_3x1 -nets VDD
create_pg_vias -to_layers M7 -from_layers M1 -via_masters PG_VIA_3x1 -nets VSS
set_attribute -objects [get_vias -filter upper_layer_name=="M2"] -name via_def -value [get_via_defs -library [current_lib] VIA12BAR1]


create_pg_mesh_pattern m8_mesh -layers {{{horizontal_layer: M8} {width: 5} {spacing: 20} {pitch: 50} {offset: -8}}}
set_pg_strategy m8_s -core -extension {{direction: T B L R} {stop: core_boundary }} -pattern {{name: m8_mesh} {nets: VDD VSS}} 
compile_pg -strategies m8_s







save_block 

check_pg_drc  > /home/ICer/Desktop/pulpissimo/power_planning/report/pg_drc.rpt
check_pg_connectivity > /home/ICer/Desktop/pulpissimo/power_planning/report/pg_connectivity.rpt
analyze_power_plan -report_track_utilization_only > /home/ICer/Desktop/pulpissimo/power_planning/report/track_utilization.rpt
report_utilization > /home/ICer/Desktop/pulpissimo/power_planning/report/utilization.rpt
report_qor > /home/ICer/Desktop/pulpissimo/power_planning/report/qor.rpt  ; #optional
report_timing > /home/ICer/Desktop/pulpissimo/power_planning/report/timing.rpt ; #optional 



write_def /home/ICer/Desktop/pulpissimo/power_planning/output/pulpissimo.def
write_verilog -include {all} /home/ICer/Desktop/pulpissimo/power_planning/output/pulpissimo.v
write_sdc -output /home/ICer/Desktop/pulpissimo/power_planning/output/pulpissimo.sdc 


check_pg_connectivity

