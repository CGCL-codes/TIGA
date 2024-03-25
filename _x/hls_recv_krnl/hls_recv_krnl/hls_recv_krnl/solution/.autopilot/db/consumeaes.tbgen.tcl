set moduleName consumeaes
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
set C_modelName {consumeaes}
set C_modelType { void 0 }
set C_modelArgList {
	{ plaintextStrm int 128 regular {fifo 0 volatile }  }
	{ endPlaintextStrm int 1 regular {fifo 0 volatile }  }
	{ ComputeWordCnt_loc int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "plaintextStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endPlaintextStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ComputeWordCnt_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ plaintextStrm_dout sc_in sc_lv 128 signal 0 } 
	{ plaintextStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ plaintextStrm_read sc_out sc_logic 1 signal 0 } 
	{ endPlaintextStrm_dout sc_in sc_lv 1 signal 1 } 
	{ endPlaintextStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ endPlaintextStrm_read sc_out sc_logic 1 signal 1 } 
	{ ComputeWordCnt_loc_dout sc_in sc_lv 32 signal 2 } 
	{ ComputeWordCnt_loc_empty_n sc_in sc_logic 1 signal 2 } 
	{ ComputeWordCnt_loc_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "plaintextStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "plaintextStrm", "role": "dout" }} , 
 	{ "name": "plaintextStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintextStrm", "role": "empty_n" }} , 
 	{ "name": "plaintextStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintextStrm", "role": "read" }} , 
 	{ "name": "endPlaintextStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endPlaintextStrm", "role": "dout" }} , 
 	{ "name": "endPlaintextStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endPlaintextStrm", "role": "empty_n" }} , 
 	{ "name": "endPlaintextStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endPlaintextStrm", "role": "read" }} , 
 	{ "name": "ComputeWordCnt_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "dout" }} , 
 	{ "name": "ComputeWordCnt_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "empty_n" }} , 
 	{ "name": "ComputeWordCnt_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "consumeaes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "plaintextStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "plaintextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endPlaintextStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endPlaintextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	consumeaes {
		plaintextStrm {Type I LastRead 3 FirstWrite -1}
		endPlaintextStrm {Type I LastRead 2 FirstWrite -1}
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	plaintextStrm { ap_fifo {  { plaintextStrm_dout fifo_data 0 128 }  { plaintextStrm_empty_n fifo_status 0 1 }  { plaintextStrm_read fifo_update 1 1 } } }
	endPlaintextStrm { ap_fifo {  { endPlaintextStrm_dout fifo_data 0 1 }  { endPlaintextStrm_empty_n fifo_status 0 1 }  { endPlaintextStrm_read fifo_update 1 1 } } }
	ComputeWordCnt_loc { ap_fifo {  { ComputeWordCnt_loc_dout fifo_data 0 32 }  { ComputeWordCnt_loc_empty_n fifo_status 0 1 }  { ComputeWordCnt_loc_read fifo_update 1 1 } } }
}
