###################################################################

# Created by write_sdc on Thu Oct  2 11:15:37 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions ss0p95vn40c -library saed32rvt_ss0p95vn40c
set_max_area 0
set_max_fanout 20 [current_design]
set_max_transition 1.024 [current_design]
set_max_capacitance 416 [current_design]
create_clock [get_pins i_clock_gen/ref_clk_i]  -name ref_clk  -period 7  -waveform {0 3.5}
set_clock_latency -max 0.1  [get_clocks ref_clk]
set_clock_latency -source -max 0  [get_clocks ref_clk]
set_clock_uncertainty -setup 0.2  [get_clocks ref_clk]
set_clock_uncertainty -hold 0.02  [get_clocks ref_clk]
set_clock_transition -max -rise 0.05 [get_clocks ref_clk]
set_clock_transition -min -rise 0.05 [get_clocks ref_clk]
set_clock_transition -max -fall 0.05 [get_clocks ref_clk]
set_clock_transition -min -fall 0.05 [get_clocks ref_clk]
group_path -name INOUT  -from [list [get_ports pad_ref_clk] [get_ports pad_reset_n] [get_ports        \
pad_clk_byp_en] [get_ports pad_bootsel0] [get_ports pad_bootsel1] [get_ports   \
pad_jtag_tck] [get_ports pad_jtag_tdi] [get_ports pad_jtag_tdo] [get_ports     \
pad_jtag_tms] [get_ports pad_jtag_trstn] [get_ports {pad_hyper_csn[1]}]        \
[get_ports {pad_hyper_csn[0]}] [get_ports pad_hyper_reset_n] [get_ports        \
pad_hyper_ck] [get_ports pad_hyper_ckn] [get_ports {pad_hyper_dq[7]}]          \
[get_ports {pad_hyper_dq[6]}] [get_ports {pad_hyper_dq[5]}] [get_ports         \
{pad_hyper_dq[4]}] [get_ports {pad_hyper_dq[3]}] [get_ports {pad_hyper_dq[2]}] \
[get_ports {pad_hyper_dq[1]}] [get_ports {pad_hyper_dq[0]}] [get_ports         \
pad_hyper_rwds] [get_ports {pad_io[31]}] [get_ports {pad_io[30]}] [get_ports   \
{pad_io[29]}] [get_ports {pad_io[28]}] [get_ports {pad_io[27]}] [get_ports     \
{pad_io[26]}] [get_ports {pad_io[25]}] [get_ports {pad_io[24]}] [get_ports     \
{pad_io[23]}] [get_ports {pad_io[22]}] [get_ports {pad_io[21]}] [get_ports     \
{pad_io[20]}] [get_ports {pad_io[19]}] [get_ports {pad_io[18]}] [get_ports     \
{pad_io[17]}] [get_ports {pad_io[16]}] [get_ports {pad_io[15]}] [get_ports     \
{pad_io[14]}] [get_ports {pad_io[13]}] [get_ports {pad_io[12]}] [get_ports     \
{pad_io[11]}] [get_ports {pad_io[10]}] [get_ports {pad_io[9]}] [get_ports      \
{pad_io[8]}] [get_ports {pad_io[7]}] [get_ports {pad_io[6]}] [get_ports        \
{pad_io[5]}] [get_ports {pad_io[4]}] [get_ports {pad_io[3]}] [get_ports        \
{pad_io[2]}] [get_ports {pad_io[1]}] [get_ports {pad_io[0]}]]  -to [list [get_ports pad_ref_clk] [get_ports pad_reset_n] [get_ports          \
pad_clk_byp_en] [get_ports pad_bootsel0] [get_ports pad_bootsel1] [get_ports   \
pad_jtag_tck] [get_ports pad_jtag_tdi] [get_ports pad_jtag_tdo] [get_ports     \
pad_jtag_tms] [get_ports pad_jtag_trstn] [get_ports {pad_hyper_csn[1]}]        \
[get_ports {pad_hyper_csn[0]}] [get_ports pad_hyper_reset_n] [get_ports        \
pad_hyper_ck] [get_ports pad_hyper_ckn] [get_ports {pad_hyper_dq[7]}]          \
[get_ports {pad_hyper_dq[6]}] [get_ports {pad_hyper_dq[5]}] [get_ports         \
{pad_hyper_dq[4]}] [get_ports {pad_hyper_dq[3]}] [get_ports {pad_hyper_dq[2]}] \
[get_ports {pad_hyper_dq[1]}] [get_ports {pad_hyper_dq[0]}] [get_ports         \
pad_hyper_rwds] [get_ports {pad_io[31]}] [get_ports {pad_io[30]}] [get_ports   \
{pad_io[29]}] [get_ports {pad_io[28]}] [get_ports {pad_io[27]}] [get_ports     \
{pad_io[26]}] [get_ports {pad_io[25]}] [get_ports {pad_io[24]}] [get_ports     \
{pad_io[23]}] [get_ports {pad_io[22]}] [get_ports {pad_io[21]}] [get_ports     \
{pad_io[20]}] [get_ports {pad_io[19]}] [get_ports {pad_io[18]}] [get_ports     \
{pad_io[17]}] [get_ports {pad_io[16]}] [get_ports {pad_io[15]}] [get_ports     \
{pad_io[14]}] [get_ports {pad_io[13]}] [get_ports {pad_io[12]}] [get_ports     \
{pad_io[11]}] [get_ports {pad_io[10]}] [get_ports {pad_io[9]}] [get_ports      \
{pad_io[8]}] [get_ports {pad_io[7]}] [get_ports {pad_io[6]}] [get_ports        \
{pad_io[5]}] [get_ports {pad_io[4]}] [get_ports {pad_io[3]}] [get_ports        \
{pad_io[2]}] [get_ports {pad_io[1]}] [get_ports {pad_io[0]}]]
group_path -name INREG  -from [list [get_ports pad_ref_clk] [get_ports pad_reset_n] [get_ports        \
pad_clk_byp_en] [get_ports pad_bootsel0] [get_ports pad_bootsel1] [get_ports   \
pad_jtag_tck] [get_ports pad_jtag_tdi] [get_ports pad_jtag_tdo] [get_ports     \
pad_jtag_tms] [get_ports pad_jtag_trstn] [get_ports {pad_hyper_csn[1]}]        \
[get_ports {pad_hyper_csn[0]}] [get_ports pad_hyper_reset_n] [get_ports        \
pad_hyper_ck] [get_ports pad_hyper_ckn] [get_ports {pad_hyper_dq[7]}]          \
[get_ports {pad_hyper_dq[6]}] [get_ports {pad_hyper_dq[5]}] [get_ports         \
{pad_hyper_dq[4]}] [get_ports {pad_hyper_dq[3]}] [get_ports {pad_hyper_dq[2]}] \
[get_ports {pad_hyper_dq[1]}] [get_ports {pad_hyper_dq[0]}] [get_ports         \
pad_hyper_rwds] [get_ports {pad_io[31]}] [get_ports {pad_io[30]}] [get_ports   \
{pad_io[29]}] [get_ports {pad_io[28]}] [get_ports {pad_io[27]}] [get_ports     \
{pad_io[26]}] [get_ports {pad_io[25]}] [get_ports {pad_io[24]}] [get_ports     \
{pad_io[23]}] [get_ports {pad_io[22]}] [get_ports {pad_io[21]}] [get_ports     \
{pad_io[20]}] [get_ports {pad_io[19]}] [get_ports {pad_io[18]}] [get_ports     \
{pad_io[17]}] [get_ports {pad_io[16]}] [get_ports {pad_io[15]}] [get_ports     \
{pad_io[14]}] [get_ports {pad_io[13]}] [get_ports {pad_io[12]}] [get_ports     \
{pad_io[11]}] [get_ports {pad_io[10]}] [get_ports {pad_io[9]}] [get_ports      \
{pad_io[8]}] [get_ports {pad_io[7]}] [get_ports {pad_io[6]}] [get_ports        \
{pad_io[5]}] [get_ports {pad_io[4]}] [get_ports {pad_io[3]}] [get_ports        \
{pad_io[2]}] [get_ports {pad_io[1]}] [get_ports {pad_io[0]}]]
group_path -name REGOUT  -to [list [get_ports pad_ref_clk] [get_ports pad_reset_n] [get_ports          \
pad_clk_byp_en] [get_ports pad_bootsel0] [get_ports pad_bootsel1] [get_ports   \
pad_jtag_tck] [get_ports pad_jtag_tdi] [get_ports pad_jtag_tdo] [get_ports     \
pad_jtag_tms] [get_ports pad_jtag_trstn] [get_ports {pad_hyper_csn[1]}]        \
[get_ports {pad_hyper_csn[0]}] [get_ports pad_hyper_reset_n] [get_ports        \
pad_hyper_ck] [get_ports pad_hyper_ckn] [get_ports {pad_hyper_dq[7]}]          \
[get_ports {pad_hyper_dq[6]}] [get_ports {pad_hyper_dq[5]}] [get_ports         \
{pad_hyper_dq[4]}] [get_ports {pad_hyper_dq[3]}] [get_ports {pad_hyper_dq[2]}] \
[get_ports {pad_hyper_dq[1]}] [get_ports {pad_hyper_dq[0]}] [get_ports         \
pad_hyper_rwds] [get_ports {pad_io[31]}] [get_ports {pad_io[30]}] [get_ports   \
{pad_io[29]}] [get_ports {pad_io[28]}] [get_ports {pad_io[27]}] [get_ports     \
{pad_io[26]}] [get_ports {pad_io[25]}] [get_ports {pad_io[24]}] [get_ports     \
{pad_io[23]}] [get_ports {pad_io[22]}] [get_ports {pad_io[21]}] [get_ports     \
{pad_io[20]}] [get_ports {pad_io[19]}] [get_ports {pad_io[18]}] [get_ports     \
{pad_io[17]}] [get_ports {pad_io[16]}] [get_ports {pad_io[15]}] [get_ports     \
{pad_io[14]}] [get_ports {pad_io[13]}] [get_ports {pad_io[12]}] [get_ports     \
{pad_io[11]}] [get_ports {pad_io[10]}] [get_ports {pad_io[9]}] [get_ports      \
{pad_io[8]}] [get_ports {pad_io[7]}] [get_ports {pad_io[6]}] [get_ports        \
{pad_io[5]}] [get_ports {pad_io[4]}] [get_ports {pad_io[3]}] [get_ports        \
{pad_io[2]}] [get_ports {pad_io[1]}] [get_ports {pad_io[0]}]]
