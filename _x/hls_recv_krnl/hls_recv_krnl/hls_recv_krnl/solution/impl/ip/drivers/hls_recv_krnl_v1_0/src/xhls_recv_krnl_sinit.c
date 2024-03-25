// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhls_recv_krnl.h"

extern XHls_recv_krnl_Config XHls_recv_krnl_ConfigTable[];

XHls_recv_krnl_Config *XHls_recv_krnl_LookupConfig(u16 DeviceId) {
	XHls_recv_krnl_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHLS_RECV_KRNL_NUM_INSTANCES; Index++) {
		if (XHls_recv_krnl_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHls_recv_krnl_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHls_recv_krnl_Initialize(XHls_recv_krnl *InstancePtr, u16 DeviceId) {
	XHls_recv_krnl_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHls_recv_krnl_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHls_recv_krnl_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

