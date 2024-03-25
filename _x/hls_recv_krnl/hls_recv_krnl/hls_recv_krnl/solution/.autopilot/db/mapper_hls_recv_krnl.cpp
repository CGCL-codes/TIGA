#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_s_axis_udp_rx_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_udp_rx_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_udp_rx_V.dat");
unsigned int ap_apatb_m_axis_udp_tx_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_udp_tx_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_udp_tx_V.dat");
unsigned int ap_apatb_s_axis_udp_rx_meta_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_udp_rx_meta_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_udp_rx_meta_V.dat");
unsigned int ap_apatb_m_axis_udp_tx_meta_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_udp_tx_meta_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_udp_tx_meta_V.dat");
unsigned int ap_apatb_m_axis_tcp_listen_port_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tcp_listen_port_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tcp_listen_port_V.dat");
unsigned int ap_apatb_s_axis_tcp_port_status_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tcp_port_status_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tcp_port_status_V.dat");
unsigned int ap_apatb_m_axis_tcp_open_connection_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tcp_open_connection_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tcp_open_connection_V.dat");
unsigned int ap_apatb_s_axis_tcp_open_status_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tcp_open_status_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tcp_open_status_V.dat");
unsigned int ap_apatb_m_axis_tcp_close_connection_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tcp_close_connection_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tcp_close_connection_V.dat");
unsigned int ap_apatb_s_axis_tcp_notification_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tcp_notification_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tcp_notification_V.dat");
unsigned int ap_apatb_m_axis_tcp_read_pkg_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tcp_read_pkg_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tcp_read_pkg_V.dat");
unsigned int ap_apatb_s_axis_tcp_rx_meta_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tcp_rx_meta_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tcp_rx_meta_V.dat");
unsigned int ap_apatb_s_axis_tcp_rx_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tcp_rx_data_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tcp_rx_data_V.dat");
unsigned int ap_apatb_m_axis_tcp_tx_meta_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tcp_tx_meta_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tcp_tx_meta_V.dat");
unsigned int ap_apatb_m_axis_tcp_tx_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tcp_tx_data_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tcp_tx_data_V.dat");
unsigned int ap_apatb_s_axis_tcp_tx_status_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tcp_tx_status_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tcp_tx_status_V.dat");
struct __cosim_s80__ { char data[128]; };
struct __cosim_s40__ { char data[64]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s7__ { char data[7]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s20__ { char data[32]; };
struct __cosim_sC__ { char data[12]; };
extern "C" void hls_recv_krnl(long long*, __cosim_s80__*, __cosim_s80__*, __cosim_s40__*, __cosim_s40__*, __cosim_s8__*, __cosim_s7__*, __cosim_s10__*, __cosim_s20__*, __cosim_s8__*, __cosim_s20__*, __cosim_sC__*, __cosim_s8__*, __cosim_s80__*, __cosim_sC__*, __cosim_s80__*, __cosim_s10__*, int, int, int, __cosim_s8__, int);
extern "C" void apatb_hls_recv_krnl_hw(volatile void * __xlx_apatb_param_s_axis_udp_rx, volatile void * __xlx_apatb_param_m_axis_udp_tx, volatile void * __xlx_apatb_param_s_axis_udp_rx_meta, volatile void * __xlx_apatb_param_m_axis_udp_tx_meta, volatile void * __xlx_apatb_param_m_axis_tcp_listen_port, volatile void * __xlx_apatb_param_s_axis_tcp_port_status, volatile void * __xlx_apatb_param_m_axis_tcp_open_connection, volatile void * __xlx_apatb_param_s_axis_tcp_open_status, volatile void * __xlx_apatb_param_m_axis_tcp_close_connection, volatile void * __xlx_apatb_param_s_axis_tcp_notification, volatile void * __xlx_apatb_param_m_axis_tcp_read_pkg, volatile void * __xlx_apatb_param_s_axis_tcp_rx_meta, volatile void * __xlx_apatb_param_s_axis_tcp_rx_data, volatile void * __xlx_apatb_param_m_axis_tcp_tx_meta, volatile void * __xlx_apatb_param_m_axis_tcp_tx_data, volatile void * __xlx_apatb_param_s_axis_tcp_tx_status, int __xlx_apatb_param_useConn, int __xlx_apatb_param_basePort, int __xlx_apatb_param_delay, __cosim_s8__ __xlx_apatb_param_expectedRxByteCnt, volatile void * __xlx_apatb_param_out_time) {
  // Collect __xlx_out_time__tmp_vec
  vector<sc_bv<64> >__xlx_out_time__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_out_time__tmp_vec.push_back(((long long*)__xlx_apatb_param_out_time)[j]);
  }
  int __xlx_size_param_out_time = 1;
  int __xlx_offset_param_out_time = 0;
  int __xlx_offset_byte_param_out_time = 0*8;
  long long* __xlx_out_time__input_buffer= new long long[__xlx_out_time__tmp_vec.size()];
  for (int i = 0; i < __xlx_out_time__tmp_vec.size(); ++i) {
    __xlx_out_time__input_buffer[i] = __xlx_out_time__tmp_vec[i].range(63, 0).to_uint64();
  }
  // collect __xlx_s_axis_udp_rx_tmp_vec
  unsigned __xlx_s_axis_udp_rx_V_tmp_Count = 0;
  unsigned __xlx_s_axis_udp_rx_V_read_Size = __xlx_s_axis_udp_rx_V_size_Reader.read_size();
  vector<__cosim_s80__> __xlx_s_axis_udp_rx_tmp_vec;
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_udp_rx)->empty() && __xlx_s_axis_udp_rx_V_tmp_Count < __xlx_s_axis_udp_rx_V_read_Size) {
    __xlx_s_axis_udp_rx_tmp_vec.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_udp_rx)->read());
    __xlx_s_axis_udp_rx_V_tmp_Count++;
  }
  ap_apatb_s_axis_udp_rx_V_cap_bc = __xlx_s_axis_udp_rx_tmp_vec.size();
  // store input buffer
  __cosim_s80__* __xlx_s_axis_udp_rx_input_buffer= new __cosim_s80__[__xlx_s_axis_udp_rx_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_udp_rx_tmp_vec.size(); ++i) {
    __xlx_s_axis_udp_rx_input_buffer[i] = __xlx_s_axis_udp_rx_tmp_vec[i];
  }
  //Create input buffer for m_axis_udp_tx
  ap_apatb_m_axis_udp_tx_V_cap_bc = __xlx_m_axis_udp_tx_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_udp_tx_input_buffer= new __cosim_s80__[ap_apatb_m_axis_udp_tx_V_cap_bc];
  // collect __xlx_s_axis_udp_rx_meta_tmp_vec
  unsigned __xlx_s_axis_udp_rx_meta_V_tmp_Count = 0;
  unsigned __xlx_s_axis_udp_rx_meta_V_read_Size = __xlx_s_axis_udp_rx_meta_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_s_axis_udp_rx_meta_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_udp_rx_meta)->empty() && __xlx_s_axis_udp_rx_meta_V_tmp_Count < __xlx_s_axis_udp_rx_meta_V_read_Size) {
    __xlx_s_axis_udp_rx_meta_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_udp_rx_meta)->read());
    __xlx_s_axis_udp_rx_meta_V_tmp_Count++;
  }
  ap_apatb_s_axis_udp_rx_meta_V_cap_bc = __xlx_s_axis_udp_rx_meta_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_s_axis_udp_rx_meta_input_buffer= new __cosim_s40__[__xlx_s_axis_udp_rx_meta_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_udp_rx_meta_tmp_vec.size(); ++i) {
    __xlx_s_axis_udp_rx_meta_input_buffer[i] = __xlx_s_axis_udp_rx_meta_tmp_vec[i];
  }
  //Create input buffer for m_axis_udp_tx_meta
  ap_apatb_m_axis_udp_tx_meta_V_cap_bc = __xlx_m_axis_udp_tx_meta_V_size_Reader.read_size();
  __cosim_s40__* __xlx_m_axis_udp_tx_meta_input_buffer= new __cosim_s40__[ap_apatb_m_axis_udp_tx_meta_V_cap_bc];
  //Create input buffer for m_axis_tcp_listen_port
  ap_apatb_m_axis_tcp_listen_port_V_cap_bc = __xlx_m_axis_tcp_listen_port_V_size_Reader.read_size();
  __cosim_s8__* __xlx_m_axis_tcp_listen_port_input_buffer= new __cosim_s8__[ap_apatb_m_axis_tcp_listen_port_V_cap_bc];
  // collect __xlx_s_axis_tcp_port_status_tmp_vec
  unsigned __xlx_s_axis_tcp_port_status_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tcp_port_status_V_read_Size = __xlx_s_axis_tcp_port_status_V_size_Reader.read_size();
  vector<__cosim_s7__> __xlx_s_axis_tcp_port_status_tmp_vec;
  while (!((hls::stream<__cosim_s7__>*)__xlx_apatb_param_s_axis_tcp_port_status)->empty() && __xlx_s_axis_tcp_port_status_V_tmp_Count < __xlx_s_axis_tcp_port_status_V_read_Size) {
    __xlx_s_axis_tcp_port_status_tmp_vec.push_back(((hls::stream<__cosim_s7__>*)__xlx_apatb_param_s_axis_tcp_port_status)->read());
    __xlx_s_axis_tcp_port_status_V_tmp_Count++;
  }
  ap_apatb_s_axis_tcp_port_status_V_cap_bc = __xlx_s_axis_tcp_port_status_tmp_vec.size();
  // store input buffer
  __cosim_s7__* __xlx_s_axis_tcp_port_status_input_buffer= new __cosim_s7__[__xlx_s_axis_tcp_port_status_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tcp_port_status_tmp_vec.size(); ++i) {
    __xlx_s_axis_tcp_port_status_input_buffer[i] = __xlx_s_axis_tcp_port_status_tmp_vec[i];
  }
  //Create input buffer for m_axis_tcp_open_connection
  ap_apatb_m_axis_tcp_open_connection_V_cap_bc = __xlx_m_axis_tcp_open_connection_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_tcp_open_connection_input_buffer= new __cosim_s10__[ap_apatb_m_axis_tcp_open_connection_V_cap_bc];
  // collect __xlx_s_axis_tcp_open_status_tmp_vec
  unsigned __xlx_s_axis_tcp_open_status_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tcp_open_status_V_read_Size = __xlx_s_axis_tcp_open_status_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_s_axis_tcp_open_status_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_open_status)->empty() && __xlx_s_axis_tcp_open_status_V_tmp_Count < __xlx_s_axis_tcp_open_status_V_read_Size) {
    __xlx_s_axis_tcp_open_status_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_open_status)->read());
    __xlx_s_axis_tcp_open_status_V_tmp_Count++;
  }
  ap_apatb_s_axis_tcp_open_status_V_cap_bc = __xlx_s_axis_tcp_open_status_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_s_axis_tcp_open_status_input_buffer= new __cosim_s20__[__xlx_s_axis_tcp_open_status_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tcp_open_status_tmp_vec.size(); ++i) {
    __xlx_s_axis_tcp_open_status_input_buffer[i] = __xlx_s_axis_tcp_open_status_tmp_vec[i];
  }
  //Create input buffer for m_axis_tcp_close_connection
  ap_apatb_m_axis_tcp_close_connection_V_cap_bc = __xlx_m_axis_tcp_close_connection_V_size_Reader.read_size();
  __cosim_s8__* __xlx_m_axis_tcp_close_connection_input_buffer= new __cosim_s8__[ap_apatb_m_axis_tcp_close_connection_V_cap_bc];
  // collect __xlx_s_axis_tcp_notification_tmp_vec
  unsigned __xlx_s_axis_tcp_notification_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tcp_notification_V_read_Size = __xlx_s_axis_tcp_notification_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_s_axis_tcp_notification_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_notification)->empty() && __xlx_s_axis_tcp_notification_V_tmp_Count < __xlx_s_axis_tcp_notification_V_read_Size) {
    __xlx_s_axis_tcp_notification_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_tcp_notification)->read());
    __xlx_s_axis_tcp_notification_V_tmp_Count++;
  }
  ap_apatb_s_axis_tcp_notification_V_cap_bc = __xlx_s_axis_tcp_notification_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_s_axis_tcp_notification_input_buffer= new __cosim_s20__[__xlx_s_axis_tcp_notification_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tcp_notification_tmp_vec.size(); ++i) {
    __xlx_s_axis_tcp_notification_input_buffer[i] = __xlx_s_axis_tcp_notification_tmp_vec[i];
  }
  //Create input buffer for m_axis_tcp_read_pkg
  ap_apatb_m_axis_tcp_read_pkg_V_cap_bc = __xlx_m_axis_tcp_read_pkg_V_size_Reader.read_size();
  __cosim_sC__* __xlx_m_axis_tcp_read_pkg_input_buffer= new __cosim_sC__[ap_apatb_m_axis_tcp_read_pkg_V_cap_bc];
  // collect __xlx_s_axis_tcp_rx_meta_tmp_vec
  unsigned __xlx_s_axis_tcp_rx_meta_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tcp_rx_meta_V_read_Size = __xlx_s_axis_tcp_rx_meta_V_size_Reader.read_size();
  vector<__cosim_s8__> __xlx_s_axis_tcp_rx_meta_tmp_vec;
  while (!((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_tcp_rx_meta)->empty() && __xlx_s_axis_tcp_rx_meta_V_tmp_Count < __xlx_s_axis_tcp_rx_meta_V_read_Size) {
    __xlx_s_axis_tcp_rx_meta_tmp_vec.push_back(((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_tcp_rx_meta)->read());
    __xlx_s_axis_tcp_rx_meta_V_tmp_Count++;
  }
  ap_apatb_s_axis_tcp_rx_meta_V_cap_bc = __xlx_s_axis_tcp_rx_meta_tmp_vec.size();
  // store input buffer
  __cosim_s8__* __xlx_s_axis_tcp_rx_meta_input_buffer= new __cosim_s8__[__xlx_s_axis_tcp_rx_meta_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tcp_rx_meta_tmp_vec.size(); ++i) {
    __xlx_s_axis_tcp_rx_meta_input_buffer[i] = __xlx_s_axis_tcp_rx_meta_tmp_vec[i];
  }
  // collect __xlx_s_axis_tcp_rx_data_tmp_vec
  unsigned __xlx_s_axis_tcp_rx_data_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tcp_rx_data_V_read_Size = __xlx_s_axis_tcp_rx_data_V_size_Reader.read_size();
  vector<__cosim_s80__> __xlx_s_axis_tcp_rx_data_tmp_vec;
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_rx_data)->empty() && __xlx_s_axis_tcp_rx_data_V_tmp_Count < __xlx_s_axis_tcp_rx_data_V_read_Size) {
    __xlx_s_axis_tcp_rx_data_tmp_vec.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_rx_data)->read());
    __xlx_s_axis_tcp_rx_data_V_tmp_Count++;
  }
  ap_apatb_s_axis_tcp_rx_data_V_cap_bc = __xlx_s_axis_tcp_rx_data_tmp_vec.size();
  // store input buffer
  __cosim_s80__* __xlx_s_axis_tcp_rx_data_input_buffer= new __cosim_s80__[__xlx_s_axis_tcp_rx_data_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tcp_rx_data_tmp_vec.size(); ++i) {
    __xlx_s_axis_tcp_rx_data_input_buffer[i] = __xlx_s_axis_tcp_rx_data_tmp_vec[i];
  }
  //Create input buffer for m_axis_tcp_tx_meta
  ap_apatb_m_axis_tcp_tx_meta_V_cap_bc = __xlx_m_axis_tcp_tx_meta_V_size_Reader.read_size();
  __cosim_sC__* __xlx_m_axis_tcp_tx_meta_input_buffer= new __cosim_sC__[ap_apatb_m_axis_tcp_tx_meta_V_cap_bc];
  //Create input buffer for m_axis_tcp_tx_data
  ap_apatb_m_axis_tcp_tx_data_V_cap_bc = __xlx_m_axis_tcp_tx_data_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_tcp_tx_data_input_buffer= new __cosim_s80__[ap_apatb_m_axis_tcp_tx_data_V_cap_bc];
  // collect __xlx_s_axis_tcp_tx_status_tmp_vec
  unsigned __xlx_s_axis_tcp_tx_status_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tcp_tx_status_V_read_Size = __xlx_s_axis_tcp_tx_status_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_s_axis_tcp_tx_status_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_tcp_tx_status)->empty() && __xlx_s_axis_tcp_tx_status_V_tmp_Count < __xlx_s_axis_tcp_tx_status_V_read_Size) {
    __xlx_s_axis_tcp_tx_status_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_tcp_tx_status)->read());
    __xlx_s_axis_tcp_tx_status_V_tmp_Count++;
  }
  ap_apatb_s_axis_tcp_tx_status_V_cap_bc = __xlx_s_axis_tcp_tx_status_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_s_axis_tcp_tx_status_input_buffer= new __cosim_s10__[__xlx_s_axis_tcp_tx_status_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tcp_tx_status_tmp_vec.size(); ++i) {
    __xlx_s_axis_tcp_tx_status_input_buffer[i] = __xlx_s_axis_tcp_tx_status_tmp_vec[i];
  }
  // DUT call
  hls_recv_krnl(__xlx_out_time__input_buffer, __xlx_s_axis_udp_rx_input_buffer, __xlx_m_axis_udp_tx_input_buffer, __xlx_s_axis_udp_rx_meta_input_buffer, __xlx_m_axis_udp_tx_meta_input_buffer, __xlx_m_axis_tcp_listen_port_input_buffer, __xlx_s_axis_tcp_port_status_input_buffer, __xlx_m_axis_tcp_open_connection_input_buffer, __xlx_s_axis_tcp_open_status_input_buffer, __xlx_m_axis_tcp_close_connection_input_buffer, __xlx_s_axis_tcp_notification_input_buffer, __xlx_m_axis_tcp_read_pkg_input_buffer, __xlx_s_axis_tcp_rx_meta_input_buffer, __xlx_s_axis_tcp_rx_data_input_buffer, __xlx_m_axis_tcp_tx_meta_input_buffer, __xlx_m_axis_tcp_tx_data_input_buffer, __xlx_s_axis_tcp_tx_status_input_buffer, __xlx_apatb_param_useConn, __xlx_apatb_param_basePort, __xlx_apatb_param_delay, __xlx_apatb_param_expectedRxByteCnt, __xlx_offset_byte_param_out_time);
// print __xlx_apatb_param_out_time
  sc_bv<64>*__xlx_out_time_output_buffer = new sc_bv<64>[__xlx_size_param_out_time];
  for (int i = 0; i < __xlx_size_param_out_time; ++i) {
    __xlx_out_time_output_buffer[i] = __xlx_out_time__input_buffer[i+__xlx_offset_param_out_time];
  }
  for (int i = 0; i < __xlx_size_param_out_time; ++i) {
    ((long long*)__xlx_apatb_param_out_time)[i] = __xlx_out_time_output_buffer[i].to_uint64();
  }
  for (unsigned i = 0; i <ap_apatb_m_axis_udp_tx_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_udp_tx)->write(__xlx_m_axis_udp_tx_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_udp_tx_meta_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_udp_tx_meta)->write(__xlx_m_axis_udp_tx_meta_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tcp_listen_port_V_cap_bc; ++i)
    ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_listen_port)->write(__xlx_m_axis_tcp_listen_port_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tcp_open_connection_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tcp_open_connection)->write(__xlx_m_axis_tcp_open_connection_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tcp_close_connection_V_cap_bc; ++i)
    ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_tcp_close_connection)->write(__xlx_m_axis_tcp_close_connection_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tcp_read_pkg_V_cap_bc; ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_read_pkg)->write(__xlx_m_axis_tcp_read_pkg_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tcp_tx_meta_V_cap_bc; ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tcp_tx_meta)->write(__xlx_m_axis_tcp_tx_meta_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tcp_tx_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_tx_data)->write(__xlx_m_axis_tcp_tx_data_input_buffer[i]);
}
