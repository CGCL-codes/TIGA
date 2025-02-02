// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_recv_krnl_mysha (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        timesha_din,
        timesha_full_n,
        timesha_write,
        ComputeWordCnt_loc_dout,
        ComputeWordCnt_loc_empty_n,
        ComputeWordCnt_loc_read,
        ComputeWordCnt_loc_out_din,
        ComputeWordCnt_loc_out_full_n,
        ComputeWordCnt_loc_out_write,
        ComputeWordCnt_loc_out1_din,
        ComputeWordCnt_loc_out1_full_n,
        ComputeWordCnt_loc_out1_write,
        sha_in_dout,
        sha_in_empty_n,
        sha_in_read,
        sha_out_din,
        sha_out_full_n,
        sha_out_write,
        endMsgLenStrm_dout,
        endMsgLenStrm_empty_n,
        endMsgLenStrm_read,
        msgLenStrm_dout,
        msgLenStrm_empty_n,
        msgLenStrm_read,
        msgStrm_dout,
        msgStrm_empty_n,
        msgStrm_read,
        digestStrm_din,
        digestStrm_full_n,
        digestStrm_write,
        endDigestStrm_din,
        endDigestStrm_full_n,
        endDigestStrm_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output  [31:0] timesha_din;
input   timesha_full_n;
output   timesha_write;
input  [31:0] ComputeWordCnt_loc_dout;
input   ComputeWordCnt_loc_empty_n;
output   ComputeWordCnt_loc_read;
output  [31:0] ComputeWordCnt_loc_out_din;
input   ComputeWordCnt_loc_out_full_n;
output   ComputeWordCnt_loc_out_write;
output  [31:0] ComputeWordCnt_loc_out1_din;
input   ComputeWordCnt_loc_out1_full_n;
output   ComputeWordCnt_loc_out1_write;
input  [511:0] sha_in_dout;
input   sha_in_empty_n;
output   sha_in_read;
output  [511:0] sha_out_din;
input   sha_out_full_n;
output   sha_out_write;
input  [0:0] endMsgLenStrm_dout;
input   endMsgLenStrm_empty_n;
output   endMsgLenStrm_read;
input  [127:0] msgLenStrm_dout;
input   msgLenStrm_empty_n;
output   msgLenStrm_read;
input  [63:0] msgStrm_dout;
input   msgStrm_empty_n;
output   msgStrm_read;
output  [255:0] digestStrm_din;
input   digestStrm_full_n;
output   digestStrm_write;
output  [0:0] endDigestStrm_din;
input   endDigestStrm_full_n;
output   endDigestStrm_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg[31:0] timesha_din;
reg timesha_write;
reg ComputeWordCnt_loc_read;
reg ComputeWordCnt_loc_out_write;
reg ComputeWordCnt_loc_out1_write;
reg sha_in_read;
reg sha_out_write;
reg endMsgLenStrm_read;
reg msgLenStrm_read;
reg msgStrm_read;
reg digestStrm_write;
reg endDigestStrm_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    timesha_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln878_fu_156_p2;
reg    ComputeWordCnt_loc_blk_n;
reg    ComputeWordCnt_loc_out_blk_n;
reg    ComputeWordCnt_loc_out1_blk_n;
reg    sha_in_blk_n;
wire    ap_CS_fsm_state4;
reg    sha_out_blk_n;
wire   [32:0] sub_i_i_i_i_i_fu_140_p2;
reg   [32:0] sub_i_i_i_i_i_reg_161;
wire   [31:0] add_ln878_fu_146_p2;
reg   [31:0] add_ln878_reg_166;
reg    ap_block_state3;
wire    grp_sha3Digest_32u_s_fu_120_ap_start;
wire    grp_sha3Digest_32u_s_fu_120_ap_done;
wire    grp_sha3Digest_32u_s_fu_120_ap_idle;
wire    grp_sha3Digest_32u_s_fu_120_ap_ready;
wire    grp_sha3Digest_32u_s_fu_120_endMsgLenStrm_read;
wire    grp_sha3Digest_32u_s_fu_120_msgLenStrm_read;
wire    grp_sha3Digest_32u_s_fu_120_msgStrm_read;
wire   [255:0] grp_sha3Digest_32u_s_fu_120_digestStrm_din;
wire    grp_sha3Digest_32u_s_fu_120_digestStrm_write;
wire   [0:0] grp_sha3Digest_32u_s_fu_120_endDigestStrm_din;
wire    grp_sha3Digest_32u_s_fu_120_endDigestStrm_write;
reg   [31:0] i_V_reg_109;
reg    ap_block_state2;
reg    ap_block_state4;
reg    grp_sha3Digest_32u_s_fu_120_ap_start_reg;
reg    ap_block_state1_ignore_call54;
reg    ap_block_state3_ignore_call4;
wire   [32:0] ComputeWordCnt_cast_i_i_i_fu_136_p1;
wire   [32:0] zext_ln110_fu_152_p1;
reg   [3:0] ap_NS_fsm;
reg    ap_block_state1;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 grp_sha3Digest_32u_s_fu_120_ap_start_reg = 1'b0;
end

hls_recv_krnl_sha3Digest_32u_s grp_sha3Digest_32u_s_fu_120(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha3Digest_32u_s_fu_120_ap_start),
    .ap_done(grp_sha3Digest_32u_s_fu_120_ap_done),
    .ap_idle(grp_sha3Digest_32u_s_fu_120_ap_idle),
    .ap_ready(grp_sha3Digest_32u_s_fu_120_ap_ready),
    .endMsgLenStrm_dout(endMsgLenStrm_dout),
    .endMsgLenStrm_empty_n(endMsgLenStrm_empty_n),
    .endMsgLenStrm_read(grp_sha3Digest_32u_s_fu_120_endMsgLenStrm_read),
    .msgLenStrm_dout(msgLenStrm_dout),
    .msgLenStrm_empty_n(msgLenStrm_empty_n),
    .msgLenStrm_read(grp_sha3Digest_32u_s_fu_120_msgLenStrm_read),
    .msgStrm_dout(msgStrm_dout),
    .msgStrm_empty_n(msgStrm_empty_n),
    .msgStrm_read(grp_sha3Digest_32u_s_fu_120_msgStrm_read),
    .digestStrm_din(grp_sha3Digest_32u_s_fu_120_digestStrm_din),
    .digestStrm_full_n(digestStrm_full_n),
    .digestStrm_write(grp_sha3Digest_32u_s_fu_120_digestStrm_write),
    .endDigestStrm_din(grp_sha3Digest_32u_s_fu_120_endDigestStrm_din),
    .endDigestStrm_full_n(endDigestStrm_full_n),
    .endDigestStrm_write(grp_sha3Digest_32u_s_fu_120_endDigestStrm_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (icmp_ln878_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha3Digest_32u_s_fu_120_ap_start_reg <= 1'b0;
    end else begin
        if (((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)) | (~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (icmp_ln878_fu_156_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
            grp_sha3Digest_32u_s_fu_120_ap_start_reg <= 1'b1;
        end else if ((grp_sha3Digest_32u_s_fu_120_ap_ready == 1'b1)) begin
            grp_sha3Digest_32u_s_fu_120_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        i_V_reg_109 <= add_ln878_reg_166;
    end else if ((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        i_V_reg_109 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln878_reg_166 <= add_ln878_fu_146_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sub_i_i_i_i_i_reg_161 <= sub_i_i_i_i_i_fu_140_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ComputeWordCnt_loc_blk_n = ComputeWordCnt_loc_empty_n;
    end else begin
        ComputeWordCnt_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ComputeWordCnt_loc_out1_blk_n = ComputeWordCnt_loc_out1_full_n;
    end else begin
        ComputeWordCnt_loc_out1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        ComputeWordCnt_loc_out1_write = 1'b1;
    end else begin
        ComputeWordCnt_loc_out1_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ComputeWordCnt_loc_out_blk_n = ComputeWordCnt_loc_out_full_n;
    end else begin
        ComputeWordCnt_loc_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        ComputeWordCnt_loc_out_write = 1'b1;
    end else begin
        ComputeWordCnt_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        ComputeWordCnt_loc_read = 1'b1;
    end else begin
        ComputeWordCnt_loc_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (icmp_ln878_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        digestStrm_write = grp_sha3Digest_32u_s_fu_120_digestStrm_write;
    end else begin
        digestStrm_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        endDigestStrm_write = grp_sha3Digest_32u_s_fu_120_endDigestStrm_write;
    end else begin
        endDigestStrm_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        endMsgLenStrm_read = grp_sha3Digest_32u_s_fu_120_endMsgLenStrm_read;
    end else begin
        endMsgLenStrm_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (icmp_ln878_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        msgLenStrm_read = grp_sha3Digest_32u_s_fu_120_msgLenStrm_read;
    end else begin
        msgLenStrm_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        msgStrm_read = grp_sha3Digest_32u_s_fu_120_msgStrm_read;
    end else begin
        msgStrm_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        sha_in_blk_n = sha_in_empty_n;
    end else begin
        sha_in_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state4)) | (~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2)))) begin
        sha_in_read = 1'b1;
    end else begin
        sha_in_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        sha_out_blk_n = sha_out_full_n;
    end else begin
        sha_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state4)) | (~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2)))) begin
        sha_out_write = 1'b1;
    end else begin
        sha_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln878_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        timesha_blk_n = timesha_full_n;
    end else begin
        timesha_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (icmp_ln878_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        timesha_din = 32'd1;
    end else if ((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        timesha_din = 32'd0;
    end else begin
        timesha_din = 'bx;
    end
end

always @ (*) begin
    if (((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2)) | (~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (icmp_ln878_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        timesha_write = 1'b1;
    end else begin
        timesha_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (icmp_ln878_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0)) & (icmp_ln878_fu_156_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (grp_sha3Digest_32u_s_fu_120_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ComputeWordCnt_cast_i_i_i_fu_136_p1 = ComputeWordCnt_loc_dout;

assign ComputeWordCnt_loc_out1_din = ComputeWordCnt_loc_dout;

assign ComputeWordCnt_loc_out_din = ComputeWordCnt_loc_dout;

assign add_ln878_fu_146_p2 = (i_V_reg_109 + 32'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_ignore_call54 = ((ap_done_reg == 1'b1) | (real_start == 1'b0));
end

always @ (*) begin
    ap_block_state2 = ((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0) | (timesha_full_n == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n));
end

always @ (*) begin
    ap_block_state3 = ((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_ignore_call4 = ((icmp_ln878_fu_156_p2 == 1'd0) & (timesha_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state4 = ((sha_out_full_n == 1'b0) | (sha_in_empty_n == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign digestStrm_din = grp_sha3Digest_32u_s_fu_120_digestStrm_din;

assign endDigestStrm_din = grp_sha3Digest_32u_s_fu_120_endDigestStrm_din;

assign grp_sha3Digest_32u_s_fu_120_ap_start = grp_sha3Digest_32u_s_fu_120_ap_start_reg;

assign icmp_ln878_fu_156_p2 = (($signed(zext_ln110_fu_152_p1) < $signed(sub_i_i_i_i_i_reg_161)) ? 1'b1 : 1'b0);

assign sha_out_din = sha_in_dout;

assign start_out = real_start;

assign sub_i_i_i_i_i_fu_140_p2 = ($signed(ComputeWordCnt_cast_i_i_i_fu_136_p1) + $signed(33'd8589934591));

assign zext_ln110_fu_152_p1 = i_V_reg_109;

endmodule //hls_recv_krnl_mysha
