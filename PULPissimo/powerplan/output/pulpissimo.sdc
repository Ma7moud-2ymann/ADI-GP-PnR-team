################################################################################
#
# Design name:  cv_32_pp
#
# Created by icc2 write_sdc on Tue Sep 30 04:19:24 2025
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
# power_unit              : 1e-12
################################################################################


# Mode: default
# Corner: default
# Scenario: default

# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 9
create_clock -name clk_i -period 5 -waveform {0 2.5} [get_ports {clk_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 271
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {rst_ni}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 272
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {pulp_clock_en_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 273
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {scan_cg_en_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 111
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 112
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 113
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 114
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 115
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 116
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 117
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 118
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 119
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 120
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 121
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 122
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 123
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 124
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 125
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 126
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 127
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 128
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 129
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 130
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 131
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 132
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 133
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 134
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 135
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 136
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 137
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 138
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 139
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 140
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 141
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 142
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {boot_addr_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 143
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 144
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 145
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 146
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 147
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 148
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 149
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 150
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 151
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 152
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 153
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 154
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 155
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 156
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 157
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 158
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 159
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 160
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 161
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 162
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 163
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 164
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 165
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 166
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 167
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 168
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 169
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 170
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 171
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 172
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 173
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 174
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {mtvec_addr_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 175
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 176
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 177
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 178
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 179
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 180
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 181
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 182
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 183
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 184
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 185
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 186
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 187
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 188
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 189
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 190
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 191
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 192
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 193
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 194
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 195
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 196
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 197
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 198
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 199
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 200
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 201
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 202
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 203
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 204
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 205
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 206
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {dm_halt_addr_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 207
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 208
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 209
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 210
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 211
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 212
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 213
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 214
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 215
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 216
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 217
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 218
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 219
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 220
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 221
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 222
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 223
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 224
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 225
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 226
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 227
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 228
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 229
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 230
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 231
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 232
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 233
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 234
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 235
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 236
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 237
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 238
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {hart_id_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 239
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 240
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 241
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 242
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 243
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 244
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 245
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 246
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 247
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 248
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 249
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 250
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 251
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 252
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 253
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 254
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 255
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 256
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 257
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 258
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 259
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 260
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 261
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 262
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 263
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 264
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 265
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 266
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 267
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 268
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 269
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 270
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports \
    {dm_exception_addr_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 320
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_req_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 42
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_gnt_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 43
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rvalid_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 321
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 322
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 323
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 324
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 325
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 326
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 327
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 328
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 329
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 330
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 331
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 332
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 333
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 334
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 335
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 336
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 337
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 338
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 339
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 340
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 341
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 342
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 343
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 344
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 345
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 346
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 347
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 348
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 349
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 350
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 351
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 352
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {instr_addr_o[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 44
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 45
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 46
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 47
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 48
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 49
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 50
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 51
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 52
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 53
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 54
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 55
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 56
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 57
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 58
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 59
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 60
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 61
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 62
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 63
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 64
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 65
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 66
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 67
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 68
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 69
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 70
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 71
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 72
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 73
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 74
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 75
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {instr_rdata_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 353
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_req_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 76
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_gnt_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 77
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rvalid_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 354
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_we_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 355
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 356
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 357
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 358
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_be_o[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 359
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 360
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 361
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 362
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 363
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 364
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 365
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 366
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 367
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 368
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 369
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 370
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 371
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 372
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 373
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 374
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 375
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 376
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 377
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 378
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 379
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 380
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 381
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 382
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 383
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 384
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 385
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 386
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 387
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 388
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 389
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 390
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_addr_o[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 391
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 392
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 393
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 394
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 395
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 396
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 397
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 398
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 399
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 400
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 401
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 402
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 403
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 404
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 405
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 406
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 407
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 408
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 409
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 410
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 411
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 412
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 413
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 414
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 415
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 416
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 417
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 418
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 419
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 420
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 421
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 422
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {data_wdata_o[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 78
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 79
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 80
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 81
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 82
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 83
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 84
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 85
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 86
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 87
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 88
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 89
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 90
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 91
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 92
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 93
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 94
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 95
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 96
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 97
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 98
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 99
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 100
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 101
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 102
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 103
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 104
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 105
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 106
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 107
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 108
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 109
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {data_rdata_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 423
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_busy_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 424
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_req_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 274
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_gnt_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 521
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_op_o[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 522
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_op_o[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 523
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_op_o[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 524
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_op_o[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 525
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_op_o[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 526
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_op_o[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 527
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 528
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 529
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 530
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 531
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 532
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 533
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 534
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 535
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 536
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 537
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 538
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 539
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 540
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 541
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {apu_flags_o[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 275
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_rvalid_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 276
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 277
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 278
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 279
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 280
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 281
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 282
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 283
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 284
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 285
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 286
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 287
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 288
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 289
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 290
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 291
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 292
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 293
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 294
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 295
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 296
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 297
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 298
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 299
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 300
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 301
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 302
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 303
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 304
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 305
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 306
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 307
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_result_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 308
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_flags_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 309
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_flags_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 310
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_flags_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 311
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_flags_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 312
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {apu_flags_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 10
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[31]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 11
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[30]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 12
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[29]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 13
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[28]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 14
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[27]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 15
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[26]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 16
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[25]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 17
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[24]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 18
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[23]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 19
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[22]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 20
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[21]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 21
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[20]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 22
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[19]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 23
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[18]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 24
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[17]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 25
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[16]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 26
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[15]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 27
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[14]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 28
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[13]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 29
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[12]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 30
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[11]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 31
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[10]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 32
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[9]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 33
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[8]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 34
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[7]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 35
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[6]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 36
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[5]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 37
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 38
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 39
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 40
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 41
set_input_delay -clock [get_clocks {clk_i}] 2.5 [get_ports {irq_i[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 314
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_ack_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 315
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[4]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 316
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[3]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 317
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[2]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 318
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[1]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 319
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {irq_id_o[0]}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 110
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {debug_req_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 542
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_havereset_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 543
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_running_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 544
set_output_delay -clock [get_clocks {clk_i}] 3 [get_ports {debug_halted_o}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 313
set_input_delay -clock [get_clocks {clk_i}] 0.5 [get_ports {fetch_enable_i}]
# /home/ICer/Desktop/cv_32/syn/output/cv32e40p_core.sdc, line 545
set_output_delay -clock [get_clocks {clk_i}] 1.25 [get_ports {core_sleep_o}]
