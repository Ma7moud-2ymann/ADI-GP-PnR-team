################################################################################
#
# Design name:  pulpissimo_fp
#
# Created by icc2 write_sdc on Mon Sep 29 17:28:39 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-06
################################################################################


# Mode: default
# Corner: default
# Scenario: default

# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 14; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 15; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 16
create_clock -name ref_clk -period 7 -waveform {0 3.5} [get_pins \
    {i_clock_gen/slow_clk_o}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 23; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 24; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 25
create_clock -name soc_clk -period 21 -waveform {0 10.5} [get_pins \
    {i_clock_gen/soc_clk_o}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 32; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 33; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 34
create_clock -name pref_clk -period 6 -waveform {0 3} [get_pins \
    {i_clock_gen/per_clk_o}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 41; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 42; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 43
create_clock -name tck -period 6 -waveform {0 3} [get_ports {pad_jtag_tck}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 51; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 52
create_generated_clock -name sys_clk_core -divide_by 1 -source [get_pins \
    {i_clock_gen/soc_clk_o}] -add -master_clock [get_clocks {soc_clk}] \
    [get_pins \
    {i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/i_clk_gate_sys_udma/clk_o}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 74; \
#   /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 75
create_generated_clock -name per_per_clk -divide_by 1 -source [get_pins \
    {i_clock_gen/per_clk_o}] -add -master_clock [get_clocks {pref_clk}] \
    [get_pins \
    {i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o[7] \
    i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o[6] \
    i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o[5] \
    i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o[4] \
    i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o[3] \
    i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o[2] \
    i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o[1] \
    i_soc_domain/i_pulp_soc/soc_peripherals_i/i_pulp_io/i_udma_subsystem/i_udmacore/periph_per_clk_o[0]}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 82
create_generated_clock -name inverted_tck -divide_by 1 -invert -source \
    [get_ports {pad_jtag_tck}] -add -master_clock [get_clocks {tck}] [get_pins \
    {i_soc_domain/i_pulp_soc/i_dmi_jtag/i_dmi_jtag_tap/i_tck_inv/clk_o}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 176
set_clock_groups -name ref_clk_1 -asynchronous -group [get_clocks {ref_clk}] \
    -group [get_clocks {soc_clk}] -group [get_clocks {pref_clk}] -group \
    [get_clocks {tck}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 180
set_clock_groups -name ref_clk_3 -asynchronous -group [get_clocks {ref_clk}] \
    -group [get_clocks {soc_clk sys_clk_core}] -group [get_clocks {pref_clk \
    per_per_clk}] -group [get_clocks {tck inverted_tck}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 121
group_path -name INOUT -from [get_ports {pad_ref_clk pad_reset_n pad_clk_byp_en \
    pad_bootsel0 pad_bootsel1 pad_jtag_tck pad_jtag_tdi pad_jtag_tdo \
    pad_jtag_tms pad_jtag_trstn pad_hyper_csn[1] pad_hyper_csn[0] \
    pad_hyper_reset_n pad_hyper_ck pad_hyper_ckn pad_hyper_dq[7] \
    pad_hyper_dq[6] pad_hyper_dq[5] pad_hyper_dq[4] pad_hyper_dq[3] \
    pad_hyper_dq[2] pad_hyper_dq[1] pad_hyper_dq[0] pad_hyper_rwds pad_io[31] \
    pad_io[30] pad_io[29] pad_io[28] pad_io[27] pad_io[26] pad_io[25] \
    pad_io[24] pad_io[23] pad_io[22] pad_io[21] pad_io[20] pad_io[19] \
    pad_io[18] pad_io[17] pad_io[16] pad_io[15] pad_io[14] pad_io[13] \
    pad_io[12] pad_io[11] pad_io[10] pad_io[9] pad_io[8] pad_io[7] pad_io[6] \
    pad_io[5] pad_io[4] pad_io[3] pad_io[2] pad_io[1] pad_io[0]}] -to \
    [get_ports {pad_ref_clk pad_reset_n pad_clk_byp_en pad_bootsel0 \
    pad_bootsel1 pad_jtag_tck pad_jtag_tdi pad_jtag_tdo pad_jtag_tms \
    pad_jtag_trstn pad_hyper_csn[1] pad_hyper_csn[0] pad_hyper_reset_n \
    pad_hyper_ck pad_hyper_ckn pad_hyper_dq[7] pad_hyper_dq[6] pad_hyper_dq[5] \
    pad_hyper_dq[4] pad_hyper_dq[3] pad_hyper_dq[2] pad_hyper_dq[1] \
    pad_hyper_dq[0] pad_hyper_rwds pad_io[31] pad_io[30] pad_io[29] pad_io[28] \
    pad_io[27] pad_io[26] pad_io[25] pad_io[24] pad_io[23] pad_io[22] \
    pad_io[21] pad_io[20] pad_io[19] pad_io[18] pad_io[17] pad_io[16] \
    pad_io[15] pad_io[14] pad_io[13] pad_io[12] pad_io[11] pad_io[10] pad_io[9] \
    pad_io[8] pad_io[7] pad_io[6] pad_io[5] pad_io[4] pad_io[3] pad_io[2] \
    pad_io[1] pad_io[0]}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 141
group_path -name INREG -from [get_ports {pad_ref_clk pad_reset_n pad_clk_byp_en \
    pad_bootsel0 pad_bootsel1 pad_jtag_tck pad_jtag_tdi pad_jtag_tdo \
    pad_jtag_tms pad_jtag_trstn pad_hyper_csn[1] pad_hyper_csn[0] \
    pad_hyper_reset_n pad_hyper_ck pad_hyper_ckn pad_hyper_dq[7] \
    pad_hyper_dq[6] pad_hyper_dq[5] pad_hyper_dq[4] pad_hyper_dq[3] \
    pad_hyper_dq[2] pad_hyper_dq[1] pad_hyper_dq[0] pad_hyper_rwds pad_io[31] \
    pad_io[30] pad_io[29] pad_io[28] pad_io[27] pad_io[26] pad_io[25] \
    pad_io[24] pad_io[23] pad_io[22] pad_io[21] pad_io[20] pad_io[19] \
    pad_io[18] pad_io[17] pad_io[16] pad_io[15] pad_io[14] pad_io[13] \
    pad_io[12] pad_io[11] pad_io[10] pad_io[9] pad_io[8] pad_io[7] pad_io[6] \
    pad_io[5] pad_io[4] pad_io[3] pad_io[2] pad_io[1] pad_io[0]}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 161
group_path -name REGOUT -to [get_ports {pad_ref_clk pad_reset_n pad_clk_byp_en \
    pad_bootsel0 pad_bootsel1 pad_jtag_tck pad_jtag_tdi pad_jtag_tdo \
    pad_jtag_tms pad_jtag_trstn pad_hyper_csn[1] pad_hyper_csn[0] \
    pad_hyper_reset_n pad_hyper_ck pad_hyper_ckn pad_hyper_dq[7] \
    pad_hyper_dq[6] pad_hyper_dq[5] pad_hyper_dq[4] pad_hyper_dq[3] \
    pad_hyper_dq[2] pad_hyper_dq[1] pad_hyper_dq[0] pad_hyper_rwds pad_io[31] \
    pad_io[30] pad_io[29] pad_io[28] pad_io[27] pad_io[26] pad_io[25] \
    pad_io[24] pad_io[23] pad_io[22] pad_io[21] pad_io[20] pad_io[19] \
    pad_io[18] pad_io[17] pad_io[16] pad_io[15] pad_io[14] pad_io[13] \
    pad_io[12] pad_io[11] pad_io[10] pad_io[9] pad_io[8] pad_io[7] pad_io[6] \
    pad_io[5] pad_io[4] pad_io[3] pad_io[2] pad_io[1] pad_io[0]}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 162
set_false_path -from [get_clocks {ref_clk}] -to [get_clocks {soc_clk pref_clk}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 164
set_false_path -from [get_clocks {soc_clk}] -to [get_clocks {ref_clk pref_clk}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 166
set_false_path -from [get_clocks {pref_clk}] -to [get_clocks {ref_clk soc_clk}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 9
set_operating_conditions -library \
    saed32rvt_ss0p95vn40c.db:saed32rvt_ss0p95vn40c -analysis_type \
    on_chip_variation ss0p95vn40c
set_clock_latency -source -max 0 [get_clocks {ref_clk}]
set_clock_latency -source -max 0 [get_clocks {soc_clk}]
set_clock_latency -source -max 0 [get_clocks {pref_clk}]
set_clock_latency -source -max 0 [get_clocks {tck}]
# -origin user
set_clock_latency -max 0.1 [get_clocks {ref_clk}]
# -origin user
set_clock_latency -max 0.1 [get_clocks {soc_clk}]
# -origin user
set_clock_latency -max 0.1 [get_clocks {pref_clk}]
# -origin user
set_clock_latency -max 0.1 [get_clocks {tck}]
# -origin user
set_clock_latency -max 0.1 [get_clocks {sys_clk_core}]
# -origin user
set_clock_latency -max 0.1 [get_clocks {per_per_clk}]
# Set latency for io paths.
set_clock_uncertainty -setup 0.2 [get_clocks {ref_clk}]
set_clock_uncertainty -hold 0.02 [get_clocks {ref_clk}]
set_clock_uncertainty -setup 0.2 [get_clocks {soc_clk}]
set_clock_uncertainty -hold 0.02 [get_clocks {soc_clk}]
set_clock_uncertainty -setup 0.2 [get_clocks {pref_clk}]
set_clock_uncertainty -hold 0.02 [get_clocks {pref_clk}]
set_clock_uncertainty -setup 0.2 [get_clocks {tck}]
set_clock_uncertainty -hold 0.02 [get_clocks {tck}]
set_clock_uncertainty -setup 0.2 [get_clocks {sys_clk_core}]
set_clock_uncertainty -hold 0.02 [get_clocks {sys_clk_core}]
set_clock_uncertainty -setup 0.2 [get_clocks {per_per_clk}]
set_clock_uncertainty -hold 0.02 [get_clocks {per_per_clk}]
set_clock_transition 0.05 [get_clocks {ref_clk}]
set_clock_transition 0.05 [get_clocks {soc_clk}]
set_clock_transition 0.05 [get_clocks {pref_clk}]
set_clock_transition 0.05 [get_clocks {tck}]
set_clock_transition 0.05 [get_clocks {sys_clk_core}]
set_clock_transition 0.05 [get_clocks {per_per_clk}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 168
set_input_delay -clock [get_clocks {tck}] 0.7 [get_ports {pad_jtag_tdi}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 171
set_output_delay -clock [get_clocks {tck}] 0.6 [get_ports {pad_jtag_tdi}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 169
set_input_delay -clock [get_clocks {tck}] 0.7 [get_ports {pad_jtag_tdo}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 172
set_output_delay -clock [get_clocks {tck}] 0.6 [get_ports {pad_jtag_tdo}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 170
set_input_delay -clock [get_clocks {tck}] 0.7 [get_ports {pad_jtag_tms}]
# /home/ICer/Desktop/pulpissimo/syn/output/pulpissimo.sdc, line 173
set_output_delay -clock [get_clocks {tck}] 0.6 [get_ports {pad_jtag_tms}]
set_max_transition 1.024 [current_design]
set_max_capacitance 416 [current_design]
