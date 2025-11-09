####################################################################################
# Constraints
# ----------------------------------------------------------------------------

####################################################################################
           #########################################################
                  #### DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs
define_name_rules no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri true
set verilogout_equation false
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#to set the operating conditions:
set LIB_NAME saed32rvt_ss0p95vn40c
set_operating_conditions ss0p95vn40c -lib $LIB_NAME



####################################################################################
           #########################################################
                  #### Clock Definition ####
           #########################################################
#################################################################################### # REF CLOCK (100 MHz)


set CLK1_name ref_clk
set CLK1_per 7

set CLK2_name soc_clk
set CLK2_per 21

set CLK3_name pref_clk	
set CLK3_per 6

set CLK4_name tck	
set CLK4_per 6



# Define clock skews
set CLK_SETUP_SKEW  0.2
set CLK_HOLD_SKEW   0.02

set CLK_SRC_LAT 0
set CLK_NET_LAT 0.1

set CLK_RISE 0.05
set CLK_FALL 0.05



# Create clock for CLK1_name (ref_clk)
create_clock -name $CLK1_name -period $CLK1_per  [get_port i_clock_gen/slow_clk_o]


# Set clock uncertainty for ref_clk
set_clock_uncertainty -setup 	   $CLK_SETUP_SKEW  [get_clocks $CLK1_name]
set_clock_uncertainty -hold  	   $CLK_HOLD_SKEW   [get_clocks $CLK1_name]
set_clock_transition  -rise  	   $CLK_RISE        [get_clocks $CLK1_name]
set_clock_transition  -fall  	   $CLK_FALL        [get_clocks $CLK1_name]
set_clock_latency     -source -max $CLK_SRC_LAT     [get_clocks $CLK1_name]
set_clock_latency             -max $CLK_NET_LAT     [get_clocks $CLK1_name]


# Create clock for CLK2_name (soc_clk)
create_clock -name $CLK2_name -period $CLK2_per  [get_port i_clock_gen/soc_clk_o]

# Set clock uncertainty for soc_clk
set_clock_uncertainty -setup 	   $CLK_SETUP_SKEW  [get_clocks $CLK2_name]
set_clock_uncertainty -hold 	   $CLK_HOLD_SKEW   [get_clocks $CLK2_name]
set_clock_transition  -rise  	   $CLK_RISE        [get_clocks $CLK2_name]
set_clock_transition  -fall 	   $CLK_FALL        [get_clocks $CLK2_name]
set_clock_latency     -source -max $CLK_SRC_LAT     [get_clocks $CLK2_name]
set_clock_latency             -max $CLK_NET_LAT     [get_clocks $CLK2_name]

# Create clock for CLK3_name (pref_clk)
create_clock -name $CLK3_name -period $CLK3_per  [get_port i_clock_gen/per_clk_o]

# Set clock uncertainty for pref_clk
set_clock_uncertainty -setup	   $CLK_SETUP_SKEW  [get_clocks $CLK3_name]
set_clock_uncertainty -hold  	   $CLK_HOLD_SKEW   [get_clocks $CLK3_name]
set_clock_transition  -rise  	   $CLK_RISE        [get_clocks $CLK3_name]
set_clock_transition  -fall  	   $CLK_FALL        [get_clocks $CLK3_name]
set_clock_latency     -source -max $CLK_SRC_LAT     [get_clocks $CLK3_name]
set_clock_latency             -max $CLK_NET_LAT     [get_clocks $CLK3_name]


# Create clock for CLK4_name (pad_jtag_tck)
create_clock -name $CLK4_name -period $CLK4_per  [get_ports pad_jtag_tck]

# Set clock uncertainty for tck
set_clock_uncertainty -setup 	   $CLK_SETUP_SKEW  [get_clocks $CLK4_name]
set_clock_uncertainty -hold  	   $CLK_HOLD_SKEW   [get_clocks $CLK4_name]
set_clock_transition  -rise  	   $CLK_RISE        [get_clocks $CLK4_name]
set_clock_transition  -fall  	   $CLK_FALL        [get_clocks $CLK4_name]
set_clock_latency     -source -max $CLK_SRC_LAT     [get_clocks $CLK4_name]
set_clock_latency             -max $CLK_NET_LAT     [get_clocks $CLK4_name]





create_generated_clock -master_clock soc_clk -source [get_ports i_clock_gen/soc_clk_o] \
					   -name "sys_clk_core"  -divide_by 1                      \
					   [get_port i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/i_clk_gate_sys_udma/clk_o] 

set_clock_uncertainty -setup 	   $CLK_SETUP_SKEW 	   [get_clocks sys_clk_core]
set_clock_uncertainty -hold  	   $CLK_HOLD_SKEW  	   [get_clocks sys_clk_core]
set_clock_transition  -rise 	   $CLK_RISE  		   [get_clocks sys_clk_core]
set_clock_transition  -fall  	   $CLK_FALL  		   [get_clocks sys_clk_core]
set_clock_latency 		      -max $CLK_NET_LAT        [get_clocks sys_clk_core]

create_generated_clock -master_clock pref_clk -source [get_ports i_clock_gen/per_clk_o] \
					   -name "per_per_clk"    -divide_by 1 						\
					   [get_port i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o] 

set_clock_uncertainty -setup 	   $CLK_SETUP_SKEW 	   [get_clocks per_per_clk]
set_clock_uncertainty -hold  	   $CLK_HOLD_SKEW  	   [get_clocks per_per_clk]
set_clock_transition  -rise 	   $CLK_RISE  		   [get_clocks per_per_clk]
set_clock_transition  -fall  	   $CLK_FALL  		   [get_clocks per_per_clk]
set_clock_latency 		      -max $CLK_NET_LAT        [get_clocks per_per_clk]


create_generated_clock -master_clock tck -source [get_ports pad_jtag_tck] \
					   -name "inverted_tck" -invert -divide_by 1                      \
					   [get_port i_soc_domain/i_pulp_soc/i_dmi_jtag/i_dmi_jtag_tap/i_tck_inv/clk_o] 


set_dont_touch_network [get_clocks {ref_clk soc_clk pref_clk tck}]
set_dont_touch_network [get_clocks {sys_clk_core per_per_clk inverted_tck}]



####################################################################################
####################################################################################
           #########################################################
             #### Clocks Relationship ####
           #########################################################
####################################################################################


set_clock_groups -asynchronous -group ref_clk -group {soc_clk sys_clk_core} -group {pref_clk per_per_clk} -group {tck inverted_tck}


####################################################################################
           #########################################################
             #### set input/output delay on ports ####
           #########################################################


set in_delay_1  [expr 0.1*$CLK1_per]
set out_delay_1 [expr 0.1*$CLK1_per]

set in_delay_3  [expr 0.1*$CLK3_per]
set out_delay_3 [expr 0.1*$CLK3_per]

set_input_delay $in_delay_3 -clock tck [get_ports pad_jtag_tck]  
set_input_delay $in_delay_3 -clock tck [get_ports pad_jtag_trstn]  
set_input_delay $in_delay_3 -clock tck [get_ports pad_jtag_tdi] 
set_input_delay $in_delay_3 -clock tck [get_ports  pad_jtag_tdo] 
set_input_delay $in_delay_3 -clock tck [get_ports pad_jtag_tms]  
 
set_output_delay $out_delay_3 -clock tck [get_ports pad_jtag_tck] 
set_output_delay $out_delay_3 -clock tck [get_ports pad_jtag_trstn]   
set_output_delay $out_delay_3 -clock tck [get_ports pad_jtag_tdi] 
set_output_delay $out_delay_3 -clock tck [get_ports pad_jtag_tdo] 
set_output_delay $out_delay_3 -clock tck [get_ports pad_jtag_tms] 



# Reference clock domain ports
set_input_delay $in_delay_1 -clock ref_clk [get_ports pad_bootsel*]
set_output_delay $out_delay_1 -clock ref_clk [get_ports pad_bootsel*]

# Hyperbus interface ports (assuming ref_clk domain, adjust if different)
set_input_delay $in_delay_3 -clock pref_clk [get_ports pad_hyper_csn*]
set_input_delay $in_delay_3 -clock pref_clk [get_ports pad_hyper_reset_n]
set_input_delay $in_delay_3 -clock pref_clk [get_ports pad_hyper_ck]
set_input_delay $in_delay_3 -clock pref_clk [get_ports pad_hyper_ckn]
set_input_delay $in_delay_3 -clock pref_clk [get_ports pad_hyper_dq*]
set_input_delay $in_delay_3 -clock pref_clk [get_ports pad_hyper_rwds]

set_output_delay $out_delay_3 -clock pref_clk [get_ports pad_hyper_csn*]
set_output_delay $out_delay_3 -clock pref_clk [get_ports pad_hyper_reset_n]
set_output_delay $out_delay_3 -clock pref_clk [get_ports pad_hyper_ck]
set_output_delay $out_delay_3 -clock pref_clk [get_ports pad_hyper_ckn]
set_output_delay $out_delay_3 -clock pref_clk [get_ports pad_hyper_dq*]
set_output_delay $out_delay_3 -clock pref_clk [get_ports pad_hyper_rwds]


# GPIO ports (assuming ref_clk domain, adjust if different)
set_input_delay $in_delay_3 -clock pref_clk [get_ports pad_io*]
set_output_delay $out_delay_3 -clock pref_clk [get_ports pad_io*]




################################################
#                ORC Constraints               #
################################################
#set max capacitance
###################################

#These values are obtained from the used .lib file using Python scripts
set MAX_CAP 416
set MAX_TRANS 1.024
set MAX_FANOUT 20

set_max_capacitance $MAX_CAP $design
set_max_transition $MAX_TRANS $design
set_max_fanout $MAX_FANOUT $design


## area constrains ##
set_max_area 0


# Other timing constraints

set_false_path -from [ get_clocks  ref_clk] -to [get_clocks   soc_clk]
set_false_path -from [ get_clocks  ref_clk] -to [get_clocks   pref_clk]


set_false_path -from [ get_clocks  soc_clk] -to [get_clocks   ref_clk]
set_false_path -from [ get_clocks  soc_clk] -to [get_clocks   pref_clk]


set_false_path -from [ get_clocks  pref_clk] -to [get_clocks   ref_clk]
set_false_path -from [ get_clocks  pref_clk] -to [get_clocks   soc_clk]