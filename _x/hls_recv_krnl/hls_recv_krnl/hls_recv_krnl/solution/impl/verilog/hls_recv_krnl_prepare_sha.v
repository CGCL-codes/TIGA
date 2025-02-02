// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_recv_krnl_prepare_sha (
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
        ComputeWordCnt_loc_dout,
        ComputeWordCnt_loc_empty_n,
        ComputeWordCnt_loc_read,
        ComputeWordCnt_loc_out_din,
        ComputeWordCnt_loc_out_full_n,
        ComputeWordCnt_loc_out_write,
        s_data_cal_dout,
        s_data_cal_empty_n,
        s_data_cal_read,
        endMsgLenStrm_din,
        endMsgLenStrm_full_n,
        endMsgLenStrm_write,
        msgLenStrm_din,
        msgLenStrm_full_n,
        msgLenStrm_write,
        msgStrm_din,
        msgStrm_full_n,
        msgStrm_write,
        sha_in_din,
        sha_in_full_n,
        sha_in_write
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

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
input  [31:0] ComputeWordCnt_loc_dout;
input   ComputeWordCnt_loc_empty_n;
output   ComputeWordCnt_loc_read;
output  [31:0] ComputeWordCnt_loc_out_din;
input   ComputeWordCnt_loc_out_full_n;
output   ComputeWordCnt_loc_out_write;
input  [511:0] s_data_cal_dout;
input   s_data_cal_empty_n;
output   s_data_cal_read;
output  [0:0] endMsgLenStrm_din;
input   endMsgLenStrm_full_n;
output   endMsgLenStrm_write;
output  [127:0] msgLenStrm_din;
input   msgLenStrm_full_n;
output   msgLenStrm_write;
output  [63:0] msgStrm_din;
input   msgStrm_full_n;
output   msgStrm_write;
output  [511:0] sha_in_din;
input   sha_in_full_n;
output   sha_in_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg ComputeWordCnt_loc_read;
reg ComputeWordCnt_loc_out_write;
reg s_data_cal_read;
reg[0:0] endMsgLenStrm_din;
reg endMsgLenStrm_write;
reg msgLenStrm_write;
reg[63:0] msgStrm_din;
reg msgStrm_write;
reg sha_in_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    ComputeWordCnt_loc_blk_n;
reg    ComputeWordCnt_loc_out_blk_n;
reg    s_data_cal_blk_n;
wire    ap_CS_fsm_state2;
reg    endMsgLenStrm_blk_n;
wire    ap_CS_fsm_state3;
reg    msgLenStrm_blk_n;
reg    msgStrm_blk_n;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg    sha_in_blk_n;
wire   [0:0] cmp_i_i_i_i_fu_144_p2;
reg   [0:0] cmp_i_i_i_i_reg_257;
reg   [31:0] p_Result_1_i_i_i_reg_261;
reg   [31:0] p_Result_2_i_i_i_reg_266;
reg   [31:0] p_Result_3_i_i_i_reg_271;
reg   [31:0] p_Result_4_i_i_i_reg_276;
reg   [31:0] p_Result_5_i_i_i_reg_281;
reg   [31:0] p_Result_6_i_i_i_reg_286;
reg   [31:0] p_Result_7_i_i_i_reg_291;
reg    ap_block_state1;
reg    ap_block_state2;
reg    ap_block_state3;
wire   [63:0] zext_ln358_fu_154_p1;
wire   [63:0] zext_ln358_1_fu_229_p1;
wire   [63:0] zext_ln358_2_fu_233_p1;
wire   [63:0] zext_ln358_3_fu_237_p1;
wire   [63:0] zext_ln358_4_fu_241_p1;
wire   [63:0] zext_ln358_5_fu_245_p1;
wire   [63:0] zext_ln358_6_fu_249_p1;
wire   [63:0] zext_ln358_7_fu_253_p1;
wire   [31:0] trunc_ln674_fu_150_p1;
wire    ap_CS_fsm_state10;
reg   [9:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
end

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
        end else if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_done_reg <= 1'b1;
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
    if ((1'b1 == ap_CS_fsm_state1)) begin
        cmp_i_i_i_i_reg_257 <= cmp_i_i_i_i_fu_144_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_Result_1_i_i_i_reg_261 <= {{s_data_cal_dout[95:64]}};
        p_Result_2_i_i_i_reg_266 <= {{s_data_cal_dout[159:128]}};
        p_Result_3_i_i_i_reg_271 <= {{s_data_cal_dout[223:192]}};
        p_Result_4_i_i_i_reg_276 <= {{s_data_cal_dout[287:256]}};
        p_Result_5_i_i_i_reg_281 <= {{s_data_cal_dout[351:320]}};
        p_Result_6_i_i_i_reg_286 <= {{s_data_cal_dout[415:384]}};
        p_Result_7_i_i_i_reg_291 <= {{s_data_cal_dout[479:448]}};
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ComputeWordCnt_loc_blk_n = ComputeWordCnt_loc_empty_n;
    end else begin
        ComputeWordCnt_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ComputeWordCnt_loc_out_blk_n = ComputeWordCnt_loc_out_full_n;
    end else begin
        ComputeWordCnt_loc_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ComputeWordCnt_loc_out_write = 1'b1;
    end else begin
        ComputeWordCnt_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ComputeWordCnt_loc_read = 1'b1;
    end else begin
        ComputeWordCnt_loc_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
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
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        endMsgLenStrm_blk_n = endMsgLenStrm_full_n;
    end else begin
        endMsgLenStrm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((msgStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        endMsgLenStrm_din = 1'd1;
    end else if ((~((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        endMsgLenStrm_din = 1'd0;
    end else begin
        endMsgLenStrm_din = 'bx;
    end
end

always @ (*) begin
    if (((~((msgStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3)) | (~((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2)))) begin
        endMsgLenStrm_write = 1'b1;
    end else begin
        endMsgLenStrm_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        msgLenStrm_blk_n = msgLenStrm_full_n;
    end else begin
        msgLenStrm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        msgLenStrm_write = 1'b1;
    end else begin
        msgLenStrm_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        msgStrm_blk_n = msgStrm_full_n;
    end else begin
        msgStrm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        msgStrm_din = zext_ln358_7_fu_253_p1;
    end else if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        msgStrm_din = zext_ln358_6_fu_249_p1;
    end else if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        msgStrm_din = zext_ln358_5_fu_245_p1;
    end else if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        msgStrm_din = zext_ln358_4_fu_241_p1;
    end else if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        msgStrm_din = zext_ln358_3_fu_237_p1;
    end else if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        msgStrm_din = zext_ln358_2_fu_233_p1;
    end else if ((~((msgStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        msgStrm_din = zext_ln358_1_fu_229_p1;
    end else if ((~((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        msgStrm_din = zext_ln358_fu_154_p1;
    end else begin
        msgStrm_din = 'bx;
    end
end

always @ (*) begin
    if ((((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6)) | ((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | (~((msgStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3)) | (~((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2)))) begin
        msgStrm_write = 1'b1;
    end else begin
        msgStrm_write = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        s_data_cal_blk_n = s_data_cal_empty_n;
    end else begin
        s_data_cal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        s_data_cal_read = 1'b1;
    end else begin
        s_data_cal_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sha_in_blk_n = sha_in_full_n;
    end else begin
        sha_in_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        sha_in_write = 1'b1;
    end else begin
        sha_in_write = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((msgStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9) & (cmp_i_i_i_i_reg_257 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((msgStrm_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state9) & (cmp_i_i_i_i_reg_257 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ComputeWordCnt_loc_out_din = ComputeWordCnt_loc_dout;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ComputeWordCnt_loc_out_full_n) | (1'b0 == ComputeWordCnt_loc_empty_n) | (ap_done_reg == 1'b1) | (real_start == 1'b0));
end

always @ (*) begin
    ap_block_state2 = ((sha_in_full_n == 1'b0) | (msgStrm_full_n == 1'b0) | (msgLenStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0) | (s_data_cal_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3 = ((msgStrm_full_n == 1'b0) | (endMsgLenStrm_full_n == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign cmp_i_i_i_i_fu_144_p2 = ((ComputeWordCnt_loc_dout == 32'd0) ? 1'b1 : 1'b0);

assign msgLenStrm_din = 128'd64;

assign sha_in_din = s_data_cal_dout;

assign start_out = real_start;

assign trunc_ln674_fu_150_p1 = s_data_cal_dout[31:0];

assign zext_ln358_1_fu_229_p1 = p_Result_1_i_i_i_reg_261;

assign zext_ln358_2_fu_233_p1 = p_Result_2_i_i_i_reg_266;

assign zext_ln358_3_fu_237_p1 = p_Result_3_i_i_i_reg_271;

assign zext_ln358_4_fu_241_p1 = p_Result_4_i_i_i_reg_276;

assign zext_ln358_5_fu_245_p1 = p_Result_5_i_i_i_reg_281;

assign zext_ln358_6_fu_249_p1 = p_Result_6_i_i_i_reg_286;

assign zext_ln358_7_fu_253_p1 = p_Result_7_i_i_i_reg_291;

assign zext_ln358_fu_154_p1 = trunc_ln674_fu_150_p1;

endmodule //hls_recv_krnl_prepare_sha
