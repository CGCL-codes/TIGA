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
    id 165 \
    name ciphertextStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ciphertextStrm \
    op interface \
    ports { ciphertextStrm_din { O 128 vector } ciphertextStrm_full_n { I 1 bit } ciphertextStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name endCiphertextStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endCiphertextStrm \
    op interface \
    ports { endCiphertextStrm_din { O 1 vector } endCiphertextStrm_full_n { I 1 bit } endCiphertextStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name cipherkeyStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm \
    op interface \
    ports { cipherkeyStrm_din { O 256 vector } cipherkeyStrm_full_n { I 1 bit } cipherkeyStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name IVStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm \
    op interface \
    ports { IVStrm_din { O 128 vector } IVStrm_full_n { I 1 bit } IVStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
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
    id 170 \
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
    id 171 \
    name sha_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sha_out \
    op interface \
    ports { sha_out_dout { I 512 vector } sha_out_empty_n { I 1 bit } sha_out_read { O 1 bit } } \
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


