// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHLS_RECV_KRNL_H
#define XHLS_RECV_KRNL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhls_recv_krnl_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XHls_recv_krnl_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XHls_recv_krnl;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_recv_krnl_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_recv_krnl_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_recv_krnl_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_recv_krnl_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XHls_recv_krnl_Initialize(XHls_recv_krnl *InstancePtr, u16 DeviceId);
XHls_recv_krnl_Config* XHls_recv_krnl_LookupConfig(u16 DeviceId);
int XHls_recv_krnl_CfgInitialize(XHls_recv_krnl *InstancePtr, XHls_recv_krnl_Config *ConfigPtr);
#else
int XHls_recv_krnl_Initialize(XHls_recv_krnl *InstancePtr, const char* InstanceName);
int XHls_recv_krnl_Release(XHls_recv_krnl *InstancePtr);
#endif

void XHls_recv_krnl_Start(XHls_recv_krnl *InstancePtr);
u32 XHls_recv_krnl_IsDone(XHls_recv_krnl *InstancePtr);
u32 XHls_recv_krnl_IsIdle(XHls_recv_krnl *InstancePtr);
u32 XHls_recv_krnl_IsReady(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_Continue(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_EnableAutoRestart(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_DisableAutoRestart(XHls_recv_krnl *InstancePtr);

void XHls_recv_krnl_Set_useConn(XHls_recv_krnl *InstancePtr, u32 Data);
u32 XHls_recv_krnl_Get_useConn(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_Set_basePort(XHls_recv_krnl *InstancePtr, u32 Data);
u32 XHls_recv_krnl_Get_basePort(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_Set_delay(XHls_recv_krnl *InstancePtr, u32 Data);
u32 XHls_recv_krnl_Get_delay(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_Set_expectedRxByteCnt(XHls_recv_krnl *InstancePtr, u64 Data);
u64 XHls_recv_krnl_Get_expectedRxByteCnt(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_Set_out_time(XHls_recv_krnl *InstancePtr, u64 Data);
u64 XHls_recv_krnl_Get_out_time(XHls_recv_krnl *InstancePtr);

void XHls_recv_krnl_InterruptGlobalEnable(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_InterruptGlobalDisable(XHls_recv_krnl *InstancePtr);
void XHls_recv_krnl_InterruptEnable(XHls_recv_krnl *InstancePtr, u32 Mask);
void XHls_recv_krnl_InterruptDisable(XHls_recv_krnl *InstancePtr, u32 Mask);
void XHls_recv_krnl_InterruptClear(XHls_recv_krnl *InstancePtr, u32 Mask);
u32 XHls_recv_krnl_InterruptGetEnabled(XHls_recv_krnl *InstancePtr);
u32 XHls_recv_krnl_InterruptGetStatus(XHls_recv_krnl *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
