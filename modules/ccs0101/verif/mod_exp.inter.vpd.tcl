# Begin_DVE_Session_Save_Info
# DVE view(Wave.1 ) session
# Saved on Sun May 28 15:38:50 2017
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
#   Wave.1: 26 signals
# End_DVE_Session_Save_Info

# DVE version: M-2017.03_Full64
# DVE build date: Feb 15 2017 21:10:45


#<Session mode="View" path="/home/projects/vlsi/ccs0101/design/modules/ccs0101/verif/mod_exp.inter.vpd.tcl" type="Debug">

#<Database>

gui_set_time_units 1ps
#</Database>

# DVE View/pane content session: 

# Begin_DVE_Session_Save_Info (Wave.1)
# DVE wave signals session
# Saved on Sun May 28 15:38:50 2017
# 26 signals
# End_DVE_Session_Save_Info

# DVE version: M-2017.03_Full64
# DVE build date: Feb 15 2017 21:10:45


#Add ncecessay scopes

gui_set_time_units 1ps

set _wave_session_group_1 Group1
if {[gui_sg_is_group -name "$_wave_session_group_1"]} {
    set _wave_session_group_1 [gui_sg_generate_new_name]
}
set Group1 "$_wave_session_group_1"

gui_sg_addsignal -group "$_wave_session_group_1" { {Sim:ccs0101_tb.cleq_host_irq} {Sim:ccs0101_tb.N} {Sim:ccs0101_tb.fkf} {Sim:ccs0101_tb.rand0} {Sim:ccs0101_tb.rand1} {Sim:ccs0101_tb.log2ofn} {Sim:ccs0101_tb.nsq} {Sim:ccs0101_tb.arga} {Sim:ccs0101_tb.argb} {Sim:ccs0101_tb.uartm_rx_tb_data} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.arg_a} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.arg_b} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.modulus} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.enable_p_mod_mul_il} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.enable_p_bin_ext_gcd} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.done_irq_p_bin_ext_gcd} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.enable_p_mod_exp} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.done_irq_p_mod_exp} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.done_irq_p_mod_mul_il} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.en_montgomery_mul_p} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.y} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.busy_flag_set} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.curr_state} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.pwr} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.exp_loc} {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.clk} }
gui_set_radix -radix {decimal} -signals {Sim:ccs0101_tb.nsq}
gui_set_radix -radix {unsigned} -signals {Sim:ccs0101_tb.nsq}
gui_set_radix -radix {decimal} -signals {Sim:ccs0101_tb.arga}
gui_set_radix -radix {unsigned} -signals {Sim:ccs0101_tb.arga}
gui_set_radix -radix {decimal} -signals {Sim:ccs0101_tb.argb}
gui_set_radix -radix {unsigned} -signals {Sim:ccs0101_tb.argb}
gui_set_radix -radix {decimal} -signals {Sim:ccs0101_tb.uartm_rx_tb_data}
gui_set_radix -radix {unsigned} -signals {Sim:ccs0101_tb.uartm_rx_tb_data}
gui_set_radix -radix {decimal} -signals {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.arg_a}
gui_set_radix -radix {unsigned} -signals {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.arg_a}
gui_set_radix -radix {decimal} -signals {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.arg_b}
gui_set_radix -radix {unsigned} -signals {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.arg_b}
gui_set_radix -radix {decimal} -signals {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.modulus}
gui_set_radix -radix {unsigned} -signals {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.modulus}
gui_set_radix -radix {decimal} -signals {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.y}
gui_set_radix -radix {unsigned} -signals {Sim:ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.y}
if {![info exists useOldWindow]} { 
	set useOldWindow true
}
if {$useOldWindow && [string first "Wave" [gui_get_current_window -view]]==0} { 
	set Wave.1 [gui_get_current_window -view] 
} else {
	set Wave.1 [lindex [gui_get_window_ids -type Wave] 0]
if {[string first "Wave" ${Wave.1}]!=0} {
gui_open_window Wave
set Wave.1 [ gui_get_current_window -view ]
}
}

set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_marker_set_ref -id ${Wave.1}  C1
gui_wv_zoom_timerange -id ${Wave.1} 4073868865 4073907881
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group1}]
gui_seek_criteria -id ${Wave.1} {Any Edge}


gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group ${Group1}  -item ccs0101_tb.u_dut_inst.u_chip_core_inst.u_gpcfg_inst.u_mod_exp_inst.clk -position below

gui_marker_move -id ${Wave.1} {C1} 4073884476
gui_view_scroll -id ${Wave.1} -vertical -set 0
gui_show_grid -id ${Wave.1} -enable false
#</Session>
