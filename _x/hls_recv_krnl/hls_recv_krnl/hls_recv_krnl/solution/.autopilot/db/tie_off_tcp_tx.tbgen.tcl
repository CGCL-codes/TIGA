set moduleName tie_off_tcp_tx
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
set C_modelName {tie_off_tcp_tx}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_tcp_tx_meta_V_data_V int 32 regular {axi_s 1 volatile  { m_axis_tcp_tx_meta Data } }  }
	{ m_axis_tcp_tx_meta_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_tcp_tx_meta Keep } }  }
	{ m_axis_tcp_tx_meta_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_tcp_tx_meta Strb } }  }
	{ m_axis_tcp_tx_meta_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp_tx_meta Last } }  }
	{ m_axis_tcp_tx_data_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_tcp_tx_data Data } }  }
	{ m_axis_tcp_tx_data_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_tcp_tx_data Keep } }  }
	{ m_axis_tcp_tx_data_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_tcp_tx_data Strb } }  }
	{ m_axis_tcp_tx_data_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp_tx_data Last } }  }
	{ s_axis_tcp_tx_status_V_data_V int 64 regular {axi_s 0 volatile  { s_axis_tcp_tx_status Data } }  }
	{ s_axis_tcp_tx_status_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis_tcp_tx_status Keep } }  }
	{ s_axis_tcp_tx_status_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis_tcp_tx_status Strb } }  }
	{ s_axis_tcp_tx_status_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_tx_status Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_tcp_tx_meta_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_tx_meta_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_tx_meta_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_tx_meta_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_tcp_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_tcp_tx_status_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_tx_status_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_tx_status_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_tcp_tx_status_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axis_tcp_tx_meta_TDATA sc_out sc_lv 32 signal 0 } 
	{ m_axis_tcp_tx_meta_TVALID sc_out sc_logic 1 outvld 3 } 
	{ m_axis_tcp_tx_meta_TREADY sc_in sc_logic 1 outacc 3 } 
	{ m_axis_tcp_tx_meta_TKEEP sc_out sc_lv 4 signal 1 } 
	{ m_axis_tcp_tx_meta_TSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axis_tcp_tx_meta_TLAST sc_out sc_lv 1 signal 3 } 
	{ m_axis_tcp_tx_data_TDATA sc_out sc_lv 512 signal 4 } 
	{ m_axis_tcp_tx_data_TVALID sc_out sc_logic 1 outvld 7 } 
	{ m_axis_tcp_tx_data_TREADY sc_in sc_logic 1 outacc 7 } 
	{ m_axis_tcp_tx_data_TKEEP sc_out sc_lv 64 signal 5 } 
	{ m_axis_tcp_tx_data_TSTRB sc_out sc_lv 64 signal 6 } 
	{ m_axis_tcp_tx_data_TLAST sc_out sc_lv 1 signal 7 } 
	{ s_axis_tcp_tx_status_TDATA sc_in sc_lv 64 signal 8 } 
	{ s_axis_tcp_tx_status_TVALID sc_in sc_logic 1 invld 11 } 
	{ s_axis_tcp_tx_status_TREADY sc_out sc_logic 1 inacc 11 } 
	{ s_axis_tcp_tx_status_TKEEP sc_in sc_lv 8 signal 9 } 
	{ s_axis_tcp_tx_status_TSTRB sc_in sc_lv 8 signal 10 } 
	{ s_axis_tcp_tx_status_TLAST sc_in sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_meta_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_meta_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_meta_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tcp_tx_status_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_tx_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_tx_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_tcp_tx_status_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_tcp_tx_status_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_tx_status_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "tie_off_tcp_tx",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "m_axis_tcp_tx_meta_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_tx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_tx_meta_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_tx_meta_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_tx_meta_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_tx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "s_axis_tcp_tx_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tcp_tx_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_tx_status_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_tx_status_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_tx_status_V_last_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tcp_tx_meta_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tcp_tx_meta_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tcp_tx_meta_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tcp_tx_meta_V_last_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tcp_tx_data_V_data_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tcp_tx_data_V_keep_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tcp_tx_data_V_strb_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_tcp_tx_data_V_last_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_tcp_tx_status_V_data_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_tcp_tx_status_V_keep_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_tcp_tx_status_V_strb_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_tcp_tx_status_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tie_off_tcp_tx {
		m_axis_tcp_tx_meta_V_data_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_tx_meta_V_keep_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_tx_meta_V_strb_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_tx_meta_V_last_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_tx_data_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_tx_data_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_tx_data_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_tx_data_V_last_V {Type O LastRead -1 FirstWrite 1}
		s_axis_tcp_tx_status_V_data_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_tx_status_V_keep_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_tx_status_V_strb_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_tx_status_V_last_V {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axis_tcp_tx_meta_V_data_V { axis {  { m_axis_tcp_tx_meta_TDATA out_data 1 32 } } }
	m_axis_tcp_tx_meta_V_keep_V { axis {  { m_axis_tcp_tx_meta_TKEEP out_data 1 4 } } }
	m_axis_tcp_tx_meta_V_strb_V { axis {  { m_axis_tcp_tx_meta_TSTRB out_data 1 4 } } }
	m_axis_tcp_tx_meta_V_last_V { axis {  { m_axis_tcp_tx_meta_TVALID out_vld 1 1 }  { m_axis_tcp_tx_meta_TREADY out_acc 0 1 }  { m_axis_tcp_tx_meta_TLAST out_data 1 1 } } }
	m_axis_tcp_tx_data_V_data_V { axis {  { m_axis_tcp_tx_data_TDATA out_data 1 512 } } }
	m_axis_tcp_tx_data_V_keep_V { axis {  { m_axis_tcp_tx_data_TKEEP out_data 1 64 } } }
	m_axis_tcp_tx_data_V_strb_V { axis {  { m_axis_tcp_tx_data_TSTRB out_data 1 64 } } }
	m_axis_tcp_tx_data_V_last_V { axis {  { m_axis_tcp_tx_data_TVALID out_vld 1 1 }  { m_axis_tcp_tx_data_TREADY out_acc 0 1 }  { m_axis_tcp_tx_data_TLAST out_data 1 1 } } }
	s_axis_tcp_tx_status_V_data_V { axis {  { s_axis_tcp_tx_status_TDATA in_data 0 64 } } }
	s_axis_tcp_tx_status_V_keep_V { axis {  { s_axis_tcp_tx_status_TKEEP in_data 0 8 } } }
	s_axis_tcp_tx_status_V_strb_V { axis {  { s_axis_tcp_tx_status_TSTRB in_data 0 8 } } }
	s_axis_tcp_tx_status_V_last_V { axis {  { s_axis_tcp_tx_status_TVALID in_vld 0 1 }  { s_axis_tcp_tx_status_TREADY in_acc 1 1 }  { s_axis_tcp_tx_status_TLAST in_data 0 1 } } }
}
