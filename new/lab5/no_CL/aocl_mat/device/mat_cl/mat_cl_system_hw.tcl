package require -exact qsys 14.0
set_module_property NAME mat_cl_system
set_module_property VERSION 14.0
set_module_property INTERNAL false
set_module_property GROUP Accelerators
set_module_property DISPLAY_NAME mat_cl_system
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true


add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL mat_cl_system
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file acl_arb2.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_arb2.v TOP_LEVEL_FILE
add_fileset_file acl_arb_intf.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_arb_intf.v TOP_LEVEL_FILE
add_fileset_file acl_avm_to_ic.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_avm_to_ic.v TOP_LEVEL_FILE
add_fileset_file acl_ic_intf.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_intf.v TOP_LEVEL_FILE
add_fileset_file acl_ic_master_endpoint.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_master_endpoint.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_endpoint.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_endpoint.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_rrp.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_rrp.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_wrp.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_wrp.v TOP_LEVEL_FILE
add_fileset_file acl_ic_rrp_reg.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_rrp_reg.v TOP_LEVEL_FILE
add_fileset_file acl_ic_wrp_reg.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_wrp_reg.v TOP_LEVEL_FILE
add_fileset_file acl_ic_to_avm.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_to_avm.v TOP_LEVEL_FILE
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ll_fifo.v TOP_LEVEL_FILE
add_fileset_file acl_atomics_nostall.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_atomics_nostall.v TOP_LEVEL_FILE
add_fileset_file acl_atomics_arb_stall.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_atomics_arb_stall.v TOP_LEVEL_FILE


add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL mat_cl_system
add_fileset_file acl_arb2.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_arb2.v TOP_LEVEL_FILE
add_fileset_file acl_arb_intf.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_arb_intf.v TOP_LEVEL_FILE
add_fileset_file acl_avm_to_ic.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_avm_to_ic.v TOP_LEVEL_FILE
add_fileset_file acl_ic_intf.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_intf.v TOP_LEVEL_FILE
add_fileset_file acl_ic_master_endpoint.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_master_endpoint.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_endpoint.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_endpoint.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_rrp.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_rrp.v TOP_LEVEL_FILE
add_fileset_file acl_ic_slave_wrp.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_slave_wrp.v TOP_LEVEL_FILE
add_fileset_file acl_ic_rrp_reg.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_rrp_reg.v TOP_LEVEL_FILE
add_fileset_file acl_ic_wrp_reg.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_wrp_reg.v TOP_LEVEL_FILE
add_fileset_file acl_ic_to_avm.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ic_to_avm.v TOP_LEVEL_FILE
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_ll_fifo.v TOP_LEVEL_FILE
add_fileset_file acl_atomics_nostall.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_atomics_nostall.v TOP_LEVEL_FILE
add_fileset_file acl_atomics_arb_stall.v SYSTEM_VERILOG PATH $::env(ALTERAOCLSDKROOT)/ip/acl_atomics_arb_stall.v TOP_LEVEL_FILE
