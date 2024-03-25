set moduleName recvData_handshake
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
set C_modelName {recvData_handshake}
set C_modelType { void 0 }
set C_modelArgList {
	{ nextRxPacketLength3 int 16 regular {fifo 1 volatile }  }
	{ expRxBytePerSession int 64 regular {fifo 0}  }
	{ s_axis_tcp_notification_V_data_V int 128 regular {axi_s 0 volatile  { s_axis_tcp_notification Data } }  }
	{ s_axis_tcp_notification_V_keep_V int 16 regular {axi_s 0 volatile  { s_axis_tcp_notification Keep } }  }
	{ s_axis_tcp_notification_V_strb_V int 16 regular {axi_s 0 volatile  { s_axis_tcp_notification Strb } }  }
	{ s_axis_tcp_notification_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_notification Last } }  }
	{ m_axis_tcp_read_pkg_V_data_V int 32 regular {axi_s 1 volatile  { m_axis_tcp_read_pkg Data } }  }
	{ m_axis_tcp_read_pkg_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_tcp_read_pkg Keep } }  }
	{ m_axis_tcp_read_pkg_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_tcp_read_pkg Strb } }  }
	{ m_axis_tcp_read_pkg_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp_read_pkg Last } }  }
	{ expRxBytePerSession_out int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nextRxPacketLength3", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "expRxBytePerSession", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_notification_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_notification_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_notification_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_notification_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_tcp_read_pkg_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_read_pkg_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_read_pkg_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_read_pkg_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "expRxBytePerSession_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nextRxPacketLength3_din sc_out sc_lv 16 signal 0 } 
	{ nextRxPacketLength3_full_n sc_in sc_logic 1 signal 0 } 
	{ nextRxPacketLength3_write sc_out sc_logic 1 signal 0 } 
	{ expRxBytePerSession_dout sc_in sc_lv 64 signal 1 } 
	{ expRxBytePerSession_empty_n sc_in sc_logic 1 signal 1 } 
	{ expRxBytePerSession_read sc_out sc_logic 1 signal 1 } 
	{ s_axis_tcp_notification_TDATA sc_in sc_lv 128 signal 2 } 
	{ s_axis_tcp_notification_TVALID sc_in sc_logic 1 invld 2 } 
	{ s_axis_tcp_notification_TREADY sc_out sc_logic 1 inacc 5 } 
	{ s_axis_tcp_notification_TKEEP sc_in sc_lv 16 signal 3 } 
	{ s_axis_tcp_notification_TSTRB sc_in sc_lv 16 signal 4 } 
	{ s_axis_tcp_notification_TLAST sc_in sc_lv 1 signal 5 } 
	{ m_axis_tcp_read_pkg_TDATA sc_out sc_lv 32 signal 6 } 
	{ m_axis_tcp_read_pkg_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_tcp_read_pkg_TREADY sc_in sc_logic 1 outacc 6 } 
	{ m_axis_tcp_read_pkg_TKEEP sc_out sc_lv 4 signal 7 } 
	{ m_axis_tcp_read_pkg_TSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axis_tcp_read_pkg_TLAST sc_out sc_lv 1 signal 9 } 
	{ expRxBytePerSession_out_din sc_out sc_lv 64 signal 10 } 
	{ expRxBytePerSession_out_full_n sc_in sc_logic 1 signal 10 } 
	{ expRxBytePerSession_out_write sc_out sc_logic 1 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nextRxPacketLength3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "nextRxPacketLength3", "role": "din" }} , 
 	{ "name": "nextRxPacketLength3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nextRxPacketLength3", "role": "full_n" }} , 
 	{ "name": "nextRxPacketLength3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nextRxPacketLength3", "role": "write" }} , 
 	{ "name": "expRxBytePerSession_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "expRxBytePerSession", "role": "dout" }} , 
 	{ "name": "expRxBytePerSession_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expRxBytePerSession", "role": "empty_n" }} , 
 	{ "name": "expRxBytePerSession_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expRxBytePerSession", "role": "read" }} , 
 	{ "name": "s_axis_tcp_notification_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_tcp_notification_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_notification_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_notification_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_tcp_notification_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_tcp_notification_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_notification_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tcp_read_pkg_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_read_pkg_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_read_pkg_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tcp_read_pkg_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tcp_read_pkg_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_read_pkg_V_last_V", "role": "default" }} , 
 	{ "name": "expRxBytePerSession_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "expRxBytePerSession_out", "role": "din" }} , 
 	{ "name": "expRxBytePerSession_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expRxBytePerSession_out", "role": "full_n" }} , 
 	{ "name": "expRxBytePerSession_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expRxBytePerSession_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "recvData_handshake",
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
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "nextRxPacketLength3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nextRxPacketLength3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expRxBytePerSession", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expRxBytePerSession_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_notification_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tcp_notification_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_notification_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_notification_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_notification_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "m_axis_tcp_read_pkg_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_read_pkg_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_read_pkg_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_read_pkg_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "expRxBytePerSession_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expRxBytePerSession_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	recvData_handshake {
		nextRxPacketLength3 {Type O LastRead -1 FirstWrite 2}
		expRxBytePerSession {Type I LastRead 0 FirstWrite -1}
		s_axis_tcp_notification_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_last_V {Type I LastRead 1 FirstWrite -1}
		m_axis_tcp_read_pkg_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_last_V {Type O LastRead -1 FirstWrite 2}
		expRxBytePerSession_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nextRxPacketLength3 { ap_fifo {  { nextRxPacketLength3_din fifo_data 1 16 }  { nextRxPacketLength3_full_n fifo_status 0 1 }  { nextRxPacketLength3_write fifo_update 1 1 } } }
	expRxBytePerSession { ap_fifo {  { expRxBytePerSession_dout fifo_data 0 64 }  { expRxBytePerSession_empty_n fifo_status 0 1 }  { expRxBytePerSession_read fifo_update 1 1 } } }
	s_axis_tcp_notification_V_data_V { axis {  { s_axis_tcp_notification_TDATA in_data 0 128 }  { s_axis_tcp_notification_TVALID in_vld 0 1 } } }
	s_axis_tcp_notification_V_keep_V { axis {  { s_axis_tcp_notification_TKEEP in_data 0 16 } } }
	s_axis_tcp_notification_V_strb_V { axis {  { s_axis_tcp_notification_TSTRB in_data 0 16 } } }
	s_axis_tcp_notification_V_last_V { axis {  { s_axis_tcp_notification_TREADY in_acc 1 1 }  { s_axis_tcp_notification_TLAST in_data 0 1 } } }
	m_axis_tcp_read_pkg_V_data_V { axis {  { m_axis_tcp_read_pkg_TDATA out_data 1 32 }  { m_axis_tcp_read_pkg_TREADY out_acc 0 1 } } }
	m_axis_tcp_read_pkg_V_keep_V { axis {  { m_axis_tcp_read_pkg_TKEEP out_data 1 4 } } }
	m_axis_tcp_read_pkg_V_strb_V { axis {  { m_axis_tcp_read_pkg_TSTRB out_data 1 4 } } }
	m_axis_tcp_read_pkg_V_last_V { axis {  { m_axis_tcp_read_pkg_TVALID out_vld 1 1 }  { m_axis_tcp_read_pkg_TLAST out_data 1 1 } } }
	expRxBytePerSession_out { ap_fifo {  { expRxBytePerSession_out_din fifo_data 1 64 }  { expRxBytePerSession_out_full_n fifo_status 0 1 }  { expRxBytePerSession_out_write fifo_update 1 1 } } }
}
