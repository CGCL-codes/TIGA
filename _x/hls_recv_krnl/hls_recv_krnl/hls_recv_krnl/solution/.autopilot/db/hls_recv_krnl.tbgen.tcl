set moduleName hls_recv_krnl
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hls_recv_krnl}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 64 regular {axi_master 1}  }
	{ s_axis_udp_rx_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_udp_rx Data } }  }
	{ s_axis_udp_rx_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_udp_rx Keep } }  }
	{ s_axis_udp_rx_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_udp_rx Strb } }  }
	{ s_axis_udp_rx_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_udp_rx Last } }  }
	{ m_axis_udp_tx_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_udp_tx Data } }  }
	{ m_axis_udp_tx_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_udp_tx Keep } }  }
	{ m_axis_udp_tx_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_udp_tx Strb } }  }
	{ m_axis_udp_tx_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_udp_tx Last } }  }
	{ s_axis_udp_rx_meta_V_data_V int 256 regular {axi_s 0 volatile  { s_axis_udp_rx_meta Data } }  }
	{ s_axis_udp_rx_meta_V_keep_V int 32 regular {axi_s 0 volatile  { s_axis_udp_rx_meta Keep } }  }
	{ s_axis_udp_rx_meta_V_strb_V int 32 regular {axi_s 0 volatile  { s_axis_udp_rx_meta Strb } }  }
	{ s_axis_udp_rx_meta_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_udp_rx_meta Last } }  }
	{ m_axis_udp_tx_meta_V_data_V int 256 regular {axi_s 1 volatile  { m_axis_udp_tx_meta Data } }  }
	{ m_axis_udp_tx_meta_V_keep_V int 32 regular {axi_s 1 volatile  { m_axis_udp_tx_meta Keep } }  }
	{ m_axis_udp_tx_meta_V_strb_V int 32 regular {axi_s 1 volatile  { m_axis_udp_tx_meta Strb } }  }
	{ m_axis_udp_tx_meta_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_udp_tx_meta Last } }  }
	{ m_axis_tcp_listen_port_V_data_V int 16 regular {axi_s 1 volatile  { m_axis_tcp_listen_port Data } }  }
	{ m_axis_tcp_listen_port_V_keep_V int 2 regular {axi_s 1 volatile  { m_axis_tcp_listen_port Keep } }  }
	{ m_axis_tcp_listen_port_V_strb_V int 2 regular {axi_s 1 volatile  { m_axis_tcp_listen_port Strb } }  }
	{ m_axis_tcp_listen_port_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp_listen_port Last } }  }
	{ s_axis_tcp_port_status_V_data_V int 8 regular {axi_s 0 volatile  { s_axis_tcp_port_status Data } }  }
	{ s_axis_tcp_port_status_V_keep_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Keep } }  }
	{ s_axis_tcp_port_status_V_strb_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Strb } }  }
	{ s_axis_tcp_port_status_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_port_status Last } }  }
	{ m_axis_tcp_open_connection_V_data_V int 64 regular {axi_s 1 volatile  { m_axis_tcp_open_connection Data } }  }
	{ m_axis_tcp_open_connection_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis_tcp_open_connection Keep } }  }
	{ m_axis_tcp_open_connection_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis_tcp_open_connection Strb } }  }
	{ m_axis_tcp_open_connection_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp_open_connection Last } }  }
	{ s_axis_tcp_open_status_V_data_V int 128 regular {axi_s 0 volatile  { s_axis_tcp_open_status Data } }  }
	{ s_axis_tcp_open_status_V_keep_V int 16 regular {axi_s 0 volatile  { s_axis_tcp_open_status Keep } }  }
	{ s_axis_tcp_open_status_V_strb_V int 16 regular {axi_s 0 volatile  { s_axis_tcp_open_status Strb } }  }
	{ s_axis_tcp_open_status_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_open_status Last } }  }
	{ m_axis_tcp_close_connection_V_data_V int 16 regular {axi_s 1 volatile  { m_axis_tcp_close_connection Data } }  }
	{ m_axis_tcp_close_connection_V_keep_V int 2 regular {axi_s 1 volatile  { m_axis_tcp_close_connection Keep } }  }
	{ m_axis_tcp_close_connection_V_strb_V int 2 regular {axi_s 1 volatile  { m_axis_tcp_close_connection Strb } }  }
	{ m_axis_tcp_close_connection_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp_close_connection Last } }  }
	{ s_axis_tcp_notification_V_data_V int 128 regular {axi_s 0 volatile  { s_axis_tcp_notification Data } }  }
	{ s_axis_tcp_notification_V_keep_V int 16 regular {axi_s 0 volatile  { s_axis_tcp_notification Keep } }  }
	{ s_axis_tcp_notification_V_strb_V int 16 regular {axi_s 0 volatile  { s_axis_tcp_notification Strb } }  }
	{ s_axis_tcp_notification_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_notification Last } }  }
	{ m_axis_tcp_read_pkg_V_data_V int 32 regular {axi_s 1 volatile  { m_axis_tcp_read_pkg Data } }  }
	{ m_axis_tcp_read_pkg_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_tcp_read_pkg Keep } }  }
	{ m_axis_tcp_read_pkg_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_tcp_read_pkg Strb } }  }
	{ m_axis_tcp_read_pkg_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_tcp_read_pkg Last } }  }
	{ s_axis_tcp_rx_meta_V_data_V int 16 regular {axi_s 0 volatile  { s_axis_tcp_rx_meta Data } }  }
	{ s_axis_tcp_rx_meta_V_keep_V int 2 regular {axi_s 0 volatile  { s_axis_tcp_rx_meta Keep } }  }
	{ s_axis_tcp_rx_meta_V_strb_V int 2 regular {axi_s 0 volatile  { s_axis_tcp_rx_meta Strb } }  }
	{ s_axis_tcp_rx_meta_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_rx_meta Last } }  }
	{ s_axis_tcp_rx_data_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_tcp_rx_data Data } }  }
	{ s_axis_tcp_rx_data_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_tcp_rx_data Keep } }  }
	{ s_axis_tcp_rx_data_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_tcp_rx_data Strb } }  }
	{ s_axis_tcp_rx_data_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_tcp_rx_data Last } }  }
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
	{ useConn int 32 regular {axi_slave 0}  }
	{ basePort int 32 regular {axi_slave 0}  }
	{ delay int 32 unused {axi_slave 0}  }
	{ expectedRxByteCnt int 64 regular {axi_slave 0}  }
	{ out_time int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_time","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "out_time","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_udp_rx_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_udp_rx.V.data.V","cData": "int512","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_udp_rx_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_udp_rx.V.keep.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_udp_rx_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_udp_rx.V.strb.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_udp_rx_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_udp_rx.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_udp_tx_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_udp_tx.V.data.V","cData": "int512","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_udp_tx_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_udp_tx.V.keep.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_udp_tx_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_udp_tx.V.strb.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_udp_tx_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_udp_tx.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_udp_rx_meta_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_udp_rx_meta.V.data.V","cData": "int256","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_udp_rx_meta_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_udp_rx_meta.V.keep.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_udp_rx_meta_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_udp_rx_meta.V.strb.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_udp_rx_meta_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_udp_rx_meta.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_udp_tx_meta_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_udp_tx_meta.V.data.V","cData": "int256","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_udp_tx_meta_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_udp_tx_meta.V.keep.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_udp_tx_meta_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_udp_tx_meta.V.strb.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_udp_tx_meta_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_udp_tx_meta.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_listen_port_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_listen_port.V.data.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_listen_port_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_listen_port.V.keep.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_listen_port_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_listen_port.V.strb.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_listen_port_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_listen_port.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_port_status_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_port_status.V.data.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_port_status_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_port_status.V.keep.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_port_status_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_port_status.V.strb.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_port_status_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_port_status.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_open_connection_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_open_connection.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_open_connection_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_open_connection.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_open_connection_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_open_connection.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_open_connection_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_open_connection.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_open_status_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_open_status.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_open_status_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_open_status.V.keep.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_open_status_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_open_status.V.strb.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_open_status_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_open_status.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_close_connection_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_close_connection.V.data.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_close_connection_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_close_connection.V.keep.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_close_connection_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_close_connection.V.strb.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_close_connection_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_close_connection.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_notification_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_notification.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_notification_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_notification.V.keep.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_notification_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_notification.V.strb.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_notification_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_notification.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_read_pkg_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_read_pkg.V.data.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_read_pkg_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_read_pkg.V.keep.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_read_pkg_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_read_pkg.V.strb.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_read_pkg_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_read_pkg.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_rx_meta_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_rx_meta.V.data.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_rx_meta_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_rx_meta.V.keep.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_rx_meta_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_rx_meta.V.strb.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_rx_meta_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_rx_meta.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_rx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_rx_data.V.data.V","cData": "int512","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_rx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_rx_data.V.keep.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_rx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_rx_data.V.strb.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_rx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_rx_data.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_tx_meta_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_tx_meta.V.data.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_tx_meta_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_tx_meta.V.keep.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_tx_meta_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_tx_meta.V.strb.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_tx_meta_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_tx_meta.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_tx_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_tx_data.V.data.V","cData": "int512","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_tx_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_tx_data.V.keep.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_tx_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_tx_data.V.strb.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m_axis_tcp_tx_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_tcp_tx_data.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_tx_status_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_tx_status.V.data.V","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_tx_status_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_tx_status.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_tx_status_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_tx_status.V.strb.V","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axis_tcp_tx_status_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axis_tcp_tx_status.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "useConn", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "useConn","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "basePort", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "basePort","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "delay", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "delay","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "expectedRxByteCnt", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "expectedRxByteCnt","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "out_time", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 161
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axis_udp_rx_TDATA sc_in sc_lv 512 signal 1 } 
	{ s_axis_udp_rx_TKEEP sc_in sc_lv 64 signal 2 } 
	{ s_axis_udp_rx_TSTRB sc_in sc_lv 64 signal 3 } 
	{ s_axis_udp_rx_TLAST sc_in sc_lv 1 signal 4 } 
	{ m_axis_udp_tx_TDATA sc_out sc_lv 512 signal 5 } 
	{ m_axis_udp_tx_TKEEP sc_out sc_lv 64 signal 6 } 
	{ m_axis_udp_tx_TSTRB sc_out sc_lv 64 signal 7 } 
	{ m_axis_udp_tx_TLAST sc_out sc_lv 1 signal 8 } 
	{ s_axis_udp_rx_meta_TDATA sc_in sc_lv 256 signal 9 } 
	{ s_axis_udp_rx_meta_TKEEP sc_in sc_lv 32 signal 10 } 
	{ s_axis_udp_rx_meta_TSTRB sc_in sc_lv 32 signal 11 } 
	{ s_axis_udp_rx_meta_TLAST sc_in sc_lv 1 signal 12 } 
	{ m_axis_udp_tx_meta_TDATA sc_out sc_lv 256 signal 13 } 
	{ m_axis_udp_tx_meta_TKEEP sc_out sc_lv 32 signal 14 } 
	{ m_axis_udp_tx_meta_TSTRB sc_out sc_lv 32 signal 15 } 
	{ m_axis_udp_tx_meta_TLAST sc_out sc_lv 1 signal 16 } 
	{ m_axis_tcp_listen_port_TDATA sc_out sc_lv 16 signal 17 } 
	{ m_axis_tcp_listen_port_TKEEP sc_out sc_lv 2 signal 18 } 
	{ m_axis_tcp_listen_port_TSTRB sc_out sc_lv 2 signal 19 } 
	{ m_axis_tcp_listen_port_TLAST sc_out sc_lv 1 signal 20 } 
	{ s_axis_tcp_port_status_TDATA sc_in sc_lv 8 signal 21 } 
	{ s_axis_tcp_port_status_TKEEP sc_in sc_lv 1 signal 22 } 
	{ s_axis_tcp_port_status_TSTRB sc_in sc_lv 1 signal 23 } 
	{ s_axis_tcp_port_status_TLAST sc_in sc_lv 1 signal 24 } 
	{ m_axis_tcp_open_connection_TDATA sc_out sc_lv 64 signal 25 } 
	{ m_axis_tcp_open_connection_TKEEP sc_out sc_lv 8 signal 26 } 
	{ m_axis_tcp_open_connection_TSTRB sc_out sc_lv 8 signal 27 } 
	{ m_axis_tcp_open_connection_TLAST sc_out sc_lv 1 signal 28 } 
	{ s_axis_tcp_open_status_TDATA sc_in sc_lv 128 signal 29 } 
	{ s_axis_tcp_open_status_TKEEP sc_in sc_lv 16 signal 30 } 
	{ s_axis_tcp_open_status_TSTRB sc_in sc_lv 16 signal 31 } 
	{ s_axis_tcp_open_status_TLAST sc_in sc_lv 1 signal 32 } 
	{ m_axis_tcp_close_connection_TDATA sc_out sc_lv 16 signal 33 } 
	{ m_axis_tcp_close_connection_TKEEP sc_out sc_lv 2 signal 34 } 
	{ m_axis_tcp_close_connection_TSTRB sc_out sc_lv 2 signal 35 } 
	{ m_axis_tcp_close_connection_TLAST sc_out sc_lv 1 signal 36 } 
	{ s_axis_tcp_notification_TDATA sc_in sc_lv 128 signal 37 } 
	{ s_axis_tcp_notification_TKEEP sc_in sc_lv 16 signal 38 } 
	{ s_axis_tcp_notification_TSTRB sc_in sc_lv 16 signal 39 } 
	{ s_axis_tcp_notification_TLAST sc_in sc_lv 1 signal 40 } 
	{ m_axis_tcp_read_pkg_TDATA sc_out sc_lv 32 signal 41 } 
	{ m_axis_tcp_read_pkg_TKEEP sc_out sc_lv 4 signal 42 } 
	{ m_axis_tcp_read_pkg_TSTRB sc_out sc_lv 4 signal 43 } 
	{ m_axis_tcp_read_pkg_TLAST sc_out sc_lv 1 signal 44 } 
	{ s_axis_tcp_rx_meta_TDATA sc_in sc_lv 16 signal 45 } 
	{ s_axis_tcp_rx_meta_TKEEP sc_in sc_lv 2 signal 46 } 
	{ s_axis_tcp_rx_meta_TSTRB sc_in sc_lv 2 signal 47 } 
	{ s_axis_tcp_rx_meta_TLAST sc_in sc_lv 1 signal 48 } 
	{ s_axis_tcp_rx_data_TDATA sc_in sc_lv 512 signal 49 } 
	{ s_axis_tcp_rx_data_TKEEP sc_in sc_lv 64 signal 50 } 
	{ s_axis_tcp_rx_data_TSTRB sc_in sc_lv 64 signal 51 } 
	{ s_axis_tcp_rx_data_TLAST sc_in sc_lv 1 signal 52 } 
	{ m_axis_tcp_tx_meta_TDATA sc_out sc_lv 32 signal 53 } 
	{ m_axis_tcp_tx_meta_TKEEP sc_out sc_lv 4 signal 54 } 
	{ m_axis_tcp_tx_meta_TSTRB sc_out sc_lv 4 signal 55 } 
	{ m_axis_tcp_tx_meta_TLAST sc_out sc_lv 1 signal 56 } 
	{ m_axis_tcp_tx_data_TDATA sc_out sc_lv 512 signal 57 } 
	{ m_axis_tcp_tx_data_TKEEP sc_out sc_lv 64 signal 58 } 
	{ m_axis_tcp_tx_data_TSTRB sc_out sc_lv 64 signal 59 } 
	{ m_axis_tcp_tx_data_TLAST sc_out sc_lv 1 signal 60 } 
	{ s_axis_tcp_tx_status_TDATA sc_in sc_lv 64 signal 61 } 
	{ s_axis_tcp_tx_status_TKEEP sc_in sc_lv 8 signal 62 } 
	{ s_axis_tcp_tx_status_TSTRB sc_in sc_lv 8 signal 63 } 
	{ s_axis_tcp_tx_status_TLAST sc_in sc_lv 1 signal 64 } 
	{ m_axis_tcp_listen_port_TVALID sc_out sc_logic 1 outvld 20 } 
	{ m_axis_tcp_listen_port_TREADY sc_in sc_logic 1 outacc 20 } 
	{ s_axis_tcp_port_status_TVALID sc_in sc_logic 1 invld 24 } 
	{ s_axis_tcp_port_status_TREADY sc_out sc_logic 1 inacc 24 } 
	{ s_axis_tcp_notification_TVALID sc_in sc_logic 1 invld 40 } 
	{ s_axis_tcp_notification_TREADY sc_out sc_logic 1 inacc 40 } 
	{ m_axis_tcp_read_pkg_TVALID sc_out sc_logic 1 outvld 44 } 
	{ m_axis_tcp_read_pkg_TREADY sc_in sc_logic 1 outacc 44 } 
	{ s_axis_tcp_rx_meta_TVALID sc_in sc_logic 1 invld 48 } 
	{ s_axis_tcp_rx_meta_TREADY sc_out sc_logic 1 inacc 48 } 
	{ s_axis_tcp_rx_data_TVALID sc_in sc_logic 1 invld 52 } 
	{ s_axis_tcp_rx_data_TREADY sc_out sc_logic 1 inacc 52 } 
	{ m_axis_tcp_open_connection_TVALID sc_out sc_logic 1 outvld 28 } 
	{ m_axis_tcp_open_connection_TREADY sc_in sc_logic 1 outacc 28 } 
	{ s_axis_tcp_open_status_TVALID sc_in sc_logic 1 invld 32 } 
	{ s_axis_tcp_open_status_TREADY sc_out sc_logic 1 inacc 32 } 
	{ m_axis_tcp_tx_meta_TVALID sc_out sc_logic 1 outvld 56 } 
	{ m_axis_tcp_tx_meta_TREADY sc_in sc_logic 1 outacc 56 } 
	{ m_axis_tcp_tx_data_TVALID sc_out sc_logic 1 outvld 60 } 
	{ m_axis_tcp_tx_data_TREADY sc_in sc_logic 1 outacc 60 } 
	{ s_axis_tcp_tx_status_TVALID sc_in sc_logic 1 invld 64 } 
	{ s_axis_tcp_tx_status_TREADY sc_out sc_logic 1 inacc 64 } 
	{ s_axis_udp_rx_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_udp_rx_TREADY sc_out sc_logic 1 inacc 4 } 
	{ m_axis_udp_tx_TVALID sc_out sc_logic 1 outvld 8 } 
	{ m_axis_udp_tx_TREADY sc_in sc_logic 1 outacc 8 } 
	{ s_axis_udp_rx_meta_TVALID sc_in sc_logic 1 invld 12 } 
	{ s_axis_udp_rx_meta_TREADY sc_out sc_logic 1 inacc 12 } 
	{ m_axis_udp_tx_meta_TVALID sc_out sc_logic 1 outvld 16 } 
	{ m_axis_udp_tx_meta_TREADY sc_in sc_logic 1 outacc 16 } 
	{ m_axis_tcp_close_connection_TVALID sc_out sc_logic 1 outvld 36 } 
	{ m_axis_tcp_close_connection_TREADY sc_in sc_logic 1 outacc 36 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"hls_recv_krnl","role":"start","value":"0","valid_bit":"0"},{"name":"hls_recv_krnl","role":"continue","value":"0","valid_bit":"4"},{"name":"hls_recv_krnl","role":"auto_start","value":"0","valid_bit":"7"},{"name":"useConn","role":"data","value":"16"},{"name":"basePort","role":"data","value":"24"},{"name":"delay","role":"data","value":"32"},{"name":"expectedRxByteCnt","role":"data","value":"40"},{"name":"out_time","role":"data","value":"52"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"hls_recv_krnl","role":"start","value":"0","valid_bit":"0"},{"name":"hls_recv_krnl","role":"done","value":"0","valid_bit":"1"},{"name":"hls_recv_krnl","role":"idle","value":"0","valid_bit":"2"},{"name":"hls_recv_krnl","role":"ready","value":"0","valid_bit":"3"},{"name":"hls_recv_krnl","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "s_axis_udp_rx_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_udp_rx_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_udp_rx_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_udp_rx_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_udp_rx_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_udp_tx_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_udp_tx_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_udp_tx_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_udp_tx_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_meta_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "s_axis_udp_rx_meta_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_meta_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_udp_rx_meta_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_meta_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_udp_rx_meta_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_meta_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_udp_rx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_meta_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "m_axis_udp_tx_meta_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_meta_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_udp_tx_meta_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_meta_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_udp_tx_meta_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_meta_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_udp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_tcp_listen_port_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_axis_tcp_listen_port_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_axis_tcp_listen_port_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_port_status_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_open_connection_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tcp_open_connection_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_open_connection_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_tcp_open_connection_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_open_connection_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_tcp_open_connection_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_open_connection_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_open_connection_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_open_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_tcp_open_status_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_open_status_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_tcp_open_status_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_open_status_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_tcp_open_status_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_open_status_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_open_status_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_close_connection_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "m_axis_tcp_close_connection_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_close_connection_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_axis_tcp_close_connection_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_close_connection_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m_axis_tcp_close_connection_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_close_connection_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_close_connection_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "s_axis_tcp_notification_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_tcp_notification_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_tcp_notification_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_notification_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tcp_read_pkg_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tcp_read_pkg_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tcp_read_pkg_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_read_pkg_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_meta_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s_axis_tcp_rx_meta_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_meta_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_axis_tcp_rx_meta_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_meta_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_axis_tcp_rx_meta_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_meta_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_rx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_tcp_rx_data_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tcp_rx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tcp_rx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_meta_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_meta_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_meta_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_data_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_data_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_data_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_tcp_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_tcp_tx_status_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_tcp_tx_status_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_tcp_tx_status_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_tcp_tx_status_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_listen_port_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_port_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_port_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_port_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_notification_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_notification_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_notification_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_read_pkg_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_read_pkg_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_read_pkg_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_meta_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_rx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_meta_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_rx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_rx_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_rx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_open_connection_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_open_connection_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_open_connection_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_open_connection_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_open_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_open_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_open_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_open_status_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_meta_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_tx_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_tx_data_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_tcp_tx_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_tcp_tx_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_tcp_tx_status_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_udp_rx_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_udp_rx_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_udp_tx_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_udp_tx_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_meta_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_udp_rx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_udp_rx_meta_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_udp_rx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_meta_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_udp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_udp_tx_meta_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_udp_tx_meta_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_close_connection_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_tcp_close_connection_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_tcp_close_connection_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_tcp_close_connection_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "15", "20", "21", "23", "24", "25", "30", "31", "32", "55", "56", "65", "78", "95", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147"],
		"CDFG" : "hls_recv_krnl",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "hls_recv_krnl_entry3_U0"},
			{"ID" : "56", "Name" : "tie_off_tcp_open_connection_U0"},
			{"ID" : "65", "Name" : "tie_off_tcp_tx_U0"},
			{"ID" : "78", "Name" : "tie_off_udp_U0"},
			{"ID" : "95", "Name" : "tie_off_tcp_close_con_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "listenPorts_U0"},
			{"ID" : "15", "Name" : "recvData_U0"},
			{"ID" : "20", "Name" : "backgroundclock_U0"},
			{"ID" : "23", "Name" : "consumetrans_U0"},
			{"ID" : "30", "Name" : "consumesha_U0"},
			{"ID" : "55", "Name" : "consumeaes_U0"},
			{"ID" : "56", "Name" : "tie_off_tcp_open_connection_U0"},
			{"ID" : "65", "Name" : "tie_off_tcp_tx_U0"},
			{"ID" : "78", "Name" : "tie_off_udp_U0"},
			{"ID" : "95", "Name" : "tie_off_tcp_close_con_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "backgroundclock_U0", "Port" : "gmem"}]},
			{"Name" : "s_axis_udp_rx_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "s_axis_udp_rx_V_data_V"}]},
			{"Name" : "s_axis_udp_rx_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "s_axis_udp_rx_V_keep_V"}]},
			{"Name" : "s_axis_udp_rx_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "s_axis_udp_rx_V_strb_V"}]},
			{"Name" : "s_axis_udp_rx_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "s_axis_udp_rx_V_last_V"}]},
			{"Name" : "m_axis_udp_tx_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "m_axis_udp_tx_V_data_V"}]},
			{"Name" : "m_axis_udp_tx_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "m_axis_udp_tx_V_keep_V"}]},
			{"Name" : "m_axis_udp_tx_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "m_axis_udp_tx_V_strb_V"}]},
			{"Name" : "m_axis_udp_tx_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "m_axis_udp_tx_V_last_V"}]},
			{"Name" : "s_axis_udp_rx_meta_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "s_axis_udp_rx_meta_V_data_V"}]},
			{"Name" : "s_axis_udp_rx_meta_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "s_axis_udp_rx_meta_V_keep_V"}]},
			{"Name" : "s_axis_udp_rx_meta_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "s_axis_udp_rx_meta_V_strb_V"}]},
			{"Name" : "s_axis_udp_rx_meta_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "s_axis_udp_rx_meta_V_last_V"}]},
			{"Name" : "m_axis_udp_tx_meta_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "m_axis_udp_tx_meta_V_data_V"}]},
			{"Name" : "m_axis_udp_tx_meta_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "m_axis_udp_tx_meta_V_keep_V"}]},
			{"Name" : "m_axis_udp_tx_meta_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "m_axis_udp_tx_meta_V_strb_V"}]},
			{"Name" : "m_axis_udp_tx_meta_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "tie_off_udp_U0", "Port" : "m_axis_udp_tx_meta_V_last_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "listenPorts_U0", "Port" : "m_axis_tcp_listen_port_V_data_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "listenPorts_U0", "Port" : "m_axis_tcp_listen_port_V_keep_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "listenPorts_U0", "Port" : "m_axis_tcp_listen_port_V_strb_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "listenPorts_U0", "Port" : "m_axis_tcp_listen_port_V_last_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "listenPorts_U0", "Port" : "s_axis_tcp_port_status_V_data_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "listenPorts_U0", "Port" : "s_axis_tcp_port_status_V_keep_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "listenPorts_U0", "Port" : "s_axis_tcp_port_status_V_strb_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "listenPorts_U0", "Port" : "s_axis_tcp_port_status_V_last_V"}]},
			{"Name" : "m_axis_tcp_open_connection_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "tie_off_tcp_open_connection_U0", "Port" : "m_axis_tcp_open_connection_V_data_V"}]},
			{"Name" : "m_axis_tcp_open_connection_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "tie_off_tcp_open_connection_U0", "Port" : "m_axis_tcp_open_connection_V_keep_V"}]},
			{"Name" : "m_axis_tcp_open_connection_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "tie_off_tcp_open_connection_U0", "Port" : "m_axis_tcp_open_connection_V_strb_V"}]},
			{"Name" : "m_axis_tcp_open_connection_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "tie_off_tcp_open_connection_U0", "Port" : "m_axis_tcp_open_connection_V_last_V"}]},
			{"Name" : "s_axis_tcp_open_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "tie_off_tcp_open_connection_U0", "Port" : "s_axis_tcp_open_status_V_data_V"}]},
			{"Name" : "s_axis_tcp_open_status_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "tie_off_tcp_open_connection_U0", "Port" : "s_axis_tcp_open_status_V_keep_V"}]},
			{"Name" : "s_axis_tcp_open_status_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "tie_off_tcp_open_connection_U0", "Port" : "s_axis_tcp_open_status_V_strb_V"}]},
			{"Name" : "s_axis_tcp_open_status_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "tie_off_tcp_open_connection_U0", "Port" : "s_axis_tcp_open_status_V_last_V"}]},
			{"Name" : "m_axis_tcp_close_connection_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "tie_off_tcp_close_con_U0", "Port" : "m_axis_tcp_close_connection_V_data_V"}]},
			{"Name" : "m_axis_tcp_close_connection_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "tie_off_tcp_close_con_U0", "Port" : "m_axis_tcp_close_connection_V_keep_V"}]},
			{"Name" : "m_axis_tcp_close_connection_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "tie_off_tcp_close_con_U0", "Port" : "m_axis_tcp_close_connection_V_strb_V"}]},
			{"Name" : "m_axis_tcp_close_connection_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "tie_off_tcp_close_con_U0", "Port" : "m_axis_tcp_close_connection_V_last_V"}]},
			{"Name" : "s_axis_tcp_notification_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_notification_V_data_V"}]},
			{"Name" : "s_axis_tcp_notification_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_notification_V_keep_V"}]},
			{"Name" : "s_axis_tcp_notification_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_notification_V_strb_V"}]},
			{"Name" : "s_axis_tcp_notification_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_notification_V_last_V"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "m_axis_tcp_read_pkg_V_data_V"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "m_axis_tcp_read_pkg_V_keep_V"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "m_axis_tcp_read_pkg_V_strb_V"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "m_axis_tcp_read_pkg_V_last_V"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_rx_meta_V_data_V"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_rx_meta_V_keep_V"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_rx_meta_V_strb_V"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_rx_meta_V_last_V"}]},
			{"Name" : "s_axis_tcp_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_rx_data_V_data_V"}]},
			{"Name" : "s_axis_tcp_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_rx_data_V_keep_V"}]},
			{"Name" : "s_axis_tcp_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_rx_data_V_strb_V"}]},
			{"Name" : "s_axis_tcp_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_axis_tcp_rx_data_V_last_V"}]},
			{"Name" : "m_axis_tcp_tx_meta_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "m_axis_tcp_tx_meta_V_data_V"}]},
			{"Name" : "m_axis_tcp_tx_meta_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "m_axis_tcp_tx_meta_V_keep_V"}]},
			{"Name" : "m_axis_tcp_tx_meta_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "m_axis_tcp_tx_meta_V_strb_V"}]},
			{"Name" : "m_axis_tcp_tx_meta_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "m_axis_tcp_tx_meta_V_last_V"}]},
			{"Name" : "m_axis_tcp_tx_data_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "m_axis_tcp_tx_data_V_data_V"}]},
			{"Name" : "m_axis_tcp_tx_data_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "m_axis_tcp_tx_data_V_keep_V"}]},
			{"Name" : "m_axis_tcp_tx_data_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "m_axis_tcp_tx_data_V_strb_V"}]},
			{"Name" : "m_axis_tcp_tx_data_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "m_axis_tcp_tx_data_V_last_V"}]},
			{"Name" : "s_axis_tcp_tx_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "s_axis_tcp_tx_status_V_data_V"}]},
			{"Name" : "s_axis_tcp_tx_status_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "s_axis_tcp_tx_status_V_keep_V"}]},
			{"Name" : "s_axis_tcp_tx_status_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "s_axis_tcp_tx_status_V_strb_V"}]},
			{"Name" : "s_axis_tcp_tx_status_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "tie_off_tcp_tx_U0", "Port" : "s_axis_tcp_tx_status_V_last_V"}]},
			{"Name" : "useConn", "Type" : "None", "Direction" : "I"},
			{"Name" : "basePort", "Type" : "None", "Direction" : "I"},
			{"Name" : "delay", "Type" : "None", "Direction" : "I"},
			{"Name" : "expectedRxByteCnt", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_time", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_data_net_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "partition_U0", "Port" : "s_data_net_out"},
					{"ID" : "15", "SubInstance" : "recvData_U0", "Port" : "s_data_net_out"}]},
			{"Name" : "s_data_cal", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "prepare_sha_U0", "Port" : "s_data_cal"},
					{"ID" : "21", "SubInstance" : "partition_U0", "Port" : "s_data_cal"}]},
			{"Name" : "s_data_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "consumetrans_U0", "Port" : "s_data_out"},
					{"ID" : "21", "SubInstance" : "partition_U0", "Port" : "s_data_out"}]},
			{"Name" : "endMsgLenStrm", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "mysha_U0", "Port" : "endMsgLenStrm"},
					{"ID" : "24", "SubInstance" : "prepare_sha_U0", "Port" : "endMsgLenStrm"}]},
			{"Name" : "msgLenStrm", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "mysha_U0", "Port" : "msgLenStrm"},
					{"ID" : "24", "SubInstance" : "prepare_sha_U0", "Port" : "msgLenStrm"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "mysha_U0", "Port" : "msgStrm"},
					{"ID" : "24", "SubInstance" : "prepare_sha_U0", "Port" : "msgStrm"}]},
			{"Name" : "sha_in", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "mysha_U0", "Port" : "sha_in"},
					{"ID" : "24", "SubInstance" : "prepare_sha_U0", "Port" : "sha_in"}]},
			{"Name" : "sha_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "mysha_U0", "Port" : "sha_out"},
					{"ID" : "31", "SubInstance" : "prepare_aes_U0", "Port" : "sha_out"}]},
			{"Name" : "roundIndex", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "mysha_U0", "Port" : "roundIndex"}]},
			{"Name" : "digestStrm", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "mysha_U0", "Port" : "digestStrm"},
					{"ID" : "30", "SubInstance" : "consumesha_U0", "Port" : "digestStrm"}]},
			{"Name" : "endDigestStrm", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "mysha_U0", "Port" : "endDigestStrm"},
					{"ID" : "30", "SubInstance" : "consumesha_U0", "Port" : "endDigestStrm"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "myaes_U0", "Port" : "decipher_0_2"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "myaes_U0", "Port" : "Rcon"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "myaes_U0", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "myaes_U0", "Port" : "decipher_0_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_recv_krnl_entry3_U0", "Parent" : "0",
		"CDFG" : "hls_recv_krnl_entry3",
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
			{"Name" : "useConn", "Type" : "None", "Direction" : "I"},
			{"Name" : "basePort", "Type" : "None", "Direction" : "I"},
			{"Name" : "expectedRxByteCnt", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_time", "Type" : "None", "Direction" : "I"},
			{"Name" : "useConn_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "basePort_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRxByteCnt_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRxByteCnt_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_time_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_time_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_recv_krnl_entry45_U0", "Parent" : "0",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_hls_recv_krnl_entry45_U0_U",
		"Port" : [
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "basePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRxByteCnt", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRxByteCnt_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_time", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_time_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "basePort_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRxByteCnt_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRxByteCnt_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expectedRxByteCnt_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRxByteCnt_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_time_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_time_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_split11_proc_U0", "Parent" : "0",
		"CDFG" : "Block_split11_proc",
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
		"StartSource" : "4",
		"StartFifo" : "start_for_Block_split11_proc_U0_U",
		"Port" : [
			{"Name" : "expectedRxByteCnt", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expectedRxByteCnt_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_listenPorts_U0_U",
		"InputProcess" : [
			{"ID" : "7", "Name" : "listenPorts_entry37_U0"}],
		"OutputProcess" : [
			{"ID" : "9", "Name" : "listen_port_handler_U0"},
			{"ID" : "10", "Name" : "port_status_handler_U0"}],
		"Port" : [
			{"Name" : "basePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "listenPorts_entry37_U0", "Port" : "basePort"}]},
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "listenPorts_entry37_U0", "Port" : "useConn"}]},
			{"Name" : "m_axis_tcp_listen_port_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "listen_port_handler_U0", "Port" : "m_axis_tcp_listen_port_V_data_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "listen_port_handler_U0", "Port" : "m_axis_tcp_listen_port_V_keep_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "listen_port_handler_U0", "Port" : "m_axis_tcp_listen_port_V_strb_V"}]},
			{"Name" : "m_axis_tcp_listen_port_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "listen_port_handler_U0", "Port" : "m_axis_tcp_listen_port_V_last_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "port_status_handler_U0", "Port" : "s_axis_tcp_port_status_V_data_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "port_status_handler_U0", "Port" : "s_axis_tcp_port_status_V_keep_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "port_status_handler_U0", "Port" : "s_axis_tcp_port_status_V_strb_V"}]},
			{"Name" : "s_axis_tcp_port_status_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "port_status_handler_U0", "Port" : "s_axis_tcp_port_status_V_last_V"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0.listenPorts_entry37_U0", "Parent" : "6",
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
			{"Name" : "basePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "basePort_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "12", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "useConn_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0.listenPorts_Block_split2_proc_U0", "Parent" : "6",
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
			{"Name" : "basePort", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "basePort_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0.listen_port_handler_U0", "Parent" : "6",
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
			{"Name" : "basePort", "Type" : "None", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "12", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_listen_port_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_listen_port_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_listen_port_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_listen_port_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_listen_port_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0.port_status_handler_U0", "Parent" : "6",
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
			{"Name" : "useConn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "useConn_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_port_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tcp_port_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_port_status_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_port_status_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_port_status_V_last_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0.basePort_c_i_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0.useConn_c_i_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0.useConn_c8_i_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.listenPorts_U0.basePort_cast_loc_i_channel_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recvData_U0", "Parent" : "0", "Child" : ["16", "17", "18", "19"],
		"CDFG" : "recvData",
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
		"StartSource" : "4",
		"StartFifo" : "start_for_recvData_U0_U",
		"InputProcess" : [
			{"ID" : "16", "Name" : "recvData_handshake_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "recvData_handshake_U0"},
			{"ID" : "17", "Name" : "recvData_consumeData_U0"}],
		"Port" : [
			{"Name" : "expRxBytePerSession", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "expRxBytePerSession"}]},
			{"Name" : "s_axis_tcp_notification_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "s_axis_tcp_notification_V_data_V"}]},
			{"Name" : "s_axis_tcp_notification_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "s_axis_tcp_notification_V_keep_V"}]},
			{"Name" : "s_axis_tcp_notification_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "s_axis_tcp_notification_V_strb_V"}]},
			{"Name" : "s_axis_tcp_notification_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "s_axis_tcp_notification_V_last_V"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "m_axis_tcp_read_pkg_V_data_V"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "m_axis_tcp_read_pkg_V_keep_V"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "m_axis_tcp_read_pkg_V_strb_V"}]},
			{"Name" : "m_axis_tcp_read_pkg_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "recvData_handshake_U0", "Port" : "m_axis_tcp_read_pkg_V_last_V"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_axis_tcp_rx_meta_V_data_V"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_axis_tcp_rx_meta_V_keep_V"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_axis_tcp_rx_meta_V_strb_V"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_axis_tcp_rx_meta_V_last_V"}]},
			{"Name" : "s_axis_tcp_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_axis_tcp_rx_data_V_data_V"}]},
			{"Name" : "s_axis_tcp_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_axis_tcp_rx_data_V_keep_V"}]},
			{"Name" : "s_axis_tcp_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_axis_tcp_rx_data_V_strb_V"}]},
			{"Name" : "s_axis_tcp_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_axis_tcp_rx_data_V_last_V"}]},
			{"Name" : "s_data_net_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "recvData_consumeData_U0", "Port" : "s_data_net_out"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.recvData_U0.recvData_handshake_U0", "Parent" : "15",
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
			{"Name" : "nextRxPacketLength3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "18", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nextRxPacketLength3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expRxBytePerSession", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
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
			{"Name" : "expRxBytePerSession_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expRxBytePerSession_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.recvData_U0.recvData_consumeData_U0", "Parent" : "15",
		"CDFG" : "recvData_consumeData",
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
			{"Name" : "nextRxPacketLength3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "18", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nextRxPacketLength3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "expRxBytePerSession", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "expRxBytePerSession_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tcp_rx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_rx_meta_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_rx_meta_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_rx_meta_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_rx_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tcp_rx_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_rx_data_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_rx_data_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_rx_data_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_data_net_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_data_net_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.recvData_U0.nextRxPacketLength_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.recvData_U0.expRxBytePerSession_c_i_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.backgroundclock_U0", "Parent" : "0",
		"CDFG" : "backgroundclock",
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
		"StartSource" : "4",
		"StartFifo" : "start_for_backgroundclock_U0_U",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "timesha", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timesha_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "timeaes", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timeaes_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_time", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_time_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partition_U0", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "partition",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_partition_U0_U",
		"InputProcess" : [
			{"ID" : "22", "Name" : "partition_Loop_VITIS_LOOP_71_1_proc2761_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "partition_Loop_VITIS_LOOP_71_1_proc2761_U0"}],
		"Port" : [
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "partition_Loop_VITIS_LOOP_71_1_proc2761_U0", "Port" : "scalar_ComputeWordCnt_loc"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "partition_Loop_VITIS_LOOP_71_1_proc2761_U0", "Port" : "ComputeWordCnt_loc_out"}]},
			{"Name" : "ComputeWordCnt_loc_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "partition_Loop_VITIS_LOOP_71_1_proc2761_U0", "Port" : "ComputeWordCnt_loc_out1"}]},
			{"Name" : "s_data_net_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "partition_Loop_VITIS_LOOP_71_1_proc2761_U0", "Port" : "s_data_net_out"}]},
			{"Name" : "s_data_cal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "partition_Loop_VITIS_LOOP_71_1_proc2761_U0", "Port" : "s_data_cal"}]},
			{"Name" : "s_data_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "partition_Loop_VITIS_LOOP_71_1_proc2761_U0", "Port" : "s_data_out"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0", "Parent" : "21",
		"CDFG" : "partition_Loop_VITIS_LOOP_71_1_proc2761",
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
			{"Name" : "scalar_ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "scalar_ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_data_net_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_data_net_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_data_cal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_data_cal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_data_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_data_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.consumetrans_U0", "Parent" : "0",
		"CDFG" : "consumetrans",
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
		"StartSource" : "21",
		"StartFifo" : "start_for_consumetrans_U0_U",
		"Port" : [
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_data_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_data_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.prepare_sha_U0", "Parent" : "0",
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
		"StartSource" : "21",
		"StartFifo" : "start_for_prepare_sha_U0_U",
		"Port" : [
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_data_cal", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_data_cal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endMsgLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "118", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endMsgLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "msgLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "msgStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sha_in", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sha_in_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mysha_U0", "Parent" : "0", "Child" : ["26"],
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
		"StartSource" : "24",
		"StartFifo" : "start_for_mysha_U0_U",
		"Port" : [
			{"Name" : "timesha", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timesha_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sha_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sha_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sha_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sha_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endMsgLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "118", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "endMsgLenStrm"}]},
			{"Name" : "msgLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "msgLenStrm"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "msgStrm"}]},
			{"Name" : "roundIndex", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "roundIndex"}]},
			{"Name" : "digestStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "digestStrm"}]},
			{"Name" : "endDigestStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "126", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_sha3Digest_32u_s_fu_120", "Port" : "endDigestStrm"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mysha_U0.grp_sha3Digest_32u_s_fu_120", "Parent" : "25", "Child" : ["27", "29"],
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
					{"ID" : "27", "SubInstance" : "grp_KECCAK_f_fu_1204", "Port" : "roundIndex"}]},
			{"Name" : "digestStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "digestStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endDigestStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "endDigestStrm_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.mysha_U0.grp_sha3Digest_32u_s_fu_120.grp_KECCAK_f_fu_1204", "Parent" : "26", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.mysha_U0.grp_sha3Digest_32u_s_fu_120.grp_KECCAK_f_fu_1204.roundIndex_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.mysha_U0.grp_sha3Digest_32u_s_fu_120.udiv_128ns_9ns_128_132_1_U144", "Parent" : "26"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.consumesha_U0", "Parent" : "0",
		"CDFG" : "consumesha",
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
		"StartSource" : "25",
		"StartFifo" : "start_for_consumesha_U0_U",
		"Port" : [
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endDigestStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "126", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endDigestStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "digestStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "digestStrm_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.prepare_aes_U0", "Parent" : "0",
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
		"StartSource" : "25",
		"StartFifo" : "start_for_prepare_aes_U0_U",
		"Port" : [
			{"Name" : "ciphertextStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ciphertextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endCiphertextStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "128", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endCiphertextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "IVStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sha_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sha_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myaes_U0", "Parent" : "0", "Child" : ["33", "36"],
		"CDFG" : "myaes",
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
		"StartSource" : "31",
		"StartFifo" : "start_for_myaes_U0_U",
		"Port" : [
			{"Name" : "ciphertextStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ciphertextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endCiphertextStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "128", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endCiphertextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "IVStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "plaintextStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "plaintextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endPlaintextStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "133", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endPlaintextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "timeaes", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "timeaes_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "55", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_updateKey_fu_289", "Port" : "decipher_0_2"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_updateKey_fu_289", "Port" : "Rcon"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_r_fu_264", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_r_fu_264", "Port" : "decipher_0_1"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_process_r_fu_264", "Parent" : "32", "Child" : ["34", "35"],
		"CDFG" : "process_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
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
			{"Name" : "ciphertext", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decipher_0_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_process_r_fu_264.decipher_0_3_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_process_r_fu_264.decipher_0_1_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289", "Parent" : "32", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
		"CDFG" : "updateKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
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
			{"Name" : "cipherkey", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.decipher_0_2_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.Rcon_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_1_1_1_U172", "Parent" : "36"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_1_1_1_U173", "Parent" : "36"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_1_1_1_U174", "Parent" : "36"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_1_1_1_U175", "Parent" : "36"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_1_1_1_U176", "Parent" : "36"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_1_1_1_U177", "Parent" : "36"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_1_1_1_U178", "Parent" : "36"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_1_1_1_U179", "Parent" : "36"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_128_1_1_U180", "Parent" : "36"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_128_1_1_U181", "Parent" : "36"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_128_1_1_U182", "Parent" : "36"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_128_1_1_U183", "Parent" : "36"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_128_1_1_U184", "Parent" : "36"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_128_1_1_U185", "Parent" : "36"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_128_1_1_U186", "Parent" : "36"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myaes_U0.grp_updateKey_fu_289.mux_164_128_1_1_U187", "Parent" : "36"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.consumeaes_U0", "Parent" : "0",
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
		"StartSource" : "32",
		"StartFifo" : "start_for_consumeaes_U0_U",
		"Port" : [
			{"Name" : "plaintextStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "plaintextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endPlaintextStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "133", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "endPlaintextStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ComputeWordCnt_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ComputeWordCnt_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0", "Parent" : "0", "Child" : ["57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "tie_off_tcp_open_connection",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "m_axis_tcp_open_connection_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_open_connection_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_open_connection_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_open_connection_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_open_connection_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "s_axis_tcp_open_status_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_tcp_open_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_tcp_open_status_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_open_status_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_tcp_open_status_V_last_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0.regslice_both_m_axis_tcp_open_connection_V_data_V_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0.regslice_both_m_axis_tcp_open_connection_V_keep_V_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0.regslice_both_m_axis_tcp_open_connection_V_strb_V_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0.regslice_both_m_axis_tcp_open_connection_V_last_V_U", "Parent" : "56"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0.regslice_both_s_axis_tcp_open_status_V_data_V_U", "Parent" : "56"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0.regslice_both_s_axis_tcp_open_status_V_keep_V_U", "Parent" : "56"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0.regslice_both_s_axis_tcp_open_status_V_strb_V_U", "Parent" : "56"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_open_connection_U0.regslice_both_s_axis_tcp_open_status_V_last_V_U", "Parent" : "56"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0", "Parent" : "0", "Child" : ["66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
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
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_m_axis_tcp_tx_meta_V_data_V_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_m_axis_tcp_tx_meta_V_keep_V_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_m_axis_tcp_tx_meta_V_strb_V_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_m_axis_tcp_tx_meta_V_last_V_U", "Parent" : "65"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_m_axis_tcp_tx_data_V_data_V_U", "Parent" : "65"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_m_axis_tcp_tx_data_V_keep_V_U", "Parent" : "65"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_m_axis_tcp_tx_data_V_strb_V_U", "Parent" : "65"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_m_axis_tcp_tx_data_V_last_V_U", "Parent" : "65"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_s_axis_tcp_tx_status_V_data_V_U", "Parent" : "65"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_s_axis_tcp_tx_status_V_keep_V_U", "Parent" : "65"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_s_axis_tcp_tx_status_V_strb_V_U", "Parent" : "65"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_tx_U0.regslice_both_s_axis_tcp_tx_status_V_last_V_U", "Parent" : "65"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0", "Parent" : "0", "Child" : ["79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
		"CDFG" : "tie_off_udp",
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
			{"Name" : "s_axis_udp_rx_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_udp_rx_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_udp_rx_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_udp_rx_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_udp_rx_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "m_axis_udp_tx_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_udp_tx_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_udp_tx_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_udp_tx_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_udp_tx_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "s_axis_udp_rx_meta_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_udp_rx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_udp_rx_meta_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_udp_rx_meta_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_udp_rx_meta_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "m_axis_udp_tx_meta_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_udp_tx_meta_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_udp_tx_meta_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_udp_tx_meta_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_udp_tx_meta_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_s_axis_udp_rx_V_data_V_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_s_axis_udp_rx_V_keep_V_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_s_axis_udp_rx_V_strb_V_U", "Parent" : "78"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_s_axis_udp_rx_V_last_V_U", "Parent" : "78"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_m_axis_udp_tx_V_data_V_U", "Parent" : "78"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_m_axis_udp_tx_V_keep_V_U", "Parent" : "78"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_m_axis_udp_tx_V_strb_V_U", "Parent" : "78"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_m_axis_udp_tx_V_last_V_U", "Parent" : "78"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_s_axis_udp_rx_meta_V_data_V_U", "Parent" : "78"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_s_axis_udp_rx_meta_V_keep_V_U", "Parent" : "78"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_s_axis_udp_rx_meta_V_strb_V_U", "Parent" : "78"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_s_axis_udp_rx_meta_V_last_V_U", "Parent" : "78"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_m_axis_udp_tx_meta_V_data_V_U", "Parent" : "78"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_m_axis_udp_tx_meta_V_keep_V_U", "Parent" : "78"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_m_axis_udp_tx_meta_V_strb_V_U", "Parent" : "78"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_udp_U0.regslice_both_m_axis_udp_tx_meta_V_last_V_U", "Parent" : "78"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_close_con_U0", "Parent" : "0", "Child" : ["96", "97", "98", "99"],
		"CDFG" : "tie_off_tcp_close_con",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "m_axis_tcp_close_connection_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_tcp_close_connection_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_tcp_close_connection_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_close_connection_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_tcp_close_connection_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_close_con_U0.regslice_both_m_axis_tcp_close_connection_V_data_V_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_close_con_U0.regslice_both_m_axis_tcp_close_connection_V_keep_V_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_close_con_U0.regslice_both_m_axis_tcp_close_connection_V_strb_V_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tie_off_tcp_close_con_U0.regslice_both_m_axis_tcp_close_connection_V_last_V_U", "Parent" : "95"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.useConn_c1_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.basePort_c2_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expectedRxByteCnt_c3_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_time_c4_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.useConn_c_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.basePort_c_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expectedRxByteCnt_c_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expectedRxByteCnt_c44_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_time_c_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ComputeWordCnt_loc_c_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_data_net_out_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.timesha_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.timeaes_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ComputeWordCnt_loc_c45_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ComputeWordCnt_loc_c46_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_data_cal_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_data_out_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ComputeWordCnt_loc_c47_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endMsgLenStrm_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.msgLenStrm_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.msgStrm_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha_in_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ComputeWordCnt_loc_c48_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ComputeWordCnt_loc_c49_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha_out_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digestStrm_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endDigestStrm_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ciphertextStrm_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endCiphertextStrm_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipherkeyStrm_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IVStrm_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ComputeWordCnt_loc_c50_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.plaintextStrm_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endPlaintextStrm_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ComputeWordCnt_loc_c51_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_hls_recv_krnl_entry45_U0_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_split11_proc_U0_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_listenPorts_U0_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_recvData_U0_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_backgroundclock_U0_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_partition_U0_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_consumetrans_U0_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_prepare_sha_U0_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_mysha_U0_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_consumesha_U0_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_prepare_aes_U0_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_myaes_U0_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_consumeaes_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hls_recv_krnl {
		gmem {Type O LastRead 7 FirstWrite 4}
		s_axis_udp_rx_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_udp_rx_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_udp_rx_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_udp_rx_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_udp_tx_V_data_V {Type O LastRead -1 FirstWrite 0}
		m_axis_udp_tx_V_keep_V {Type O LastRead -1 FirstWrite 0}
		m_axis_udp_tx_V_strb_V {Type O LastRead -1 FirstWrite 0}
		m_axis_udp_tx_V_last_V {Type O LastRead -1 FirstWrite 0}
		s_axis_udp_rx_meta_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_udp_rx_meta_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_udp_rx_meta_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_udp_rx_meta_V_last_V {Type I LastRead 1 FirstWrite -1}
		m_axis_udp_tx_meta_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_tx_meta_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_tx_meta_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_tx_meta_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_tcp_listen_port_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_listen_port_V_last_V {Type O LastRead -1 FirstWrite 2}
		s_axis_tcp_port_status_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_port_status_V_last_V {Type I LastRead 1 FirstWrite -1}
		m_axis_tcp_open_connection_V_data_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_open_connection_V_keep_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_open_connection_V_strb_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_open_connection_V_last_V {Type O LastRead -1 FirstWrite 0}
		s_axis_tcp_open_status_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_open_status_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_open_status_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_open_status_V_last_V {Type I LastRead 1 FirstWrite -1}
		m_axis_tcp_close_connection_V_data_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_close_connection_V_keep_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_close_connection_V_strb_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_close_connection_V_last_V {Type O LastRead -1 FirstWrite 0}
		s_axis_tcp_notification_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_last_V {Type I LastRead 1 FirstWrite -1}
		m_axis_tcp_read_pkg_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_last_V {Type O LastRead -1 FirstWrite 2}
		s_axis_tcp_rx_meta_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_data_V_data_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_keep_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_strb_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_last_V {Type I LastRead 2 FirstWrite -1}
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
		s_axis_tcp_tx_status_V_last_V {Type I LastRead 2 FirstWrite -1}
		useConn {Type I LastRead 0 FirstWrite -1}
		basePort {Type I LastRead 0 FirstWrite -1}
		delay {Type I LastRead -1 FirstWrite -1}
		expectedRxByteCnt {Type I LastRead 0 FirstWrite -1}
		out_time {Type I LastRead 0 FirstWrite -1}
		s_data_net_out {Type IO LastRead -1 FirstWrite -1}
		s_data_cal {Type IO LastRead -1 FirstWrite -1}
		s_data_out {Type IO LastRead -1 FirstWrite -1}
		endMsgLenStrm {Type IO LastRead -1 FirstWrite -1}
		msgLenStrm {Type IO LastRead -1 FirstWrite -1}
		msgStrm {Type IO LastRead -1 FirstWrite -1}
		sha_in {Type IO LastRead -1 FirstWrite -1}
		sha_out {Type IO LastRead -1 FirstWrite -1}
		roundIndex {Type I LastRead -1 FirstWrite -1}
		digestStrm {Type IO LastRead -1 FirstWrite -1}
		endDigestStrm {Type IO LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_1 {Type I LastRead -1 FirstWrite -1}}
	hls_recv_krnl_entry3 {
		useConn {Type I LastRead 0 FirstWrite -1}
		basePort {Type I LastRead 0 FirstWrite -1}
		expectedRxByteCnt {Type I LastRead 0 FirstWrite -1}
		out_time {Type I LastRead 0 FirstWrite -1}
		useConn_out {Type O LastRead -1 FirstWrite 0}
		basePort_out {Type O LastRead -1 FirstWrite 0}
		expectedRxByteCnt_out {Type O LastRead -1 FirstWrite 0}
		out_time_out {Type O LastRead -1 FirstWrite 0}}
	hls_recv_krnl_entry45 {
		useConn {Type I LastRead 0 FirstWrite -1}
		basePort {Type I LastRead 0 FirstWrite -1}
		expectedRxByteCnt {Type I LastRead 0 FirstWrite -1}
		out_time {Type I LastRead 0 FirstWrite -1}
		useConn_out {Type O LastRead -1 FirstWrite 0}
		basePort_out {Type O LastRead -1 FirstWrite 0}
		expectedRxByteCnt_out {Type O LastRead -1 FirstWrite 0}
		expectedRxByteCnt_out1 {Type O LastRead -1 FirstWrite 0}
		out_time_out {Type O LastRead -1 FirstWrite 0}}
	Block_split11_proc {
		expectedRxByteCnt {Type I LastRead 0 FirstWrite -1}
		ComputeWordCnt_out_out {Type O LastRead -1 FirstWrite 0}}
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
		s_axis_tcp_port_status_V_last_V {Type I LastRead 1 FirstWrite -1}}
	recvData {
		expRxBytePerSession {Type I LastRead 0 FirstWrite -1}
		s_axis_tcp_notification_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_notification_V_last_V {Type I LastRead 1 FirstWrite -1}
		m_axis_tcp_read_pkg_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_tcp_read_pkg_V_last_V {Type O LastRead -1 FirstWrite 2}
		s_axis_tcp_rx_meta_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_data_V_data_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_keep_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_strb_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_last_V {Type I LastRead 2 FirstWrite -1}
		s_data_net_out {Type O LastRead -1 FirstWrite 2}}
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
		expRxBytePerSession_out {Type O LastRead -1 FirstWrite 0}}
	recvData_consumeData {
		nextRxPacketLength3 {Type I LastRead 1 FirstWrite -1}
		expRxBytePerSession {Type I LastRead 0 FirstWrite -1}
		s_axis_tcp_rx_meta_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_meta_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_rx_data_V_data_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_keep_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_strb_V {Type I LastRead 2 FirstWrite -1}
		s_axis_tcp_rx_data_V_last_V {Type I LastRead 2 FirstWrite -1}
		s_data_net_out {Type O LastRead -1 FirstWrite 2}}
	backgroundclock {
		gmem {Type O LastRead 7 FirstWrite 4}
		timesha {Type I LastRead 1 FirstWrite -1}
		timeaes {Type I LastRead 1 FirstWrite -1}
		out_time {Type I LastRead 0 FirstWrite -1}}
	partition {
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		ComputeWordCnt_loc_out {Type O LastRead -1 FirstWrite 0}
		ComputeWordCnt_loc_out1 {Type O LastRead -1 FirstWrite 0}
		s_data_net_out {Type I LastRead 2 FirstWrite -1}
		s_data_cal {Type O LastRead -1 FirstWrite 2}
		s_data_out {Type O LastRead -1 FirstWrite 2}}
	partition_Loop_VITIS_LOOP_71_1_proc2761 {
		scalar_ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		ComputeWordCnt_loc_out {Type O LastRead -1 FirstWrite 0}
		ComputeWordCnt_loc_out1 {Type O LastRead -1 FirstWrite 0}
		s_data_net_out {Type I LastRead 2 FirstWrite -1}
		s_data_cal {Type O LastRead -1 FirstWrite 2}
		s_data_out {Type O LastRead -1 FirstWrite 2}}
	consumetrans {
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		s_data_out {Type I LastRead 2 FirstWrite -1}}
	prepare_sha {
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		ComputeWordCnt_loc_out {Type O LastRead -1 FirstWrite 0}
		s_data_cal {Type I LastRead 1 FirstWrite -1}
		endMsgLenStrm {Type O LastRead -1 FirstWrite 1}
		msgLenStrm {Type O LastRead -1 FirstWrite 1}
		msgStrm {Type O LastRead -1 FirstWrite 1}
		sha_in {Type O LastRead -1 FirstWrite 1}}
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
		roundIndex {Type I LastRead -1 FirstWrite -1}}
	consumesha {
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		endDigestStrm {Type I LastRead 2 FirstWrite -1}
		digestStrm {Type I LastRead 3 FirstWrite -1}}
	prepare_aes {
		ciphertextStrm {Type O LastRead -1 FirstWrite 2}
		endCiphertextStrm {Type O LastRead -1 FirstWrite 2}
		cipherkeyStrm {Type O LastRead -1 FirstWrite 2}
		IVStrm {Type O LastRead -1 FirstWrite 2}
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		ComputeWordCnt_loc_out {Type O LastRead -1 FirstWrite 0}
		sha_out {Type I LastRead 2 FirstWrite -1}}
	myaes {
		ciphertextStrm {Type I LastRead 7 FirstWrite -1}
		endCiphertextStrm {Type I LastRead 6 FirstWrite -1}
		cipherkeyStrm {Type I LastRead 4 FirstWrite -1}
		IVStrm {Type I LastRead 4 FirstWrite -1}
		plaintextStrm {Type O LastRead -1 FirstWrite 30}
		endPlaintextStrm {Type O LastRead -1 FirstWrite 3}
		timeaes {Type O LastRead -1 FirstWrite 3}
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}
		ComputeWordCnt_loc_out {Type O LastRead -1 FirstWrite 0}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_1 {Type I LastRead -1 FirstWrite -1}}
	process_r {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		ciphertext {Type I LastRead 0 FirstWrite -1}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_1 {Type I LastRead -1 FirstWrite -1}}
	updateKey {
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		cipherkey {Type I LastRead 0 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	consumeaes {
		plaintextStrm {Type I LastRead 3 FirstWrite -1}
		endPlaintextStrm {Type I LastRead 2 FirstWrite -1}
		ComputeWordCnt_loc {Type I LastRead 0 FirstWrite -1}}
	tie_off_tcp_open_connection {
		m_axis_tcp_open_connection_V_data_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_open_connection_V_keep_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_open_connection_V_strb_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_open_connection_V_last_V {Type O LastRead -1 FirstWrite 0}
		s_axis_tcp_open_status_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_open_status_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_open_status_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_tcp_open_status_V_last_V {Type I LastRead 1 FirstWrite -1}}
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
		s_axis_tcp_tx_status_V_last_V {Type I LastRead 2 FirstWrite -1}}
	tie_off_udp {
		s_axis_udp_rx_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_udp_rx_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_udp_rx_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_udp_rx_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_udp_tx_V_data_V {Type O LastRead -1 FirstWrite 0}
		m_axis_udp_tx_V_keep_V {Type O LastRead -1 FirstWrite 0}
		m_axis_udp_tx_V_strb_V {Type O LastRead -1 FirstWrite 0}
		m_axis_udp_tx_V_last_V {Type O LastRead -1 FirstWrite 0}
		s_axis_udp_rx_meta_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_udp_rx_meta_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_udp_rx_meta_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_udp_rx_meta_V_last_V {Type I LastRead 1 FirstWrite -1}
		m_axis_udp_tx_meta_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_tx_meta_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_tx_meta_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_udp_tx_meta_V_last_V {Type O LastRead -1 FirstWrite 1}}
	tie_off_tcp_close_con {
		m_axis_tcp_close_connection_V_data_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_close_connection_V_keep_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_close_connection_V_strb_V {Type O LastRead -1 FirstWrite 0}
		m_axis_tcp_close_connection_V_last_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 64 }  { m_axi_gmem_WSTRB STRB 1 8 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 64 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	s_axis_udp_rx_V_data_V { axis {  { s_axis_udp_rx_TDATA in_data 0 512 } } }
	s_axis_udp_rx_V_keep_V { axis {  { s_axis_udp_rx_TKEEP in_data 0 64 } } }
	s_axis_udp_rx_V_strb_V { axis {  { s_axis_udp_rx_TSTRB in_data 0 64 } } }
	s_axis_udp_rx_V_last_V { axis {  { s_axis_udp_rx_TLAST in_data 0 1 }  { s_axis_udp_rx_TVALID in_vld 0 1 }  { s_axis_udp_rx_TREADY in_acc 1 1 } } }
	m_axis_udp_tx_V_data_V { axis {  { m_axis_udp_tx_TDATA out_data 1 512 } } }
	m_axis_udp_tx_V_keep_V { axis {  { m_axis_udp_tx_TKEEP out_data 1 64 } } }
	m_axis_udp_tx_V_strb_V { axis {  { m_axis_udp_tx_TSTRB out_data 1 64 } } }
	m_axis_udp_tx_V_last_V { axis {  { m_axis_udp_tx_TLAST out_data 1 1 }  { m_axis_udp_tx_TVALID out_vld 1 1 }  { m_axis_udp_tx_TREADY out_acc 0 1 } } }
	s_axis_udp_rx_meta_V_data_V { axis {  { s_axis_udp_rx_meta_TDATA in_data 0 256 } } }
	s_axis_udp_rx_meta_V_keep_V { axis {  { s_axis_udp_rx_meta_TKEEP in_data 0 32 } } }
	s_axis_udp_rx_meta_V_strb_V { axis {  { s_axis_udp_rx_meta_TSTRB in_data 0 32 } } }
	s_axis_udp_rx_meta_V_last_V { axis {  { s_axis_udp_rx_meta_TLAST in_data 0 1 }  { s_axis_udp_rx_meta_TVALID in_vld 0 1 }  { s_axis_udp_rx_meta_TREADY in_acc 1 1 } } }
	m_axis_udp_tx_meta_V_data_V { axis {  { m_axis_udp_tx_meta_TDATA out_data 1 256 } } }
	m_axis_udp_tx_meta_V_keep_V { axis {  { m_axis_udp_tx_meta_TKEEP out_data 1 32 } } }
	m_axis_udp_tx_meta_V_strb_V { axis {  { m_axis_udp_tx_meta_TSTRB out_data 1 32 } } }
	m_axis_udp_tx_meta_V_last_V { axis {  { m_axis_udp_tx_meta_TLAST out_data 1 1 }  { m_axis_udp_tx_meta_TVALID out_vld 1 1 }  { m_axis_udp_tx_meta_TREADY out_acc 0 1 } } }
	m_axis_tcp_listen_port_V_data_V { axis {  { m_axis_tcp_listen_port_TDATA out_data 1 16 } } }
	m_axis_tcp_listen_port_V_keep_V { axis {  { m_axis_tcp_listen_port_TKEEP out_data 1 2 } } }
	m_axis_tcp_listen_port_V_strb_V { axis {  { m_axis_tcp_listen_port_TSTRB out_data 1 2 } } }
	m_axis_tcp_listen_port_V_last_V { axis {  { m_axis_tcp_listen_port_TLAST out_data 1 1 }  { m_axis_tcp_listen_port_TVALID out_vld 1 1 }  { m_axis_tcp_listen_port_TREADY out_acc 0 1 } } }
	s_axis_tcp_port_status_V_data_V { axis {  { s_axis_tcp_port_status_TDATA in_data 0 8 } } }
	s_axis_tcp_port_status_V_keep_V { axis {  { s_axis_tcp_port_status_TKEEP in_data 0 1 } } }
	s_axis_tcp_port_status_V_strb_V { axis {  { s_axis_tcp_port_status_TSTRB in_data 0 1 } } }
	s_axis_tcp_port_status_V_last_V { axis {  { s_axis_tcp_port_status_TLAST in_data 0 1 }  { s_axis_tcp_port_status_TVALID in_vld 0 1 }  { s_axis_tcp_port_status_TREADY in_acc 1 1 } } }
	m_axis_tcp_open_connection_V_data_V { axis {  { m_axis_tcp_open_connection_TDATA out_data 1 64 } } }
	m_axis_tcp_open_connection_V_keep_V { axis {  { m_axis_tcp_open_connection_TKEEP out_data 1 8 } } }
	m_axis_tcp_open_connection_V_strb_V { axis {  { m_axis_tcp_open_connection_TSTRB out_data 1 8 } } }
	m_axis_tcp_open_connection_V_last_V { axis {  { m_axis_tcp_open_connection_TLAST out_data 1 1 }  { m_axis_tcp_open_connection_TVALID out_vld 1 1 }  { m_axis_tcp_open_connection_TREADY out_acc 0 1 } } }
	s_axis_tcp_open_status_V_data_V { axis {  { s_axis_tcp_open_status_TDATA in_data 0 128 } } }
	s_axis_tcp_open_status_V_keep_V { axis {  { s_axis_tcp_open_status_TKEEP in_data 0 16 } } }
	s_axis_tcp_open_status_V_strb_V { axis {  { s_axis_tcp_open_status_TSTRB in_data 0 16 } } }
	s_axis_tcp_open_status_V_last_V { axis {  { s_axis_tcp_open_status_TLAST in_data 0 1 }  { s_axis_tcp_open_status_TVALID in_vld 0 1 }  { s_axis_tcp_open_status_TREADY in_acc 1 1 } } }
	m_axis_tcp_close_connection_V_data_V { axis {  { m_axis_tcp_close_connection_TDATA out_data 1 16 } } }
	m_axis_tcp_close_connection_V_keep_V { axis {  { m_axis_tcp_close_connection_TKEEP out_data 1 2 } } }
	m_axis_tcp_close_connection_V_strb_V { axis {  { m_axis_tcp_close_connection_TSTRB out_data 1 2 } } }
	m_axis_tcp_close_connection_V_last_V { axis {  { m_axis_tcp_close_connection_TLAST out_data 1 1 }  { m_axis_tcp_close_connection_TVALID out_vld 1 1 }  { m_axis_tcp_close_connection_TREADY out_acc 0 1 } } }
	s_axis_tcp_notification_V_data_V { axis {  { s_axis_tcp_notification_TDATA in_data 0 128 } } }
	s_axis_tcp_notification_V_keep_V { axis {  { s_axis_tcp_notification_TKEEP in_data 0 16 } } }
	s_axis_tcp_notification_V_strb_V { axis {  { s_axis_tcp_notification_TSTRB in_data 0 16 } } }
	s_axis_tcp_notification_V_last_V { axis {  { s_axis_tcp_notification_TLAST in_data 0 1 }  { s_axis_tcp_notification_TVALID in_vld 0 1 }  { s_axis_tcp_notification_TREADY in_acc 1 1 } } }
	m_axis_tcp_read_pkg_V_data_V { axis {  { m_axis_tcp_read_pkg_TDATA out_data 1 32 } } }
	m_axis_tcp_read_pkg_V_keep_V { axis {  { m_axis_tcp_read_pkg_TKEEP out_data 1 4 } } }
	m_axis_tcp_read_pkg_V_strb_V { axis {  { m_axis_tcp_read_pkg_TSTRB out_data 1 4 } } }
	m_axis_tcp_read_pkg_V_last_V { axis {  { m_axis_tcp_read_pkg_TLAST out_data 1 1 }  { m_axis_tcp_read_pkg_TVALID out_vld 1 1 }  { m_axis_tcp_read_pkg_TREADY out_acc 0 1 } } }
	s_axis_tcp_rx_meta_V_data_V { axis {  { s_axis_tcp_rx_meta_TDATA in_data 0 16 } } }
	s_axis_tcp_rx_meta_V_keep_V { axis {  { s_axis_tcp_rx_meta_TKEEP in_data 0 2 } } }
	s_axis_tcp_rx_meta_V_strb_V { axis {  { s_axis_tcp_rx_meta_TSTRB in_data 0 2 } } }
	s_axis_tcp_rx_meta_V_last_V { axis {  { s_axis_tcp_rx_meta_TLAST in_data 0 1 }  { s_axis_tcp_rx_meta_TVALID in_vld 0 1 }  { s_axis_tcp_rx_meta_TREADY in_acc 1 1 } } }
	s_axis_tcp_rx_data_V_data_V { axis {  { s_axis_tcp_rx_data_TDATA in_data 0 512 } } }
	s_axis_tcp_rx_data_V_keep_V { axis {  { s_axis_tcp_rx_data_TKEEP in_data 0 64 } } }
	s_axis_tcp_rx_data_V_strb_V { axis {  { s_axis_tcp_rx_data_TSTRB in_data 0 64 } } }
	s_axis_tcp_rx_data_V_last_V { axis {  { s_axis_tcp_rx_data_TLAST in_data 0 1 }  { s_axis_tcp_rx_data_TVALID in_vld 0 1 }  { s_axis_tcp_rx_data_TREADY in_acc 1 1 } } }
	m_axis_tcp_tx_meta_V_data_V { axis {  { m_axis_tcp_tx_meta_TDATA out_data 1 32 } } }
	m_axis_tcp_tx_meta_V_keep_V { axis {  { m_axis_tcp_tx_meta_TKEEP out_data 1 4 } } }
	m_axis_tcp_tx_meta_V_strb_V { axis {  { m_axis_tcp_tx_meta_TSTRB out_data 1 4 } } }
	m_axis_tcp_tx_meta_V_last_V { axis {  { m_axis_tcp_tx_meta_TLAST out_data 1 1 }  { m_axis_tcp_tx_meta_TVALID out_vld 1 1 }  { m_axis_tcp_tx_meta_TREADY out_acc 0 1 } } }
	m_axis_tcp_tx_data_V_data_V { axis {  { m_axis_tcp_tx_data_TDATA out_data 1 512 } } }
	m_axis_tcp_tx_data_V_keep_V { axis {  { m_axis_tcp_tx_data_TKEEP out_data 1 64 } } }
	m_axis_tcp_tx_data_V_strb_V { axis {  { m_axis_tcp_tx_data_TSTRB out_data 1 64 } } }
	m_axis_tcp_tx_data_V_last_V { axis {  { m_axis_tcp_tx_data_TLAST out_data 1 1 }  { m_axis_tcp_tx_data_TVALID out_vld 1 1 }  { m_axis_tcp_tx_data_TREADY out_acc 0 1 } } }
	s_axis_tcp_tx_status_V_data_V { axis {  { s_axis_tcp_tx_status_TDATA in_data 0 64 } } }
	s_axis_tcp_tx_status_V_keep_V { axis {  { s_axis_tcp_tx_status_TKEEP in_data 0 8 } } }
	s_axis_tcp_tx_status_V_strb_V { axis {  { s_axis_tcp_tx_status_TSTRB in_data 0 8 } } }
	s_axis_tcp_tx_status_V_last_V { axis {  { s_axis_tcp_tx_status_TLAST in_data 0 1 }  { s_axis_tcp_tx_status_TVALID in_vld 0 1 }  { s_axis_tcp_tx_status_TREADY in_acc 1 1 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
