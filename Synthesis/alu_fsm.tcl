set_db lib_search_path /home/user/cadence/FOUNDRY/digital/45nm/dig/lib
set_db library slow.lib

read_hdl alu_fsm.v

elaborate

read_sdc alu_fsm_input.sdc

syn_gen
syn_map

write_hdl > alu_fsm_netlist.v
write_sdc > alu_fsm_output.sdc

gui_show

report timing > alu_fsm_timing.rpt
report power > alu_fsm_power.rpt
report area > alu_fsm_area.rpt
report messages > alu_fsm_message.rpt