set moduleName hls_recv_krnl_entry45
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hls_recv_krnl.entry45}
set C_modelType { void 0 }
set C_modelArgList {
	{ useConn int 32 regular {fifo 0}  }
	{ basePort int 32 regular {fifo 0}  }
	{ expectedRxByteCnt int 64 regular {fifo 0}  }
	{ out_time int 64 regular {fifo 0}  }
	{ useConn_out int 32 regular {fifo 1}  }
	{ basePort_out int 32 regular {fifo 1}  }
	{ expectedRxByteCnt_out int 64 regular {fifo 1}  }
	{ expectedRxByteCnt_out1 int 64 regular {fifo 1}  }
	{ out_time_out int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "useConn", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "basePort", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "expectedRxByteCnt", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_time", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "useConn_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "basePort_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "expectedRxByteCnt_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "expectedRxByteCnt_out1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_time_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
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
	{ useConn_dout sc_in sc_lv 32 signal 0 } 
	{ useConn_empty_n sc_in sc_logic 1 signal 0 } 
	{ useConn_read sc_out sc_logic 1 signal 0 } 
	{ basePort_dout sc_in sc_lv 32 signal 1 } 
	{ basePort_empty_n sc_in sc_logic 1 signal 1 } 
	{ basePort_read sc_out sc_logic 1 signal 1 } 
	{ expectedRxByteCnt_dout sc_in sc_lv 64 signal 2 } 
	{ expectedRxByteCnt_empty_n sc_in sc_logic 1 signal 2 } 
	{ expectedRxByteCnt_read sc_out sc_logic 1 signal 2 } 
	{ out_time_dout sc_in sc_lv 64 signal 3 } 
	{ out_time_empty_n sc_in sc_logic 1 signal 3 } 
	{ out_time_read sc_out sc_logic 1 signal 3 } 
	{ useConn_out_din sc_out sc_lv 32 signal 4 } 
	{ useConn_out_full_n sc_in sc_logic 1 signal 4 } 
	{ useConn_out_write sc_out sc_logic 1 signal 4 } 
	{ basePort_out_din sc_out sc_lv 32 signal 5 } 
	{ basePort_out_full_n sc_in sc_logic 1 signal 5 } 
	{ basePort_out_write sc_out sc_logic 1 signal 5 } 
	{ expectedRxByteCnt_out_din sc_out sc_lv 64 signal 6 } 
	{ expectedRxByteCnt_out_full_n sc_in sc_logic 1 signal 6 } 
	{ expectedRxByteCnt_out_write sc_out sc_logic 1 signal 6 } 
	{ expectedRxByteCnt_out1_din sc_out sc_lv 64 signal 7 } 
	{ expectedRxByteCnt_out1_full_n sc_in sc_logic 1 signal 7 } 
	{ expectedRxByteCnt_out1_write sc_out sc_logic 1 signal 7 } 
	{ out_time_out_din sc_out sc_lv 64 signal 8 } 
	{ out_time_out_full_n sc_in sc_logic 1 signal 8 } 
	{ out_time_out_write sc_out sc_logic 1 signal 8 } 
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
 	{ "name": "useConn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "useConn", "role": "dout" }} , 
 	{ "name": "useConn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn", "role": "empty_n" }} , 
 	{ "name": "useConn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn", "role": "read" }} , 
 	{ "name": "basePort_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "basePort", "role": "dout" }} , 
 	{ "name": "basePort_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "basePort", "role": "empty_n" }} , 
 	{ "name": "basePort_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "basePort", "role": "read" }} , 
 	{ "name": "expectedRxByteCnt_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "expectedRxByteCnt", "role": "dout" }} , 
 	{ "name": "expectedRxByteCnt_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRxByteCnt", "role": "empty_n" }} , 
 	{ "name": "expectedRxByteCnt_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRxByteCnt", "role": "read" }} , 
 	{ "name": "out_time_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_time", "role": "dout" }} , 
 	{ "name": "out_time_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_time", "role": "empty_n" }} , 
 	{ "name": "out_time_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_time", "role": "read" }} , 
 	{ "name": "useConn_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "useConn_out", "role": "din" }} , 
 	{ "name": "useConn_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn_out", "role": "full_n" }} , 
 	{ "name": "useConn_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn_out", "role": "write" }} , 
 	{ "name": "basePort_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "basePort_out", "role": "din" }} , 
 	{ "name": "basePort_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "basePort_out", "role": "full_n" }} , 
 	{ "name": "basePort_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "basePort_out", "role": "write" }} , 
 	{ "name": "expectedRxByteCnt_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "expectedRxByteCnt_out", "role": "din" }} , 
 	{ "name": "expectedRxByteCnt_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRxByteCnt_out", "role": "full_n" }} , 
 	{ "name": "expectedRxByteCnt_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRxByteCnt_out", "role": "write" }} , 
 	{ "name": "expectedRxByteCnt_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "expectedRxByteCnt_out1", "role": "din" }} , 
 	{ "name": "expectedRxByteCnt_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRxByteCnt_out1", "role": "full_n" }} , 
 	{ "name": "expectedRxByteCnt_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expectedRxByteCnt_out1", "role": "write" }} , 
 	{ "name": "out_time_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_time_out", "role": "din" }} , 
 	{ "name": "out_time_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_time_out", "role": "full_n" }} , 
 	{ "name": "out_time_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_time_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "hls_recv_krnl_entry45",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "basePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRxByteCnt", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRxByteCnt_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_time", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_time_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "basePort_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRxByteCnt_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRxByteCnt_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRxByteCnt_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRxByteCnt_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_time_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_time_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	hls_recv_krnl_entry45 {
		useConn {Type I LastRead 0 FirstWrite -1}
		basePort {Type I LastRead 0 FirstWrite -1}
		expectedRxByteCnt {Type I LastRead 0 FirstWrite -1}
		out_time {Type I LastRead 0 FirstWrite -1}
		useConn_out {Type O LastRead -1 FirstWrite 0}
		basePort_out {Type O LastRead -1 FirstWrite 0}
		expectedRxByteCnt_out {Type O LastRead -1 FirstWrite 0}
		expectedRxByteCnt_out1 {Type O LastRead -1 FirstWrite 0}
		out_time_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	useConn { ap_fifo {  { useConn_dout fifo_data 0 32 }  { useConn_empty_n fifo_status 0 1 }  { useConn_read fifo_update 1 1 } } }
	basePort { ap_fifo {  { basePort_dout fifo_data 0 32 }  { basePort_empty_n fifo_status 0 1 }  { basePort_read fifo_update 1 1 } } }
	expectedRxByteCnt { ap_fifo {  { expectedRxByteCnt_dout fifo_data 0 64 }  { expectedRxByteCnt_empty_n fifo_status 0 1 }  { expectedRxByteCnt_read fifo_update 1 1 } } }
	out_time { ap_fifo {  { out_time_dout fifo_data 0 64 }  { out_time_empty_n fifo_status 0 1 }  { out_time_read fifo_update 1 1 } } }
	useConn_out { ap_fifo {  { useConn_out_din fifo_data 1 32 }  { useConn_out_full_n fifo_status 0 1 }  { useConn_out_write fifo_update 1 1 } } }
	basePort_out { ap_fifo {  { basePort_out_din fifo_data 1 32 }  { basePort_out_full_n fifo_status 0 1 }  { basePort_out_write fifo_update 1 1 } } }
	expectedRxByteCnt_out { ap_fifo {  { expectedRxByteCnt_out_din fifo_data 1 64 }  { expectedRxByteCnt_out_full_n fifo_status 0 1 }  { expectedRxByteCnt_out_write fifo_update 1 1 } } }
	expectedRxByteCnt_out1 { ap_fifo {  { expectedRxByteCnt_out1_din fifo_data 1 64 }  { expectedRxByteCnt_out1_full_n fifo_status 0 1 }  { expectedRxByteCnt_out1_write fifo_update 1 1 } } }
	out_time_out { ap_fifo {  { out_time_out_din fifo_data 1 64 }  { out_time_out_full_n fifo_status 0 1 }  { out_time_out_write fifo_update 1 1 } } }
}