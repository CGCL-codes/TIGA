set moduleName prepare_aes
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {prepare_aes}
set C_modelType { void 0 }
set C_modelArgList {
	{ ciphertextStrm int 128 regular {fifo 1 volatile }  }
	{ endCiphertextStrm int 1 regular {fifo 1 volatile }  }
	{ cipherkeyStrm int 256 regular {fifo 1 volatile }  }
	{ IVStrm int 128 regular {fifo 1 volatile }  }
	{ ComputeWordCnt_loc int 32 regular {fifo 0}  }
	{ ComputeWordCnt_loc_out int 32 regular {fifo 1}  }
	{ sha_out int 512 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ciphertextStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endCiphertextStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ComputeWordCnt_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ComputeWordCnt_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sha_out", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ ciphertextStrm_din sc_out sc_lv 128 signal 0 } 
	{ ciphertextStrm_full_n sc_in sc_logic 1 signal 0 } 
	{ ciphertextStrm_write sc_out sc_logic 1 signal 0 } 
	{ endCiphertextStrm_din sc_out sc_lv 1 signal 1 } 
	{ endCiphertextStrm_full_n sc_in sc_logic 1 signal 1 } 
	{ endCiphertextStrm_write sc_out sc_logic 1 signal 1 } 
	{ cipherkeyStrm_din sc_out sc_lv 256 signal 2 } 
	{ cipherkeyStrm_full_n sc_in sc_logic 1 signal 2 } 
	{ cipherkeyStrm_write sc_out sc_logic 1 signal 2 } 
	{ IVStrm_din sc_out sc_lv 128 signal 3 } 
	{ IVStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ IVStrm_write sc_out sc_logic 1 signal 3 } 
	{ ComputeWordCnt_loc_dout sc_in sc_lv 32 signal 4 } 
	{ ComputeWordCnt_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ ComputeWordCnt_loc_read sc_out sc_logic 1 signal 4 } 
	{ ComputeWordCnt_loc_out_din sc_out sc_lv 32 signal 5 } 
	{ ComputeWordCnt_loc_out_full_n sc_in sc_logic 1 signal 5 } 
	{ ComputeWordCnt_loc_out_write sc_out sc_logic 1 signal 5 } 
	{ sha_out_dout sc_in sc_lv 512 signal 6 } 
	{ sha_out_empty_n sc_in sc_logic 1 signal 6 } 
	{ sha_out_read sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "ciphertextStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ciphertextStrm", "role": "din" }} , 
 	{ "name": "ciphertextStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertextStrm", "role": "full_n" }} , 
 	{ "name": "ciphertextStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertextStrm", "role": "write" }} , 
 	{ "name": "endCiphertextStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endCiphertextStrm", "role": "din" }} , 
 	{ "name": "endCiphertextStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endCiphertextStrm", "role": "full_n" }} , 
 	{ "name": "endCiphertextStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endCiphertextStrm", "role": "write" }} , 
 	{ "name": "cipherkeyStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "din" }} , 
 	{ "name": "cipherkeyStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "full_n" }} , 
 	{ "name": "cipherkeyStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "write" }} , 
 	{ "name": "IVStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm", "role": "din" }} , 
 	{ "name": "IVStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm", "role": "full_n" }} , 
 	{ "name": "IVStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm", "role": "write" }} , 
 	{ "name": "ComputeWordCnt_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "dout" }} , 
 	{ "name": "ComputeWordCnt_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "empty_n" }} , 
 	{ "name": "ComputeWordCnt_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "read" }} , 
 	{ "name": "ComputeWordCnt_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "din" }} , 
 	{ "name": "ComputeWordCnt_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "full_n" }} , 
 	{ "name": "ComputeWordCnt_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "write" }} , 
 	{ "name": "sha_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "sha_out", "role": "dout" }} , 
 	{ "name": "sha_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sha_out", "role": "empty_n" }} , 
 	{ "name": "sha_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sha_out", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "prepare_aes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ciphertextStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ciphertextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endCiphertextStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endCiphertextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "IVStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sha_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sha_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	prepare_aes {
		ciphertextStrm {Type O LastRead -1 FirstWrite 2}
		endCiphertextStrm {Type O LastRead -1 FirstWrite 2}
		cipherkeyStrm {Type O LastRead -1 FirstWrite 2}
		IVStrm {Type O LastRead -1 FirstWrite 2}
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		ComputeWordCnt_loc_out {Type O LastRead -1 FirstWrite 0}
		sha_out {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ciphertextStrm { ap_fifo {  { ciphertextStrm_din fifo_data 1 128 }  { ciphertextStrm_full_n fifo_status 0 1 }  { ciphertextStrm_write fifo_update 1 1 } } }
	endCiphertextStrm { ap_fifo {  { endCiphertextStrm_din fifo_data 1 1 }  { endCiphertextStrm_full_n fifo_status 0 1 }  { endCiphertextStrm_write fifo_update 1 1 } } }
	cipherkeyStrm { ap_fifo {  { cipherkeyStrm_din fifo_data 1 256 }  { cipherkeyStrm_full_n fifo_status 0 1 }  { cipherkeyStrm_write fifo_update 1 1 } } }
	IVStrm { ap_fifo {  { IVStrm_din fifo_data 1 128 }  { IVStrm_full_n fifo_status 0 1 }  { IVStrm_write fifo_update 1 1 } } }
	ComputeWordCnt_loc { ap_fifo {  { ComputeWordCnt_loc_dout fifo_data 0 32 }  { ComputeWordCnt_loc_empty_n fifo_status 0 1 }  { ComputeWordCnt_loc_read fifo_update 1 1 } } }
	ComputeWordCnt_loc_out { ap_fifo {  { ComputeWordCnt_loc_out_din fifo_data 1 32 }  { ComputeWordCnt_loc_out_full_n fifo_status 0 1 }  { ComputeWordCnt_loc_out_write fifo_update 1 1 } } }
	sha_out { ap_fifo {  { sha_out_dout fifo_data 0 512 }  { sha_out_empty_n fifo_status 0 1 }  { sha_out_read fifo_update 1 1 } } }
}
