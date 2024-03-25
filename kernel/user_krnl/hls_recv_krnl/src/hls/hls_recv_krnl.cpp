/*
 * Copyright (c) 2020, Systems Group, ETH Zurich
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 * 3. Neither the name of the copyright holder nor the names of its contributors
 * may be used to endorse or promote products derived from this software
 * without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include "ap_axi_sdata.h"
#include <ap_fixed.h>
#include "ap_int.h"
#include "communication.hpp"
#include "hls_stream.h"
#include "xf_security/sha3.hpp"
#include "xf_security/cbc.hpp"
#include <time.h>

void backgroundclock(ap_uint<64> *out_time,
                     hls::stream<ap_uint<32>> &timesha,
                     hls::stream<ap_uint<32>> &timeaes)
{
     ap_uint<64> time = 0;
     ap_uint<64> timecnt = 0;
     while (timecnt < 4)
     {
          time++;
          if (!timesha.empty())
          {
               ap_uint<32> reg = timesha.read();
               out_time[reg] = time;
               timecnt++;
          }
          else if (!timeaes.empty())
          {
               ap_uint<32> reg = timeaes.read();
               out_time[2 + reg] = time;
               timecnt++;
          }
          else
          {
          }
     }
     out_time[5] = time;
}

void partition(hls::stream<ap_uint<512>> &s_data_net_out,
               hls::stream<ap_uint<512>> &s_data_cal,
               hls::stream<ap_uint<512>> &s_data_out,
               ap_uint<32> ComputeWordCnt)
{
#pragma HLS dataflow
     ap_uint<32> Cnt = 0;
     do
     {
          s_data_cal.write(s_data_net_out.read());
          s_data_out.write(s_data_net_out.read());
          Cnt++;
     } while (Cnt < ComputeWordCnt);
}
void consumetrans(hls::stream<ap_uint<512>> &s_data_out,
                  ap_uint<32> ComputeWordCnt)
{
     for (ap_uint<32> i = 0; i < ComputeWordCnt; i++)
     {
          ap_uint<512> reg = s_data_out.read();
     }
}
void prepare_sha(hls::stream<ap_uint<512>> &s_data_cal,
                 hls::stream<ap_uint<64>> &msgStrm,
                 hls::stream<ap_uint<128>> &msgLenStrm,
                 hls::stream<bool> &endMsgLenStrm,
                 //   hls::stream<ap_uint<256>> &digestStrm,
                 //   hls::stream<bool> &endDigestStrm,
                 hls::stream<ap_uint<512>> &sha_in,
                 ap_uint<32> ComputeWordCnt)
{
     ap_uint<32> Cnt = 0;
     do
     {
          ap_uint<512> reg = s_data_cal.read();
          endMsgLenStrm.write(false);
          msgLenStrm.write(64);
          for (int i = 0; i < 512 / 64; i++)
          {
               msgStrm.write(reg(i * 64 + 31, i * 64));
          }
          endMsgLenStrm.write(true);
          sha_in.write(reg);
     } while (Cnt < ComputeWordCnt);
}

void mysha(hls::stream<ap_uint<512>> &sha_in,
           hls::stream<ap_uint<64>> &msgStrm,
           hls::stream<ap_uint<128>> &msgLenStrm,
           hls::stream<bool> &endMsgLenStrm,
           hls::stream<ap_uint<256>> &digestStrm,
           hls::stream<bool> &endDigestStrm,
           hls::stream<ap_uint<512>> &sha_out,
           ap_uint<32> ComputeWordCnt,
           hls::stream<ap_uint<32>> &timesha)
{
     sha_out.write(sha_in.read());
     xf::security::sha3_256(msgStrm, msgLenStrm, endMsgLenStrm, digestStrm, endDigestStrm);
     timesha.write(0);
     for (ap_uint<32> i = 0; i < ComputeWordCnt - 1; i++)
     {
#pragma HLS pipeline II = 1
          sha_out.write(sha_in.read());
          xf::security::sha3_256(msgStrm, msgLenStrm, endMsgLenStrm, digestStrm, endDigestStrm);
     }
     timesha.write(1);
}
void consumesha(hls::stream<ap_uint<256>> &digestStrm,
                hls::stream<bool> &endDigestStrm,
                ap_uint<32> ComputeWordCnt)
{
     for (ap_uint<32> i = 0; i < ComputeWordCnt; i++)
     {
          bool end = endDigestStrm.read();
          while (!end)
          {
               ap_uint<256> x = digestStrm.read();
               end = endDigestStrm.read();
          }
     }
}
void prepare_aes(hls::stream<ap_uint<512>> &sha_out,
                 hls::stream<ap_uint<128>> &ciphertextStrm,
                 hls::stream<bool> &endCiphertextStrm,
                 hls::stream<ap_uint<256>> &cipherkeyStrm,
                 hls::stream<ap_uint<128>> &IVStrm,
                 //   hls::stream<ap_uint<128>> &plaintextStrm,
                 //   hls::stream<bool> &endPlaintextStrm,
                 ap_uint<32> ComputeWordCnt)
{
     for (ap_uint<32> i = 0; i < ComputeWordCnt; i++)
     {
          ap_uint<512> reg = sha_out.read();
          ap_uint<64> len = 4;
          ap_uint<128> iv = 0x12345678;
          ap_uint<256> key = 0x123456789abcdef;
          cipherkeyStrm.write(key);
          IVStrm.write(iv);
          // lenStrm.write(len);
          for (ap_uint<64> i = 0; i < len; i += 16)
          {
#pragma HLS pipeline II = 1
               ciphertextStrm.write(reg(128 * i + 127, 128 * i));
               endCiphertextStrm.write(false);
          }
          endCiphertextStrm.write(true);
     }
}
void myaes(hls::stream<ap_uint<128>> &ciphertextStrm,
           hls::stream<bool> &endCiphertextStrm,
           hls::stream<ap_uint<256>> &cipherkeyStrm,
           hls::stream<ap_uint<128>> &IVStrm,
           hls::stream<ap_uint<128>> &plaintextStrm,
           hls::stream<bool> &endPlaintextStrm,
           ap_uint<32> ComputeWordCnt,
           hls::stream<ap_uint<32>> &timeaes)
{
     xf::security::aes256CbcDecrypt(ciphertextStrm, endCiphertextStrm, cipherkeyStrm, IVStrm, plaintextStrm, endPlaintextStrm);
     timeaes.write(0);
     for (ap_uint<32> i = 0; i < ComputeWordCnt-1; i++)
     {
          xf::security::aes256CbcDecrypt(ciphertextStrm, endCiphertextStrm, cipherkeyStrm, IVStrm, plaintextStrm, endPlaintextStrm);
     }
     timeaes.write(1);
}
void consumeaes(hls::stream<ap_uint<128>> &plaintextStrm,
                hls::stream<bool> &endPlaintextStrm,
                ap_uint<32> ComputeWordCnt)
{
     for (ap_uint<32> i = 0; i < ComputeWordCnt; i++)
     {
          bool end = endPlaintextStrm.read();
          while (!end)
          {
               ap_uint<128> x = plaintextStrm.read();
               end = endPlaintextStrm.read();
          }
     }
}

// // void readcache(hls::stream<ap_uint<512>> &s_data_cal, hls::stream<ap_uint<512>> &s_data_cal_in, ap_uint<512> *ddr, bool *ddrcache, ap_uint<512> *cache, ap_uint<32> ComputeWordCnt)
// // {
// // #pragma HLS dataflow
// //      ap_uint<32> Cnt = 0;
// //      ap_uint<32> calCnt = ComputeWordCnt >> 1;
// //      do
// //      {
// //           ap_uint<512> reg = s_data_cal.read();
// //           ap_uint<32> addr = reg(31, 0);
// //           reg = reg % 1000000;
// //           ap_uint<512> data;
// //           if (ddrcache[addr])
// //           {
// //                data = cache[addr / 10];
// //           }
// //           else
// //           {
// //                data = reg;
// //                for (int i = 0; i < 10; i++)
// //                {
// // #pragma HLS UNROLL
// //                     ddrcache[(addr / 10) * 10 + i] = false;
// //                }
// //                ddr[addr] = reg;
// //                cache[addr / 10] = reg;
// //                ddrcache[addr] = true;
// //           }
// //           s_data_cal_in.write(data);
// //           Cnt++;
// //      } while (Cnt < calCnt);
// // }
// // void readcache(hls::stream<ap_uint<512>> &s_data_cal, hls::stream<ap_uint<512>> &s_data_cal_in, ap_uint<512> *ddr, ap_uint<32> ComputeWordCnt)
// // {
// // #pragma HLS dataflow
// //      ap_uint<32> Cnt = 0;
// //      ap_uint<32> calCnt = ComputeWordCnt >> 1;
// //      do
// //      {
// //           ap_uint<512> reg = s_data_cal.read();
// //           ap_uint<32> addr = reg(31, 0);
// //           ap_uint<32> regmod = reg % 1000000;
// //           if (reg > regmod)
// //           {
// //                s_data_cal_in.write(ddr[regmod]);
// //           }
// //           else
// //           {
// //                for (int i = 0; i < regmod % 5 + 1; i++)
// //                {
// //                     reg = reg | i;
// //                }
// //                s_data_cal_in.write(ddr[regmod]);
// //           }
// //           Cnt++;
// //      } while (Cnt < calCnt);
// // }

// void calculate(hls::stream<ap_uint<512>> &s_data_cal_in, hls::stream<ap_uint<512>> &sha_in, int delay, ap_uint<32> ComputeWordCnt)
// {
// #pragma HLS dataflow
//      ap_uint<32> Cnt = 0;
//      ap_uint<32> calCnt = ComputeWordCnt >> 1;
//      do
//      {
//           ap_uint<512> reg = s_data_cal_in.read();

//           sha_in.write(reg);
//           Cnt++;
//      } while (Cnt < calCnt);
// }

// void rxStream2ddr(hls::stream<ap_uint<512>> &s_data_out, hls::stream<ap_uint<512>> &sha_in, int *data_out, ap_uint<32> ComputeWordCnt)
// {
// #pragma HLS dataflow
//      // 512/32=16
//      ap_uint<32> Cnt = 0;
//      ap_uint<512> reg;
//      do
//      {
//           if (!s_data_out.empty())
//           {
//                reg = s_data_out.read();
//                for (int k = 0; k < 16; k++)
//                {
// #pragma HLS UNROLL
//                     data_out[Cnt * 16 + k] = reg(k * 32 + 31, k * 32);
//                }
//                Cnt++;
//           }
//           else if (!sha_in.empty())
//           {
//                reg = sha_in.read();
//                for (int k = 0; k < 16; k++)
//                {
// #pragma HLS UNROLL
//                     data_out[Cnt * 16 + k] = reg(k * 32 + 31, k * 32);
//                }
//                Cnt++;
//           }
//           else
//           {
//           }
//      } while (Cnt < ComputeWordCnt);
// }
extern "C"
{
     void hls_recv_krnl(
         // Internal Stream
         hls::stream<pkt512> &s_axis_udp_rx,
         hls::stream<pkt512> &m_axis_udp_tx,
         hls::stream<pkt256> &s_axis_udp_rx_meta,
         hls::stream<pkt256> &m_axis_udp_tx_meta,

         hls::stream<pkt16> &m_axis_tcp_listen_port,
         hls::stream<pkt8> &s_axis_tcp_port_status,
         hls::stream<pkt64> &m_axis_tcp_open_connection,
         hls::stream<pkt128> &s_axis_tcp_open_status,
         hls::stream<pkt16> &m_axis_tcp_close_connection,
         hls::stream<pkt128> &s_axis_tcp_notification,
         hls::stream<pkt32> &m_axis_tcp_read_pkg,
         hls::stream<pkt16> &s_axis_tcp_rx_meta,
         hls::stream<pkt512> &s_axis_tcp_rx_data,
         hls::stream<pkt32> &m_axis_tcp_tx_meta,
         hls::stream<pkt512> &m_axis_tcp_tx_data,
         hls::stream<pkt64> &s_axis_tcp_tx_status,
         int useConn,
         int basePort,
         int delay,
         ap_uint<64> expectedRxByteCnt,
         ap_uint<64> *out_time)
     {

#pragma HLS INTERFACE axis port = s_axis_udp_rx
#pragma HLS INTERFACE axis port = m_axis_udp_tx
#pragma HLS INTERFACE axis port = s_axis_udp_rx_meta
#pragma HLS INTERFACE axis port = m_axis_udp_tx_meta
#pragma HLS INTERFACE axis port = m_axis_tcp_listen_port
#pragma HLS INTERFACE axis port = s_axis_tcp_port_status
#pragma HLS INTERFACE axis port = m_axis_tcp_open_connection
#pragma HLS INTERFACE axis port = s_axis_tcp_open_status
#pragma HLS INTERFACE axis port = m_axis_tcp_close_connection
#pragma HLS INTERFACE axis port = s_axis_tcp_notification
#pragma HLS INTERFACE axis port = m_axis_tcp_read_pkg
#pragma HLS INTERFACE axis port = s_axis_tcp_rx_meta
#pragma HLS INTERFACE axis port = s_axis_tcp_rx_data
#pragma HLS INTERFACE axis port = m_axis_tcp_tx_meta
#pragma HLS INTERFACE axis port = m_axis_tcp_tx_data
#pragma HLS INTERFACE axis port = s_axis_tcp_tx_status
#pragma HLS INTERFACE s_axilite port = useConn bundle = control
#pragma HLS INTERFACE s_axilite port = basePort bundle = control
#pragma HLS INTERFACE s_axilite port = delay bundle = control
// #pragma HLS INTERFACE s_axilite port = cachedelay bundle = control
#pragma HLS INTERFACE s_axilite port = expectedRxByteCnt bundle = control
#pragma HLS INTERFACE m_axi port = out_time offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = out_time bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

          static hls::stream<ap_uint<512>> s_data_net_out;
          // #pragma HLS STREAM variable = s_data_net_out depth = 512

          static hls::stream<ap_uint<512>> s_data_cal;
          // #pragma HLS STREAM variable = s_data_cal depth = 512

          //           static hls::stream<ap_uint<512>> s_data_cal_in;
          // #pragma HLS STREAM variable = s_data_cal_in depth = 512

          static hls::stream<ap_uint<512>> s_data_out;
          // #pragma HLS STREAM variable = s_data_out depth = 512

          static hls::stream<ap_uint<512>> sha_in;
          // #pragma HLS STREAM variable = sha_in depth = 512

          static hls::stream<ap_uint<512>> sha_out;
          // #pragma HLS STREAM variable = sha_out depth = 512

          static hls::stream<ap_uint<64>> msgStrm;
          // #pragma HLS STREAM variable = msgStrmpartitiotime
          static hls::stream<ap_uint<128>> msgLenStrm;
          // #pragma HLS STREAM variable = msgLenStrm
          static hls::stream<bool> endMsgLenStrm;
          // #pragma HLS STREAM variable = endMsgLenStrm
          static hls::stream<ap_uint<256>> digestStrm;
          // #pragma HLS STREAM variable = digestStrm
          static hls::stream<bool> endDigestStrm;
          // #pragma HLS STREAM variable = endDigestStrm

          hls::stream<ap_uint<128>> ciphertextStrm;
          hls::stream<bool> endCiphertextStrm;
          hls::stream<ap_uint<256>> cipherkeyStrm;
          hls::stream<ap_uint<128>> IVStrm;
          hls::stream<ap_uint<128>> plaintextStrm;
          hls::stream<bool> endPlaintextStrm;

          // ap_uint<64> *out_time,
          hls::stream<ap_uint<32>> timesha;
          hls::stream<ap_uint<32>> timeaes;

#pragma HLS dataflow

          // ap_uint<16> sessionTable[32];
          // ap_uint<512> ddr[1000000];
          // int WordCnt = expectedRxByteCnt >> 7;
          int ComputeWordCnt = expectedRxByteCnt >> 7;

          listenPorts(basePort, useConn, m_axis_tcp_listen_port,
                      s_axis_tcp_port_status);

          recvData(expectedRxByteCnt,
                   s_data_net_out,
                   s_axis_tcp_notification,
                   m_axis_tcp_read_pkg,
                   s_axis_tcp_rx_meta,
                   s_axis_tcp_rx_data);
          backgroundclock(out_time,timesha,timeaes);

          partition(s_data_net_out, s_data_cal, s_data_out, ComputeWordCnt);

          // readcache(s_data_cal, s_data_cal_in, ddr, ComputeWordCnt);

          consumetrans(s_data_out, ComputeWordCnt);

          prepare_sha(s_data_cal, msgStrm, msgLenStrm, endMsgLenStrm, sha_in, ComputeWordCnt);

          mysha(sha_in, msgStrm, msgLenStrm, endMsgLenStrm, digestStrm, endDigestStrm, sha_out, ComputeWordCnt, timesha);

          consumesha(digestStrm, endDigestStrm, ComputeWordCnt);

          prepare_aes(sha_out, ciphertextStrm, endCiphertextStrm, cipherkeyStrm, IVStrm, ComputeWordCnt);

          myaes(ciphertextStrm, endCiphertextStrm, cipherkeyStrm, IVStrm, plaintextStrm, endPlaintextStrm, ComputeWordCnt,timeaes);

          consumeaes(plaintextStrm, endPlaintextStrm, ComputeWordCnt);

          tie_off_tcp_open_connection(m_axis_tcp_open_connection,
                                      s_axis_tcp_open_status);

          tie_off_tcp_tx(m_axis_tcp_tx_meta,
                         m_axis_tcp_tx_data,
                         s_axis_tcp_tx_status);

          tie_off_udp(s_axis_udp_rx,
                      m_axis_udp_tx,
                      s_axis_udp_rx_meta,
                      m_axis_udp_tx_meta);

          tie_off_tcp_close_con(m_axis_tcp_close_connection);
     }
}
