# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 64 \
    name s_axis_tcp_rx_meta_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_tcp_rx_meta} \
    metadata {  } \
    op interface \
    ports { s_axis_tcp_rx_meta_TDATA { I 16 vector } s_axis_tcp_rx_meta_TVALID { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_tcp_rx_meta_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 65 \
    name s_axis_tcp_rx_meta_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_tcp_rx_meta} \
    metadata {  } \
    op interface \
    ports { s_axis_tcp_rx_meta_TKEEP { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_tcp_rx_meta_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 66 \
    name s_axis_tcp_rx_meta_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_tcp_rx_meta} \
    metadata {  } \
    op interface \
    ports { s_axis_tcp_rx_meta_TSTRB { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_tcp_rx_meta_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 67 \
    name s_axis_tcp_rx_meta_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_tcp_rx_meta} \
    metadata {  } \
    op interface \
    ports { s_axis_tcp_rx_meta_TREADY { O 1 bit } s_axis_tcp_rx_meta_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_tcp_rx_meta_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 68 \
    name s_axis_tcp_rx_data_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_tcp_rx_data} \
    metadata {  } \
    op interface \
    ports { s_axis_tcp_rx_data_TDATA { I 512 vector } s_axis_tcp_rx_data_TVALID { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_tcp_rx_data_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 69 \
    name s_axis_tcp_rx_data_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_tcp_rx_data} \
    metadata {  } \
    op interface \
    ports { s_axis_tcp_rx_data_TKEEP { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_tcp_rx_data_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 70 \
    name s_axis_tcp_rx_data_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_tcp_rx_data} \
    metadata {  } \
    op interface \
    ports { s_axis_tcp_rx_data_TSTRB { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_tcp_rx_data_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 71 \
    name s_axis_tcp_rx_data_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_tcp_rx_data} \
    metadata {  } \
    op interface \
    ports { s_axis_tcp_rx_data_TREADY { O 1 bit } s_axis_tcp_rx_data_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_tcp_rx_data_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name nextRxPacketLength3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nextRxPacketLength3 \
    op interface \
    ports { nextRxPacketLength3_dout { I 16 vector } nextRxPacketLength3_empty_n { I 1 bit } nextRxPacketLength3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name expRxBytePerSession \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_expRxBytePerSession \
    op interface \
    ports { expRxBytePerSession_dout { I 64 vector } expRxBytePerSession_empty_n { I 1 bit } expRxBytePerSession_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name s_data_net_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_data_net_out \
    op interface \
    ports { s_data_net_out_din { O 512 vector } s_data_net_out_full_n { I 1 bit } s_data_net_out_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


