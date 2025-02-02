// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_recv_krnl_partition_Loop_VITIS_LOOP_71_1_proc2761 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        scalar_ComputeWordCnt_loc_dout,
        scalar_ComputeWordCnt_loc_empty_n,
        scalar_ComputeWordCnt_loc_read,
        ComputeWordCnt_loc_out_din,
        ComputeWordCnt_loc_out_full_n,
        ComputeWordCnt_loc_out_write,
        ComputeWordCnt_loc_out1_din,
        ComputeWordCnt_loc_out1_full_n,
        ComputeWordCnt_loc_out1_write,
        s_data_net_out_dout,
        s_data_net_out_empty_n,
        s_data_net_out_read,
        s_data_cal_din,
        s_data_cal_full_n,
        s_data_cal_write,
        s_data_out_din,
        s_data_out_full_n,
        s_data_out_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] scalar_ComputeWordCnt_loc_dout;
input   scalar_ComputeWordCnt_loc_empty_n;
output   scalar_ComputeWordCnt_loc_read;
output  [31:0] ComputeWordCnt_loc_out_din;
input   ComputeWordCnt_loc_out_full_n;
output   ComputeWordCnt_loc_out_write;
output  [31:0] ComputeWordCnt_loc_out1_din;
input   ComputeWordCnt_loc_out1_full_n;
output   ComputeWordCnt_loc_out1_write;
input  [511:0] s_data_net_out_dout;
input   s_data_net_out_empty_n;
output   s_data_net_out_read;
output  [511:0] s_data_cal_din;
input   s_data_cal_full_n;
output   s_data_cal_write;
output  [511:0] s_data_out_din;
input   s_data_out_full_n;
output   s_data_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg scalar_ComputeWordCnt_loc_read;
reg ComputeWordCnt_loc_out_write;
reg ComputeWordCnt_loc_out1_write;
reg s_data_net_out_read;
reg s_data_cal_write;
reg s_data_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    scalar_ComputeWordCnt_loc_blk_n;
reg    ComputeWordCnt_loc_out_blk_n;
reg    ComputeWordCnt_loc_out1_blk_n;
reg    s_data_net_out_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    s_data_cal_blk_n;
reg    s_data_out_blk_n;
reg   [31:0] scalar_ComputeWordCnt_loc_read_reg_113;
wire   [31:0] Cnt_V_1_fu_102_p2;
reg   [31:0] Cnt_V_1_reg_118;
reg   [511:0] tmp_reg_123;
wire   [0:0] icmp_ln878_fu_108_p2;
reg   [0:0] icmp_ln878_reg_128;
reg   [31:0] Cnt_V_reg_91;
reg    ap_block_state1;
reg    ap_block_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
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
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((s_data_out_full_n == 1'b0) | (s_data_cal_full_n == 1'b0) | (s_data_net_out_empty_n == 1'b0)) & (icmp_ln878_reg_128 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        Cnt_V_reg_91 <= Cnt_V_1_reg_118;
    end else if ((~((ap_start == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (scalar_ComputeWordCnt_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        Cnt_V_reg_91 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((s_data_net_out_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Cnt_V_1_reg_118 <= Cnt_V_1_fu_102_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln878_reg_128 <= icmp_ln878_fu_108_p2;
        tmp_reg_123 <= s_data_net_out_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        scalar_ComputeWordCnt_loc_read_reg_113 <= scalar_ComputeWordCnt_loc_dout;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ComputeWordCnt_loc_out1_blk_n = ComputeWordCnt_loc_out1_full_n;
    end else begin
        ComputeWordCnt_loc_out1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (scalar_ComputeWordCnt_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ComputeWordCnt_loc_out1_write = 1'b1;
    end else begin
        ComputeWordCnt_loc_out1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ComputeWordCnt_loc_out_blk_n = ComputeWordCnt_loc_out_full_n;
    end else begin
        ComputeWordCnt_loc_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (scalar_ComputeWordCnt_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ComputeWordCnt_loc_out_write = 1'b1;
    end else begin
        ComputeWordCnt_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_data_cal_blk_n = s_data_cal_full_n;
    end else begin
        s_data_cal_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((s_data_out_full_n == 1'b0) | (s_data_cal_full_n == 1'b0) | (s_data_net_out_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        s_data_cal_write = 1'b1;
    end else begin
        s_data_cal_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        s_data_net_out_blk_n = s_data_net_out_empty_n;
    end else begin
        s_data_net_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((s_data_out_full_n == 1'b0) | (s_data_cal_full_n == 1'b0) | (s_data_net_out_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3)) | ((s_data_net_out_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        s_data_net_out_read = 1'b1;
    end else begin
        s_data_net_out_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_data_out_blk_n = s_data_out_full_n;
    end else begin
        s_data_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((s_data_out_full_n == 1'b0) | (s_data_cal_full_n == 1'b0) | (s_data_net_out_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        s_data_out_write = 1'b1;
    end else begin
        s_data_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        scalar_ComputeWordCnt_loc_blk_n = scalar_ComputeWordCnt_loc_empty_n;
    end else begin
        scalar_ComputeWordCnt_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (scalar_ComputeWordCnt_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        scalar_ComputeWordCnt_loc_read = 1'b1;
    end else begin
        scalar_ComputeWordCnt_loc_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (scalar_ComputeWordCnt_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((s_data_net_out_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((s_data_out_full_n == 1'b0) | (s_data_cal_full_n == 1'b0) | (s_data_net_out_empty_n == 1'b0)) & (icmp_ln878_reg_128 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((s_data_out_full_n == 1'b0) | (s_data_cal_full_n == 1'b0) | (s_data_net_out_empty_n == 1'b0)) & (icmp_ln878_reg_128 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Cnt_V_1_fu_102_p2 = (Cnt_V_reg_91 + 32'd1);

assign ComputeWordCnt_loc_out1_din = scalar_ComputeWordCnt_loc_dout;

assign ComputeWordCnt_loc_out_din = scalar_ComputeWordCnt_loc_dout;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (1'b0 == ComputeWordCnt_loc_out1_full_n) | (1'b0 == ComputeWordCnt_loc_out_full_n) | (scalar_ComputeWordCnt_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3 = ((s_data_out_full_n == 1'b0) | (s_data_cal_full_n == 1'b0) | (s_data_net_out_empty_n == 1'b0));
end

assign icmp_ln878_fu_108_p2 = ((Cnt_V_1_fu_102_p2 < scalar_ComputeWordCnt_loc_read_reg_113) ? 1'b1 : 1'b0);

assign s_data_cal_din = tmp_reg_123;

assign s_data_out_din = s_data_net_out_dout;

endmodule //hls_recv_krnl_partition_Loop_VITIS_LOOP_71_1_proc2761
