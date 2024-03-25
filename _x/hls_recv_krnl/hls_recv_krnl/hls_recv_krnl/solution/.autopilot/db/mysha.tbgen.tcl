set moduleName mysha
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
set C_modelName {mysha}
set C_modelType { void 0 }
set C_modelArgList {
	{ timesha int 32 regular {fifo 1 volatile }  }
	{ ComputeWordCnt_loc int 32 regular {fifo 0}  }
	{ ComputeWordCnt_loc_out int 32 regular {fifo 1}  }
	{ ComputeWordCnt_loc_out1 int 32 regular {fifo 1}  }
	{ sha_in int 512 regular {fifo 0 volatile } {global 0}  }
	{ sha_out int 512 regular {fifo 1 volatile } {global 1}  }
	{ endMsgLenStrm int 1 regular {fifo 0 volatile } {global 0}  }
	{ msgLenStrm int 128 regular {fifo 0 volatile } {global 0}  }
	{ msgStrm int 64 regular {fifo 0 volatile } {global 0}  }
	{ digestStrm int 256 regular {fifo 1 volatile } {global 1}  }
	{ endDigestStrm int 1 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "timesha", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ComputeWordCnt_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ComputeWordCnt_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ComputeWordCnt_loc_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sha_in", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "sha_out", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "endMsgLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "msgLenStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "digestStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "endDigestStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 43
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
	{ timesha_din sc_out sc_lv 32 signal 0 } 
	{ timesha_full_n sc_in sc_logic 1 signal 0 } 
	{ timesha_write sc_out sc_logic 1 signal 0 } 
	{ ComputeWordCnt_loc_dout sc_in sc_lv 32 signal 1 } 
	{ ComputeWordCnt_loc_empty_n sc_in sc_logic 1 signal 1 } 
	{ ComputeWordCnt_loc_read sc_out sc_logic 1 signal 1 } 
	{ ComputeWordCnt_loc_out_din sc_out sc_lv 32 signal 2 } 
	{ ComputeWordCnt_loc_out_full_n sc_in sc_logic 1 signal 2 } 
	{ ComputeWordCnt_loc_out_write sc_out sc_logic 1 signal 2 } 
	{ ComputeWordCnt_loc_out1_din sc_out sc_lv 32 signal 3 } 
	{ ComputeWordCnt_loc_out1_full_n sc_in sc_logic 1 signal 3 } 
	{ ComputeWordCnt_loc_out1_write sc_out sc_logic 1 signal 3 } 
	{ sha_in_dout sc_in sc_lv 512 signal 4 } 
	{ sha_in_empty_n sc_in sc_logic 1 signal 4 } 
	{ sha_in_read sc_out sc_logic 1 signal 4 } 
	{ sha_out_din sc_out sc_lv 512 signal 5 } 
	{ sha_out_full_n sc_in sc_logic 1 signal 5 } 
	{ sha_out_write sc_out sc_logic 1 signal 5 } 
	{ endMsgLenStrm_dout sc_in sc_lv 1 signal 6 } 
	{ endMsgLenStrm_empty_n sc_in sc_logic 1 signal 6 } 
	{ endMsgLenStrm_read sc_out sc_logic 1 signal 6 } 
	{ msgLenStrm_dout sc_in sc_lv 128 signal 7 } 
	{ msgLenStrm_empty_n sc_in sc_logic 1 signal 7 } 
	{ msgLenStrm_read sc_out sc_logic 1 signal 7 } 
	{ msgStrm_dout sc_in sc_lv 64 signal 8 } 
	{ msgStrm_empty_n sc_in sc_logic 1 signal 8 } 
	{ msgStrm_read sc_out sc_logic 1 signal 8 } 
	{ digestStrm_din sc_out sc_lv 256 signal 9 } 
	{ digestStrm_full_n sc_in sc_logic 1 signal 9 } 
	{ digestStrm_write sc_out sc_logic 1 signal 9 } 
	{ endDigestStrm_din sc_out sc_lv 1 signal 10 } 
	{ endDigestStrm_full_n sc_in sc_logic 1 signal 10 } 
	{ endDigestStrm_write sc_out sc_logic 1 signal 10 } 
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
 	{ "name": "timesha_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "timesha", "role": "din" }} , 
 	{ "name": "timesha_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timesha", "role": "full_n" }} , 
 	{ "name": "timesha_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timesha", "role": "write" }} , 
 	{ "name": "ComputeWordCnt_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "dout" }} , 
 	{ "name": "ComputeWordCnt_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "empty_n" }} , 
 	{ "name": "ComputeWordCnt_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc", "role": "read" }} , 
 	{ "name": "ComputeWordCnt_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "din" }} , 
 	{ "name": "ComputeWordCnt_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "full_n" }} , 
 	{ "name": "ComputeWordCnt_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out", "role": "write" }} , 
 	{ "name": "ComputeWordCnt_loc_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out1", "role": "din" }} , 
 	{ "name": "ComputeWordCnt_loc_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out1", "role": "full_n" }} , 
 	{ "name": "ComputeWordCnt_loc_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ComputeWordCnt_loc_out1", "role": "write" }} , 
 	{ "name": "sha_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "sha_in", "role": "dout" }} , 
 	{ "name": "sha_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sha_in", "role": "empty_n" }} , 
 	{ "name": "sha_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sha_in", "role": "read" }} , 
 	{ "name": "sha_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "sha_out", "role": "din" }} , 
 	{ "name": "sha_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sha_out", "role": "full_n" }} , 
 	{ "name": "sha_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sha_out", "role": "write" }} , 
 	{ "name": "endMsgLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "dout" }} , 
 	{ "name": "endMsgLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "empty_n" }} , 
 	{ "name": "endMsgLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endMsgLenStrm", "role": "read" }} , 
 	{ "name": "msgLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "dout" }} , 
 	{ "name": "msgLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "empty_n" }} , 
 	{ "name": "msgLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgLenStrm", "role": "read" }} , 
 	{ "name": "msgStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgStrm", "role": "dout" }} , 
 	{ "name": "msgStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "empty_n" }} , 
 	{ "name": "msgStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "read" }} , 
 	{ "name": "digestStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "digestStrm", "role": "din" }} , 
 	{ "name": "digestStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digestStrm", "role": "full_n" }} , 
 	{ "name": "digestStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digestStrm", "role": "write" }} , 
 	{ "name": "endDigestStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm", "role": "din" }} , 
 	{ "name": "endDigestStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm", "role": "full_n" }} , 
 	{ "name": "endDigestStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endDigestStrm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mysha",
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
			{"Name" : "timesha", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timesha_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sha_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sha_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sha_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sha_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endMsgLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "endMsgLenStrm"}]},
			{"Name" : "msgLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "msgLenStrm"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "msgStrm"}]},
			{"Name" : "roundIndex", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "roundIndex"}]},
			{"Name" : "digestStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "digestStrm"}]},
			{"Name" : "endDigestStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "endDigestStrm"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha3Digest_32u_s_fu_120", "Parent" : "0", "Child" : ["2", "4"],
		"CDFG" : "sha3Digest_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "164", "EstimateLatencyMax" : "164",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "endMsgLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "endMsgLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "msgLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "msgStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "roundIndex", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_KECCAK_f_fu_1204", "Port" : "roundIndex"}]},
			{"Name" : "digestStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "digestStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endDigestStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "endDigestStrm_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha3Digest_32u_s_fu_120.grp_KECCAK_f_fu_1204", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "KECCAK_f",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "12",
		"VariableLatency" : "0", "ExactLatency" : "12", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundIndex", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha3Digest_32u_s_fu_120.grp_KECCAK_f_fu_1204.roundIndex_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha3Digest_32u_s_fu_120.udiv_128ns_9ns_128_132_1_U144", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	mysha {
		timesha {Type O LastRead -1 FirstWrite 1}
		ComputeWordCnt_loc {Type I LastRead 1 FirstWrite -1}
		ComputeWordCnt_loc_out {Type O LastRead -1 FirstWrite 1}
		ComputeWordCnt_loc_out1 {Type O LastRead -1 FirstWrite 1}
		sha_in {Type I LastRead 3 FirstWrite -1}
		sha_out {Type O LastRead -1 FirstWrite 1}
		endMsgLenStrm {Type I LastRead 133 FirstWrite -1}
		msgLenStrm {Type I LastRead 1 FirstWrite -1}
		msgStrm {Type I LastRead 149 FirstWrite -1}
		roundIndex {Type I LastRead -1 FirstWrite -1}
		digestStrm {Type O LastRead -1 FirstWrite 133}
		endDigestStrm {Type O LastRead -1 FirstWrite 1}}
	sha3Digest_32u_s {
		endMsgLenStrm {Type I LastRead 133 FirstWrite -1}
		msgLenStrm {Type I LastRead 1 FirstWrite -1}
		msgStrm {Type I LastRead 149 FirstWrite -1}
		roundIndex {Type I LastRead -1 FirstWrite -1}
		digestStrm {Type O LastRead -1 FirstWrite 133}
		endDigestStrm {Type O LastRead -1 FirstWrite 1}}
	KECCAK_f {
		p_read {Type I LastRead 5 FirstWrite -1}
		p_read1 {Type I LastRead 5 FirstWrite -1}
		p_read2 {Type I LastRead 5 FirstWrite -1}
		p_read3 {Type I LastRead 5 FirstWrite -1}
		p_read4 {Type I LastRead 5 FirstWrite -1}
		p_read5 {Type I LastRead 5 FirstWrite -1}
		p_read6 {Type I LastRead 5 FirstWrite -1}
		p_read7 {Type I LastRead 5 FirstWrite -1}
		p_read8 {Type I LastRead 5 FirstWrite -1}
		p_read9 {Type I LastRead 5 FirstWrite -1}
		p_read10 {Type I LastRead 5 FirstWrite -1}
		p_read11 {Type I LastRead 5 FirstWrite -1}
		p_read12 {Type I LastRead 5 FirstWrite -1}
		p_read13 {Type I LastRead 5 FirstWrite -1}
		p_read14 {Type I LastRead 5 FirstWrite -1}
		p_read15 {Type I LastRead 5 FirstWrite -1}
		p_read16 {Type I LastRead 5 FirstWrite -1}
		p_read17 {Type I LastRead 5 FirstWrite -1}
		p_read18 {Type I LastRead 5 FirstWrite -1}
		p_read19 {Type I LastRead 5 FirstWrite -1}
		p_read20 {Type I LastRead 5 FirstWrite -1}
		p_read21 {Type I LastRead 5 FirstWrite -1}
		p_read22 {Type I LastRead 5 FirstWrite -1}
		p_read23 {Type I LastRead 5 FirstWrite -1}
		p_read24 {Type I LastRead 5 FirstWrite -1}
		roundIndex {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	timesha { ap_fifo {  { timesha_din fifo_data 1 32 }  { timesha_full_n fifo_status 0 1 }  { timesha_write fifo_update 1 1 } } }
	ComputeWordCnt_loc { ap_fifo {  { ComputeWordCnt_loc_dout fifo_data 0 32 }  { ComputeWordCnt_loc_empty_n fifo_status 0 1 }  { ComputeWordCnt_loc_read fifo_update 1 1 } } }
	ComputeWordCnt_loc_out { ap_fifo {  { ComputeWordCnt_loc_out_din fifo_data 1 32 }  { ComputeWordCnt_loc_out_full_n fifo_status 0 1 }  { ComputeWordCnt_loc_out_write fifo_update 1 1 } } }
	ComputeWordCnt_loc_out1 { ap_fifo {  { ComputeWordCnt_loc_out1_din fifo_data 1 32 }  { ComputeWordCnt_loc_out1_full_n fifo_status 0 1 }  { ComputeWordCnt_loc_out1_write fifo_update 1 1 } } }
	sha_in { ap_fifo {  { sha_in_dout fifo_data 0 512 }  { sha_in_empty_n fifo_status 0 1 }  { sha_in_read fifo_update 1 1 } } }
	sha_out { ap_fifo {  { sha_out_din fifo_data 1 512 }  { sha_out_full_n fifo_status 0 1 }  { sha_out_write fifo_update 1 1 } } }
	endMsgLenStrm { ap_fifo {  { endMsgLenStrm_dout fifo_data 0 1 }  { endMsgLenStrm_empty_n fifo_status 0 1 }  { endMsgLenStrm_read fifo_update 1 1 } } }
	msgLenStrm { ap_fifo {  { msgLenStrm_dout fifo_data 0 128 }  { msgLenStrm_empty_n fifo_status 0 1 }  { msgLenStrm_read fifo_update 1 1 } } }
	msgStrm { ap_fifo {  { msgStrm_dout fifo_data 0 64 }  { msgStrm_empty_n fifo_status 0 1 }  { msgStrm_read fifo_update 1 1 } } }
	digestStrm { ap_fifo {  { digestStrm_din fifo_data 1 256 }  { digestStrm_full_n fifo_status 0 1 }  { digestStrm_write fifo_update 1 1 } } }
	endDigestStrm { ap_fifo {  { endDigestStrm_din fifo_data 1 1 }  { endDigestStrm_full_n fifo_status 0 1 }  { endDigestStrm_write fifo_update 1 1 } } }
}
