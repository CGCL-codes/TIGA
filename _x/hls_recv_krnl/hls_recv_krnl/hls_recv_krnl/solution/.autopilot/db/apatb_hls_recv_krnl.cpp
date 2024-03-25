#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.hls_recv_krnl.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.hls_recv_krnl.autotvout_gmem.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_udp_rx_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_udp_rx_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_udp_rx_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_udp_rx_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_udp_rx_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_udp_rx_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_udp_rx_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_udp_rx_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_udp_rx_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_udp_rx_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_udp_rx_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_udp_rx_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_udp_rx_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_udp_rx_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_udp_rx_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_udp_rx_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_data_V "../tv/stream_size/stream_size_in_s_axis_udp_rx_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_udp_rx_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_keep_V "../tv/stream_size/stream_size_in_s_axis_udp_rx_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_udp_rx_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_strb_V "../tv/stream_size/stream_size_in_s_axis_udp_rx_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_udp_rx_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_last_V "../tv/stream_size/stream_size_in_s_axis_udp_rx_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_udp_rx_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_udp_tx_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_udp_tx_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_udp_tx_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_udp_tx_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_udp_tx_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_udp_tx_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_udp_tx_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_udp_tx_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_udp_tx_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_udp_tx_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_udp_tx_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_udp_tx_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_udp_tx_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_udp_tx_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_udp_tx_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_udp_tx_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_data_V "../tv/stream_size/stream_size_out_m_axis_udp_tx_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_V_data_V "../tv/stream_size/stream_egress_status_m_axis_udp_tx_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_keep_V "../tv/stream_size/stream_size_out_m_axis_udp_tx_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_udp_tx_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_strb_V "../tv/stream_size/stream_size_out_m_axis_udp_tx_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_udp_tx_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_last_V "../tv/stream_size/stream_size_out_m_axis_udp_tx_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_V_last_V "../tv/stream_size/stream_egress_status_m_axis_udp_tx_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_udp_rx_meta_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_udp_rx_meta_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_udp_rx_meta_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_udp_rx_meta_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_udp_rx_meta_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_udp_rx_meta_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_udp_rx_meta_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_udp_rx_meta_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_udp_rx_meta_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_udp_rx_meta_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_udp_rx_meta_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_udp_rx_meta_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_udp_rx_meta_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_udp_rx_meta_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_udp_rx_meta_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_udp_rx_meta_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_data_V "../tv/stream_size/stream_size_in_s_axis_udp_rx_meta_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_udp_rx_meta_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_keep_V "../tv/stream_size/stream_size_in_s_axis_udp_rx_meta_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_udp_rx_meta_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_strb_V "../tv/stream_size/stream_size_in_s_axis_udp_rx_meta_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_udp_rx_meta_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_last_V "../tv/stream_size/stream_size_in_s_axis_udp_rx_meta_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_udp_rx_meta_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_udp_tx_meta_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_udp_tx_meta_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_udp_tx_meta_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_udp_tx_meta_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_udp_tx_meta_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_udp_tx_meta_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_udp_tx_meta_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_udp_tx_meta_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_udp_tx_meta_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_udp_tx_meta_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_udp_tx_meta_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_udp_tx_meta_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_udp_tx_meta_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_udp_tx_meta_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_udp_tx_meta_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_udp_tx_meta_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_data_V "../tv/stream_size/stream_size_out_m_axis_udp_tx_meta_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_meta_V_data_V "../tv/stream_size/stream_egress_status_m_axis_udp_tx_meta_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_keep_V "../tv/stream_size/stream_size_out_m_axis_udp_tx_meta_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_meta_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_udp_tx_meta_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_strb_V "../tv/stream_size/stream_size_out_m_axis_udp_tx_meta_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_meta_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_udp_tx_meta_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_last_V "../tv/stream_size/stream_size_out_m_axis_udp_tx_meta_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_meta_V_last_V "../tv/stream_size/stream_egress_status_m_axis_udp_tx_meta_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tcp_listen_port_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_listen_port_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_listen_port_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_listen_port_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_listen_port_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_listen_port_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_listen_port_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_listen_port_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_listen_port_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_listen_port_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_listen_port_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_listen_port_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_listen_port_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_listen_port_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_listen_port_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_listen_port_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_data_V "../tv/stream_size/stream_size_out_m_axis_tcp_listen_port_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_listen_port_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tcp_listen_port_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tcp_listen_port_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_listen_port_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tcp_listen_port_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tcp_listen_port_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_listen_port_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tcp_listen_port_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_last_V "../tv/stream_size/stream_size_out_m_axis_tcp_listen_port_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_listen_port_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tcp_listen_port_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tcp_port_status_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_port_status_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_port_status_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_port_status_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_port_status_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_port_status_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_port_status_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_port_status_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_port_status_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_port_status_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_port_status_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_port_status_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_port_status_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_port_status_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_port_status_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_port_status_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_data_V "../tv/stream_size/stream_size_in_s_axis_tcp_port_status_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_port_status_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tcp_port_status_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_port_status_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tcp_port_status_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_port_status_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_last_V "../tv/stream_size/stream_size_in_s_axis_tcp_port_status_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_port_status_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tcp_open_connection_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_open_connection_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_open_connection_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_open_connection_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_open_connection_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_open_connection_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_open_connection_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_open_connection_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_open_connection_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_open_connection_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_open_connection_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_open_connection_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_open_connection_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_open_connection_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_open_connection_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_open_connection_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_data_V "../tv/stream_size/stream_size_out_m_axis_tcp_open_connection_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_open_connection_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tcp_open_connection_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tcp_open_connection_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_open_connection_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tcp_open_connection_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tcp_open_connection_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_open_connection_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tcp_open_connection_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_last_V "../tv/stream_size/stream_size_out_m_axis_tcp_open_connection_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_open_connection_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tcp_open_connection_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tcp_open_status_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_open_status_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_open_status_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_open_status_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_open_status_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_open_status_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_open_status_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_open_status_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_open_status_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_open_status_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_open_status_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_open_status_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_open_status_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_open_status_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_open_status_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_open_status_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_data_V "../tv/stream_size/stream_size_in_s_axis_tcp_open_status_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_open_status_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tcp_open_status_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_open_status_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tcp_open_status_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_open_status_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_last_V "../tv/stream_size/stream_size_in_s_axis_tcp_open_status_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_open_status_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tcp_close_connection_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_close_connection_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_close_connection_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_close_connection_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_close_connection_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_close_connection_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_close_connection_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_close_connection_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_close_connection_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_close_connection_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_close_connection_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_close_connection_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_close_connection_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_close_connection_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_close_connection_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_close_connection_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_data_V "../tv/stream_size/stream_size_out_m_axis_tcp_close_connection_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_close_connection_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tcp_close_connection_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tcp_close_connection_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_close_connection_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tcp_close_connection_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tcp_close_connection_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_close_connection_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tcp_close_connection_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_last_V "../tv/stream_size/stream_size_out_m_axis_tcp_close_connection_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_close_connection_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tcp_close_connection_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tcp_notification_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_notification_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_notification_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_notification_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_notification_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_notification_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_notification_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_notification_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_notification_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_notification_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_notification_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_notification_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_notification_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_notification_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_notification_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_notification_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_data_V "../tv/stream_size/stream_size_in_s_axis_tcp_notification_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_notification_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tcp_notification_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_notification_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tcp_notification_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_notification_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_last_V "../tv/stream_size/stream_size_in_s_axis_tcp_notification_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_notification_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tcp_read_pkg_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_read_pkg_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_read_pkg_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_read_pkg_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_read_pkg_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_read_pkg_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_read_pkg_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_read_pkg_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_read_pkg_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_read_pkg_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_read_pkg_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_read_pkg_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_data_V "../tv/stream_size/stream_size_out_m_axis_tcp_read_pkg_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_read_pkg_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tcp_read_pkg_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tcp_read_pkg_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_read_pkg_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tcp_read_pkg_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tcp_read_pkg_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_read_pkg_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tcp_read_pkg_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_last_V "../tv/stream_size/stream_size_out_m_axis_tcp_read_pkg_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_read_pkg_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tcp_read_pkg_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tcp_rx_meta_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_rx_meta_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_rx_meta_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_rx_meta_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_rx_meta_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_rx_meta_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_rx_meta_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_rx_meta_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_rx_meta_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_rx_meta_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_rx_meta_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_rx_meta_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_rx_meta_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_rx_meta_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_rx_meta_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_rx_meta_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_data_V "../tv/stream_size/stream_size_in_s_axis_tcp_rx_meta_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_rx_meta_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tcp_rx_meta_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_rx_meta_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tcp_rx_meta_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_rx_meta_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_last_V "../tv/stream_size/stream_size_in_s_axis_tcp_rx_meta_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_rx_meta_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tcp_rx_data_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_rx_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_rx_data_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_rx_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_rx_data_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_rx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_rx_data_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_rx_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_rx_data_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_rx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_rx_data_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_rx_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_rx_data_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_rx_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_rx_data_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_rx_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_tcp_rx_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_rx_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tcp_rx_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_rx_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tcp_rx_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_rx_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_tcp_rx_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_rx_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tcp_tx_meta_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_tx_meta_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_tx_meta_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_tx_meta_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_tx_meta_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_tx_meta_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_tx_meta_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_tx_meta_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_tx_meta_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_tx_meta_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_tx_meta_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_tx_meta_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_data_V "../tv/stream_size/stream_size_out_m_axis_tcp_tx_meta_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_meta_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tcp_tx_meta_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tcp_tx_meta_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_meta_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tcp_tx_meta_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tcp_tx_meta_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_meta_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tcp_tx_meta_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_last_V "../tv/stream_size/stream_size_out_m_axis_tcp_tx_meta_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_meta_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tcp_tx_meta_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tcp_tx_data_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_tx_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_tx_data_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_tx_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_tx_data_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_tx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_tx_data_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_tx_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_tx_data_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_tx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_tx_data_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_tx_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_tx_data_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_m_axis_tcp_tx_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_tx_data_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_m_axis_tcp_tx_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_tcp_tx_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tcp_tx_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tcp_tx_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tcp_tx_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tcp_tx_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tcp_tx_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_tcp_tx_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tcp_tx_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tcp_tx_status_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_tx_status_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_tx_status_V_data_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_tx_status_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_tx_status_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_tx_status_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_tx_status_V_keep_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_tx_status_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_tx_status_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_tx_status_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_tx_status_V_strb_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_tx_status_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_tx_status_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvin_s_axis_tcp_tx_status_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_tx_status_V_last_V "../tv/cdatafile/c.hls_recv_krnl.autotvout_s_axis_tcp_tx_status_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_data_V "../tv/stream_size/stream_size_in_s_axis_tcp_tx_status_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_tx_status_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tcp_tx_status_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_tx_status_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tcp_tx_status_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_tx_status_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_last_V "../tv/stream_size/stream_size_in_s_axis_tcp_tx_status_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_tx_status_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_useConn "../tv/cdatafile/c.hls_recv_krnl.autotvin_useConn.dat"
#define AUTOTB_TVOUT_useConn "../tv/cdatafile/c.hls_recv_krnl.autotvout_useConn.dat"
// wrapc file define:
#define AUTOTB_TVIN_basePort "../tv/cdatafile/c.hls_recv_krnl.autotvin_basePort.dat"
#define AUTOTB_TVOUT_basePort "../tv/cdatafile/c.hls_recv_krnl.autotvout_basePort.dat"
// wrapc file define:
#define AUTOTB_TVIN_delay "../tv/cdatafile/c.hls_recv_krnl.autotvin_delay.dat"
#define AUTOTB_TVOUT_delay "../tv/cdatafile/c.hls_recv_krnl.autotvout_delay.dat"
// wrapc file define:
#define AUTOTB_TVIN_expectedRxByteCnt "../tv/cdatafile/c.hls_recv_krnl.autotvin_expectedRxByteCnt.dat"
#define AUTOTB_TVOUT_expectedRxByteCnt "../tv/cdatafile/c.hls_recv_krnl.autotvout_expectedRxByteCnt.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_time "../tv/cdatafile/c.hls_recv_krnl.autotvin_out_time.dat"
#define AUTOTB_TVOUT_out_time "../tv/cdatafile/c.hls_recv_krnl.autotvout_out_time.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_gmem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_udp_rx_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_udp_rx_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_udp_rx_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_udp_rx_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_udp_rx_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_udp_rx_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_udp_rx_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_udp_rx_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_udp_tx_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_udp_tx_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_udp_tx_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_udp_tx_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_udp_tx_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_udp_tx_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_udp_tx_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_udp_tx_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_udp_rx_meta_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_udp_rx_meta_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_udp_rx_meta_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_udp_rx_meta_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_udp_rx_meta_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_udp_rx_meta_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_udp_rx_meta_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_udp_rx_meta_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_udp_tx_meta_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_udp_tx_meta_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_udp_tx_meta_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_udp_tx_meta_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_udp_tx_meta_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_udp_tx_meta_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_udp_tx_meta_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_udp_tx_meta_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tcp_listen_port_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_listen_port_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_listen_port_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_listen_port_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_listen_port_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_listen_port_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_listen_port_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_listen_port_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tcp_port_status_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_port_status_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_port_status_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_port_status_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_port_status_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_port_status_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_port_status_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_port_status_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tcp_open_connection_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_open_connection_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_open_connection_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_open_connection_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_open_connection_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_open_connection_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_open_connection_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_open_connection_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tcp_open_status_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_open_status_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_open_status_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_open_status_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_open_status_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_open_status_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_open_status_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_open_status_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tcp_close_connection_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_close_connection_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_close_connection_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_close_connection_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_close_connection_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_close_connection_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_close_connection_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_close_connection_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tcp_notification_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_notification_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_notification_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_notification_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_notification_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_notification_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_notification_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_notification_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tcp_read_pkg_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_read_pkg_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_read_pkg_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_read_pkg_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_read_pkg_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_read_pkg_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_read_pkg_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_read_pkg_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tcp_rx_meta_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_rx_meta_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_rx_meta_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_rx_meta_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_rx_meta_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_rx_meta_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_rx_meta_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_rx_meta_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tcp_rx_data_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_rx_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_rx_data_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_rx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_rx_data_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_rx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_rx_data_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_rx_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tcp_tx_meta_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_tx_meta_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_tx_meta_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_tx_meta_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_tx_meta_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_tx_meta_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_tx_meta_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_tx_meta_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tcp_tx_data_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_tx_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_tx_data_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_tx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_tx_data_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_tx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_tx_data_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_m_axis_tcp_tx_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tcp_tx_status_V_data_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_tx_status_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_tx_status_V_keep_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_tx_status_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_tx_status_V_strb_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_tx_status_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_tx_status_V_last_V "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_s_axis_tcp_tx_status_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_useConn "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_useConn.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_basePort "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_basePort.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_delay "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_delay.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_expectedRxByteCnt "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_expectedRxByteCnt.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_time "../tv/rtldatafile/rtl.hls_recv_krnl.autotvout_out_time.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem_depth = 0;
  s_axis_udp_rx_V_data_V_depth = 0;
  s_axis_udp_rx_V_keep_V_depth = 0;
  s_axis_udp_rx_V_strb_V_depth = 0;
  s_axis_udp_rx_V_last_V_depth = 0;
  m_axis_udp_tx_V_data_V_depth = 0;
  m_axis_udp_tx_V_keep_V_depth = 0;
  m_axis_udp_tx_V_strb_V_depth = 0;
  m_axis_udp_tx_V_last_V_depth = 0;
  s_axis_udp_rx_meta_V_data_V_depth = 0;
  s_axis_udp_rx_meta_V_keep_V_depth = 0;
  s_axis_udp_rx_meta_V_strb_V_depth = 0;
  s_axis_udp_rx_meta_V_last_V_depth = 0;
  m_axis_udp_tx_meta_V_data_V_depth = 0;
  m_axis_udp_tx_meta_V_keep_V_depth = 0;
  m_axis_udp_tx_meta_V_strb_V_depth = 0;
  m_axis_udp_tx_meta_V_last_V_depth = 0;
  m_axis_tcp_listen_port_V_data_V_depth = 0;
  m_axis_tcp_listen_port_V_keep_V_depth = 0;
  m_axis_tcp_listen_port_V_strb_V_depth = 0;
  m_axis_tcp_listen_port_V_last_V_depth = 0;
  s_axis_tcp_port_status_V_data_V_depth = 0;
  s_axis_tcp_port_status_V_keep_V_depth = 0;
  s_axis_tcp_port_status_V_strb_V_depth = 0;
  s_axis_tcp_port_status_V_last_V_depth = 0;
  m_axis_tcp_open_connection_V_data_V_depth = 0;
  m_axis_tcp_open_connection_V_keep_V_depth = 0;
  m_axis_tcp_open_connection_V_strb_V_depth = 0;
  m_axis_tcp_open_connection_V_last_V_depth = 0;
  s_axis_tcp_open_status_V_data_V_depth = 0;
  s_axis_tcp_open_status_V_keep_V_depth = 0;
  s_axis_tcp_open_status_V_strb_V_depth = 0;
  s_axis_tcp_open_status_V_last_V_depth = 0;
  m_axis_tcp_close_connection_V_data_V_depth = 0;
  m_axis_tcp_close_connection_V_keep_V_depth = 0;
  m_axis_tcp_close_connection_V_strb_V_depth = 0;
  m_axis_tcp_close_connection_V_last_V_depth = 0;
  s_axis_tcp_notification_V_data_V_depth = 0;
  s_axis_tcp_notification_V_keep_V_depth = 0;
  s_axis_tcp_notification_V_strb_V_depth = 0;
  s_axis_tcp_notification_V_last_V_depth = 0;
  m_axis_tcp_read_pkg_V_data_V_depth = 0;
  m_axis_tcp_read_pkg_V_keep_V_depth = 0;
  m_axis_tcp_read_pkg_V_strb_V_depth = 0;
  m_axis_tcp_read_pkg_V_last_V_depth = 0;
  s_axis_tcp_rx_meta_V_data_V_depth = 0;
  s_axis_tcp_rx_meta_V_keep_V_depth = 0;
  s_axis_tcp_rx_meta_V_strb_V_depth = 0;
  s_axis_tcp_rx_meta_V_last_V_depth = 0;
  s_axis_tcp_rx_data_V_data_V_depth = 0;
  s_axis_tcp_rx_data_V_keep_V_depth = 0;
  s_axis_tcp_rx_data_V_strb_V_depth = 0;
  s_axis_tcp_rx_data_V_last_V_depth = 0;
  m_axis_tcp_tx_meta_V_data_V_depth = 0;
  m_axis_tcp_tx_meta_V_keep_V_depth = 0;
  m_axis_tcp_tx_meta_V_strb_V_depth = 0;
  m_axis_tcp_tx_meta_V_last_V_depth = 0;
  m_axis_tcp_tx_data_V_data_V_depth = 0;
  m_axis_tcp_tx_data_V_keep_V_depth = 0;
  m_axis_tcp_tx_data_V_strb_V_depth = 0;
  m_axis_tcp_tx_data_V_last_V_depth = 0;
  s_axis_tcp_tx_status_V_data_V_depth = 0;
  s_axis_tcp_tx_status_V_keep_V_depth = 0;
  s_axis_tcp_tx_status_V_strb_V_depth = 0;
  s_axis_tcp_tx_status_V_last_V_depth = 0;
  useConn_depth = 0;
  basePort_depth = 0;
  delay_depth = 0;
  expectedRxByteCnt_depth = 0;
  out_time_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem " << gmem_depth << "}\n";
  total_list << "{s_axis_udp_rx_V_data_V " << s_axis_udp_rx_V_data_V_depth << "}\n";
  total_list << "{s_axis_udp_rx_V_keep_V " << s_axis_udp_rx_V_keep_V_depth << "}\n";
  total_list << "{s_axis_udp_rx_V_strb_V " << s_axis_udp_rx_V_strb_V_depth << "}\n";
  total_list << "{s_axis_udp_rx_V_last_V " << s_axis_udp_rx_V_last_V_depth << "}\n";
  total_list << "{m_axis_udp_tx_V_data_V " << m_axis_udp_tx_V_data_V_depth << "}\n";
  total_list << "{m_axis_udp_tx_V_keep_V " << m_axis_udp_tx_V_keep_V_depth << "}\n";
  total_list << "{m_axis_udp_tx_V_strb_V " << m_axis_udp_tx_V_strb_V_depth << "}\n";
  total_list << "{m_axis_udp_tx_V_last_V " << m_axis_udp_tx_V_last_V_depth << "}\n";
  total_list << "{s_axis_udp_rx_meta_V_data_V " << s_axis_udp_rx_meta_V_data_V_depth << "}\n";
  total_list << "{s_axis_udp_rx_meta_V_keep_V " << s_axis_udp_rx_meta_V_keep_V_depth << "}\n";
  total_list << "{s_axis_udp_rx_meta_V_strb_V " << s_axis_udp_rx_meta_V_strb_V_depth << "}\n";
  total_list << "{s_axis_udp_rx_meta_V_last_V " << s_axis_udp_rx_meta_V_last_V_depth << "}\n";
  total_list << "{m_axis_udp_tx_meta_V_data_V " << m_axis_udp_tx_meta_V_data_V_depth << "}\n";
  total_list << "{m_axis_udp_tx_meta_V_keep_V " << m_axis_udp_tx_meta_V_keep_V_depth << "}\n";
  total_list << "{m_axis_udp_tx_meta_V_strb_V " << m_axis_udp_tx_meta_V_strb_V_depth << "}\n";
  total_list << "{m_axis_udp_tx_meta_V_last_V " << m_axis_udp_tx_meta_V_last_V_depth << "}\n";
  total_list << "{m_axis_tcp_listen_port_V_data_V " << m_axis_tcp_listen_port_V_data_V_depth << "}\n";
  total_list << "{m_axis_tcp_listen_port_V_keep_V " << m_axis_tcp_listen_port_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tcp_listen_port_V_strb_V " << m_axis_tcp_listen_port_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tcp_listen_port_V_last_V " << m_axis_tcp_listen_port_V_last_V_depth << "}\n";
  total_list << "{s_axis_tcp_port_status_V_data_V " << s_axis_tcp_port_status_V_data_V_depth << "}\n";
  total_list << "{s_axis_tcp_port_status_V_keep_V " << s_axis_tcp_port_status_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tcp_port_status_V_strb_V " << s_axis_tcp_port_status_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tcp_port_status_V_last_V " << s_axis_tcp_port_status_V_last_V_depth << "}\n";
  total_list << "{m_axis_tcp_open_connection_V_data_V " << m_axis_tcp_open_connection_V_data_V_depth << "}\n";
  total_list << "{m_axis_tcp_open_connection_V_keep_V " << m_axis_tcp_open_connection_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tcp_open_connection_V_strb_V " << m_axis_tcp_open_connection_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tcp_open_connection_V_last_V " << m_axis_tcp_open_connection_V_last_V_depth << "}\n";
  total_list << "{s_axis_tcp_open_status_V_data_V " << s_axis_tcp_open_status_V_data_V_depth << "}\n";
  total_list << "{s_axis_tcp_open_status_V_keep_V " << s_axis_tcp_open_status_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tcp_open_status_V_strb_V " << s_axis_tcp_open_status_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tcp_open_status_V_last_V " << s_axis_tcp_open_status_V_last_V_depth << "}\n";
  total_list << "{m_axis_tcp_close_connection_V_data_V " << m_axis_tcp_close_connection_V_data_V_depth << "}\n";
  total_list << "{m_axis_tcp_close_connection_V_keep_V " << m_axis_tcp_close_connection_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tcp_close_connection_V_strb_V " << m_axis_tcp_close_connection_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tcp_close_connection_V_last_V " << m_axis_tcp_close_connection_V_last_V_depth << "}\n";
  total_list << "{s_axis_tcp_notification_V_data_V " << s_axis_tcp_notification_V_data_V_depth << "}\n";
  total_list << "{s_axis_tcp_notification_V_keep_V " << s_axis_tcp_notification_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tcp_notification_V_strb_V " << s_axis_tcp_notification_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tcp_notification_V_last_V " << s_axis_tcp_notification_V_last_V_depth << "}\n";
  total_list << "{m_axis_tcp_read_pkg_V_data_V " << m_axis_tcp_read_pkg_V_data_V_depth << "}\n";
  total_list << "{m_axis_tcp_read_pkg_V_keep_V " << m_axis_tcp_read_pkg_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tcp_read_pkg_V_strb_V " << m_axis_tcp_read_pkg_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tcp_read_pkg_V_last_V " << m_axis_tcp_read_pkg_V_last_V_depth << "}\n";
  total_list << "{s_axis_tcp_rx_meta_V_data_V " << s_axis_tcp_rx_meta_V_data_V_depth << "}\n";
  total_list << "{s_axis_tcp_rx_meta_V_keep_V " << s_axis_tcp_rx_meta_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tcp_rx_meta_V_strb_V " << s_axis_tcp_rx_meta_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tcp_rx_meta_V_last_V " << s_axis_tcp_rx_meta_V_last_V_depth << "}\n";
  total_list << "{s_axis_tcp_rx_data_V_data_V " << s_axis_tcp_rx_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_tcp_rx_data_V_keep_V " << s_axis_tcp_rx_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tcp_rx_data_V_strb_V " << s_axis_tcp_rx_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tcp_rx_data_V_last_V " << s_axis_tcp_rx_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_tcp_tx_meta_V_data_V " << m_axis_tcp_tx_meta_V_data_V_depth << "}\n";
  total_list << "{m_axis_tcp_tx_meta_V_keep_V " << m_axis_tcp_tx_meta_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tcp_tx_meta_V_strb_V " << m_axis_tcp_tx_meta_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tcp_tx_meta_V_last_V " << m_axis_tcp_tx_meta_V_last_V_depth << "}\n";
  total_list << "{m_axis_tcp_tx_data_V_data_V " << m_axis_tcp_tx_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_tcp_tx_data_V_keep_V " << m_axis_tcp_tx_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tcp_tx_data_V_strb_V " << m_axis_tcp_tx_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tcp_tx_data_V_last_V " << m_axis_tcp_tx_data_V_last_V_depth << "}\n";
  total_list << "{s_axis_tcp_tx_status_V_data_V " << s_axis_tcp_tx_status_V_data_V_depth << "}\n";
  total_list << "{s_axis_tcp_tx_status_V_keep_V " << s_axis_tcp_tx_status_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tcp_tx_status_V_strb_V " << s_axis_tcp_tx_status_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tcp_tx_status_V_last_V " << s_axis_tcp_tx_status_V_last_V_depth << "}\n";
  total_list << "{useConn " << useConn_depth << "}\n";
  total_list << "{basePort " << basePort_depth << "}\n";
  total_list << "{delay " << delay_depth << "}\n";
  total_list << "{expectedRxByteCnt " << expectedRxByteCnt_depth << "}\n";
  total_list << "{out_time " << out_time_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem_depth;
    int s_axis_udp_rx_V_data_V_depth;
    int s_axis_udp_rx_V_keep_V_depth;
    int s_axis_udp_rx_V_strb_V_depth;
    int s_axis_udp_rx_V_last_V_depth;
    int m_axis_udp_tx_V_data_V_depth;
    int m_axis_udp_tx_V_keep_V_depth;
    int m_axis_udp_tx_V_strb_V_depth;
    int m_axis_udp_tx_V_last_V_depth;
    int s_axis_udp_rx_meta_V_data_V_depth;
    int s_axis_udp_rx_meta_V_keep_V_depth;
    int s_axis_udp_rx_meta_V_strb_V_depth;
    int s_axis_udp_rx_meta_V_last_V_depth;
    int m_axis_udp_tx_meta_V_data_V_depth;
    int m_axis_udp_tx_meta_V_keep_V_depth;
    int m_axis_udp_tx_meta_V_strb_V_depth;
    int m_axis_udp_tx_meta_V_last_V_depth;
    int m_axis_tcp_listen_port_V_data_V_depth;
    int m_axis_tcp_listen_port_V_keep_V_depth;
    int m_axis_tcp_listen_port_V_strb_V_depth;
    int m_axis_tcp_listen_port_V_last_V_depth;
    int s_axis_tcp_port_status_V_data_V_depth;
    int s_axis_tcp_port_status_V_keep_V_depth;
    int s_axis_tcp_port_status_V_strb_V_depth;
    int s_axis_tcp_port_status_V_last_V_depth;
    int m_axis_tcp_open_connection_V_data_V_depth;
    int m_axis_tcp_open_connection_V_keep_V_depth;
    int m_axis_tcp_open_connection_V_strb_V_depth;
    int m_axis_tcp_open_connection_V_last_V_depth;
    int s_axis_tcp_open_status_V_data_V_depth;
    int s_axis_tcp_open_status_V_keep_V_depth;
    int s_axis_tcp_open_status_V_strb_V_depth;
    int s_axis_tcp_open_status_V_last_V_depth;
    int m_axis_tcp_close_connection_V_data_V_depth;
    int m_axis_tcp_close_connection_V_keep_V_depth;
    int m_axis_tcp_close_connection_V_strb_V_depth;
    int m_axis_tcp_close_connection_V_last_V_depth;
    int s_axis_tcp_notification_V_data_V_depth;
    int s_axis_tcp_notification_V_keep_V_depth;
    int s_axis_tcp_notification_V_strb_V_depth;
    int s_axis_tcp_notification_V_last_V_depth;
    int m_axis_tcp_read_pkg_V_data_V_depth;
    int m_axis_tcp_read_pkg_V_keep_V_depth;
    int m_axis_tcp_read_pkg_V_strb_V_depth;
    int m_axis_tcp_read_pkg_V_last_V_depth;
    int s_axis_tcp_rx_meta_V_data_V_depth;
    int s_axis_tcp_rx_meta_V_keep_V_depth;
    int s_axis_tcp_rx_meta_V_strb_V_depth;
    int s_axis_tcp_rx_meta_V_last_V_depth;
    int s_axis_tcp_rx_data_V_data_V_depth;
    int s_axis_tcp_rx_data_V_keep_V_depth;
    int s_axis_tcp_rx_data_V_strb_V_depth;
    int s_axis_tcp_rx_data_V_last_V_depth;
    int m_axis_tcp_tx_meta_V_data_V_depth;
    int m_axis_tcp_tx_meta_V_keep_V_depth;
    int m_axis_tcp_tx_meta_V_strb_V_depth;
    int m_axis_tcp_tx_meta_V_last_V_depth;
    int m_axis_tcp_tx_data_V_data_V_depth;
    int m_axis_tcp_tx_data_V_keep_V_depth;
    int m_axis_tcp_tx_data_V_strb_V_depth;
    int m_axis_tcp_tx_data_V_last_V_depth;
    int s_axis_tcp_tx_status_V_data_V_depth;
    int s_axis_tcp_tx_status_V_keep_V_depth;
    int s_axis_tcp_tx_status_V_strb_V_depth;
    int s_axis_tcp_tx_status_V_last_V_depth;
    int useConn_depth;
    int basePort_depth;
    int delay_depth;
    int expectedRxByteCnt_depth;
    int out_time_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s80__ { char data[128]; };
struct __cosim_s40__ { char data[64]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s7__ { char data[7]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s20__ { char data[32]; };
struct __cosim_sC__ { char data[12]; };
extern "C" void hls_recv_krnl_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int, int, __cosim_s8__*, volatile void *);

extern "C" void apatb_hls_recv_krnl_hw(volatile void * __xlx_apatb_param_s_axis_udp_rx, volatile void * __xlx_apatb_param_m_axis_udp_tx, volatile void * __xlx_apatb_param_s_axis_udp_rx_meta, volatile void * __xlx_apatb_param_m_axis_udp_tx_meta, volatile void * __xlx_apatb_param_m_axis_tcp_listen_port, volatile void * __xlx_apatb_param_s_axis_tcp_port_status, volatile void * __xlx_apatb_param_m_axis_tcp_open_connection, volatile void * __xlx_apatb_param_s_axis_tcp_open_status, volatile void * __xlx_apatb_param_m_axis_tcp_close_connection, volatile void * __xlx_apatb_param_s_axis_tcp_notification, volatile void * __xlx_apatb_param_m_axis_tcp_read_pkg, volatile void * __xlx_apatb_param_s_axis_tcp_rx_meta, volatile void * __xlx_apatb_param_s_axis_tcp_rx_data, volatile void * __xlx_apatb_param_m_axis_tcp_tx_meta, volatile void * __xlx_apatb_param_m_axis_tcp_tx_data, volatile void * __xlx_apatb_param_s_axis_tcp_tx_status, int __xlx_apatb_param_useConn, int __xlx_apatb_param_basePort, int __xlx_apatb_param_delay, __cosim_s8__* __xlx_apatb_param_expectedRxByteCnt, volatile void * __xlx_apatb_param_out_time) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > gmem_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_out_time)[j] = gmem_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size; ++i)((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_udp_rx)->read();
{sc_bv<1024> xlx_stream_m_axis_udp_tx_pc_buffer;
unsigned xlx_stream_m_axis_udp_tx_size = 0;

          std::vector<sc_bv<512> > m_axis_udp_tx_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_udp_tx_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_udp_tx_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_udp_tx");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_udp_tx_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_udp_tx_size=m_axis_udp_tx_V_data_V_pc_buffer.size();
m_axis_udp_tx_V_data_V_pc_buffer_Copy=m_axis_udp_tx_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_udp_tx_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_udp_tx_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_udp_tx_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_udp_tx");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_udp_tx_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_udp_tx_size=m_axis_udp_tx_V_keep_V_pc_buffer.size();
m_axis_udp_tx_V_keep_V_pc_buffer_Copy=m_axis_udp_tx_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_udp_tx_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_udp_tx_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_udp_tx_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_udp_tx");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_udp_tx_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_udp_tx_size=m_axis_udp_tx_V_strb_V_pc_buffer.size();
m_axis_udp_tx_V_strb_V_pc_buffer_Copy=m_axis_udp_tx_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_udp_tx_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_udp_tx_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_udp_tx_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_udp_tx");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_udp_tx_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_udp_tx_size=m_axis_udp_tx_V_last_V_pc_buffer.size();
m_axis_udp_tx_V_last_V_pc_buffer_Copy=m_axis_udp_tx_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_udp_tx_size; j != e; ++j) {
xlx_stream_m_axis_udp_tx_pc_buffer.range(511, 0) = m_axis_udp_tx_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_udp_tx_pc_buffer.range(575, 512) = m_axis_udp_tx_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_udp_tx_pc_buffer.range(639, 576) = m_axis_udp_tx_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_udp_tx_pc_buffer.range(655, 648) = m_axis_udp_tx_V_last_V_pc_buffer_Copy[j];
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = xlx_stream_m_axis_udp_tx_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = xlx_stream_m_axis_udp_tx_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = xlx_stream_m_axis_udp_tx_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = xlx_stream_m_axis_udp_tx_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = xlx_stream_m_axis_udp_tx_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = xlx_stream_m_axis_udp_tx_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = xlx_stream_m_axis_udp_tx_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = xlx_stream_m_axis_udp_tx_pc_buffer.range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = xlx_stream_m_axis_udp_tx_pc_buffer.range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = xlx_stream_m_axis_udp_tx_pc_buffer.range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = xlx_stream_m_axis_udp_tx_pc_buffer.range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = xlx_stream_m_axis_udp_tx_pc_buffer.range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = xlx_stream_m_axis_udp_tx_pc_buffer.range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = xlx_stream_m_axis_udp_tx_pc_buffer.range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = xlx_stream_m_axis_udp_tx_pc_buffer.range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = xlx_stream_m_axis_udp_tx_pc_buffer.range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_udp_tx)->write(xlx_stream_elt);
}}long __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size; ++i)((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_udp_rx_meta)->read();
{sc_bv<512> xlx_stream_m_axis_udp_tx_meta_pc_buffer;
unsigned xlx_stream_m_axis_udp_tx_meta_size = 0;

          std::vector<sc_bv<256> > m_axis_udp_tx_meta_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_udp_tx_meta_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > m_axis_udp_tx_meta_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_udp_tx_meta");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_udp_tx_meta_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_udp_tx_meta_size=m_axis_udp_tx_meta_V_data_V_pc_buffer.size();
m_axis_udp_tx_meta_V_data_V_pc_buffer_Copy=m_axis_udp_tx_meta_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<256> > m_axis_udp_tx_meta_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_udp_tx_meta_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > m_axis_udp_tx_meta_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_udp_tx_meta");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_udp_tx_meta_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_udp_tx_meta_size=m_axis_udp_tx_meta_V_keep_V_pc_buffer.size();
m_axis_udp_tx_meta_V_keep_V_pc_buffer_Copy=m_axis_udp_tx_meta_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<256> > m_axis_udp_tx_meta_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_udp_tx_meta_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > m_axis_udp_tx_meta_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_udp_tx_meta");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_udp_tx_meta_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_udp_tx_meta_size=m_axis_udp_tx_meta_V_strb_V_pc_buffer.size();
m_axis_udp_tx_meta_V_strb_V_pc_buffer_Copy=m_axis_udp_tx_meta_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<256> > m_axis_udp_tx_meta_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_udp_tx_meta_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > m_axis_udp_tx_meta_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_udp_tx_meta");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_udp_tx_meta_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_udp_tx_meta_size=m_axis_udp_tx_meta_V_last_V_pc_buffer.size();
m_axis_udp_tx_meta_V_last_V_pc_buffer_Copy=m_axis_udp_tx_meta_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_udp_tx_meta_size; j != e; ++j) {
xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(255, 0) = m_axis_udp_tx_meta_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(287, 256) = m_axis_udp_tx_meta_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(319, 288) = m_axis_udp_tx_meta_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(335, 328) = m_axis_udp_tx_meta_V_last_V_pc_buffer_Copy[j];
__cosim_s40__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*8+0] = xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*8+1] = xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*8+2] = xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*8+3] = xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*8+4] = xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*8+5] = xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*8+6] = xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*8+7] = xlx_stream_m_axis_udp_tx_meta_pc_buffer.range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_udp_tx_meta)->write(xlx_stream_elt);
}}{sc_bv<64> xlx_stream_m_axis_tcp_listen_port_pc_buffer;
unsigned xlx_stream_m_axis_tcp_listen_port_size = 0;

          std::vector<sc_bv<16> > m_axis_tcp_listen_port_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_listen_port_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tcp_listen_port_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_listen_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_listen_port_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_listen_port_size=m_axis_tcp_listen_port_V_data_V_pc_buffer.size();
m_axis_tcp_listen_port_V_data_V_pc_buffer_Copy=m_axis_tcp_listen_port_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<16> > m_axis_tcp_listen_port_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_listen_port_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tcp_listen_port_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_listen_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_listen_port_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_listen_port_size=m_axis_tcp_listen_port_V_keep_V_pc_buffer.size();
m_axis_tcp_listen_port_V_keep_V_pc_buffer_Copy=m_axis_tcp_listen_port_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<16> > m_axis_tcp_listen_port_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_listen_port_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tcp_listen_port_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_listen_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_listen_port_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_listen_port_size=m_axis_tcp_listen_port_V_strb_V_pc_buffer.size();
m_axis_tcp_listen_port_V_strb_V_pc_buffer_Copy=m_axis_tcp_listen_port_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<16> > m_axis_tcp_listen_port_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_listen_port_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tcp_listen_port_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_listen_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_listen_port_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_listen_port_size=m_axis_tcp_listen_port_V_last_V_pc_buffer.size();
m_axis_tcp_listen_port_V_last_V_pc_buffer_Copy=m_axis_tcp_listen_port_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tcp_listen_port_size; j != e; ++j) {
xlx_stream_m_axis_tcp_listen_port_pc_buffer.range(15, 0) = m_axis_tcp_listen_port_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_listen_port_pc_buffer.range(23, 16) = m_axis_tcp_listen_port_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_listen_port_pc_buffer.range(31, 24) = m_axis_tcp_listen_port_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_listen_port_pc_buffer.range(47, 40) = m_axis_tcp_listen_port_V_last_V_pc_buffer_Copy[j];
__cosim_s8__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0] = xlx_stream_m_axis_tcp_listen_port_pc_buffer.to_int64();
((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_listen_port)->write(xlx_stream_elt);
}}long __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size; ++i)((hls::stream<__cosim_s7__>*)__xlx_apatb_param_s_axis_tcp_port_status)->read();
{sc_bv<128> xlx_stream_m_axis_tcp_open_connection_pc_buffer;
unsigned xlx_stream_m_axis_tcp_open_connection_size = 0;

          std::vector<sc_bv<64> > m_axis_tcp_open_connection_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_open_connection_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > m_axis_tcp_open_connection_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_open_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_open_connection_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_open_connection_size=m_axis_tcp_open_connection_V_data_V_pc_buffer.size();
m_axis_tcp_open_connection_V_data_V_pc_buffer_Copy=m_axis_tcp_open_connection_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_tcp_open_connection_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_open_connection_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > m_axis_tcp_open_connection_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_open_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_open_connection_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_open_connection_size=m_axis_tcp_open_connection_V_keep_V_pc_buffer.size();
m_axis_tcp_open_connection_V_keep_V_pc_buffer_Copy=m_axis_tcp_open_connection_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_tcp_open_connection_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_open_connection_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > m_axis_tcp_open_connection_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_open_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_open_connection_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_open_connection_size=m_axis_tcp_open_connection_V_strb_V_pc_buffer.size();
m_axis_tcp_open_connection_V_strb_V_pc_buffer_Copy=m_axis_tcp_open_connection_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_tcp_open_connection_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_open_connection_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > m_axis_tcp_open_connection_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_open_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_open_connection_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_open_connection_size=m_axis_tcp_open_connection_V_last_V_pc_buffer.size();
m_axis_tcp_open_connection_V_last_V_pc_buffer_Copy=m_axis_tcp_open_connection_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tcp_open_connection_size; j != e; ++j) {
xlx_stream_m_axis_tcp_open_connection_pc_buffer.range(63, 0) = m_axis_tcp_open_connection_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_open_connection_pc_buffer.range(71, 64) = m_axis_tcp_open_connection_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_open_connection_pc_buffer.range(79, 72) = m_axis_tcp_open_connection_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_open_connection_pc_buffer.range(95, 88) = m_axis_tcp_open_connection_V_last_V_pc_buffer_Copy[j];
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = xlx_stream_m_axis_tcp_open_connection_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = xlx_stream_m_axis_tcp_open_connection_pc_buffer.range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tcp_open_connection)->write(xlx_stream_elt);
}}long __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_open_status)->read();
{sc_bv<64> xlx_stream_m_axis_tcp_close_connection_pc_buffer;
unsigned xlx_stream_m_axis_tcp_close_connection_size = 0;

          std::vector<sc_bv<16> > m_axis_tcp_close_connection_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_close_connection_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tcp_close_connection_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_close_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_close_connection_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_close_connection_size=m_axis_tcp_close_connection_V_data_V_pc_buffer.size();
m_axis_tcp_close_connection_V_data_V_pc_buffer_Copy=m_axis_tcp_close_connection_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<16> > m_axis_tcp_close_connection_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_close_connection_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tcp_close_connection_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_close_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_close_connection_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_close_connection_size=m_axis_tcp_close_connection_V_keep_V_pc_buffer.size();
m_axis_tcp_close_connection_V_keep_V_pc_buffer_Copy=m_axis_tcp_close_connection_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<16> > m_axis_tcp_close_connection_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_close_connection_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tcp_close_connection_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_close_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_close_connection_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_close_connection_size=m_axis_tcp_close_connection_V_strb_V_pc_buffer.size();
m_axis_tcp_close_connection_V_strb_V_pc_buffer_Copy=m_axis_tcp_close_connection_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<16> > m_axis_tcp_close_connection_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_close_connection_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tcp_close_connection_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_close_connection");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_close_connection_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_close_connection_size=m_axis_tcp_close_connection_V_last_V_pc_buffer.size();
m_axis_tcp_close_connection_V_last_V_pc_buffer_Copy=m_axis_tcp_close_connection_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tcp_close_connection_size; j != e; ++j) {
xlx_stream_m_axis_tcp_close_connection_pc_buffer.range(15, 0) = m_axis_tcp_close_connection_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_close_connection_pc_buffer.range(23, 16) = m_axis_tcp_close_connection_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_close_connection_pc_buffer.range(31, 24) = m_axis_tcp_close_connection_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_close_connection_pc_buffer.range(47, 40) = m_axis_tcp_close_connection_V_last_V_pc_buffer_Copy[j];
__cosim_s8__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0] = xlx_stream_m_axis_tcp_close_connection_pc_buffer.to_int64();
((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_close_connection)->write(xlx_stream_elt);
}}long __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_notification)->read();
{sc_bv<96> xlx_stream_m_axis_tcp_read_pkg_pc_buffer;
unsigned xlx_stream_m_axis_tcp_read_pkg_size = 0;

          std::vector<sc_bv<32> > m_axis_tcp_read_pkg_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_read_pkg_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tcp_read_pkg_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_read_pkg");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_read_pkg_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_read_pkg_size=m_axis_tcp_read_pkg_V_data_V_pc_buffer.size();
m_axis_tcp_read_pkg_V_data_V_pc_buffer_Copy=m_axis_tcp_read_pkg_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > m_axis_tcp_read_pkg_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_read_pkg_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tcp_read_pkg_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_read_pkg");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_read_pkg_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_read_pkg_size=m_axis_tcp_read_pkg_V_keep_V_pc_buffer.size();
m_axis_tcp_read_pkg_V_keep_V_pc_buffer_Copy=m_axis_tcp_read_pkg_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > m_axis_tcp_read_pkg_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_read_pkg_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tcp_read_pkg_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_read_pkg");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_read_pkg_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_read_pkg_size=m_axis_tcp_read_pkg_V_strb_V_pc_buffer.size();
m_axis_tcp_read_pkg_V_strb_V_pc_buffer_Copy=m_axis_tcp_read_pkg_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > m_axis_tcp_read_pkg_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_read_pkg_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tcp_read_pkg_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_read_pkg");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_read_pkg_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_read_pkg_size=m_axis_tcp_read_pkg_V_last_V_pc_buffer.size();
m_axis_tcp_read_pkg_V_last_V_pc_buffer_Copy=m_axis_tcp_read_pkg_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tcp_read_pkg_size; j != e; ++j) {
xlx_stream_m_axis_tcp_read_pkg_pc_buffer.range(31, 0) = m_axis_tcp_read_pkg_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_read_pkg_pc_buffer.range(39, 32) = m_axis_tcp_read_pkg_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_read_pkg_pc_buffer.range(47, 40) = m_axis_tcp_read_pkg_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_read_pkg_pc_buffer.range(63, 56) = m_axis_tcp_read_pkg_V_last_V_pc_buffer_Copy[j];
__cosim_sC__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = xlx_stream_m_axis_tcp_read_pkg_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = xlx_stream_m_axis_tcp_read_pkg_pc_buffer.range(95,64).to_int64();
((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_read_pkg)->write(xlx_stream_elt);
}}long __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size; ++i)((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_tcp_rx_meta)->read();
long __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size; ++i)((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_rx_data)->read();
{sc_bv<96> xlx_stream_m_axis_tcp_tx_meta_pc_buffer;
unsigned xlx_stream_m_axis_tcp_tx_meta_size = 0;

          std::vector<sc_bv<32> > m_axis_tcp_tx_meta_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_tx_meta_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tcp_tx_meta_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_tx_meta");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_tx_meta_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_tx_meta_size=m_axis_tcp_tx_meta_V_data_V_pc_buffer.size();
m_axis_tcp_tx_meta_V_data_V_pc_buffer_Copy=m_axis_tcp_tx_meta_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > m_axis_tcp_tx_meta_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_tx_meta_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tcp_tx_meta_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_tx_meta");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_tx_meta_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_tx_meta_size=m_axis_tcp_tx_meta_V_keep_V_pc_buffer.size();
m_axis_tcp_tx_meta_V_keep_V_pc_buffer_Copy=m_axis_tcp_tx_meta_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > m_axis_tcp_tx_meta_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_tx_meta_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tcp_tx_meta_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_tx_meta");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_tx_meta_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_tx_meta_size=m_axis_tcp_tx_meta_V_strb_V_pc_buffer.size();
m_axis_tcp_tx_meta_V_strb_V_pc_buffer_Copy=m_axis_tcp_tx_meta_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > m_axis_tcp_tx_meta_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_tx_meta_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > m_axis_tcp_tx_meta_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_tx_meta");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_tx_meta_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_tx_meta_size=m_axis_tcp_tx_meta_V_last_V_pc_buffer.size();
m_axis_tcp_tx_meta_V_last_V_pc_buffer_Copy=m_axis_tcp_tx_meta_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tcp_tx_meta_size; j != e; ++j) {
xlx_stream_m_axis_tcp_tx_meta_pc_buffer.range(31, 0) = m_axis_tcp_tx_meta_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_tx_meta_pc_buffer.range(39, 32) = m_axis_tcp_tx_meta_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_tx_meta_pc_buffer.range(47, 40) = m_axis_tcp_tx_meta_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_tx_meta_pc_buffer.range(63, 56) = m_axis_tcp_tx_meta_V_last_V_pc_buffer_Copy[j];
__cosim_sC__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = xlx_stream_m_axis_tcp_tx_meta_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = xlx_stream_m_axis_tcp_tx_meta_pc_buffer.range(95,64).to_int64();
((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_tx_meta)->write(xlx_stream_elt);
}}{sc_bv<1024> xlx_stream_m_axis_tcp_tx_data_pc_buffer;
unsigned xlx_stream_m_axis_tcp_tx_data_size = 0;

          std::vector<sc_bv<512> > m_axis_tcp_tx_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_tx_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tcp_tx_data_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_tx_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_tx_data_size=m_axis_tcp_tx_data_V_data_V_pc_buffer.size();
m_axis_tcp_tx_data_V_data_V_pc_buffer_Copy=m_axis_tcp_tx_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_tx_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_tx_data_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tcp_tx_data_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_tx_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_tx_data_size=m_axis_tcp_tx_data_V_keep_V_pc_buffer.size();
m_axis_tcp_tx_data_V_keep_V_pc_buffer_Copy=m_axis_tcp_tx_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_tx_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_tx_data_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tcp_tx_data_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_tx_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_tx_data_size=m_axis_tcp_tx_data_V_strb_V_pc_buffer.size();
m_axis_tcp_tx_data_V_strb_V_pc_buffer_Copy=m_axis_tcp_tx_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_tx_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_tx_data_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tcp_tx_data_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_tx_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_tx_data_size=m_axis_tcp_tx_data_V_last_V_pc_buffer.size();
m_axis_tcp_tx_data_V_last_V_pc_buffer_Copy=m_axis_tcp_tx_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tcp_tx_data_size; j != e; ++j) {
xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(511, 0) = m_axis_tcp_tx_data_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(575, 512) = m_axis_tcp_tx_data_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(639, 576) = m_axis_tcp_tx_data_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(655, 648) = m_axis_tcp_tx_data_V_last_V_pc_buffer_Copy[j];
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = xlx_stream_m_axis_tcp_tx_data_pc_buffer.range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_tx_data)->write(xlx_stream_elt);
}}long __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_tcp_tx_status)->read();

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem
aesl_fh.touch(AUTOTB_TVIN_gmem);
aesl_fh.touch(AUTOTB_TVOUT_gmem);
//s_axis_udp_rx
aesl_fh.touch(AUTOTB_TVIN_s_axis_udp_rx_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_udp_rx_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_udp_rx_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_udp_rx_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_udp_rx_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_udp_rx_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_udp_rx_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_udp_rx_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_last_V);
//m_axis_udp_tx
aesl_fh.touch(AUTOTB_TVIN_m_axis_udp_tx_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_udp_tx_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_udp_tx_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_udp_tx_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_udp_tx_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_udp_tx_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_udp_tx_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_udp_tx_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_V_last_V);
//s_axis_udp_rx_meta
aesl_fh.touch(AUTOTB_TVIN_s_axis_udp_rx_meta_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_udp_rx_meta_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_udp_rx_meta_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_udp_rx_meta_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_udp_rx_meta_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_udp_rx_meta_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_udp_rx_meta_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_udp_rx_meta_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_last_V);
//m_axis_udp_tx_meta
aesl_fh.touch(AUTOTB_TVIN_m_axis_udp_tx_meta_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_udp_tx_meta_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_udp_tx_meta_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_udp_tx_meta_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_meta_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_meta_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_meta_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_udp_tx_meta_V_last_V);
//m_axis_tcp_listen_port
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_listen_port_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_listen_port_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_listen_port_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_listen_port_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_listen_port_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_listen_port_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_listen_port_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_listen_port_V_last_V);
//s_axis_tcp_port_status
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_port_status_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_port_status_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_port_status_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_port_status_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_port_status_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_port_status_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_port_status_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_port_status_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_last_V);
//m_axis_tcp_open_connection
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_open_connection_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_open_connection_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_open_connection_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_open_connection_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_open_connection_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_open_connection_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_open_connection_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_open_connection_V_last_V);
//s_axis_tcp_open_status
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_open_status_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_open_status_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_open_status_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_open_status_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_open_status_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_open_status_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_open_status_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_open_status_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_last_V);
//m_axis_tcp_close_connection
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_close_connection_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_close_connection_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_close_connection_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_close_connection_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_close_connection_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_close_connection_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_close_connection_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_close_connection_V_last_V);
//s_axis_tcp_notification
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_notification_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_notification_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_notification_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_notification_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_notification_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_notification_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_notification_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_notification_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_last_V);
//m_axis_tcp_read_pkg
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_read_pkg_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_read_pkg_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_read_pkg_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_read_pkg_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_read_pkg_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_read_pkg_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_read_pkg_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_read_pkg_V_last_V);
//s_axis_tcp_rx_meta
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_rx_meta_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_rx_meta_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_rx_meta_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_rx_meta_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_last_V);
//s_axis_tcp_rx_data
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_rx_data_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_rx_data_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_rx_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_rx_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_rx_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_rx_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_rx_data_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_rx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_last_V);
//m_axis_tcp_tx_meta
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_tx_meta_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_tx_meta_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_tx_meta_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_tx_meta_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_meta_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_meta_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_meta_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_meta_V_last_V);
//m_axis_tcp_tx_data
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_tx_data_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_tx_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_tx_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_tx_data_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_tx_data_V_last_V);
//s_axis_tcp_tx_status
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_tx_status_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_tx_status_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_tx_status_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_tx_status_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_tx_status_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_tx_status_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_tx_status_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_tx_status_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_last_V);
//useConn
aesl_fh.touch(AUTOTB_TVIN_useConn);
aesl_fh.touch(AUTOTB_TVOUT_useConn);
//basePort
aesl_fh.touch(AUTOTB_TVIN_basePort);
aesl_fh.touch(AUTOTB_TVOUT_basePort);
//delay
aesl_fh.touch(AUTOTB_TVIN_delay);
aesl_fh.touch(AUTOTB_TVOUT_delay);
//expectedRxByteCnt
aesl_fh.touch(AUTOTB_TVIN_expectedRxByteCnt);
aesl_fh.touch(AUTOTB_TVOUT_expectedRxByteCnt);
//out_time
aesl_fh.touch(AUTOTB_TVIN_out_time);
aesl_fh.touch(AUTOTB_TVOUT_out_time);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_out_time = 0;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_out_time = 0*8;
  if (__xlx_apatb_param_out_time) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_out_time)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_s80__> __xlx_apatb_param_s_axis_udp_rx_stream_buf;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_udp_rx)->empty())
    __xlx_apatb_param_s_axis_udp_rx_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_udp_rx)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_udp_rx_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_udp_rx)->write(__xlx_apatb_param_s_axis_udp_rx_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_udp_rx_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_udp_rx)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_m_axis_udp_tx_stream_buf;
long __xlx_apatb_param_m_axis_udp_tx_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_udp_tx)->size();
std::vector<__cosim_s40__> __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_udp_rx_meta)->empty())
    __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_udp_rx_meta)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_udp_rx_meta)->write(__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_udp_rx_meta)->size();
std::vector<__cosim_s40__> __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf;
long __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_udp_tx_meta)->size();
std::vector<__cosim_s8__> __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf;
long __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_size = ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_listen_port)->size();
std::vector<__cosim_s7__> __xlx_apatb_param_s_axis_tcp_port_status_stream_buf;
{
  while (!((hls::stream<__cosim_s7__>*)__xlx_apatb_param_s_axis_tcp_port_status)->empty())
    __xlx_apatb_param_s_axis_tcp_port_status_stream_buf.push_back(((hls::stream<__cosim_s7__>*)__xlx_apatb_param_s_axis_tcp_port_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_port_status_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s7__>*)__xlx_apatb_param_s_axis_tcp_port_status)->write(__xlx_apatb_param_s_axis_tcp_port_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_size = ((hls::stream<__cosim_s7__>*)__xlx_apatb_param_s_axis_tcp_port_status)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf;
long __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tcp_open_connection)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_s_axis_tcp_open_status_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_open_status)->empty())
    __xlx_apatb_param_s_axis_tcp_open_status_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_open_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_open_status_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_open_status)->write(__xlx_apatb_param_s_axis_tcp_open_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_open_status)->size();
std::vector<__cosim_s8__> __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf;
long __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_size = ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_close_connection)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_s_axis_tcp_notification_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_notification)->empty())
    __xlx_apatb_param_s_axis_tcp_notification_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_notification)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_notification_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_notification)->write(__xlx_apatb_param_s_axis_tcp_notification_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tcp_notification_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_notification)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf;
long __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_read_pkg)->size();
std::vector<__cosim_s8__> __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf;
{
  while (!((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_tcp_rx_meta)->empty())
    __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf.push_back(((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_tcp_rx_meta)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_tcp_rx_meta)->write(__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_size = ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_tcp_rx_meta)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_rx_data)->empty())
    __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_rx_data)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_rx_data)->write(__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_rx_data)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf;
long __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_tx_meta)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf;
long __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_tx_data)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_tcp_tx_status)->empty())
    __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_tcp_tx_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_tcp_tx_status)->write(__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_tcp_tx_status)->size();
// print useConn Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_useConn, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_useConn);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_useConn, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.useConn_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_useConn, __xlx_sprintf_buffer.data());
}
// print basePort Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_basePort, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_basePort);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_basePort, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.basePort_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_basePort, __xlx_sprintf_buffer.data());
}
// print delay Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_delay, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_delay);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_delay, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.delay_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_delay, __xlx_sprintf_buffer.data());
}
// print expectedRxByteCnt Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_expectedRxByteCnt, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_expectedRxByteCnt);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_expectedRxByteCnt, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.expectedRxByteCnt_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_expectedRxByteCnt, __xlx_sprintf_buffer.data());
}
// print out_time Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_out_time, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_out_time;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_out_time, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.out_time_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_out_time, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
hls_recv_krnl_hw_stub_wrapper(__xlx_apatb_param_s_axis_udp_rx, __xlx_apatb_param_m_axis_udp_tx, __xlx_apatb_param_s_axis_udp_rx_meta, __xlx_apatb_param_m_axis_udp_tx_meta, __xlx_apatb_param_m_axis_tcp_listen_port, __xlx_apatb_param_s_axis_tcp_port_status, __xlx_apatb_param_m_axis_tcp_open_connection, __xlx_apatb_param_s_axis_tcp_open_status, __xlx_apatb_param_m_axis_tcp_close_connection, __xlx_apatb_param_s_axis_tcp_notification, __xlx_apatb_param_m_axis_tcp_read_pkg, __xlx_apatb_param_s_axis_tcp_rx_meta, __xlx_apatb_param_s_axis_tcp_rx_data, __xlx_apatb_param_m_axis_tcp_tx_meta, __xlx_apatb_param_m_axis_tcp_tx_data, __xlx_apatb_param_s_axis_tcp_tx_status, __xlx_apatb_param_useConn, __xlx_apatb_param_basePort, __xlx_apatb_param_delay, __xlx_apatb_param_expectedRxByteCnt, __xlx_apatb_param_out_time);
CodeState = DUMP_OUTPUTS;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_out_time = 0*8;
  if (__xlx_apatb_param_out_time) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_out_time)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
}
long __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size = __xlx_apatb_param_s_axis_udp_rx_stream_buf_size - ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_udp_rx)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_stream_buf[j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size, &tcl_file.s_axis_udp_rx_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size, &tcl_file.s_axis_udp_rx_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size, &tcl_file.s_axis_udp_rx_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size, &tcl_file.s_axis_udp_rx_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size > 0) {
  long s_axis_udp_rx_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_udp_rx_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size; j != e; j++) {
    s_axis_udp_rx_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_udp_rx_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size > 0) {
  long s_axis_udp_rx_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_udp_rx_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size; j != e; j++) {
    s_axis_udp_rx_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_udp_rx_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size > 0) {
  long s_axis_udp_rx_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_udp_rx_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size; j != e; j++) {
    s_axis_udp_rx_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_udp_rx_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size > 0) {
  long s_axis_udp_rx_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_udp_rx_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size; j != e; j++) {
    s_axis_udp_rx_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_udp_rx_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_udp_rx_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_udp_tx)->size() - __xlx_apatb_param_m_axis_udp_tx_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_udp_tx)->empty())
    __xlx_apatb_param_m_axis_udp_tx_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_udp_tx)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_udp_tx_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_udp_tx)->write(__xlx_apatb_param_m_axis_udp_tx_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_stream_buf[__xlx_apatb_param_m_axis_udp_tx_stream_buf_size+j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size, &tcl_file.m_axis_udp_tx_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size, &tcl_file.m_axis_udp_tx_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size, &tcl_file.m_axis_udp_tx_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size, &tcl_file.m_axis_udp_tx_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_udp_tx_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_udp_rx_meta)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf[j])[0*8+7];
sc_bv<256> __xlx_tmp_0_lv = __xlx_tmp_lv.range(255, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<32> __xlx_tmp_1_lv = __xlx_tmp_lv.range(287, 256);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<32> __xlx_tmp_2_lv = __xlx_tmp_lv.range(319, 288);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(335, 328);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size, &tcl_file.s_axis_udp_rx_meta_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size, &tcl_file.s_axis_udp_rx_meta_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size, &tcl_file.s_axis_udp_rx_meta_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size, &tcl_file.s_axis_udp_rx_meta_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size > 0) {
  long s_axis_udp_rx_meta_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size; j != e; j++) {
    s_axis_udp_rx_meta_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_udp_rx_meta_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size > 0) {
  long s_axis_udp_rx_meta_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size; j != e; j++) {
    s_axis_udp_rx_meta_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_udp_rx_meta_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size > 0) {
  long s_axis_udp_rx_meta_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size; j != e; j++) {
    s_axis_udp_rx_meta_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_udp_rx_meta_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size > 0) {
  long s_axis_udp_rx_meta_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size; j != e; j++) {
    s_axis_udp_rx_meta_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_udp_rx_meta_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_udp_rx_meta_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_udp_rx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_udp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_udp_tx_meta)->size() - __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_udp_tx_meta)->empty())
    __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_udp_tx_meta)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_udp_tx_meta)->write(__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_size+j])[0*8+7];
sc_bv<256> __xlx_tmp_0_lv = __xlx_tmp_lv.range(255, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<32> __xlx_tmp_1_lv = __xlx_tmp_lv.range(287, 256);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<32> __xlx_tmp_2_lv = __xlx_tmp_lv.range(319, 288);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(335, 328);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size, &tcl_file.m_axis_udp_tx_meta_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size, &tcl_file.m_axis_udp_tx_meta_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size, &tcl_file.m_axis_udp_tx_meta_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size, &tcl_file.m_axis_udp_tx_meta_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_udp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_udp_tx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_udp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size = ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_listen_port)->size() - __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_size;
{
  while (!((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_listen_port)->empty())
    __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf.push_back(((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_listen_port)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_listen_port)->write(__xlx_apatb_param_m_axis_tcp_listen_port_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)&__xlx_apatb_param_m_axis_tcp_listen_port_stream_buf[__xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_size+j])[0];
sc_bv<16> __xlx_tmp_0_lv = __xlx_tmp_lv.range(15, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(23, 16);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(31, 24);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size, &tcl_file.m_axis_tcp_listen_port_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size, &tcl_file.m_axis_tcp_listen_port_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size, &tcl_file.m_axis_tcp_listen_port_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size, &tcl_file.m_axis_tcp_listen_port_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_listen_port_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_listen_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_listen_port_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_size - ((hls::stream<__cosim_s7__>*)__xlx_apatb_param_s_axis_tcp_port_status)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size; j != e; ++j) {
sc_bv<56> __xlx_tmp_lv = ((long long*)&__xlx_apatb_param_s_axis_tcp_port_status_stream_buf[j])[0];
sc_bv<8> __xlx_tmp_0_lv = __xlx_tmp_lv.range(7, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(15, 8);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(23, 16);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(39, 32);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size, &tcl_file.s_axis_tcp_port_status_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size, &tcl_file.s_axis_tcp_port_status_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size, &tcl_file.s_axis_tcp_port_status_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size, &tcl_file.s_axis_tcp_port_status_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size > 0) {
  long s_axis_tcp_port_status_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_port_status_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_port_status_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size > 0) {
  long s_axis_tcp_port_status_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_port_status_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_port_status_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size > 0) {
  long s_axis_tcp_port_status_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_port_status_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_port_status_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size > 0) {
  long s_axis_tcp_port_status_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_port_status_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_port_status_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_port_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_port_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_port_status_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tcp_open_connection)->size() - __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tcp_open_connection)->empty())
    __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tcp_open_connection)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tcp_open_connection)->write(__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf[__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf[__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_size+j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(79, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(95, 88);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size, &tcl_file.m_axis_tcp_open_connection_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size, &tcl_file.m_axis_tcp_open_connection_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size, &tcl_file.m_axis_tcp_open_connection_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size, &tcl_file.m_axis_tcp_open_connection_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_open_connection_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_open_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_open_connection_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_open_status)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tcp_open_status_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_tcp_open_status_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_tcp_open_status_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_tcp_open_status_stream_buf[j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size, &tcl_file.s_axis_tcp_open_status_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size, &tcl_file.s_axis_tcp_open_status_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size, &tcl_file.s_axis_tcp_open_status_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size, &tcl_file.s_axis_tcp_open_status_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size > 0) {
  long s_axis_tcp_open_status_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_open_status_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_open_status_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size > 0) {
  long s_axis_tcp_open_status_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_open_status_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_open_status_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size > 0) {
  long s_axis_tcp_open_status_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_open_status_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_open_status_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size > 0) {
  long s_axis_tcp_open_status_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_open_status_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_open_status_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_open_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_open_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_open_status_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size = ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_close_connection)->size() - __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_size;
{
  while (!((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_close_connection)->empty())
    __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf.push_back(((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_close_connection)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_close_connection)->write(__xlx_apatb_param_m_axis_tcp_close_connection_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)&__xlx_apatb_param_m_axis_tcp_close_connection_stream_buf[__xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_size+j])[0];
sc_bv<16> __xlx_tmp_0_lv = __xlx_tmp_lv.range(15, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(23, 16);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(31, 24);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size, &tcl_file.m_axis_tcp_close_connection_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size, &tcl_file.m_axis_tcp_close_connection_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size, &tcl_file.m_axis_tcp_close_connection_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size, &tcl_file.m_axis_tcp_close_connection_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_close_connection_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_close_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_close_connection_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_notification)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tcp_notification_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_tcp_notification_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_tcp_notification_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_tcp_notification_stream_buf[j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size, &tcl_file.s_axis_tcp_notification_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size, &tcl_file.s_axis_tcp_notification_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size, &tcl_file.s_axis_tcp_notification_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size, &tcl_file.s_axis_tcp_notification_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size > 0) {
  long s_axis_tcp_notification_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_notification_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_notification_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size > 0) {
  long s_axis_tcp_notification_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_notification_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_notification_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size > 0) {
  long s_axis_tcp_notification_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_notification_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_notification_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size > 0) {
  long s_axis_tcp_notification_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_notification_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_notification_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_notification_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_notification_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_notification_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_read_pkg)->size() - __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_size;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_read_pkg)->empty())
    __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_read_pkg)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_read_pkg)->write(__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf[__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf[__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_size+j])[0*1+1];
sc_bv<32> __xlx_tmp_0_lv = __xlx_tmp_lv.range(31, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(39, 32);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(63, 56);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size, &tcl_file.m_axis_tcp_read_pkg_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size, &tcl_file.m_axis_tcp_read_pkg_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size, &tcl_file.m_axis_tcp_read_pkg_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size, &tcl_file.m_axis_tcp_read_pkg_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_read_pkg_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_read_pkg_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_read_pkg_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_size - ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_tcp_rx_meta)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf[j])[0];
sc_bv<16> __xlx_tmp_0_lv = __xlx_tmp_lv.range(15, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(23, 16);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(31, 24);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size, &tcl_file.s_axis_tcp_rx_meta_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size, &tcl_file.s_axis_tcp_rx_meta_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size, &tcl_file.s_axis_tcp_rx_meta_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size, &tcl_file.s_axis_tcp_rx_meta_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size > 0) {
  long s_axis_tcp_rx_meta_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_rx_meta_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_rx_meta_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size > 0) {
  long s_axis_tcp_rx_meta_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_rx_meta_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_rx_meta_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size > 0) {
  long s_axis_tcp_rx_meta_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_rx_meta_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_rx_meta_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size > 0) {
  long s_axis_tcp_rx_meta_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_rx_meta_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_rx_meta_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_meta_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_rx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_meta_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_size - ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_rx_data)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf[j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size, &tcl_file.s_axis_tcp_rx_data_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size, &tcl_file.s_axis_tcp_rx_data_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size, &tcl_file.s_axis_tcp_rx_data_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size, &tcl_file.s_axis_tcp_rx_data_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size > 0) {
  long s_axis_tcp_rx_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_rx_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_rx_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size > 0) {
  long s_axis_tcp_rx_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_rx_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_rx_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size > 0) {
  long s_axis_tcp_rx_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_rx_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_rx_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size > 0) {
  long s_axis_tcp_rx_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_rx_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_rx_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_rx_data_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_tx_meta)->size() - __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_size;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_tx_meta)->empty())
    __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_tx_meta)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_tx_meta)->write(__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_size+j])[0*1+1];
sc_bv<32> __xlx_tmp_0_lv = __xlx_tmp_lv.range(31, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(39, 32);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(63, 56);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size, &tcl_file.m_axis_tcp_tx_meta_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size, &tcl_file.m_axis_tcp_tx_meta_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size, &tcl_file.m_axis_tcp_tx_meta_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size, &tcl_file.m_axis_tcp_tx_meta_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_tx_meta_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_meta_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_tx_data)->size() - __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_tx_data)->empty())
    __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_tx_data)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_tx_data)->write(__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf[__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_size+j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size, &tcl_file.m_axis_tcp_tx_data_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size, &tcl_file.m_axis_tcp_tx_data_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size, &tcl_file.m_axis_tcp_tx_data_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size, &tcl_file.m_axis_tcp_tx_data_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_tx_data_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_tx_data_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_tcp_tx_status)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf[j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(79, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(95, 88);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size, &tcl_file.s_axis_tcp_tx_status_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size, &tcl_file.s_axis_tcp_tx_status_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size, &tcl_file.s_axis_tcp_tx_status_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size, &tcl_file.s_axis_tcp_tx_status_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size > 0) {
  long s_axis_tcp_tx_status_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_tx_status_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_tx_status_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size > 0) {
  long s_axis_tcp_tx_status_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_tx_status_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_tx_status_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size > 0) {
  long s_axis_tcp_tx_status_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_tx_status_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_tx_status_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size > 0) {
  long s_axis_tcp_tx_status_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_tx_status_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_tx_status_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_tx_status_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_tx_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_tx_status_V_last_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
