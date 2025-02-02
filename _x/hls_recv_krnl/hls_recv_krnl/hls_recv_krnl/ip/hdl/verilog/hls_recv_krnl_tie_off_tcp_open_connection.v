// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_recv_krnl_tie_off_tcp_open_connection (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        m_axis_tcp_open_connection_TDATA,
        m_axis_tcp_open_connection_TVALID,
        m_axis_tcp_open_connection_TREADY,
        m_axis_tcp_open_connection_TKEEP,
        m_axis_tcp_open_connection_TSTRB,
        m_axis_tcp_open_connection_TLAST,
        s_axis_tcp_open_status_TDATA,
        s_axis_tcp_open_status_TVALID,
        s_axis_tcp_open_status_TREADY,
        s_axis_tcp_open_status_TKEEP,
        s_axis_tcp_open_status_TSTRB,
        s_axis_tcp_open_status_TLAST
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
parameter    ap_const_lv64_0 = 64'd0;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [63:0] m_axis_tcp_open_connection_TDATA;
output   m_axis_tcp_open_connection_TVALID;
input   m_axis_tcp_open_connection_TREADY;
output  [7:0] m_axis_tcp_open_connection_TKEEP;
output  [7:0] m_axis_tcp_open_connection_TSTRB;
output  [0:0] m_axis_tcp_open_connection_TLAST;
input  [127:0] s_axis_tcp_open_status_TDATA;
input   s_axis_tcp_open_status_TVALID;
output   s_axis_tcp_open_status_TREADY;
input  [15:0] s_axis_tcp_open_status_TKEEP;
input  [15:0] s_axis_tcp_open_status_TSTRB;
input  [0:0] s_axis_tcp_open_status_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    m_axis_tcp_open_connection_TDATA_blk_n;
wire   [0:0] tmp_nbreadreq_fu_56_p3;
wire    ap_CS_fsm_state2;
reg   [0:0] tmp_reg_136;
reg    s_axis_tcp_open_status_TDATA_blk_n;
wire   [0:0] tmp_2_nbreadreq_fu_87_p6;
wire   [63:0] openConnection_dout;
wire    openConnection_empty_n;
reg    ap_block_state1;
reg    ap_block_state1_io;
wire    regslice_both_m_axis_tcp_open_connection_V_data_V_U_apdone_blk;
reg    ap_block_state2;
reg    ap_block_state2_io;
wire   [47:0] trunc_ln414_fu_113_p1;
reg   [1:0] ap_NS_fsm;
wire   [63:0] m_axis_tcp_open_connection_TDATA_int_regslice;
reg    m_axis_tcp_open_connection_TVALID_int_regslice;
wire    m_axis_tcp_open_connection_TREADY_int_regslice;
wire    regslice_both_m_axis_tcp_open_connection_V_data_V_U_vld_out;
wire    regslice_both_m_axis_tcp_open_connection_V_keep_V_U_apdone_blk;
wire    regslice_both_m_axis_tcp_open_connection_V_keep_V_U_ack_in_dummy;
wire    regslice_both_m_axis_tcp_open_connection_V_keep_V_U_vld_out;
wire    regslice_both_m_axis_tcp_open_connection_V_strb_V_U_apdone_blk;
wire    regslice_both_m_axis_tcp_open_connection_V_strb_V_U_ack_in_dummy;
wire    regslice_both_m_axis_tcp_open_connection_V_strb_V_U_vld_out;
wire    regslice_both_m_axis_tcp_open_connection_V_last_V_U_apdone_blk;
wire    regslice_both_m_axis_tcp_open_connection_V_last_V_U_ack_in_dummy;
wire    regslice_both_m_axis_tcp_open_connection_V_last_V_U_vld_out;
wire    regslice_both_s_axis_tcp_open_status_V_data_V_U_apdone_blk;
wire   [127:0] s_axis_tcp_open_status_TDATA_int_regslice;
wire    s_axis_tcp_open_status_TVALID_int_regslice;
reg    s_axis_tcp_open_status_TREADY_int_regslice;
wire    regslice_both_s_axis_tcp_open_status_V_data_V_U_ack_in;
wire    regslice_both_s_axis_tcp_open_status_V_keep_V_U_apdone_blk;
wire   [15:0] s_axis_tcp_open_status_TKEEP_int_regslice;
wire    regslice_both_s_axis_tcp_open_status_V_keep_V_U_vld_out;
wire    regslice_both_s_axis_tcp_open_status_V_keep_V_U_ack_in;
wire    regslice_both_s_axis_tcp_open_status_V_strb_V_U_apdone_blk;
wire   [15:0] s_axis_tcp_open_status_TSTRB_int_regslice;
wire    regslice_both_s_axis_tcp_open_status_V_strb_V_U_vld_out;
wire    regslice_both_s_axis_tcp_open_status_V_strb_V_U_ack_in;
wire    regslice_both_s_axis_tcp_open_status_V_last_V_U_apdone_blk;
wire   [0:0] s_axis_tcp_open_status_TLAST_int_regslice;
wire    regslice_both_s_axis_tcp_open_status_V_last_V_U_vld_out;
wire    regslice_both_s_axis_tcp_open_status_V_last_V_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
end

hls_recv_krnl_regslice_both #(
    .DataWidth( 64 ))
regslice_both_m_axis_tcp_open_connection_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_tcp_open_connection_TDATA_int_regslice),
    .vld_in(m_axis_tcp_open_connection_TVALID_int_regslice),
    .ack_in(m_axis_tcp_open_connection_TREADY_int_regslice),
    .data_out(m_axis_tcp_open_connection_TDATA),
    .vld_out(regslice_both_m_axis_tcp_open_connection_V_data_V_U_vld_out),
    .ack_out(m_axis_tcp_open_connection_TREADY),
    .apdone_blk(regslice_both_m_axis_tcp_open_connection_V_data_V_U_apdone_blk)
);

hls_recv_krnl_regslice_both #(
    .DataWidth( 8 ))
regslice_both_m_axis_tcp_open_connection_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(8'd0),
    .vld_in(m_axis_tcp_open_connection_TVALID_int_regslice),
    .ack_in(regslice_both_m_axis_tcp_open_connection_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_tcp_open_connection_TKEEP),
    .vld_out(regslice_both_m_axis_tcp_open_connection_V_keep_V_U_vld_out),
    .ack_out(m_axis_tcp_open_connection_TREADY),
    .apdone_blk(regslice_both_m_axis_tcp_open_connection_V_keep_V_U_apdone_blk)
);

hls_recv_krnl_regslice_both #(
    .DataWidth( 8 ))
regslice_both_m_axis_tcp_open_connection_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(8'd0),
    .vld_in(m_axis_tcp_open_connection_TVALID_int_regslice),
    .ack_in(regslice_both_m_axis_tcp_open_connection_V_strb_V_U_ack_in_dummy),
    .data_out(m_axis_tcp_open_connection_TSTRB),
    .vld_out(regslice_both_m_axis_tcp_open_connection_V_strb_V_U_vld_out),
    .ack_out(m_axis_tcp_open_connection_TREADY),
    .apdone_blk(regslice_both_m_axis_tcp_open_connection_V_strb_V_U_apdone_blk)
);

hls_recv_krnl_regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_tcp_open_connection_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(1'd0),
    .vld_in(m_axis_tcp_open_connection_TVALID_int_regslice),
    .ack_in(regslice_both_m_axis_tcp_open_connection_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_tcp_open_connection_TLAST),
    .vld_out(regslice_both_m_axis_tcp_open_connection_V_last_V_U_vld_out),
    .ack_out(m_axis_tcp_open_connection_TREADY),
    .apdone_blk(regslice_both_m_axis_tcp_open_connection_V_last_V_U_apdone_blk)
);

hls_recv_krnl_regslice_both #(
    .DataWidth( 128 ))
regslice_both_s_axis_tcp_open_status_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_tcp_open_status_TDATA),
    .vld_in(s_axis_tcp_open_status_TVALID),
    .ack_in(regslice_both_s_axis_tcp_open_status_V_data_V_U_ack_in),
    .data_out(s_axis_tcp_open_status_TDATA_int_regslice),
    .vld_out(s_axis_tcp_open_status_TVALID_int_regslice),
    .ack_out(s_axis_tcp_open_status_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_tcp_open_status_V_data_V_U_apdone_blk)
);

hls_recv_krnl_regslice_both #(
    .DataWidth( 16 ))
regslice_both_s_axis_tcp_open_status_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_tcp_open_status_TKEEP),
    .vld_in(s_axis_tcp_open_status_TVALID),
    .ack_in(regslice_both_s_axis_tcp_open_status_V_keep_V_U_ack_in),
    .data_out(s_axis_tcp_open_status_TKEEP_int_regslice),
    .vld_out(regslice_both_s_axis_tcp_open_status_V_keep_V_U_vld_out),
    .ack_out(s_axis_tcp_open_status_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_tcp_open_status_V_keep_V_U_apdone_blk)
);

hls_recv_krnl_regslice_both #(
    .DataWidth( 16 ))
regslice_both_s_axis_tcp_open_status_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_tcp_open_status_TSTRB),
    .vld_in(s_axis_tcp_open_status_TVALID),
    .ack_in(regslice_both_s_axis_tcp_open_status_V_strb_V_U_ack_in),
    .data_out(s_axis_tcp_open_status_TSTRB_int_regslice),
    .vld_out(regslice_both_s_axis_tcp_open_status_V_strb_V_U_vld_out),
    .ack_out(s_axis_tcp_open_status_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_tcp_open_status_V_strb_V_U_apdone_blk)
);

hls_recv_krnl_regslice_both #(
    .DataWidth( 1 ))
regslice_both_s_axis_tcp_open_status_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_tcp_open_status_TLAST),
    .vld_in(s_axis_tcp_open_status_TVALID),
    .ack_in(regslice_both_s_axis_tcp_open_status_V_last_V_U_ack_in),
    .data_out(s_axis_tcp_open_status_TLAST_int_regslice),
    .vld_out(regslice_both_s_axis_tcp_open_status_V_last_V_U_vld_out),
    .ack_out(s_axis_tcp_open_status_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_tcp_open_status_V_last_V_U_apdone_blk)
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
        end else if ((~((regslice_both_m_axis_tcp_open_connection_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state2_io) | ((tmp_2_nbreadreq_fu_87_p6 == 1'd1) & (s_axis_tcp_open_status_TVALID_int_regslice == 1'b0)) | ((tmp_reg_136 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (*) begin
    if ((~((regslice_both_m_axis_tcp_open_connection_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state2_io) | ((tmp_2_nbreadreq_fu_87_p6 == 1'd1) & (s_axis_tcp_open_status_TVALID_int_regslice == 1'b0)) | ((tmp_reg_136 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((~((regslice_both_m_axis_tcp_open_connection_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state2_io) | ((tmp_2_nbreadreq_fu_87_p6 == 1'd1) & (s_axis_tcp_open_status_TVALID_int_regslice == 1'b0)) | ((tmp_reg_136 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_reg_136 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_56_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        m_axis_tcp_open_connection_TDATA_blk_n = m_axis_tcp_open_connection_TREADY_int_regslice;
    end else begin
        m_axis_tcp_open_connection_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b1 == ap_block_state1_io) | (ap_done_reg == 1'b1) | ((openConnection_empty_n == 1'b0) & (tmp_nbreadreq_fu_56_p3 == 1'd1)) | ((tmp_nbreadreq_fu_56_p3 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0))) & (tmp_nbreadreq_fu_56_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axis_tcp_open_connection_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_tcp_open_connection_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_2_nbreadreq_fu_87_p6 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_axis_tcp_open_status_TDATA_blk_n = s_axis_tcp_open_status_TVALID_int_regslice;
    end else begin
        s_axis_tcp_open_status_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((regslice_both_m_axis_tcp_open_connection_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state2_io) | ((tmp_2_nbreadreq_fu_87_p6 == 1'd1) & (s_axis_tcp_open_status_TVALID_int_regslice == 1'b0)) | ((tmp_reg_136 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0))) & (tmp_2_nbreadreq_fu_87_p6 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_axis_tcp_open_status_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_tcp_open_status_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (1'b1 == ap_block_state1_io) | (ap_done_reg == 1'b1) | ((openConnection_empty_n == 1'b0) & (tmp_nbreadreq_fu_56_p3 == 1'd1)) | ((tmp_nbreadreq_fu_56_p3 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((regslice_both_m_axis_tcp_open_connection_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state2_io) | ((tmp_2_nbreadreq_fu_87_p6 == 1'd1) & (s_axis_tcp_open_status_TVALID_int_regslice == 1'b0)) | ((tmp_reg_136 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((openConnection_empty_n == 1'b0) & (tmp_nbreadreq_fu_56_p3 == 1'd1)) | ((tmp_nbreadreq_fu_56_p3 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state1_io = ((tmp_nbreadreq_fu_56_p3 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2 = ((regslice_both_m_axis_tcp_open_connection_V_data_V_U_apdone_blk == 1'b1) | ((tmp_2_nbreadreq_fu_87_p6 == 1'd1) & (s_axis_tcp_open_status_TVALID_int_regslice == 1'b0)) | ((tmp_reg_136 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = ((tmp_reg_136 == 1'd1) & (m_axis_tcp_open_connection_TREADY_int_regslice == 1'b0));
end

assign m_axis_tcp_open_connection_TDATA_int_regslice = {{ap_const_lv64_0[63:48]}, {trunc_ln414_fu_113_p1}};

assign m_axis_tcp_open_connection_TVALID = regslice_both_m_axis_tcp_open_connection_V_data_V_U_vld_out;

assign openConnection_dout = 64'd0;

assign openConnection_empty_n = 1'b1;

assign s_axis_tcp_open_status_TREADY = regslice_both_s_axis_tcp_open_status_V_data_V_U_ack_in;

assign tmp_2_nbreadreq_fu_87_p6 = s_axis_tcp_open_status_TVALID_int_regslice;

assign tmp_nbreadreq_fu_56_p3 = openConnection_empty_n;

assign trunc_ln414_fu_113_p1 = openConnection_dout[47:0];

always @ (posedge ap_clk) begin
    tmp_reg_136 <= 1'b1;
end

endmodule //hls_recv_krnl_tie_off_tcp_open_connection
