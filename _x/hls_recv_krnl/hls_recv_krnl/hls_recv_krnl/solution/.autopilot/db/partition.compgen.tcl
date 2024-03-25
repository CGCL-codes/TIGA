# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name ComputeWordCnt_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ComputeWordCnt_loc \
    op interface \
    ports { ComputeWordCnt_loc_dout { I 32 vector } ComputeWordCnt_loc_empty_n { I 1 bit } ComputeWordCnt_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name ComputeWordCnt_loc_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ComputeWordCnt_loc_out \
    op interface \
    ports { ComputeWordCnt_loc_out_din { O 32 vector } ComputeWordCnt_loc_out_full_n { I 1 bit } ComputeWordCnt_loc_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name ComputeWordCnt_loc_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ComputeWordCnt_loc_out1 \
    op interface \
    ports { ComputeWordCnt_loc_out1_din { O 32 vector } ComputeWordCnt_loc_out1_full_n { I 1 bit } ComputeWordCnt_loc_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name s_data_net_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_data_net_out \
    op interface \
    ports { s_data_net_out_dout { I 512 vector } s_data_net_out_empty_n { I 1 bit } s_data_net_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name s_data_cal \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_data_cal \
    op interface \
    ports { s_data_cal_din { O 512 vector } s_data_cal_full_n { I 1 bit } s_data_cal_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name s_data_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_data_out \
    op interface \
    ports { s_data_out_din { O 512 vector } s_data_out_full_n { I 1 bit } s_data_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


