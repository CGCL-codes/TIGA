#!/bin/sh

# 
# v++(TM)
# runme.sh: a v++-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/space1/Xilinx20202/Vitis_HLS/2020.2/bin:/space1/Xilinx20202/Vitis/2020.2/bin:/space1/Xilinx20202/Vitis/2020.2/bin
else
  PATH=/space1/Xilinx20202/Vitis_HLS/2020.2/bin:/space1/Xilinx20202/Vitis/2020.2/bin:/space1/Xilinx20202/Vitis/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/_x/hls_recv_krnl/hls_recv_krnl'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vitis_hls -f hls_recv_krnl.tcl -messageDb vitis_hls.pb
