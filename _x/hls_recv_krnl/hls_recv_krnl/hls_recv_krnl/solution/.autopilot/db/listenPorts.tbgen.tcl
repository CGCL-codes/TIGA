set moduleName listenPorts
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {listenPorts}
set C_modelType { void 0 }
set C_modelArgList {
	{ basePort int 32 regular {fifo 0}  }
	{ useConn int 32 regular {fifo 0}  }
	{ m_axis_tcp_listen_port_V_data_V int 16 regular {axi_s 1 volatile  { m_axis_tcp_listen_port Data } }  }
	{ m_axis_tcp_listen_port_V_keep_V int 2 regular {axi_s 1 volatile  { m_axis_tcp_listen_port Keep } }  }
	{ m_axis_tcp_listen_port_V_strb_V int 2 regular {axi_s 1 volatile  { m_axis_tcp_listen_port Strb } }  }
	{ m_axis_tcp_listen_port_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp_listen_port Last } }  }
	{ s_axis_tcp_port_status_V_data_V int 8 regular {axi_s 0 volatile  { s_axis_tcp_port_status Data } }  }
	{ s_axis_tcp_port_status_V_keep_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Keep } }  }
	{ s_axis_tcp_port_status_V_strb_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Strb } }  }
	{ s_axis_tcp_port_status_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "basePort", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "useConn", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_tcp_listen_port_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_listen_port_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_listen_port_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_listen_port_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_tcp_port_status_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_port_status_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_port_status_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_port_status_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ basePort_dout sc_in sc_lv 32 signal 0 } 
	{ basePort_empty_n sc_in sc_logic 1 signal 0 } 
	{ basePort_read sc_out sc_logic 1 signal 0 } 
	{ useConn_dout sc_in sc_lv 32 signal 1 } 
	{ useConn_empty_n sc_in sc_logic 1 signal 1 } 
	{ useConn_read sc_out sc_logic 1 signal 1 } 
	{ m_axis_tcp_listen_port_TDATA sc_out sc_lv 16 signal 2 } 
	{ m_axis_tcp_listen_port_TKEEP sc_out sc_lv 2 signal 3 } 
	{ m_axis_tcp_listen_port_TSTRB sc_out sc_lv 2 signal 4 } 
	{ m_axis_tcp_listen_port_TLAST sc_out sc_lv 1 signal 5 } 
	{ s_axis_tcp_port_status_TDATA sc_in sc_lv 8 signal 6 } 
	{ s_axis_tcp_port_status_TKEEP sc_in sc_lv 1 signal 7 } 
	{ s_axis_tcp_port_status_TSTRB sc_in sc_lv 1 signal 8 } 
	{ s_axis_tcp_port_status_TLAST sc_in sc_lv 1 signal 9 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ m_axis_tcp_listen_port_TVALID sc_out sc_logic 1 outvld 5 } 
	{ m_axis_tcp_listen_port_TREADY sc_in sc_logic 1 outacc 5 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ s_axis_tcp_port_status_TVALID sc_in sc_logic 1 invld 9 } 
	{ s_axis_tcp_port_status_TREADY sc_out sc_logic 1 inacc 9 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "basePort_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "basePort", "role": "dout" }} , 
 	{ "name": "basePort_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "basePort", "role": "empty_n" }} , 
 	{ "name": "basePort_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "basePort", "role": "read" }} , 
 	{ "name": "useConn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "useConn", "role": "dout" }} , 
 	{ "name": "useConn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn", "role": "empty_n" }} , 
 	{ "name": "useConn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "useConn", "role": "read" }} , 
 	{ "name": "m_axis_tcp_listen_port_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_tcp_listen_port_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_axis_tcp_listen_port_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_axis_tcp_listen_port_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_last_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_port_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_port_status_V_last_V", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "listenPorts",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "listenPorts_entry37_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "listen_port_handler_U0"},
			{"ID" : "4", "Name" : "port_status_handler_U0"}],
		"Port" : [
			{"Name" : "basePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "listenPorts_entry37_U0", "Port" : "basePort"}]},
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "listenPorts_entry37_U0", "Port" : "useConn"}]},
			{"Name" : "m_axis_tcp_listen_port_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "listen_port_handler_U0", "Port" : "m_axis_tcp_listen_port_V_data_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "listen_port_handler_U0", "Port" : "m_axis_tcp_listen_port_V_keep_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "listen_port_handler_U0", "Port" : "m_axis_tcp_listen_port_V_strb_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "listen_port_handler_U0", "Port" : "m_axis_tcp_listen_port_V_last_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "port_status_handler_U0", "Port" : "s_axis_tcp_port_status_V_data_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "port_status_handler_U0", "Port" : "s_axis_tcp_port_status_V_keep_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "port_status_handler_U0", "Port" : "s_axis_tcp_port_status_V_strb_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "port_status_handler_U0", "Port" : "s_axis_tcp_port_status_V_last_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.listenPorts_entry37_U0", "Parent" : "0",
		"CDFG" : "listenPorts_entry37",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "basePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "basePort_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "5", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "6", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.listenPorts_Block_split2_proc_U0", "Parent" : "0",
		"CDFG" : "listenPorts_Block_split2_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "basePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.listen_port_handler_U0", "Parent" : "0",
		"CDFG" : "listen_port_handler",
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
			{"Name" : "basePort", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "6", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_listen_port_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_listen_port_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_listen_port_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_listen_port_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_listen_port_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.port_status_handler_U0", "Parent" : "0",
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
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_port_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tcp_port_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_port_status_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_port_status_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_port_status_V_last_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.basePort_c_i_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.useConn_c_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.useConn_c8_i_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.basePort_cast_loc_i_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	listenPorts {
		basePort {Type I LastRead 0 FirstWrite -1}
		useConn {Type I LastRead 0 FirstWrite -1}
		m_axis_tcp_listen_port_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_last_V {Type O LastRead -1 FirstWrite 2}
		s_axis_tcp_port_status_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_last_V {Type I LastRead 1 FirstWrite -1}}
	listenPorts_entry37 {
		basePort {Type I LastRead 0 FirstWrite -1}
		useConn {Type I LastRead 0 FirstWrite -1}
		basePort_out {Type O LastRead -1 FirstWrite 0}
		useConn_out {Type O LastRead -1 FirstWrite 0}
		useConn_out1 {Type O LastRead -1 FirstWrite 0}}
	listenPorts_Block_split2_proc {
		basePort {Type I LastRead 0 FirstWrite -1}}
	listen_port_handler {
		basePort {Type I LastRead 0 FirstWrite -1}
		useConn {Type I LastRead 0 FirstWrite -1}
		m_axis_tcp_listen_port_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_last_V {Type O LastRead -1 FirstWrite 2}}
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
	basePort { ap_fifo {  { basePort_dout fifo_data 0 32 }  { basePort_empty_n fifo_status 0 1 }  { basePort_read fifo_update 1 1 } } }
	useConn { ap_fifo {  { useConn_dout fifo_data 0 32 }  { useConn_empty_n fifo_status 0 1 }  { useConn_read fifo_update 1 1 } } }
	m_axis_tcp_listen_port_V_data_V { axis {  { m_axis_tcp_listen_port_TDATA out_data 1 16 } } }
	m_axis_tcp_listen_port_V_keep_V { axis {  { m_axis_tcp_listen_port_TKEEP out_data 1 2 } } }
	m_axis_tcp_listen_port_V_strb_V { axis {  { m_axis_tcp_listen_port_TSTRB out_data 1 2 } } }
	m_axis_tcp_listen_port_V_last_V { axis {  { m_axis_tcp_listen_port_TLAST out_data 1 1 }  { m_axis_tcp_listen_port_TVALID out_vld 1 1 }  { m_axis_tcp_listen_port_TREADY out_acc 0 1 } } }
	s_axis_tcp_port_status_V_data_V { axis {  { s_axis_tcp_port_status_TDATA in_data 0 8 } } }
	s_axis_tcp_port_status_V_keep_V { axis {  { s_axis_tcp_port_status_TKEEP in_data 0 1 } } }
	s_axis_tcp_port_status_V_strb_V { axis {  { s_axis_tcp_port_status_TSTRB in_data 0 1 } } }
	s_axis_tcp_port_status_V_last_V { axis {  { s_axis_tcp_port_status_TLAST in_data 0 1 }  { s_axis_tcp_port_status_TVALID in_vld 0 1 }  { s_axis_tcp_port_status_TREADY in_acc 1 1 } } }
}
