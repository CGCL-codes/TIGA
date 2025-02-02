// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of useConn
//        bit 31~0 - useConn[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of basePort
//        bit 31~0 - basePort[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of delay
//        bit 31~0 - delay[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of expectedRxByteCnt
//        bit 31~0 - expectedRxByteCnt[31:0] (Read/Write)
// 0x2c : Data signal of expectedRxByteCnt
//        bit 31~0 - expectedRxByteCnt[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of out_time
//        bit 31~0 - out_time[31:0] (Read/Write)
// 0x38 : Data signal of out_time
//        bit 31~0 - out_time[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL                0x00
#define XHLS_RECV_KRNL_CONTROL_ADDR_GIE                    0x04
#define XHLS_RECV_KRNL_CONTROL_ADDR_IER                    0x08
#define XHLS_RECV_KRNL_CONTROL_ADDR_ISR                    0x0c
#define XHLS_RECV_KRNL_CONTROL_ADDR_USECONN_DATA           0x10
#define XHLS_RECV_KRNL_CONTROL_BITS_USECONN_DATA           32
#define XHLS_RECV_KRNL_CONTROL_ADDR_BASEPORT_DATA          0x18
#define XHLS_RECV_KRNL_CONTROL_BITS_BASEPORT_DATA          32
#define XHLS_RECV_KRNL_CONTROL_ADDR_DELAY_DATA             0x20
#define XHLS_RECV_KRNL_CONTROL_BITS_DELAY_DATA             32
#define XHLS_RECV_KRNL_CONTROL_ADDR_EXPECTEDRXBYTECNT_DATA 0x28
#define XHLS_RECV_KRNL_CONTROL_BITS_EXPECTEDRXBYTECNT_DATA 64
#define XHLS_RECV_KRNL_CONTROL_ADDR_OUT_TIME_DATA          0x34
#define XHLS_RECV_KRNL_CONTROL_BITS_OUT_TIME_DATA          64

