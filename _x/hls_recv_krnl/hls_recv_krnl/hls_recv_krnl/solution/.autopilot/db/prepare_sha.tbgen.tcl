set moduleName prepare_sha
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
set C_modelName {prepare_sha}
set C_modelType { void 0 }
set C_modelArgList {
	{ ComputeWordCnt_loc int 32 regular {fifo 0}  }
	{ ComputeWordCnt_loc_out int 32 regular {fifo 1}  }
	{ s_data_cal int 512 regular {fifo 0 volatile } {global 0}  }
	{ endMsgLenStrm int 1 regular {fifo 1 volatile } {global 1}  }
	{ msgLenStrm int 128 regular {fifo 1 volatile } {global 1}  }
	{ msgStrm int 64 regular {fifo 1 volatile } {global 1}  }
	{ sha_in int 512 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ComputeWordCnt_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ComputeWordCnt_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_data_cal", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "endMsgLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "msgLenStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "sha_in", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ ComputeWordCnt_loc_dout sc_in sc_lv 32 signal 0 } 
	{ ComputeWordCnt_loc_empty_n sc_in sc_logic 1 signal 0 } 
	{ ComputeWordCnt_loc_read sc_out sc_logic 1 signal 0 } 
	{ ComputeWordCnt_loc_out_din sc_out sc_lv 32 signal 1 } 
	{ ComputeWordCnt_loc_out_full_n sc_in sc_logic 1 signal 1 } 
	{ ComputeWordCnt_loc_out_write sc_out sc_logic 1 signal 1 } 
	{ s_data_cal_dout sc_in sc_lv 512 signal 2 } 
	{ s_data_cal_empty_n sc_in sc_logic 1 signal 2 } 
	{ s_data_cal_read sc_out sc_logic 1 signal 2 } 
	{ endMsgLenStrm_din sc_out sc_lv 1 signal 3 } 
	{ endMsgLenStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ endMsgLenStrm_write sc_out sc_logic 1 signal 3 } 
	{ msgLenStrm_din sc_out sc_lv 128 signal 4 } 
	{ msgLenStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ msgLenStrm_write sc_out sc_logic 1 signal 4 } 
	{ msgStrm_din sc_out sc_lv 64 signal 5 } 
	{ msgStrm_full_n sc_in sc_logic 1 signal 5 } 
	{ msgStrm_write sc_out sc_logic 1 signal 5 } 
	{ sha_in_din sc_out sc_lv 512 signal 6 } 
	{ sha_in_full_n sc_in sc_logic 1 signal 6 } 
	{ sha_in_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "ComputeWordCnt_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "dout" }} , 
 	{ "name": "ComputeWordCnt_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "empty_n" }} , 
 	{ "name": "ComputeWordCnt_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "read" }} , 
 	{ "name": "ComputeWordCnt_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "din" }} , 
 	{ "name": "ComputeWordCnt_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "full_n" }} , 
 	{ "name": "ComputeWordCnt_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "write" }} , 
 	{ "name": "s_data_cal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_data_cal", "role": "dout" }} , 
 	{ "name": "s_data_cal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_data_cal", "role": "empty_n" }} , 
 	{ "name": "s_data_cal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_data_cal", "role": "read" }} , 
 	{ "name": "endMsgLenStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "din" }} , 
 	{ "name": "endMsgLenStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "full_n" }} , 
 	{ "name": "endMsgLenStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "write" }} , 
 	{ "name": "msgLenStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "din" }} , 
 	{ "name": "msgLenStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "full_n" }} , 
 	{ "name": "msgLenStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "write" }} , 
 	{ "name": "msgStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgStrm", "role": "din" }} , 
 	{ "name": "msgStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "full_n" }} , 
 	{ "name": "msgStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "write" }} , 
 	{ "name": "sha_in_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "sha_in", "role": "din" }} , 
 	{ "name": "sha_in_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sha_in", "role": "full_n" }} , 
 	{ "name": "sha_in_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sha_in", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "prepare_sha",
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
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_data_cal", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_data_cal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endMsgLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endMsgLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "msgLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "msgStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sha_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sha_in_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	prepare_sha {
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		ComputeWordCnt_loc_out {Type O LastRead -1 FirstWrite 0}
		s_data_cal {Type I LastRead 1 FirstWrite -1}
		endMsgLenStrm {Type O LastRead -1 FirstWrite 1}
		msgLenStrm {Type O LastRead -1 FirstWrite 1}
		msgStrm {Type O LastRead -1 FirstWrite 1}
		sha_in {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ComputeWordCnt_loc { ap_fifo {  { ComputeWordCnt_loc_dout fifo_data 0 32 }  { ComputeWordCnt_loc_empty_n fifo_status 0 1 }  { ComputeWordCnt_loc_read fifo_update 1 1 } } }
	ComputeWordCnt_loc_out { ap_fifo {  { ComputeWordCnt_loc_out_din fifo_data 1 32 }  { ComputeWordCnt_loc_out_full_n fifo_status 0 1 }  { ComputeWordCnt_loc_out_write fifo_update 1 1 } } }
	s_data_cal { ap_fifo {  { s_data_cal_dout fifo_data 0 512 }  { s_data_cal_empty_n fifo_status 0 1 }  { s_data_cal_read fifo_update 1 1 } } }
	endMsgLenStrm { ap_fifo {  { endMsgLenStrm_din fifo_data 1 1 }  { endMsgLenStrm_full_n fifo_status 0 1 }  { endMsgLenStrm_write fifo_update 1 1 } } }
	msgLenStrm { ap_fifo {  { msgLenStrm_din fifo_data 1 128 }  { msgLenStrm_full_n fifo_status 0 1 }  { msgLenStrm_write fifo_update 1 1 } } }
	msgStrm { ap_fifo {  { msgStrm_din fifo_data 1 64 }  { msgStrm_full_n fifo_status 0 1 }  { msgStrm_write fifo_update 1 1 } } }
	sha_in { ap_fifo {  { sha_in_din fifo_data 1 512 }  { sha_in_full_n fifo_status 0 1 }  { sha_in_write fifo_update 1 1 } } }
}
