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
    id 1 \
    name useConn \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_useConn \
    op interface \
    ports { useConn { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name basePort \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_basePort \
    op interface \
    ports { basePort { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name expectedRxByteCnt \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_expectedRxByteCnt \
    op interface \
    ports { expectedRxByteCnt { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name out_time \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_time \
    op interface \
    ports { out_time { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name useConn_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_useConn_out \
    op interface \
    ports { useConn_out_din { O 32 vector } useConn_out_full_n { I 1 bit } useConn_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name basePort_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_basePort_out \
    op interface \
    ports { basePort_out_din { O 32 vector } basePort_out_full_n { I 1 bit } basePort_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name expectedRxByteCnt_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_expectedRxByteCnt_out \
    op interface \
    ports { expectedRxByteCnt_out_din { O 64 vector } expectedRxByteCnt_out_full_n { I 1 bit } expectedRxByteCnt_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name out_time_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_time_out \
    op interface \
    ports { out_time_out_din { O 64 vector } out_time_out_full_n { I 1 bit } out_time_out_write { O 1 bit } } \
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


