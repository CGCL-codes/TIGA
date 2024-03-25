; ModuleID = '/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/_x/hls_recv_krnl/hls_recv_krnl/hls_recv_krnl/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream.55" = type { %"struct.hls::axis.56" }
%"struct.hls::axis.56" = type { %struct.ap_uint.57, %struct.ap_uint.14, %struct.ap_uint.14, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint.57 = type { %struct.ap_int_base.58 }
%struct.ap_int_base.58 = type { %struct.ssdm_int.59 }
%struct.ssdm_int.59 = type { i256 }
%struct.ap_uint.14 = type { %struct.ap_int_base.15 }
%struct.ap_int_base.15 = type { %struct.ssdm_int.16 }
%struct.ssdm_int.16 = type { i32 }
%struct.ap_uint.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i1 }
%"class.hls::stream.48" = type { %"struct.hls::axis.49" }
%"struct.hls::axis.49" = type { %struct.ap_uint, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i8 }
%"class.hls::stream.6" = type { %"struct.hls::axis.7" }
%"struct.hls::axis.7" = type { %struct.ap_uint.8, %struct.ap_uint.11, %struct.ap_uint.11, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint.8 = type { %struct.ap_int_base.9 }
%struct.ap_int_base.9 = type { %struct.ssdm_int.10 }
%struct.ssdm_int.10 = type { i128 }
%struct.ap_uint.11 = type { %struct.ap_int_base.12 }
%struct.ap_int_base.12 = type { %struct.ssdm_int.13 }
%struct.ssdm_int.13 = type { i16 }
%"class.hls::stream.45" = type { %"struct.hls::axis.46" }
%"struct.hls::axis.46" = type { %struct.ap_uint.11, %struct.ap_uint.32, %struct.ap_uint.32, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint.32 = type { %struct.ap_int_base.33 }
%struct.ap_int_base.33 = type { %struct.ssdm_int.34 }
%struct.ssdm_int.34 = type { i2 }
%"class.hls::stream.18" = type { %"struct.hls::axis.19" }
%"struct.hls::axis.19" = type { %struct.ap_uint.14, %struct.ap_uint.20, %struct.ap_uint.20, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint.20 = type { %struct.ap_int_base.21 }
%struct.ap_int_base.21 = type { %struct.ssdm_int.22 }
%struct.ssdm_int.22 = type { i4 }
%"class.hls::stream.23" = type { %"struct.hls::axis.24" }
%"struct.hls::axis.24" = type { %struct.ap_uint.25, %struct.ap_uint.0, %struct.ap_uint.0, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint.25 = type { %struct.ap_int_base.26 }
%struct.ap_int_base.26 = type { %struct.ssdm_int.27 }
%struct.ssdm_int.27 = type { i512 }
%struct.ap_uint.0 = type { %struct.ap_int_base.1 }
%struct.ap_int_base.1 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i64 }
%"class.hls::stream" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %struct.ap_uint.0, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }

; Function Attrs: noinline
define void @apatb_hls_recv_krnl_ir(%"class.hls::stream.23"* %s_axis_udp_rx, %"class.hls::stream.23"* %m_axis_udp_tx, %"class.hls::stream.55"* %s_axis_udp_rx_meta, %"class.hls::stream.55"* %m_axis_udp_tx_meta, %"class.hls::stream.45"* %m_axis_tcp_listen_port, %"class.hls::stream.48"* %s_axis_tcp_port_status, %"class.hls::stream"* %m_axis_tcp_open_connection, %"class.hls::stream.6"* %s_axis_tcp_open_status, %"class.hls::stream.45"* %m_axis_tcp_close_connection, %"class.hls::stream.6"* %s_axis_tcp_notification, %"class.hls::stream.18"* %m_axis_tcp_read_pkg, %"class.hls::stream.45"* %s_axis_tcp_rx_meta, %"class.hls::stream.23"* %s_axis_tcp_rx_data, %"class.hls::stream.18"* %m_axis_tcp_tx_meta, %"class.hls::stream.23"* %m_axis_tcp_tx_data, %"class.hls::stream"* %s_axis_tcp_tx_status, i32 %useConn, i32 %basePort, i32 %delay, %struct.ap_uint.0* nocapture readonly %expectedRxByteCnt, %struct.ap_uint.0* %out_time) local_unnamed_addr #0 {
entry:
  %s_axis_udp_rx_copy = alloca %"class.hls::stream.23", align 512
  %m_axis_udp_tx_copy = alloca %"class.hls::stream.23", align 512
  %s_axis_udp_rx_meta_copy = alloca %"class.hls::stream.55", align 512
  %m_axis_udp_tx_meta_copy = alloca %"class.hls::stream.55", align 512
  %m_axis_tcp_listen_port_copy = alloca %"class.hls::stream.45", align 512
  %s_axis_tcp_port_status_copy = alloca %"class.hls::stream.48", align 512
  %m_axis_tcp_open_connection_copy = alloca %"class.hls::stream", align 512
  %s_axis_tcp_open_status_copy = alloca %"class.hls::stream.6", align 512
  %m_axis_tcp_close_connection_copy = alloca %"class.hls::stream.45", align 512
  %s_axis_tcp_notification_copy = alloca %"class.hls::stream.6", align 512
  %m_axis_tcp_read_pkg_copy = alloca %"class.hls::stream.18", align 512
  %s_axis_tcp_rx_meta_copy = alloca %"class.hls::stream.45", align 512
  %s_axis_tcp_rx_data_copy = alloca %"class.hls::stream.23", align 512
  %m_axis_tcp_tx_meta_copy = alloca %"class.hls::stream.18", align 512
  %m_axis_tcp_tx_data_copy = alloca %"class.hls::stream.23", align 512
  %s_axis_tcp_tx_status_copy = alloca %"class.hls::stream", align 512
  %out_time_copy1 = alloca %struct.ap_uint.0, align 512
  call fastcc void @copy_in(%"class.hls::stream.23"* %s_axis_udp_rx, %"class.hls::stream.23"* nonnull align 512 %s_axis_udp_rx_copy, %"class.hls::stream.23"* %m_axis_udp_tx, %"class.hls::stream.23"* nonnull align 512 %m_axis_udp_tx_copy, %"class.hls::stream.55"* %s_axis_udp_rx_meta, %"class.hls::stream.55"* nonnull align 512 %s_axis_udp_rx_meta_copy, %"class.hls::stream.55"* %m_axis_udp_tx_meta, %"class.hls::stream.55"* nonnull align 512 %m_axis_udp_tx_meta_copy, %"class.hls::stream.45"* %m_axis_tcp_listen_port, %"class.hls::stream.45"* nonnull align 512 %m_axis_tcp_listen_port_copy, %"class.hls::stream.48"* %s_axis_tcp_port_status, %"class.hls::stream.48"* nonnull align 512 %s_axis_tcp_port_status_copy, %"class.hls::stream"* %m_axis_tcp_open_connection, %"class.hls::stream"* nonnull align 512 %m_axis_tcp_open_connection_copy, %"class.hls::stream.6"* %s_axis_tcp_open_status, %"class.hls::stream.6"* nonnull align 512 %s_axis_tcp_open_status_copy, %"class.hls::stream.45"* %m_axis_tcp_close_connection, %"class.hls::stream.45"* nonnull align 512 %m_axis_tcp_close_connection_copy, %"class.hls::stream.6"* %s_axis_tcp_notification, %"class.hls::stream.6"* nonnull align 512 %s_axis_tcp_notification_copy, %"class.hls::stream.18"* %m_axis_tcp_read_pkg, %"class.hls::stream.18"* nonnull align 512 %m_axis_tcp_read_pkg_copy, %"class.hls::stream.45"* %s_axis_tcp_rx_meta, %"class.hls::stream.45"* nonnull align 512 %s_axis_tcp_rx_meta_copy, %"class.hls::stream.23"* %s_axis_tcp_rx_data, %"class.hls::stream.23"* nonnull align 512 %s_axis_tcp_rx_data_copy, %"class.hls::stream.18"* %m_axis_tcp_tx_meta, %"class.hls::stream.18"* nonnull align 512 %m_axis_tcp_tx_meta_copy, %"class.hls::stream.23"* %m_axis_tcp_tx_data, %"class.hls::stream.23"* nonnull align 512 %m_axis_tcp_tx_data_copy, %"class.hls::stream"* %s_axis_tcp_tx_status, %"class.hls::stream"* nonnull align 512 %s_axis_tcp_tx_status_copy, %struct.ap_uint.0* %out_time, %struct.ap_uint.0* nonnull align 512 %out_time_copy1)
  call void @apatb_hls_recv_krnl_hw(%"class.hls::stream.23"* %s_axis_udp_rx_copy, %"class.hls::stream.23"* %m_axis_udp_tx_copy, %"class.hls::stream.55"* %s_axis_udp_rx_meta_copy, %"class.hls::stream.55"* %m_axis_udp_tx_meta_copy, %"class.hls::stream.45"* %m_axis_tcp_listen_port_copy, %"class.hls::stream.48"* %s_axis_tcp_port_status_copy, %"class.hls::stream"* %m_axis_tcp_open_connection_copy, %"class.hls::stream.6"* %s_axis_tcp_open_status_copy, %"class.hls::stream.45"* %m_axis_tcp_close_connection_copy, %"class.hls::stream.6"* %s_axis_tcp_notification_copy, %"class.hls::stream.18"* %m_axis_tcp_read_pkg_copy, %"class.hls::stream.45"* %s_axis_tcp_rx_meta_copy, %"class.hls::stream.23"* %s_axis_tcp_rx_data_copy, %"class.hls::stream.18"* %m_axis_tcp_tx_meta_copy, %"class.hls::stream.23"* %m_axis_tcp_tx_data_copy, %"class.hls::stream"* %s_axis_tcp_tx_status_copy, i32 %useConn, i32 %basePort, i32 %delay, %struct.ap_uint.0* %expectedRxByteCnt, %struct.ap_uint.0* %out_time_copy1)
  call fastcc void @copy_out(%"class.hls::stream.23"* %s_axis_udp_rx, %"class.hls::stream.23"* nonnull align 512 %s_axis_udp_rx_copy, %"class.hls::stream.23"* %m_axis_udp_tx, %"class.hls::stream.23"* nonnull align 512 %m_axis_udp_tx_copy, %"class.hls::stream.55"* %s_axis_udp_rx_meta, %"class.hls::stream.55"* nonnull align 512 %s_axis_udp_rx_meta_copy, %"class.hls::stream.55"* %m_axis_udp_tx_meta, %"class.hls::stream.55"* nonnull align 512 %m_axis_udp_tx_meta_copy, %"class.hls::stream.45"* %m_axis_tcp_listen_port, %"class.hls::stream.45"* nonnull align 512 %m_axis_tcp_listen_port_copy, %"class.hls::stream.48"* %s_axis_tcp_port_status, %"class.hls::stream.48"* nonnull align 512 %s_axis_tcp_port_status_copy, %"class.hls::stream"* %m_axis_tcp_open_connection, %"class.hls::stream"* nonnull align 512 %m_axis_tcp_open_connection_copy, %"class.hls::stream.6"* %s_axis_tcp_open_status, %"class.hls::stream.6"* nonnull align 512 %s_axis_tcp_open_status_copy, %"class.hls::stream.45"* %m_axis_tcp_close_connection, %"class.hls::stream.45"* nonnull align 512 %m_axis_tcp_close_connection_copy, %"class.hls::stream.6"* %s_axis_tcp_notification, %"class.hls::stream.6"* nonnull align 512 %s_axis_tcp_notification_copy, %"class.hls::stream.18"* %m_axis_tcp_read_pkg, %"class.hls::stream.18"* nonnull align 512 %m_axis_tcp_read_pkg_copy, %"class.hls::stream.45"* %s_axis_tcp_rx_meta, %"class.hls::stream.45"* nonnull align 512 %s_axis_tcp_rx_meta_copy, %"class.hls::stream.23"* %s_axis_tcp_rx_data, %"class.hls::stream.23"* nonnull align 512 %s_axis_tcp_rx_data_copy, %"class.hls::stream.18"* %m_axis_tcp_tx_meta, %"class.hls::stream.18"* nonnull align 512 %m_axis_tcp_tx_meta_copy, %"class.hls::stream.23"* %m_axis_tcp_tx_data, %"class.hls::stream.23"* nonnull align 512 %m_axis_tcp_tx_data_copy, %"class.hls::stream"* %s_axis_tcp_tx_status, %"class.hls::stream"* nonnull align 512 %s_axis_tcp_tx_status_copy, %struct.ap_uint.0* %out_time, %struct.ap_uint.0* nonnull align 512 %out_time_copy1)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"class.hls::stream.23"*, %"class.hls::stream.23"* noalias align 512, %"class.hls::stream.23"*, %"class.hls::stream.23"* noalias align 512, %"class.hls::stream.55"*, %"class.hls::stream.55"* noalias align 512, %"class.hls::stream.55"*, %"class.hls::stream.55"* noalias align 512, %"class.hls::stream.45"*, %"class.hls::stream.45"* noalias align 512, %"class.hls::stream.48"*, %"class.hls::stream.48"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.6"*, %"class.hls::stream.6"* noalias align 512, %"class.hls::stream.45"*, %"class.hls::stream.45"* noalias align 512, %"class.hls::stream.6"*, %"class.hls::stream.6"* noalias align 512, %"class.hls::stream.18"*, %"class.hls::stream.18"* noalias align 512, %"class.hls::stream.45"*, %"class.hls::stream.45"* noalias align 512, %"class.hls::stream.23"*, %"class.hls::stream.23"* noalias align 512, %"class.hls::stream.18"*, %"class.hls::stream.18"* noalias align 512, %"class.hls::stream.23"*, %"class.hls::stream.23"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %struct.ap_uint.0*, %struct.ap_uint.0* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* align 512 %1, %"class.hls::stream.23"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* align 512 %3, %"class.hls::stream.23"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* align 512 %5, %"class.hls::stream.55"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* align 512 %7, %"class.hls::stream.55"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* align 512 %9, %"class.hls::stream.45"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.48"(%"class.hls::stream.48"* align 512 %11, %"class.hls::stream.48"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %13, %"class.hls::stream"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* align 512 %15, %"class.hls::stream.6"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* align 512 %17, %"class.hls::stream.45"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* align 512 %19, %"class.hls::stream.6"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.18"(%"class.hls::stream.18"* align 512 %21, %"class.hls::stream.18"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* align 512 %23, %"class.hls::stream.45"* %22)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* align 512 %25, %"class.hls::stream.23"* %24)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.18"(%"class.hls::stream.18"* align 512 %27, %"class.hls::stream.18"* %26)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* align 512 %29, %"class.hls::stream.23"* %28)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %31, %"class.hls::stream"* %30)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %33, %struct.ap_uint.0* %32)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* noalias align 512, %"class.hls::stream.23"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.23"* %0, null
  %3 = icmp eq %"class.hls::stream.23"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.23"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_128(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* nonnull align 512 %0, %"class.hls::stream.23"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.25(%struct.ap_uint.25* align 512 %.01.03, %struct.ap_uint.25* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.26(%struct.ap_int_base.26* align 512 %.01.0.05, %struct.ap_int_base.26* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.27(%struct.ssdm_int.27* align 512 %.01.0.0.07, %struct.ssdm_int.27* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.23"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 64, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.0* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_8(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 64 %.01.111, %struct.ap_uint.0* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.1* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_8(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 64 %.01.1.013, %struct.ap_int_base.1* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.2* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_8(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 64 %.01.1.0.015, %struct.ssdm_int.2* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep59 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i64* %.01.1.0.0.017.gep59 to i8*
  %.0.1.0.0.016.gep60 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i64* %.0.1.0.0.016.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 8, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.0* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_8(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.01.219, %struct.ap_uint.0* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.1* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_8(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.01.2.021, %struct.ap_int_base.1* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.2* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_8(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.01.2.0.023, %struct.ssdm_int.2* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep61 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i64* %.01.2.0.0.025.gep61 to i8*
  %.0.2.0.0.024.gep62 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i64* %.0.2.0.0.024.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 8, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 16 %.01.327, %struct.ap_uint.3* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 16 %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 16 %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep63 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep63 to i8*
  %.0.3.0.0.032.gep64 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.3* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.435, %struct.ap_uint.3* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.4* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.4.037, %struct.ap_int_base.4* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.5* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.4.0.039, %struct.ssdm_int.5* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep65 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep65 to i8*
  %.0.4.0.0.040.gep66 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint.3* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.543, %struct.ap_uint.3* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base.4* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_1(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.5.045, %struct.ap_int_base.4* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int.5* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_1(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.5.0.047, %struct.ssdm_int.5* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep67 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i1* %.01.5.0.0.049.gep67 to i8*
  %.0.5.0.0.048.gep68 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i1* %.0.5.0.0.048.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 1, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.3* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.651, %struct.ap_uint.3* %.0.650)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.4* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.6.053, %struct.ap_int_base.4* %.0.6.052)
  br label %ret

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.5* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.6.0.055, %struct.ssdm_int.5* %.0.6.0.054)
  br label %ret

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep69 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i1* %.01.6.0.0.057.gep69 to i8*
  %.0.6.0.0.056.gep70 = getelementptr %"class.hls::stream.23", %"class.hls::stream.23"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i1* %.0.6.0.0.056.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %106, %105, %101, %97, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_128(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* noalias nocapture align 512, %"class.hls::stream.23"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.23"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.23"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.23"* %2 to i8*
  %6 = bitcast %"class.hls::stream.23"* %1 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.23", %"class.hls::stream.23"* %2
  %8 = bitcast %"class.hls::stream.23"* %2 to i8*
  %9 = bitcast %"class.hls::stream.23"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.23"* %1 to i8*
  %11 = bitcast %"class.hls::stream.23"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 128, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

declare i1 @fpga_fifo_exist_64(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.25(%struct.ap_uint.25* noalias nocapture align 512, %struct.ap_uint.25* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.25
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.25* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.25* %2 to i8*
  %6 = bitcast %struct.ap_uint.25* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.25, %struct.ap_uint.25* %2
  %8 = bitcast %struct.ap_uint.25* %2 to i8*
  %9 = bitcast %struct.ap_uint.25* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.25* %1 to i8*
  %11 = bitcast %struct.ap_uint.25* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.26(%struct.ap_int_base.26* noalias nocapture align 512, %struct.ap_int_base.26* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.26
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.26* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.26* %2 to i8*
  %6 = bitcast %struct.ap_int_base.26* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.26, %struct.ap_int_base.26* %2
  %8 = bitcast %struct.ap_int_base.26* %2 to i8*
  %9 = bitcast %struct.ap_int_base.26* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.26* %1 to i8*
  %11 = bitcast %struct.ap_int_base.26* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.27(%struct.ssdm_int.27* noalias nocapture align 512, %struct.ssdm_int.27* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.27
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.27* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.27* %2 to i8*
  %6 = bitcast %struct.ssdm_int.27* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.27, %struct.ssdm_int.27* %2
  %8 = bitcast %struct.ssdm_int.27* %2 to i8*
  %9 = bitcast %struct.ssdm_int.27* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.27* %1 to i8*
  %11 = bitcast %struct.ssdm_int.27* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* noalias nocapture, %struct.ap_uint.0* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.0* %2 to i8*
  %6 = bitcast %struct.ap_uint.0* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.0, %struct.ap_uint.0* %2
  %8 = bitcast %struct.ap_uint.0* %2 to i8*
  %9 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.0* %1 to i8*
  %11 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* noalias nocapture, %struct.ap_int_base.1* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.1* %2 to i8*
  %6 = bitcast %struct.ap_int_base.1* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.1, %struct.ap_int_base.1* %2
  %8 = bitcast %struct.ap_int_base.1* %2 to i8*
  %9 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.1* %1 to i8*
  %11 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* noalias nocapture, %struct.ssdm_int.2* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.2* %2 to i8*
  %6 = bitcast %struct.ssdm_int.2* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.2, %struct.ssdm_int.2* %2
  %8 = bitcast %struct.ssdm_int.2* %2 to i8*
  %9 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.2* %1 to i8*
  %11 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* noalias nocapture, %struct.ap_uint.3* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.3
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.3* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.3* %2 to i8*
  %6 = bitcast %struct.ap_uint.3* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.3, %struct.ap_uint.3* %2
  %8 = bitcast %struct.ap_uint.3* %2 to i8*
  %9 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.3* %1 to i8*
  %11 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* noalias nocapture, %struct.ap_int_base.4* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.4
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.4* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.4* %2 to i8*
  %6 = bitcast %struct.ap_int_base.4* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.4, %struct.ap_int_base.4* %2
  %8 = bitcast %struct.ap_int_base.4* %2 to i8*
  %9 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.4* %1 to i8*
  %11 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* noalias nocapture, %struct.ssdm_int.5* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.5* %2 to i8*
  %6 = bitcast %struct.ssdm_int.5* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.5, %struct.ssdm_int.5* %2
  %8 = bitcast %struct.ssdm_int.5* %2 to i8*
  %9 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.5* %1 to i8*
  %11 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* noalias align 512, %"class.hls::stream.55"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.55"* %0, null
  %3 = icmp eq %"class.hls::stream.55"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.55"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_64(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* nonnull align 512 %0, %"class.hls::stream.55"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_32(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.57(%struct.ap_uint.57* align 512 %.01.03, %struct.ap_uint.57* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_32(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.58(%struct.ap_int_base.58* align 512 %.01.0.05, %struct.ap_int_base.58* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_32(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.59(%struct.ssdm_int.59* align 512 %.01.0.0.07, %struct.ssdm_int.59* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.55"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 32, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.14* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_4(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.14(%struct.ap_uint.14* align 32 %.01.111, %struct.ap_uint.14* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.15* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_4(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.15(%struct.ap_int_base.15* align 32 %.01.1.013, %struct.ap_int_base.15* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.16* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_4(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.16(%struct.ssdm_int.16* align 32 %.01.1.0.015, %struct.ssdm_int.16* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep59 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i32* %.01.1.0.0.017.gep59 to i8*
  %.0.1.0.0.016.gep60 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i32* %.0.1.0.0.016.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 4, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.14* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_4(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.14(%struct.ap_uint.14* %.01.219, %struct.ap_uint.14* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.15* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_4(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.15(%struct.ap_int_base.15* %.01.2.021, %struct.ap_int_base.15* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.16* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_4(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.16(%struct.ssdm_int.16* %.01.2.0.023, %struct.ssdm_int.16* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep61 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i32* %.01.2.0.0.025.gep61 to i8*
  %.0.2.0.0.024.gep62 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i32* %.0.2.0.0.024.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 4, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep63 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep63 to i8*
  %.0.3.0.0.032.gep64 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.3* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.435, %struct.ap_uint.3* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.4* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.4.037, %struct.ap_int_base.4* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.5* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.4.0.039, %struct.ssdm_int.5* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep65 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep65 to i8*
  %.0.4.0.0.040.gep66 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint.3* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.543, %struct.ap_uint.3* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base.4* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_1(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.5.045, %struct.ap_int_base.4* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int.5* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_1(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.5.0.047, %struct.ssdm_int.5* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep67 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i1* %.01.5.0.0.049.gep67 to i8*
  %.0.5.0.0.048.gep68 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i1* %.0.5.0.0.048.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 1, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.3* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.651, %struct.ap_uint.3* %.0.650)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.4* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.6.053, %struct.ap_int_base.4* %.0.6.052)
  br label %ret

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.5* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.6.0.055, %struct.ssdm_int.5* %.0.6.0.054)
  br label %ret

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep69 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i1* %.01.6.0.0.057.gep69 to i8*
  %.0.6.0.0.056.gep70 = getelementptr %"class.hls::stream.55", %"class.hls::stream.55"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i1* %.0.6.0.0.056.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %106, %105, %101, %97, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* noalias nocapture align 512, %"class.hls::stream.55"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.55"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.55"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.55"* %2 to i8*
  %6 = bitcast %"class.hls::stream.55"* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.55", %"class.hls::stream.55"* %2
  %8 = bitcast %"class.hls::stream.55"* %2 to i8*
  %9 = bitcast %"class.hls::stream.55"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.55"* %1 to i8*
  %11 = bitcast %"class.hls::stream.55"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 64, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_32(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.57(%struct.ap_uint.57* noalias nocapture align 512, %struct.ap_uint.57* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.57
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.57* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.57* %2 to i8*
  %6 = bitcast %struct.ap_uint.57* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.57, %struct.ap_uint.57* %2
  %8 = bitcast %struct.ap_uint.57* %2 to i8*
  %9 = bitcast %struct.ap_uint.57* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.57* %1 to i8*
  %11 = bitcast %struct.ap_uint.57* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.58(%struct.ap_int_base.58* noalias nocapture align 512, %struct.ap_int_base.58* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.58
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.58* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.58* %2 to i8*
  %6 = bitcast %struct.ap_int_base.58* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.58, %struct.ap_int_base.58* %2
  %8 = bitcast %struct.ap_int_base.58* %2 to i8*
  %9 = bitcast %struct.ap_int_base.58* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.58* %1 to i8*
  %11 = bitcast %struct.ap_int_base.58* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.59(%struct.ssdm_int.59* noalias nocapture align 512, %struct.ssdm_int.59* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.59
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.59* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.59* %2 to i8*
  %6 = bitcast %struct.ssdm_int.59* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.59, %struct.ssdm_int.59* %2
  %8 = bitcast %struct.ssdm_int.59* %2 to i8*
  %9 = bitcast %struct.ssdm_int.59* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.59* %1 to i8*
  %11 = bitcast %struct.ssdm_int.59* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.14(%struct.ap_uint.14* noalias nocapture, %struct.ap_uint.14* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.14
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.14* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.14* %2 to i8*
  %6 = bitcast %struct.ap_uint.14* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.14, %struct.ap_uint.14* %2
  %8 = bitcast %struct.ap_uint.14* %2 to i8*
  %9 = bitcast %struct.ap_uint.14* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !20

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.14* %1 to i8*
  %11 = bitcast %struct.ap_uint.14* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.15(%struct.ap_int_base.15* noalias nocapture, %struct.ap_int_base.15* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.15
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.15* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.15* %2 to i8*
  %6 = bitcast %struct.ap_int_base.15* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.15, %struct.ap_int_base.15* %2
  %8 = bitcast %struct.ap_int_base.15* %2 to i8*
  %9 = bitcast %struct.ap_int_base.15* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !21

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.15* %1 to i8*
  %11 = bitcast %struct.ap_int_base.15* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.16(%struct.ssdm_int.16* noalias nocapture, %struct.ssdm_int.16* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.16
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.16* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.16* %2 to i8*
  %6 = bitcast %struct.ssdm_int.16* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.16, %struct.ssdm_int.16* %2
  %8 = bitcast %struct.ssdm_int.16* %2 to i8*
  %9 = bitcast %struct.ssdm_int.16* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !22

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.16* %1 to i8*
  %11 = bitcast %struct.ssdm_int.16* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* noalias align 512, %"class.hls::stream.45"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.45"* %0, null
  %3 = icmp eq %"class.hls::stream.45"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.45"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* nonnull align 512 %0, %"class.hls::stream.45"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.11(%struct.ap_uint.11* align 512 %.01.03, %struct.ap_uint.11* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.12(%struct.ap_int_base.12* align 512 %.01.0.05, %struct.ap_int_base.12* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.13(%struct.ssdm_int.13* align 512 %.01.0.0.07, %struct.ssdm_int.13* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.45"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 2, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.32* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.32(%struct.ap_uint.32* %.01.111, %struct.ap_uint.32* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.33* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.33(%struct.ap_int_base.33* %.01.1.013, %struct.ap_int_base.33* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.34* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_1(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.34(%struct.ssdm_int.34* %.01.1.0.015, %struct.ssdm_int.34* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep59 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i2* %.01.1.0.0.017.gep59 to i8*
  %.0.1.0.0.016.gep60 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i2* %.0.1.0.0.016.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 1, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.32* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_1(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.32(%struct.ap_uint.32* %.01.219, %struct.ap_uint.32* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.33* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_1(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.33(%struct.ap_int_base.33* %.01.2.021, %struct.ap_int_base.33* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.34* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_1(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.34(%struct.ssdm_int.34* %.01.2.0.023, %struct.ssdm_int.34* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep61 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i2* %.01.2.0.0.025.gep61 to i8*
  %.0.2.0.0.024.gep62 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i2* %.0.2.0.0.024.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 1, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep63 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep63 to i8*
  %.0.3.0.0.032.gep64 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.3* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.435, %struct.ap_uint.3* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.4* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.4.037, %struct.ap_int_base.4* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.5* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.4.0.039, %struct.ssdm_int.5* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep65 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep65 to i8*
  %.0.4.0.0.040.gep66 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint.3* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.543, %struct.ap_uint.3* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base.4* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_1(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.5.045, %struct.ap_int_base.4* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int.5* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_1(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.5.0.047, %struct.ssdm_int.5* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep67 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i1* %.01.5.0.0.049.gep67 to i8*
  %.0.5.0.0.048.gep68 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i1* %.0.5.0.0.048.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 1, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.3* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.651, %struct.ap_uint.3* %.0.650)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.4* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.6.053, %struct.ap_int_base.4* %.0.6.052)
  br label %ret

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.5* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.6.0.055, %struct.ssdm_int.5* %.0.6.0.054)
  br label %ret

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep69 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i1* %.01.6.0.0.057.gep69 to i8*
  %.0.6.0.0.056.gep70 = getelementptr %"class.hls::stream.45", %"class.hls::stream.45"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i1* %.0.6.0.0.056.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %106, %105, %101, %97, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* noalias nocapture align 512, %"class.hls::stream.45"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.45"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.45"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.45"* %2 to i8*
  %6 = bitcast %"class.hls::stream.45"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.45", %"class.hls::stream.45"* %2
  %8 = bitcast %"class.hls::stream.45"* %2 to i8*
  %9 = bitcast %"class.hls::stream.45"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !23

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.45"* %1 to i8*
  %11 = bitcast %"class.hls::stream.45"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_2(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.11(%struct.ap_uint.11* noalias nocapture align 512, %struct.ap_uint.11* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.11
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.11* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.11* %2 to i8*
  %6 = bitcast %struct.ap_uint.11* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.11, %struct.ap_uint.11* %2
  %8 = bitcast %struct.ap_uint.11* %2 to i8*
  %9 = bitcast %struct.ap_uint.11* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !24

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.11* %1 to i8*
  %11 = bitcast %struct.ap_uint.11* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.12(%struct.ap_int_base.12* noalias nocapture align 512, %struct.ap_int_base.12* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.12
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.12* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.12* %2 to i8*
  %6 = bitcast %struct.ap_int_base.12* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.12, %struct.ap_int_base.12* %2
  %8 = bitcast %struct.ap_int_base.12* %2 to i8*
  %9 = bitcast %struct.ap_int_base.12* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !25

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.12* %1 to i8*
  %11 = bitcast %struct.ap_int_base.12* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.13(%struct.ssdm_int.13* noalias nocapture align 512, %struct.ssdm_int.13* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.13
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.13* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.13* %2 to i8*
  %6 = bitcast %struct.ssdm_int.13* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.13, %struct.ssdm_int.13* %2
  %8 = bitcast %struct.ssdm_int.13* %2 to i8*
  %9 = bitcast %struct.ssdm_int.13* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !26

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.13* %1 to i8*
  %11 = bitcast %struct.ssdm_int.13* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.32(%struct.ap_uint.32* noalias nocapture, %struct.ap_uint.32* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.32
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.32* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.32* %2 to i8*
  %6 = bitcast %struct.ap_uint.32* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.32, %struct.ap_uint.32* %2
  %8 = bitcast %struct.ap_uint.32* %2 to i8*
  %9 = bitcast %struct.ap_uint.32* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !27

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.32* %1 to i8*
  %11 = bitcast %struct.ap_uint.32* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.33(%struct.ap_int_base.33* noalias nocapture, %struct.ap_int_base.33* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.33
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.33* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.33* %2 to i8*
  %6 = bitcast %struct.ap_int_base.33* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.33, %struct.ap_int_base.33* %2
  %8 = bitcast %struct.ap_int_base.33* %2 to i8*
  %9 = bitcast %struct.ap_int_base.33* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !28

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.33* %1 to i8*
  %11 = bitcast %struct.ap_int_base.33* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.34(%struct.ssdm_int.34* noalias nocapture, %struct.ssdm_int.34* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.34
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.34* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.34* %2 to i8*
  %6 = bitcast %struct.ssdm_int.34* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.34, %struct.ssdm_int.34* %2
  %8 = bitcast %struct.ssdm_int.34* %2 to i8*
  %9 = bitcast %struct.ssdm_int.34* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !29

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.34* %1 to i8*
  %11 = bitcast %struct.ssdm_int.34* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.48"(%"class.hls::stream.48"* noalias align 512, %"class.hls::stream.48"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.48"* %0, null
  %3 = icmp eq %"class.hls::stream.48"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_7(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.48"(%"class.hls::stream.48"* nonnull align 512 %0, %"class.hls::stream.48"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.03, %struct.ap_uint* %.0.02)
  br label %18

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.05, %struct.ap_int_base* %.0.0.04)
  br label %18

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.07, %struct.ssdm_int* %.0.0.0.06)
  br label %18

; <label>:17:                                     ; preds = %14
  %.01.0.0.0.09 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.0.0.0.09, i8* align 1 %5, i64 1, i1 false)
  br label %18

; <label>:18:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 1
  %19 = bitcast %struct.ap_uint.3* %.0.110 to i8*
  %20 = call i1 @fpga_fifo_exist_1(i8* %19)
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.111, %struct.ap_uint.3* %.0.110)
  br label %33

; <label>:22:                                     ; preds = %18
  %.0.1.012 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 1, i32 0
  %23 = bitcast %struct.ap_int_base.4* %.0.1.012 to i8*
  %24 = call i1 @fpga_fifo_exist_1(i8* %23)
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.1.013, %struct.ap_int_base.4* %.0.1.012)
  br label %33

; <label>:26:                                     ; preds = %22
  %.0.1.0.014 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %27 = bitcast %struct.ssdm_int.5* %.0.1.0.014 to i8*
  %28 = call i1 @fpga_fifo_exist_1(i8* %27)
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.1.0.015, %struct.ssdm_int.5* %.0.1.0.014)
  br label %33

; <label>:30:                                     ; preds = %26
  %.01.1.0.0.017.gep58 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %31 = bitcast i1* %.01.1.0.0.017.gep58 to i8*
  %.0.1.0.0.016.gep59 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i1* %.0.1.0.0.016.gep59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %32, i64 1, i1 false)
  br label %33

; <label>:33:                                     ; preds = %30, %29, %25, %21
  %.0.218 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 2
  %34 = bitcast %struct.ap_uint.3* %.0.218 to i8*
  %35 = call i1 @fpga_fifo_exist_1(i8* %34)
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.219, %struct.ap_uint.3* %.0.218)
  br label %48

; <label>:37:                                     ; preds = %33
  %.0.2.020 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 2, i32 0
  %38 = bitcast %struct.ap_int_base.4* %.0.2.020 to i8*
  %39 = call i1 @fpga_fifo_exist_1(i8* %38)
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.2.021, %struct.ap_int_base.4* %.0.2.020)
  br label %48

; <label>:41:                                     ; preds = %37
  %.0.2.0.022 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %42 = bitcast %struct.ssdm_int.5* %.0.2.0.022 to i8*
  %43 = call i1 @fpga_fifo_exist_1(i8* %42)
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.2.0.023, %struct.ssdm_int.5* %.0.2.0.022)
  br label %48

; <label>:45:                                     ; preds = %41
  %.01.2.0.0.025.gep60 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %46 = bitcast i1* %.01.2.0.0.025.gep60 to i8*
  %.0.2.0.0.024.gep61 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i1* %.0.2.0.0.024.gep61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 %47, i64 1, i1 false)
  br label %48

; <label>:48:                                     ; preds = %45, %44, %40, %36
  %.0.326 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 3
  %49 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %50 = call i1 @fpga_fifo_exist_1(i8* %49)
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %48
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %63

; <label>:52:                                     ; preds = %48
  %.0.3.028 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 3, i32 0
  %53 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %54 = call i1 @fpga_fifo_exist_1(i8* %53)
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %52
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %63

; <label>:56:                                     ; preds = %52
  %.0.3.0.030 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %57 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %58 = call i1 @fpga_fifo_exist_1(i8* %57)
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %56
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %63

; <label>:60:                                     ; preds = %56
  %.01.3.0.0.033.gep62 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %61 = bitcast i1* %.01.3.0.0.033.gep62 to i8*
  %.0.3.0.0.032.gep63 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.0.3.0.0.032.gep63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %61, i8* align 1 %62, i64 1, i1 false)
  br label %63

; <label>:63:                                     ; preds = %60, %59, %55, %51
  %.0.434 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 4
  %64 = bitcast %struct.ap_uint.3* %.0.434 to i8*
  %65 = call i1 @fpga_fifo_exist_1(i8* %64)
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %63
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.435, %struct.ap_uint.3* %.0.434)
  br label %78

; <label>:67:                                     ; preds = %63
  %.0.4.036 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 4, i32 0
  %68 = bitcast %struct.ap_int_base.4* %.0.4.036 to i8*
  %69 = call i1 @fpga_fifo_exist_1(i8* %68)
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %67
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.4.037, %struct.ap_int_base.4* %.0.4.036)
  br label %78

; <label>:71:                                     ; preds = %67
  %.0.4.0.038 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %72 = bitcast %struct.ssdm_int.5* %.0.4.0.038 to i8*
  %73 = call i1 @fpga_fifo_exist_1(i8* %72)
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %71
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.4.0.039, %struct.ssdm_int.5* %.0.4.0.038)
  br label %78

; <label>:75:                                     ; preds = %71
  %.01.4.0.0.041.gep64 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %76 = bitcast i1* %.01.4.0.0.041.gep64 to i8*
  %.0.4.0.0.040.gep65 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.0.4.0.0.040.gep65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %76, i8* align 1 %77, i64 1, i1 false)
  br label %78

; <label>:78:                                     ; preds = %75, %74, %70, %66
  %.0.542 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 5
  %79 = bitcast %struct.ap_uint.3* %.0.542 to i8*
  %80 = call i1 @fpga_fifo_exist_1(i8* %79)
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %78
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.543, %struct.ap_uint.3* %.0.542)
  br label %93

; <label>:82:                                     ; preds = %78
  %.0.5.044 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 5, i32 0
  %83 = bitcast %struct.ap_int_base.4* %.0.5.044 to i8*
  %84 = call i1 @fpga_fifo_exist_1(i8* %83)
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %82
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.5.045, %struct.ap_int_base.4* %.0.5.044)
  br label %93

; <label>:86:                                     ; preds = %82
  %.0.5.0.046 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %87 = bitcast %struct.ssdm_int.5* %.0.5.0.046 to i8*
  %88 = call i1 @fpga_fifo_exist_1(i8* %87)
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %86
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.5.0.047, %struct.ssdm_int.5* %.0.5.0.046)
  br label %93

; <label>:90:                                     ; preds = %86
  %.01.5.0.0.049.gep66 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %91 = bitcast i1* %.01.5.0.0.049.gep66 to i8*
  %.0.5.0.0.048.gep67 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i1* %.0.5.0.0.048.gep67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %91, i8* align 1 %92, i64 1, i1 false)
  br label %93

; <label>:93:                                     ; preds = %90, %89, %85, %81
  %.0.650 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 6
  %94 = bitcast %struct.ap_uint.3* %.0.650 to i8*
  %95 = call i1 @fpga_fifo_exist_1(i8* %94)
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %93
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.651, %struct.ap_uint.3* %.0.650)
  br label %ret

; <label>:97:                                     ; preds = %93
  %.0.6.052 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 6, i32 0
  %98 = bitcast %struct.ap_int_base.4* %.0.6.052 to i8*
  %99 = call i1 @fpga_fifo_exist_1(i8* %98)
  br i1 %99, label %100, label %101

; <label>:100:                                    ; preds = %97
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.6.053, %struct.ap_int_base.4* %.0.6.052)
  br label %ret

; <label>:101:                                    ; preds = %97
  %.0.6.0.054 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %102 = bitcast %struct.ssdm_int.5* %.0.6.0.054 to i8*
  %103 = call i1 @fpga_fifo_exist_1(i8* %102)
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %101
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.6.0.055, %struct.ssdm_int.5* %.0.6.0.054)
  br label %ret

; <label>:105:                                    ; preds = %101
  %.01.6.0.0.057.gep68 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %106 = bitcast i1* %.01.6.0.0.057.gep68 to i8*
  %.0.6.0.0.056.gep69 = getelementptr %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i1* %.0.6.0.0.056.gep69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %106, i8* align 1 %107, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %105, %104, %100, %96, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_7(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.48"(%"class.hls::stream.48"* noalias nocapture align 512, %"class.hls::stream.48"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.48"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.48"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_7(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.48"* %2 to i8*
  %6 = bitcast %"class.hls::stream.48"* %1 to i8*
  call void @fpga_fifo_pop_7(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.48", %"class.hls::stream.48"* %2
  %8 = bitcast %"class.hls::stream.48"* %2 to i8*
  %9 = bitcast %"class.hls::stream.48"* %0 to i8*
  call void @fpga_fifo_push_7(i8* %8, i8* %9)
  br label %empty, !llvm.loop !30

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"class.hls::stream.48", %"class.hls::stream.48"* %1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"class.hls::stream.48", %"class.hls::stream.48"* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 7, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture align 512, %struct.ap_uint* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !31

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture align 512, %struct.ap_int_base* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !32

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_int_base, %struct.ap_int_base* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base, %struct.ap_int_base* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture align 512, %struct.ssdm_int* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !33

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ssdm_int, %struct.ssdm_int* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ssdm_int, %struct.ssdm_int* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias align 512, %"class.hls::stream"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream"* %0, null
  %3 = icmp eq %"class.hls::stream"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* nonnull align 512 %0, %"class.hls::stream"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.01.03, %struct.ap_uint.0* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.01.0.05, %struct.ap_int_base.1* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.01.0.0.07, %struct.ssdm_int.2* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 8, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1
  %20 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.111, %struct.ap_uint* %.0.110)
  br label %30

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.1.013, %struct.ap_int_base* %.0.1.012)
  br label %30

; <label>:26:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %27 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %26
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.1.0.015, %struct.ssdm_int* %.0.1.0.014)
  br label %30

; <label>:29:                                     ; preds = %26
  %.01.1.0.0.017 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.1.0.0.017, i8* align 1 %20, i64 1, i1 false)
  br label %30

; <label>:30:                                     ; preds = %29, %28, %25, %22
  %.0.218 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2
  %31 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %32 = call i1 @fpga_fifo_exist_1(i8* %31)
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.219, %struct.ap_uint* %.0.218)
  br label %41

; <label>:34:                                     ; preds = %30
  %.0.2.020 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0
  %35 = call i1 @fpga_fifo_exist_1(i8* %31)
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.2.021, %struct.ap_int_base* %.0.2.020)
  br label %41

; <label>:37:                                     ; preds = %34
  %.0.2.0.022 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %38 = call i1 @fpga_fifo_exist_1(i8* %31)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %37
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.2.0.023, %struct.ssdm_int* %.0.2.0.022)
  br label %41

; <label>:40:                                     ; preds = %37
  %.01.2.0.0.025 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.2.0.0.025, i8* align 1 %31, i64 1, i1 false)
  br label %41

; <label>:41:                                     ; preds = %40, %39, %36, %33
  %.0.326 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3
  %42 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %43 = call i1 @fpga_fifo_exist_1(i8* %42)
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %56

; <label>:45:                                     ; preds = %41
  %.0.3.028 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0
  %46 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %47 = call i1 @fpga_fifo_exist_1(i8* %46)
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %56

; <label>:49:                                     ; preds = %45
  %.0.3.0.030 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %50 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %56

; <label>:53:                                     ; preds = %49
  %.01.3.0.0.033.gep59 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %54 = bitcast i1* %.01.3.0.0.033.gep59 to i8*
  %.0.3.0.0.032.gep60 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %55 = bitcast i1* %.0.3.0.0.032.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %55, i64 1, i1 false)
  br label %56

; <label>:56:                                     ; preds = %53, %52, %48, %44
  %.0.434 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4
  %57 = bitcast %struct.ap_uint.3* %.0.434 to i8*
  %58 = call i1 @fpga_fifo_exist_1(i8* %57)
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %56
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.435, %struct.ap_uint.3* %.0.434)
  br label %71

; <label>:60:                                     ; preds = %56
  %.0.4.036 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0
  %61 = bitcast %struct.ap_int_base.4* %.0.4.036 to i8*
  %62 = call i1 @fpga_fifo_exist_1(i8* %61)
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %60
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.4.037, %struct.ap_int_base.4* %.0.4.036)
  br label %71

; <label>:64:                                     ; preds = %60
  %.0.4.0.038 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %65 = bitcast %struct.ssdm_int.5* %.0.4.0.038 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.4.0.039, %struct.ssdm_int.5* %.0.4.0.038)
  br label %71

; <label>:68:                                     ; preds = %64
  %.01.4.0.0.041.gep61 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %69 = bitcast i1* %.01.4.0.0.041.gep61 to i8*
  %.0.4.0.0.040.gep62 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %70 = bitcast i1* %.0.4.0.0.040.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %70, i64 1, i1 false)
  br label %71

; <label>:71:                                     ; preds = %68, %67, %63, %59
  %.0.542 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5
  %72 = bitcast %struct.ap_uint.3* %.0.542 to i8*
  %73 = call i1 @fpga_fifo_exist_1(i8* %72)
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %71
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.543, %struct.ap_uint.3* %.0.542)
  br label %86

; <label>:75:                                     ; preds = %71
  %.0.5.044 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0
  %76 = bitcast %struct.ap_int_base.4* %.0.5.044 to i8*
  %77 = call i1 @fpga_fifo_exist_1(i8* %76)
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %75
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.5.045, %struct.ap_int_base.4* %.0.5.044)
  br label %86

; <label>:79:                                     ; preds = %75
  %.0.5.0.046 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %80 = bitcast %struct.ssdm_int.5* %.0.5.0.046 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.5.0.047, %struct.ssdm_int.5* %.0.5.0.046)
  br label %86

; <label>:83:                                     ; preds = %79
  %.01.5.0.0.049.gep63 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %84 = bitcast i1* %.01.5.0.0.049.gep63 to i8*
  %.0.5.0.0.048.gep64 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %85 = bitcast i1* %.0.5.0.0.048.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 1, i1 false)
  br label %86

; <label>:86:                                     ; preds = %83, %82, %78, %74
  %.0.650 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6
  %87 = bitcast %struct.ap_uint.3* %.0.650 to i8*
  %88 = call i1 @fpga_fifo_exist_1(i8* %87)
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %86
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.651, %struct.ap_uint.3* %.0.650)
  br label %ret

; <label>:90:                                     ; preds = %86
  %.0.6.052 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0
  %91 = bitcast %struct.ap_int_base.4* %.0.6.052 to i8*
  %92 = call i1 @fpga_fifo_exist_1(i8* %91)
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %90
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.6.053, %struct.ap_int_base.4* %.0.6.052)
  br label %ret

; <label>:94:                                     ; preds = %90
  %.0.6.0.054 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %95 = bitcast %struct.ssdm_int.5* %.0.6.0.054 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.6.0.055, %struct.ssdm_int.5* %.0.6.0.054)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.01.6.0.0.057.gep65 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %99 = bitcast i1* %.01.6.0.0.057.gep65 to i8*
  %.0.6.0.0.056.gep66 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %100 = bitcast i1* %.0.6.0.0.056.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %99, i8* align 1 %100, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %98, %97, %93, %89, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_16(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias nocapture align 512, %"class.hls::stream"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  %8 = bitcast %"class.hls::stream"* %2 to i8*
  %9 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !34

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream"* %1 to i8*
  %11 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* noalias align 512, %"class.hls::stream.6"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.6"* %0, null
  %3 = icmp eq %"class.hls::stream.6"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.6"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_32(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* nonnull align 512 %0, %"class.hls::stream.6"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.8(%struct.ap_uint.8* align 512 %.01.03, %struct.ap_uint.8* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.9(%struct.ap_int_base.9* align 512 %.01.0.05, %struct.ap_int_base.9* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.10(%struct.ssdm_int.10* align 512 %.01.0.0.07, %struct.ssdm_int.10* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.6"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 16, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.11* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.11(%struct.ap_uint.11* align 16 %.01.111, %struct.ap_uint.11* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.12* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.12(%struct.ap_int_base.12* align 16 %.01.1.013, %struct.ap_int_base.12* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.13* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.13(%struct.ssdm_int.13* align 16 %.01.1.0.015, %struct.ssdm_int.13* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep59 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep59 to i8*
  %.0.1.0.0.016.gep60 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.11* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_2(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.11(%struct.ap_uint.11* %.01.219, %struct.ap_uint.11* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.12* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_2(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.12(%struct.ap_int_base.12* %.01.2.021, %struct.ap_int_base.12* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.13* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_2(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.13(%struct.ssdm_int.13* %.01.2.0.023, %struct.ssdm_int.13* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep61 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i16* %.01.2.0.0.025.gep61 to i8*
  %.0.2.0.0.024.gep62 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i16* %.0.2.0.0.024.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 2, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep63 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep63 to i8*
  %.0.3.0.0.032.gep64 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.3* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.435, %struct.ap_uint.3* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.4* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.4.037, %struct.ap_int_base.4* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.5* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.4.0.039, %struct.ssdm_int.5* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep65 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep65 to i8*
  %.0.4.0.0.040.gep66 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint.3* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.543, %struct.ap_uint.3* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base.4* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_1(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.5.045, %struct.ap_int_base.4* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int.5* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_1(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.5.0.047, %struct.ssdm_int.5* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep67 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i1* %.01.5.0.0.049.gep67 to i8*
  %.0.5.0.0.048.gep68 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i1* %.0.5.0.0.048.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 1, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.3* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.651, %struct.ap_uint.3* %.0.650)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.4* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.6.053, %struct.ap_int_base.4* %.0.6.052)
  br label %ret

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.5* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.6.0.055, %struct.ssdm_int.5* %.0.6.0.054)
  br label %ret

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep69 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i1* %.01.6.0.0.057.gep69 to i8*
  %.0.6.0.0.056.gep70 = getelementptr %"class.hls::stream.6", %"class.hls::stream.6"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i1* %.0.6.0.0.056.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %106, %105, %101, %97, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* noalias nocapture align 512, %"class.hls::stream.6"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.6"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.6"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.6"* %2 to i8*
  %6 = bitcast %"class.hls::stream.6"* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.6", %"class.hls::stream.6"* %2
  %8 = bitcast %"class.hls::stream.6"* %2 to i8*
  %9 = bitcast %"class.hls::stream.6"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !35

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.6"* %1 to i8*
  %11 = bitcast %"class.hls::stream.6"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.8(%struct.ap_uint.8* noalias nocapture align 512, %struct.ap_uint.8* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.8
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.8* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.8* %2 to i8*
  %6 = bitcast %struct.ap_uint.8* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.8, %struct.ap_uint.8* %2
  %8 = bitcast %struct.ap_uint.8* %2 to i8*
  %9 = bitcast %struct.ap_uint.8* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !36

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.8* %1 to i8*
  %11 = bitcast %struct.ap_uint.8* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.9(%struct.ap_int_base.9* noalias nocapture align 512, %struct.ap_int_base.9* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.9
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.9* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.9* %2 to i8*
  %6 = bitcast %struct.ap_int_base.9* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.9, %struct.ap_int_base.9* %2
  %8 = bitcast %struct.ap_int_base.9* %2 to i8*
  %9 = bitcast %struct.ap_int_base.9* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !37

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.9* %1 to i8*
  %11 = bitcast %struct.ap_int_base.9* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.10(%struct.ssdm_int.10* noalias nocapture align 512, %struct.ssdm_int.10* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.10
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.10* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.10* %2 to i8*
  %6 = bitcast %struct.ssdm_int.10* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.10, %struct.ssdm_int.10* %2
  %8 = bitcast %struct.ssdm_int.10* %2 to i8*
  %9 = bitcast %struct.ssdm_int.10* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !38

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.10* %1 to i8*
  %11 = bitcast %struct.ssdm_int.10* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.18"(%"class.hls::stream.18"* noalias align 512, %"class.hls::stream.18"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream.18"* %0, null
  %3 = icmp eq %"class.hls::stream.18"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.18"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_12(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.18"(%"class.hls::stream.18"* nonnull align 512 %0, %"class.hls::stream.18"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint.14(%struct.ap_uint.14* align 512 %.01.03, %struct.ap_uint.14* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.15(%struct.ap_int_base.15* align 512 %.01.0.05, %struct.ap_int_base.15* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.16(%struct.ssdm_int.16* align 512 %.01.0.0.07, %struct.ssdm_int.16* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream.18"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 4, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.20* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_1(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.20(%struct.ap_uint.20* %.01.111, %struct.ap_uint.20* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.21* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.21(%struct.ap_int_base.21* %.01.1.013, %struct.ap_int_base.21* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.22* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_1(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.22(%struct.ssdm_int.22* %.01.1.0.015, %struct.ssdm_int.22* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep59 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i4* %.01.1.0.0.017.gep59 to i8*
  %.0.1.0.0.016.gep60 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i4* %.0.1.0.0.016.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 1, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.20* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_1(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.20(%struct.ap_uint.20* %.01.219, %struct.ap_uint.20* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.21* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_1(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.21(%struct.ap_int_base.21* %.01.2.021, %struct.ap_int_base.21* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.22* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_1(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.22(%struct.ssdm_int.22* %.01.2.0.023, %struct.ssdm_int.22* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep61 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i4* %.01.2.0.0.025.gep61 to i8*
  %.0.2.0.0.024.gep62 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i4* %.0.2.0.0.024.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 1, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep63 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep63 to i8*
  %.0.3.0.0.032.gep64 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.3* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.435, %struct.ap_uint.3* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.4* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.4.037, %struct.ap_int_base.4* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.5* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.4.0.039, %struct.ssdm_int.5* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep65 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep65 to i8*
  %.0.4.0.0.040.gep66 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint.3* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.543, %struct.ap_uint.3* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base.4* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_1(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.5.045, %struct.ap_int_base.4* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int.5* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_1(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.5.0.047, %struct.ssdm_int.5* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep67 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i1* %.01.5.0.0.049.gep67 to i8*
  %.0.5.0.0.048.gep68 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i1* %.0.5.0.0.048.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 1, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.3* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.651, %struct.ap_uint.3* %.0.650)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.4* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.6.053, %struct.ap_int_base.4* %.0.6.052)
  br label %ret

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.5* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.6.0.055, %struct.ssdm_int.5* %.0.6.0.054)
  br label %ret

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep69 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i1* %.01.6.0.0.057.gep69 to i8*
  %.0.6.0.0.056.gep70 = getelementptr %"class.hls::stream.18", %"class.hls::stream.18"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i1* %.0.6.0.0.056.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %106, %105, %101, %97, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_12(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.18"(%"class.hls::stream.18"* noalias nocapture align 512, %"class.hls::stream.18"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream.18"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.18"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.18"* %2 to i8*
  %6 = bitcast %"class.hls::stream.18"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.18", %"class.hls::stream.18"* %2
  %8 = bitcast %"class.hls::stream.18"* %2 to i8*
  %9 = bitcast %"class.hls::stream.18"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %8, i8* %9)
  br label %empty, !llvm.loop !39

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.18"* %1 to i8*
  %11 = bitcast %"class.hls::stream.18"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 12, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.20(%struct.ap_uint.20* noalias nocapture, %struct.ap_uint.20* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.20
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.20* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.20* %2 to i8*
  %6 = bitcast %struct.ap_uint.20* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.20, %struct.ap_uint.20* %2
  %8 = bitcast %struct.ap_uint.20* %2 to i8*
  %9 = bitcast %struct.ap_uint.20* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !40

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.20* %1 to i8*
  %11 = bitcast %struct.ap_uint.20* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.21(%struct.ap_int_base.21* noalias nocapture, %struct.ap_int_base.21* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.21
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.21* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.21* %2 to i8*
  %6 = bitcast %struct.ap_int_base.21* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.21, %struct.ap_int_base.21* %2
  %8 = bitcast %struct.ap_int_base.21* %2 to i8*
  %9 = bitcast %struct.ap_int_base.21* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !41

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.21* %1 to i8*
  %11 = bitcast %struct.ap_int_base.21* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.22(%struct.ssdm_int.22* noalias nocapture, %struct.ssdm_int.22* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.22
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.22* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.22* %2 to i8*
  %6 = bitcast %struct.ssdm_int.22* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.22, %struct.ssdm_int.22* %2
  %8 = bitcast %struct.ssdm_int.22* %2 to i8*
  %9 = bitcast %struct.ssdm_int.22* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !42

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.22* %1 to i8*
  %11 = bitcast %struct.ssdm_int.22* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* noalias align 512, %struct.ap_uint.0* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.ap_uint.0* %0, null
  %3 = icmp eq %struct.ap_uint.0* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ap_uint.0* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* nonnull align 512 %0, %struct.ap_uint.0* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %1, i32 0, i32 0
  %.01 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.01, %struct.ap_int_base.1* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.01.03, %struct.ssdm_int.2* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  %15 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %5, i64 8, i1 false)
  br label %ret

ret:                                              ; preds = %14, %13, %10, %7, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"class.hls::stream.23"*, %"class.hls::stream.23"* noalias align 512, %"class.hls::stream.23"*, %"class.hls::stream.23"* noalias align 512, %"class.hls::stream.55"*, %"class.hls::stream.55"* noalias align 512, %"class.hls::stream.55"*, %"class.hls::stream.55"* noalias align 512, %"class.hls::stream.45"*, %"class.hls::stream.45"* noalias align 512, %"class.hls::stream.48"*, %"class.hls::stream.48"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream.6"*, %"class.hls::stream.6"* noalias align 512, %"class.hls::stream.45"*, %"class.hls::stream.45"* noalias align 512, %"class.hls::stream.6"*, %"class.hls::stream.6"* noalias align 512, %"class.hls::stream.18"*, %"class.hls::stream.18"* noalias align 512, %"class.hls::stream.45"*, %"class.hls::stream.45"* noalias align 512, %"class.hls::stream.23"*, %"class.hls::stream.23"* noalias align 512, %"class.hls::stream.18"*, %"class.hls::stream.18"* noalias align 512, %"class.hls::stream.23"*, %"class.hls::stream.23"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %struct.ap_uint.0*, %struct.ap_uint.0* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* %0, %"class.hls::stream.23"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* %2, %"class.hls::stream.23"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* %4, %"class.hls::stream.55"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.55"(%"class.hls::stream.55"* %6, %"class.hls::stream.55"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* %8, %"class.hls::stream.45"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.48"(%"class.hls::stream.48"* %10, %"class.hls::stream.48"* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %12, %"class.hls::stream"* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* %14, %"class.hls::stream.6"* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* %16, %"class.hls::stream.45"* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* %18, %"class.hls::stream.6"* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.18"(%"class.hls::stream.18"* %20, %"class.hls::stream.18"* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.45"(%"class.hls::stream.45"* %22, %"class.hls::stream.45"* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* %24, %"class.hls::stream.23"* align 512 %25)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.18"(%"class.hls::stream.18"* %26, %"class.hls::stream.18"* align 512 %27)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.23"(%"class.hls::stream.23"* %28, %"class.hls::stream.23"* align 512 %29)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %30, %"class.hls::stream"* align 512 %31)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %32, %struct.ap_uint.0* align 512 %33)
  ret void
}

declare void @apatb_hls_recv_krnl_hw(%"class.hls::stream.23"*, %"class.hls::stream.23"*, %"class.hls::stream.55"*, %"class.hls::stream.55"*, %"class.hls::stream.45"*, %"class.hls::stream.48"*, %"class.hls::stream"*, %"class.hls::stream.6"*, %"class.hls::stream.45"*, %"class.hls::stream.6"*, %"class.hls::stream.18"*, %"class.hls::stream.45"*, %"class.hls::stream.23"*, %"class.hls::stream.18"*, %"class.hls::stream.23"*, %"class.hls::stream"*, i32, i32, i32, %struct.ap_uint.0*, %struct.ap_uint.0*)

define void @hls_recv_krnl_hw_stub_wrapper(%"class.hls::stream.23"*, %"class.hls::stream.23"*, %"class.hls::stream.55"*, %"class.hls::stream.55"*, %"class.hls::stream.45"*, %"class.hls::stream.48"*, %"class.hls::stream"*, %"class.hls::stream.6"*, %"class.hls::stream.45"*, %"class.hls::stream.6"*, %"class.hls::stream.18"*, %"class.hls::stream.45"*, %"class.hls::stream.23"*, %"class.hls::stream.18"*, %"class.hls::stream.23"*, %"class.hls::stream"*, i32, i32, i32, %struct.ap_uint.0*, %struct.ap_uint.0*) #6 {
entry:
  call void @copy_out(%"class.hls::stream.23"* null, %"class.hls::stream.23"* %0, %"class.hls::stream.23"* null, %"class.hls::stream.23"* %1, %"class.hls::stream.55"* null, %"class.hls::stream.55"* %2, %"class.hls::stream.55"* null, %"class.hls::stream.55"* %3, %"class.hls::stream.45"* null, %"class.hls::stream.45"* %4, %"class.hls::stream.48"* null, %"class.hls::stream.48"* %5, %"class.hls::stream"* null, %"class.hls::stream"* %6, %"class.hls::stream.6"* null, %"class.hls::stream.6"* %7, %"class.hls::stream.45"* null, %"class.hls::stream.45"* %8, %"class.hls::stream.6"* null, %"class.hls::stream.6"* %9, %"class.hls::stream.18"* null, %"class.hls::stream.18"* %10, %"class.hls::stream.45"* null, %"class.hls::stream.45"* %11, %"class.hls::stream.23"* null, %"class.hls::stream.23"* %12, %"class.hls::stream.18"* null, %"class.hls::stream.18"* %13, %"class.hls::stream.23"* null, %"class.hls::stream.23"* %14, %"class.hls::stream"* null, %"class.hls::stream"* %15, %struct.ap_uint.0* null, %struct.ap_uint.0* %20)
  call void @hls_recv_krnl_hw_stub(%"class.hls::stream.23"* %0, %"class.hls::stream.23"* %1, %"class.hls::stream.55"* %2, %"class.hls::stream.55"* %3, %"class.hls::stream.45"* %4, %"class.hls::stream.48"* %5, %"class.hls::stream"* %6, %"class.hls::stream.6"* %7, %"class.hls::stream.45"* %8, %"class.hls::stream.6"* %9, %"class.hls::stream.18"* %10, %"class.hls::stream.45"* %11, %"class.hls::stream.23"* %12, %"class.hls::stream.18"* %13, %"class.hls::stream.23"* %14, %"class.hls::stream"* %15, i32 %16, i32 %17, i32 %18, %struct.ap_uint.0* %19, %struct.ap_uint.0* %20)
  call void @copy_in(%"class.hls::stream.23"* null, %"class.hls::stream.23"* %0, %"class.hls::stream.23"* null, %"class.hls::stream.23"* %1, %"class.hls::stream.55"* null, %"class.hls::stream.55"* %2, %"class.hls::stream.55"* null, %"class.hls::stream.55"* %3, %"class.hls::stream.45"* null, %"class.hls::stream.45"* %4, %"class.hls::stream.48"* null, %"class.hls::stream.48"* %5, %"class.hls::stream"* null, %"class.hls::stream"* %6, %"class.hls::stream.6"* null, %"class.hls::stream.6"* %7, %"class.hls::stream.45"* null, %"class.hls::stream.45"* %8, %"class.hls::stream.6"* null, %"class.hls::stream.6"* %9, %"class.hls::stream.18"* null, %"class.hls::stream.18"* %10, %"class.hls::stream.45"* null, %"class.hls::stream.45"* %11, %"class.hls::stream.23"* null, %"class.hls::stream.23"* %12, %"class.hls::stream.18"* null, %"class.hls::stream.18"* %13, %"class.hls::stream.23"* null, %"class.hls::stream.23"* %14, %"class.hls::stream"* null, %"class.hls::stream"* %15, %struct.ap_uint.0* null, %struct.ap_uint.0* %20)
  ret void
}

declare void @hls_recv_krnl_hw_stub(%"class.hls::stream.23"*, %"class.hls::stream.23"*, %"class.hls::stream.55"*, %"class.hls::stream.55"*, %"class.hls::stream.45"*, %"class.hls::stream.48"*, %"class.hls::stream"*, %"class.hls::stream.6"*, %"class.hls::stream.45"*, %"class.hls::stream.6"*, %"class.hls::stream.18"*, %"class.hls::stream.45"*, %"class.hls::stream.23"*, %"class.hls::stream.18"*, %"class.hls::stream.23"*, %"class.hls::stream"*, i32, i32, i32, %struct.ap_uint.0*, %struct.ap_uint.0*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_7(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_7(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_7(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
