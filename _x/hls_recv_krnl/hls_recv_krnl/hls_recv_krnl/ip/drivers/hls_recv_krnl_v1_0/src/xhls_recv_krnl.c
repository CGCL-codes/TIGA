// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhls_recv_krnl.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHls_recv_krnl_CfgInitialize(XHls_recv_krnl *InstancePtr, XHls_recv_krnl_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHls_recv_krnl_Start(XHls_recv_krnl *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_recv_krnl_IsDone(XHls_recv_krnl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHls_recv_krnl_IsIdle(XHls_recv_krnl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHls_recv_krnl_IsReady(XHls_recv_krnl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHls_recv_krnl_Continue(XHls_recv_krnl *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XHls_recv_krnl_EnableAutoRestart(XHls_recv_krnl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XHls_recv_krnl_DisableAutoRestart(XHls_recv_krnl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_AP_CTRL, 0);
}

void XHls_recv_krnl_Set_useConn(XHls_recv_krnl *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_USECONN_DATA, Data);
}

u32 XHls_recv_krnl_Get_useConn(XHls_recv_krnl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_USECONN_DATA);
    return Data;
}

void XHls_recv_krnl_Set_basePort(XHls_recv_krnl *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_BASEPORT_DATA, Data);
}

u32 XHls_recv_krnl_Get_basePort(XHls_recv_krnl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_BASEPORT_DATA);
    return Data;
}

void XHls_recv_krnl_Set_delay(XHls_recv_krnl *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_DELAY_DATA, Data);
}

u32 XHls_recv_krnl_Get_delay(XHls_recv_krnl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_DELAY_DATA);
    return Data;
}

void XHls_recv_krnl_Set_expectedRxByteCnt(XHls_recv_krnl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_EXPECTEDRXBYTECNT_DATA, (u32)(Data));
    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_EXPECTEDRXBYTECNT_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_recv_krnl_Get_expectedRxByteCnt(XHls_recv_krnl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_EXPECTEDRXBYTECNT_DATA);
    Data += (u64)XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_EXPECTEDRXBYTECNT_DATA + 4) << 32;
    return Data;
}

void XHls_recv_krnl_Set_out_time(XHls_recv_krnl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_OUT_TIME_DATA, (u32)(Data));
    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_OUT_TIME_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_recv_krnl_Get_out_time(XHls_recv_krnl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_OUT_TIME_DATA);
    Data += (u64)XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_OUT_TIME_DATA + 4) << 32;
    return Data;
}

void XHls_recv_krnl_InterruptGlobalEnable(XHls_recv_krnl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_GIE, 1);
}

void XHls_recv_krnl_InterruptGlobalDisable(XHls_recv_krnl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_GIE, 0);
}

void XHls_recv_krnl_InterruptEnable(XHls_recv_krnl *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_IER);
    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_IER, Register | Mask);
}

void XHls_recv_krnl_InterruptDisable(XHls_recv_krnl *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_IER);
    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XHls_recv_krnl_InterruptClear(XHls_recv_krnl *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_recv_krnl_WriteReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_ISR, Mask);
}

u32 XHls_recv_krnl_InterruptGetEnabled(XHls_recv_krnl *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_IER);
}

u32 XHls_recv_krnl_InterruptGetStatus(XHls_recv_krnl *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_recv_krnl_ReadReg(InstancePtr->Control_BaseAddress, XHLS_RECV_KRNL_CONTROL_ADDR_ISR);
}

