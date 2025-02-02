set moduleName port_status_handler
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
set C_modelName {port_status_handler}
set C_modelType { void 0 }
set C_modelArgList {
	{ useConn int 32 regular {fifo 0}  }
	{ s_axis_tcp_port_status_V_data_V int 8 regular {axi_s 0 volatile  { s_axis_tcp_port_status Data } }  }
	{ s_axis_tcp_port_status_V_keep_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Keep } }  }
	{ s_axis_tcp_port_status_V_strb_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Strb } }  }
	{ s_axis_tcp_port_status_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "useConn", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_port_status_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_port_status_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_port_status_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_port_status_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
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
	{ useConn_dout sc_in sc_lv 32 signal 0 } 
	{ useConn_empty_n sc_in sc_logic 1 signal 0 } 
	{ useConn_read sc_out sc_logic 1 signal 0 } 
	{ s_axis_tcp_port_status_TDATA sc_in sc_lv 8 signal 1 } 
	{ s_axis_tcp_port_status_TVALID sc_in sc_logic 1 invld 1 } 
	{ s_axis_tcp_port_status_TREADY sc_out sc_logic 1 inacc 4 } 
	{ s_axis_tcp_port_status_TKEEP sc_in sc_lv 1 signal 2 } 
	{ s_axis_tcp_port_status_TSTRB sc_in sc_lv 1 signal 3 } 
	{ s_axis_tcp_port_status_TLAST sc_in sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "useConn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "useConn", "role": "dout" }} , 
 	{ "name": "useConn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn", "role": "empty_n" }} , 
 	{ "name": "useConn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn", "role": "read" }} , 
 	{ "name": "s_axis_tcp_port_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_port_status_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_port_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "port_status_handler",
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
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_port_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tcp_port_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_port_status_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_port_status_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_port_status_V_last_V", "Type" : "Axis", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	port_status_handler {
		useConn {Type I LastRead 0 FirstWrite -1}
		s_axis_tcp_port_status_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_last_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	useConn { ap_fifo {  { useConn_dout fifo_data 0 32 }  { useConn_empty_n fifo_status 0 1 }  { useConn_read fifo_update 1 1 } } }
	s_axis_tcp_port_status_V_data_V { axis {  { s_axis_tcp_port_status_TDATA in_data 0 8 }  { s_axis_tcp_port_status_TVALID in_vld 0 1 } } }
	s_axis_tcp_port_status_V_keep_V { axis {  { s_axis_tcp_port_status_TKEEP in_data 0 1 } } }
	s_axis_tcp_port_status_V_strb_V { axis {  { s_axis_tcp_port_status_TSTRB in_data 0 1 } } }
	s_axis_tcp_port_status_V_last_V { axis {  { s_axis_tcp_port_status_TREADY in_acc 1 1 }  { s_axis_tcp_port_status_TLAST in_data 0 1 } } }
}
