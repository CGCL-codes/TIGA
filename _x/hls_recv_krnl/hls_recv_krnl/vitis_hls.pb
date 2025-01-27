
O
4INFO: Applying HLS Y2K22 patch v1.2 for IP revision
*HLSZ200-150h px 
i
ORunning '/space1/Xilinx20202/Vitis_HLS/2020.2/bin/unwrapped/lnx64.o/vitis_hls'
*HLSZ200-10h px 

kFor user 'C1' on host 'ubuntu87' (Linux_x86_64 version 4.15.0-166-generic) on Sun Dec 11 15:11:47 CST 2022
*HLSZ200-10h px 
3
On os Ubuntu 18.04.6 LTS
*HLSZ200-10h px 

fIn directory '/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/_x/hls_recv_krnl/hls_recv_krnl'
*HLSZ200-10h px 
C
(Sourcing Tcl script 'hls_recv_krnl.tcl'
*HLSZ200-150h px 
b
Running: %s
2001510*hls2/
open_project hls_recv_krnl 2default:defaultZ200-1510h px 
 
Creating and opening project '/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/_x/hls_recv_krnl/hls_recv_krnl/hls_recv_krnl'.
*HLSZ200-10h px 
]
Running: %s
2001510*hls2*
set_top hls_recv_krnl 2default:defaultZ200-1510h px 

Running: %s
2001510*hls2ë
Öadd_files /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp -cflags  -I /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include  2default:defaultZ200-1510h px 
°
Adding design file '/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp' to the project
*HLSZ200-10h px 
q
Running: %s
2001510*hls2>
*open_solution -flow_target vitis solution 2default:defaultZ200-1510h px 
ª
Creating and opening solution '/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/_x/hls_recv_krnl/hls_recv_krnl/hls_recv_krnl/solution'.
*HLSZ200-10h px 
×
Using %sflow_target '%s'
2001505*hls2
 2default:default2
vitis2default:defaultZ200-1505h pxeFor help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-1505.html 
°
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default26
"config_interface -m_axi_latency=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_alignment_byte_size=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_max_widen_bitwidth=5122default:defaultZ200-435h px 
²
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default28
$config_interface -m_axi_offset=slave2default:defaultZ200-435h px 
®
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default24
 config_rtl -register_reset_num=32default:defaultZ200-435h px 
e
Running: %s
2001510*hls22
set_part xcu250-figd2104-2L-e 2default:defaultZ200-1510h px 
J
0Setting target device to 'xcu250-figd2104-2L-e'
*HLSZ200-10h px 
q
Running: %s
2001510*hls2>
*create_clock -period 200MHz -name default 2default:defaultZ200-1510h px 
L
1Setting up clock 'default' with a period of 5ns.
*SYNZ201-201h px 
l
Running: %s
2001510*hls29
%config_dataflow -strict_mode warning 2default:defaultZ200-1510h px 
v
Running: %s
2001510*hls2C
/config_export -disable_deadlock_detection=true 2default:defaultZ200-1510h px 
m
Running: %s
2001510*hls2:
&config_rtl -m_axi_conservative_mode=1 2default:defaultZ200-1510h px 
þ
cThe '%s' command is deprecated and will be removed in a future release. Use %s as its replacement.
200483*hls27
#config_rtl -m_axi_conservative_mode2default:default2=
)config_interface -m_axi_conservative_mode2default:defaultZ200-483h px 
f
Running: %s
2001510*hls23
config_interface -m_axi_addr64 2default:defaultZ200-1510h px 
p
Running: %s
2001510*hls2=
)config_interface -m_axi_auto_max_ports=0 2default:defaultZ200-1510h px 
~
Running: %s
2001510*hls2K
7config_export -format ip_catalog -ipname hls_recv_krnl 2default:defaultZ200-1510h px 
U
Running: %s
2001510*hls2"
csynth_design 2default:defaultZ200-1510h px 
Ä
¨Finished File checks and directory preparation: CPU user time: 0.01 seconds. CPU system time: 0 seconds. Elapsed time: 0 seconds; current allocated memory: 189.955 MB.
*HLSZ200-111h px 
©
Analyzing design file '/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp' ... 
*HLSZ200-10h px 

y'/*' within block comment: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/packet.hpp:97:4
*HLSZ207-997h px 

z'/*' within block comment: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/packet.hpp:123:2
*HLSZ207-997h px 
Ë
ÉStatic scalars and arrays declared inside a dataflow region will be treated like local variables: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:713:21
*HLSZ214-111h pxcFor help on HLS 214-111 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=214-111.html 
È
ÆEither use an argument of the function or declare the variable inside the dataflow loop body: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1364:27
*HLSZ214-113h pxcFor help on HLS 214-113 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=214-113.html 
¬
ªSince the only kind of statements allowed in a canonical dataflow region are variable declarations and function calls, the compiler may not be able to correctly handle the region: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:71:6
*HLSZ214-114h pxcFor help on HLS 214-114 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=214-114.html 
Ù
2Dataflow form checks found %s issue(s) in file %s
200471*hls2
32default:default2
p/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp2default:defaultZ200-471h pxcFor help on HLS 200-471 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-471.html 

~unused parameter 'output': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:205:26
*HLSZ207-5301h px 

|unused parameter 'word': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:205:47
*HLSZ207-5301h px 

~unused parameter 'output': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:220:28
*HLSZ207-5301h px 

|unused parameter 'data': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:220:48
*HLSZ207-5301h px 

~unused parameter 'output': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:233:28
*HLSZ207-5301h px 

|unused parameter 'word': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:233:49
*HLSZ207-5301h px 

~unused parameter 'output': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:248:28
*HLSZ207-5301h px 

|unused parameter 'word': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:248:59
*HLSZ207-5301h px 

yunused parameter 'd': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:368:20
*HLSZ207-5301h px 

yunused parameter 's': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/axi_utils.hpp:368:26
*HLSZ207-5301h px 

û'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:62:23
*HLSZ207-5511h px 

û'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:63:23
*HLSZ207-5511h px 

û'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:64:23
*HLSZ207-5511h px 
Ê
­Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:62:9
*HLSZ207-5524h px 
Ê
­Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:63:9
*HLSZ207-5524h px 
Ê
­Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:64:9
*HLSZ207-5524h px 

ô'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:245:9
*HLSZ207-5510h px 

ô'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:368:9
*HLSZ207-5510h px 

ü'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:588:23
*HLSZ207-5511h px 

ü'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:589:23
*HLSZ207-5511h px 

ü'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:590:23
*HLSZ207-5511h px 
Ë
®Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:589:9
*HLSZ207-5524h px 
Ë
®Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:590:9
*HLSZ207-5524h px 
Ë
®Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:588:9
*HLSZ207-5524h px 

ü'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:704:23
*HLSZ207-5511h px 

ü'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:705:23
*HLSZ207-5511h px 

ü'Ap_stable' in '#pragma HLS INTERFACE' is deprecated, and it will be removed in future release. It is suggested to replace it with 'Stable Pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:706:23
*HLSZ207-5511h px 
Ë
®Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:705:9
*HLSZ207-5524h px 
Ë
®Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:706:9
*HLSZ207-5524h px 
Ë
®Ignore interface attribute or pragma which is not used in top function: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:704:9
*HLSZ207-5524h px 
¡
unused parameter 'basePort': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:739:30
*HLSZ207-5301h px 

÷'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:100:9
*HLSZ207-5510h px 

÷'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:250:9
*HLSZ207-5510h px 

÷'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:425:9
*HLSZ207-5510h px 

õ'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:40:9
*HLSZ207-5510h px 

õ'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:41:9
*HLSZ207-5510h px 

õ'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:42:9
*HLSZ207-5510h px 

õ'Resource pragma' is deprecated, and it will be removed in future release. It is suggested to replace it with 'bind_op/bind_storage pragma'.: /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:43:9
*HLSZ207-5510h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:145:31
*HLSZ207-5301h px 
¤
unused parameter 'plaintext': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:153:31
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:153:53
*HLSZ207-5301h px 
¥
unused parameter 'ciphertext': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:153:78
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:208:55
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:364:55
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:471:55
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:556:31
*HLSZ207-5301h px 
¥
unused parameter 'ciphertext': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:564:31
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:564:54
*HLSZ207-5301h px 
¤
unused parameter 'plaintext': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:564:79
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:615:56
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:733:56
*HLSZ207-5301h px 
¤
unused parameter 'cipherkey': /space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:837:56
*HLSZ207-5301h px 
Í
±Finished Source Code Analysis and Preprocessing: CPU user time: 14.89 seconds. CPU system time: 1.03 seconds. Elapsed time: 14.78 seconds; current allocated memory: 193.228 MB.
*HLSZ200-111h px 
m
/Using interface defaults for '%s' flow target.
200777*hls2
Vitis2default:defaultZ200-777h px 
±
Inlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<16>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:304:51)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<16>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:307:26)
*HLSZ214-131h px 
¯
Inlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<16>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:68)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<16>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:37)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<16>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:40)
*HLSZ214-131h px 
¯
Inlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<16>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:24)
*HLSZ214-131h px 
á
ÅInlining function 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<16>, 0ul, 0ul, 0ul> const&)' into 'listen_port_handler(int, int, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:735:34)
*HLSZ214-131h px 
§
Inlining function 'hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>, 0>::read(hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:283:50)
*HLSZ214-131h px 
§
Inlining function 'hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>, 0>::read(hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:286:25)
*HLSZ214-131h px 
¥
Inlining function 'hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>, 0>::read(hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:285:67)
*HLSZ214-131h px 
§
Inlining function 'hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>, 0>::read(hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:285:36)
*HLSZ214-131h px 
§
Inlining function 'hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>, 0>::read(hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:284:39)
*HLSZ214-131h px 
¥
Inlining function 'hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>, 0>::read(hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:284:23)
*HLSZ214-131h px 
Ý
ÁInlining function 'hls::stream<hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>, 0>::read(hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>&)' into 'port_status_handler(int, int, hls::stream<hls::axis<ap_uint<8>, 0ul, 0ul, 0ul>, 0>&, int&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:746:34)
*HLSZ214-131h px 

ëInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:267:60)
*HLSZ214-131h px 

ëInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:61)
*HLSZ214-131h px 

éInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:45)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:293:50)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:296:25)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:67)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:36)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:39)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:23)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<32>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:304:51)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<32>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:307:26)
*HLSZ214-131h px 
¯
Inlining function 'hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<32>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:68)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<32>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:37)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<32>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:40)
*HLSZ214-131h px 
¯
Inlining function 'hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<32>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:24)
*HLSZ214-131h px 

ëInlining function 'hls::stream<ap_uint<16>, 0>::write(ap_uint<16> const&)' into 'recvData_handshake(ap_uint<64>, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1234:40)
*HLSZ214-131h px 
»
Inlining function 'hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<32>, 0ul, 0ul, 0ul> const&)' into 'recvData_handshake(ap_uint<64>, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1233:41)
*HLSZ214-131h px 

óInlining function 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::read()' into 'recvData_handshake(ap_uint<64>, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1221:70)
*HLSZ214-131h px 

ôInlining function 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::empty()' into 'recvData_handshake(ap_uint<64>, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1219:40)
*HLSZ214-131h px 

éInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:267:60)
*HLSZ214-131h px 

éInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:61)
*HLSZ214-131h px 

çInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:45)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:293:50)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:296:25)
*HLSZ214-131h px 

æInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:67)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:36)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:39)
*HLSZ214-131h px 

æInlining function 'hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:23)
*HLSZ214-131h px 
ä
ÈInlining function 'hls::stream<ap_uint<16>, 0>::read(ap_uint<16>&)' into 'hls::stream<ap_uint<16>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:293:50)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:296:25)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:67)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:36)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:39)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:23)
*HLSZ214-131h px 
ª
Inlining function 'hls::stream<ap_uint<512>, 0>::write(ap_uint<512> const&)' into 'recvData_consumeData(ap_uint<64>, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&, hls::stream<ap_uint<512>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1284:32)
*HLSZ214-131h px 
°
Inlining function 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::read()' into 'recvData_consumeData(ap_uint<64>, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&, hls::stream<ap_uint<512>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1282:57)
*HLSZ214-131h px 

ùInlining function 'hls::stream<ap_uint<16>, 0>::read()' into 'recvData_consumeData(ap_uint<64>, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&, hls::stream<ap_uint<512>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1279:44)
*HLSZ214-131h px 
¯
Inlining function 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::read()' into 'recvData_consumeData(ap_uint<64>, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&, hls::stream<ap_uint<512>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1278:35)
*HLSZ214-131h px 

Inlining function 'hls::stream<ap_uint<16>, 0>::empty() const' into 'recvData_consumeData(ap_uint<64>, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&, hls::stream<ap_uint<512>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1276:65)
*HLSZ214-131h px 
°
Inlining function 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::empty()' into 'recvData_consumeData(ap_uint<64>, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&, hls::stream<ap_uint<512>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1276:35)
*HLSZ214-131h px 
Þ
ÂInlining function 'hls::stream<ap_uint<16>, 0>::stream()' into 'recvData(ap_uint<64>, hls::stream<ap_uint<512>, 0>&, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1323:28)
*HLSZ214-131h px 
ä
ÈInlining function 'hls::stream<ap_uint<32>, 0>::read(ap_uint<32>&)' into 'hls::stream<ap_uint<32>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 
®
Inlining function 'hls::stream<ap_uint<32>, 0>::read()' into 'backgroundclock(ap_uint<64>*, hls::stream<ap_uint<32>, 0>&, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:53:42)
*HLSZ214-131h px 
µ
Inlining function 'hls::stream<ap_uint<32>, 0>::empty() const' into 'backgroundclock(ap_uint<64>*, hls::stream<ap_uint<32>, 0>&, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:51:29)
*HLSZ214-131h px 
®
Inlining function 'hls::stream<ap_uint<32>, 0>::read()' into 'backgroundclock(ap_uint<64>*, hls::stream<ap_uint<32>, 0>&, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:47:42)
*HLSZ214-131h px 
µ
Inlining function 'hls::stream<ap_uint<32>, 0>::empty() const' into 'backgroundclock(ap_uint<64>*, hls::stream<ap_uint<32>, 0>&, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:45:24)
*HLSZ214-131h px 
ç
ËInlining function 'hls::stream<ap_uint<512>, 0>::read(ap_uint<512>&)' into 'hls::stream<ap_uint<512>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 
Ý
ÁInlining function 'hls::stream<ap_uint<512>, 0>::write(ap_uint<512> const&)' into 'partition(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:74:22)
*HLSZ214-131h px 
É
­Inlining function 'hls::stream<ap_uint<512>, 0>::read()' into 'partition(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:74:43)
*HLSZ214-131h px 
Ý
ÁInlining function 'hls::stream<ap_uint<512>, 0>::write(ap_uint<512> const&)' into 'partition(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:73:22)
*HLSZ214-131h px 
É
­Inlining function 'hls::stream<ap_uint<512>, 0>::read()' into 'partition(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:73:43)
*HLSZ214-131h px 

òInlining function 'hls::stream<ap_uint<512>, 0>::read()' into 'consumetrans(hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:83:41)
*HLSZ214-131h px 

ùInlining function 'hls::stream<ap_uint<512>, 0>::write(ap_uint<512> const&)' into 'prepare_sha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:106:18)
*HLSZ214-131h px 

éInlining function 'hls::stream<bool, 0>::write(bool const&)' into 'prepare_sha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:105:25)
*HLSZ214-131h px 

÷Inlining function 'hls::stream<ap_uint<64>, 0>::write(ap_uint<64> const&)' into 'prepare_sha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:103:24)
*HLSZ214-131h px 

ùInlining function 'hls::stream<ap_uint<128>, 0>::write(ap_uint<128> const&)' into 'prepare_sha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:100:22)
*HLSZ214-131h px 

èInlining function 'hls::stream<bool, 0>::write(bool const&)' into 'prepare_sha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:99:25)
*HLSZ214-131h px 

äInlining function 'hls::stream<ap_uint<512>, 0>::read()' into 'prepare_sha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:98:41)
*HLSZ214-131h px 
Ï
³Inlining function 'hls::stream<bool, 0>::read(bool&)' into 'hls::stream<bool, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 
ç
ËInlining function 'hls::stream<ap_uint<128>, 0>::read(ap_uint<128>&)' into 'hls::stream<ap_uint<128>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 
ä
ÈInlining function 'hls::stream<ap_uint<64>, 0>::read(ap_uint<64>&)' into 'hls::stream<ap_uint<64>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:153:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:152:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:151:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:150:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:149:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:148:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:147:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:146:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:145:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:144:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:143:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:142:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:141:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:140:33)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:139:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:138:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:137:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:136:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:135:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:134:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:133:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:132:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:131:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:130:32)
*HLSZ214-131h px 

Inlining function 'ap_uint<64u> xf::security::internal::ROTL<64u>(ap_uint<64u>, unsigned int)' into 'xf::security::internal::KECCAK_f(ap_uint<64>*)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:118:42)
*HLSZ214-131h px 

ïInlining function 'hls::stream<bool, 0>::write(bool const&)' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:378:19)
*HLSZ214-131h px 
ÿ
ãInlining function 'hls::stream<bool, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:375:33)
*HLSZ214-131h px 

ïInlining function 'hls::stream<bool, 0>::write(bool const&)' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:372:23)
*HLSZ214-131h px 

ÿInlining function 'hls::stream<ap_uint<256>, 0>::write(ap_uint<256> const&)' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:371:20)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:338:58)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:332:58)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:326:58)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:320:58)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:314:58)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:308:58)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:302:58)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:291:54)
*HLSZ214-131h px 

êInlining function 'hls::stream<ap_uint<64>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:277:31)
*HLSZ214-131h px 

ëInlining function 'hls::stream<ap_uint<128>, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:245:35)
*HLSZ214-131h px 
ÿ
ãInlining function 'hls::stream<bool, 0>::read()' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:239:34)
*HLSZ214-131h px 
Ï
³Inlining function 'hls::stream<ap_uint<512>, 0>::read()' into 'mysha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:120:27)
*HLSZ214-131h px 
á
ÅInlining function 'hls::stream<ap_uint<32>, 0>::write(ap_uint<32> const&)' into 'mysha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:129:14)
*HLSZ214-131h px 
ã
ÇInlining function 'hls::stream<ap_uint<512>, 0>::write(ap_uint<512> const&)' into 'mysha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:120:14)
*HLSZ214-131h px 
ã
ÇInlining function 'hls::stream<ap_uint<512>, 0>::write(ap_uint<512> const&)' into 'mysha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:126:10)
*HLSZ214-131h px 
Ï
³Inlining function 'hls::stream<ap_uint<512>, 0>::read()' into 'mysha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:126:23)
*HLSZ214-131h px 
á
ÅInlining function 'hls::stream<ap_uint<32>, 0>::write(ap_uint<32> const&)' into 'mysha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:122:14)
*HLSZ214-131h px 
ç
ËInlining function 'hls::stream<ap_uint<256>, 0>::read(ap_uint<256>&)' into 'hls::stream<ap_uint<256>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 

Inlining function 'hls::stream<bool, 0>::read()' into 'consumesha(hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:141:36)
*HLSZ214-131h px 
¤
Inlining function 'hls::stream<ap_uint<256>, 0>::read()' into 'consumesha(hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:140:44)
*HLSZ214-131h px 

Inlining function 'hls::stream<bool, 0>::read()' into 'consumesha(hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:137:36)
*HLSZ214-131h px 

êInlining function 'hls::stream<bool, 0>::write(bool const&)' into 'prepare_aes(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:169:29)
*HLSZ214-131h px 

êInlining function 'hls::stream<bool, 0>::write(bool const&)' into 'prepare_aes(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:167:34)
*HLSZ214-131h px 

úInlining function 'hls::stream<ap_uint<128>, 0>::write(ap_uint<128> const&)' into 'prepare_aes(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:166:17)
*HLSZ214-131h px 

úInlining function 'hls::stream<ap_uint<128>, 0>::write(ap_uint<128> const&)' into 'prepare_aes(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:161:18)
*HLSZ214-131h px 

úInlining function 'hls::stream<ap_uint<256>, 0>::write(ap_uint<256> const&)' into 'prepare_aes(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:160:25)
*HLSZ214-131h px 

æInlining function 'hls::stream<ap_uint<512>, 0>::read()' into 'prepare_aes(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:156:38)
*HLSZ214-131h px 
è
ÌInlining function 'xf::security::aesTable::aesTable()' into 'xf::security::aesDec<256>::aesDec()' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:572:5)
*HLSZ214-131h px 
¢
Inlining function 'xf::security::aesDec<256>::aesDec()' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:178:37)
*HLSZ214-131h px 
§
Inlining function 'hls::stream<bool, 0>::write(bool const&)' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:241:17)
*HLSZ214-131h px 

ÿInlining function 'hls::stream<bool, 0>::read()' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:238:26)
*HLSZ214-131h px 
§
Inlining function 'hls::stream<bool, 0>::write(bool const&)' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:236:21)
*HLSZ214-131h px 
·
Inlining function 'hls::stream<ap_uint<128>, 0>::write(ap_uint<128> const&)' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:235:19)
*HLSZ214-131h px 
£
Inlining function 'hls::stream<ap_uint<256>, 0>::read()' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:180:42)
*HLSZ214-131h px 
£
Inlining function 'hls::stream<ap_uint<128>, 0>::read()' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:208:28)
*HLSZ214-131h px 

ÿInlining function 'hls::stream<bool, 0>::read()' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:202:27)
*HLSZ214-131h px 
£
Inlining function 'hls::stream<ap_uint<128>, 0>::read()' into 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:187:31)
*HLSZ214-131h px 
Ã
§Inlining function 'hls::stream<ap_uint<32>, 0>::write(ap_uint<32> const&)' into 'myaes(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:187:14)
*HLSZ214-131h px 
Ã
§Inlining function 'hls::stream<ap_uint<32>, 0>::write(ap_uint<32> const&)' into 'myaes(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:182:14)
*HLSZ214-131h px 

Inlining function 'hls::stream<bool, 0>::read()' into 'consumeaes(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:199:39)
*HLSZ214-131h px 
¤
Inlining function 'hls::stream<ap_uint<128>, 0>::read()' into 'consumeaes(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:198:47)
*HLSZ214-131h px 

Inlining function 'hls::stream<bool, 0>::read()' into 'consumeaes(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, ap_uint<32>)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:195:39)
*HLSZ214-131h px 
Ø
¼Inlining function 'hls::stream<ipTuple, 0>::read(ipTuple&)' into 'hls::stream<ipTuple, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<64>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:304:51)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<64>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:307:26)
*HLSZ214-131h px 
¯
Inlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<64>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:68)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<64>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:37)
*HLSZ214-131h px 
±
Inlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<64>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:40)
*HLSZ214-131h px 
¯
Inlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<64>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:24)
*HLSZ214-131h px 
Ð
´Inlining function 'hls::stream<ipTuple, 0>::stream()' into 'tie_off_tcp_open_connection(hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1453:27)
*HLSZ214-131h px 
í
ÑInlining function 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::read()' into 'tie_off_tcp_open_connection(hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1466:59)
*HLSZ214-131h px 
î
ÒInlining function 'hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>::empty()' into 'tie_off_tcp_open_connection(hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1464:34)
*HLSZ214-131h px 

ýInlining function 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<64>, 0ul, 0ul, 0ul> const&)' into 'tie_off_tcp_open_connection(hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1460:38)
*HLSZ214-131h px 
Î
²Inlining function 'hls::stream<ipTuple, 0>::read()' into 'tie_off_tcp_open_connection(hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1457:56)
*HLSZ214-131h px 
Õ
¹Inlining function 'hls::stream<ipTuple, 0>::empty() const' into 'tie_off_tcp_open_connection(hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1455:26)
*HLSZ214-131h px 
Þ
ÂInlining function 'hls::stream<appTxMeta, 0>::read(appTxMeta&)' into 'hls::stream<appTxMeta, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 
ê
ÎInlining function 'hls::stream<net_axis<512>, 0>::read(net_axis<512>&)' into 'hls::stream<net_axis<512>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:156:9)
*HLSZ214-131h px 
´
Inlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<512>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:304:51)
*HLSZ214-131h px 
´
Inlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<512>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:307:26)
*HLSZ214-131h px 
²
Inlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<512>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:68)
*HLSZ214-131h px 
´
Inlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<512>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:37)
*HLSZ214-131h px 
´
Inlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<512>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:40)
*HLSZ214-131h px 
²
Inlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<512>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:24)
*HLSZ214-131h px 

éInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:267:60)
*HLSZ214-131h px 

éInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:61)
*HLSZ214-131h px 

çInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:45)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:293:50)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:296:25)
*HLSZ214-131h px 

æInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:67)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:36)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:39)
*HLSZ214-131h px 

æInlining function 'hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:23)
*HLSZ214-131h px 
ý
áInlining function 'hls::stream<appTxMeta, 0>::stream()' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1476:29)
*HLSZ214-131h px 

ûInlining function 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::read()' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1500:53)
*HLSZ214-131h px 

üInlining function 'hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>::empty()' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1498:32)
*HLSZ214-131h px 
Æ
ªInlining function 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<512>, 0ul, 0ul, 0ul> const&)' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1494:30)
*HLSZ214-131h px 
ÿ
ãInlining function 'hls::stream<net_axis<512>, 0>::read()' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1490:42)
*HLSZ214-131h px 

êInlining function 'hls::stream<net_axis<512>, 0>::empty() const' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1488:18)
*HLSZ214-131h px 

åInlining function 'hls::stream<net_axis<512>, 0>::stream()' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1486:34)
*HLSZ214-131h px 
Ä
¨Inlining function 'hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<32>, 0ul, 0ul, 0ul> const&)' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1483:30)
*HLSZ214-131h px 
û
ßInlining function 'hls::stream<appTxMeta, 0>::read()' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1480:47)
*HLSZ214-131h px 

æInlining function 'hls::stream<appTxMeta, 0>::empty() const' into 'tie_off_tcp_tx(hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<64>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1478:22)
*HLSZ214-131h px 

ëInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:267:60)
*HLSZ214-131h px 

ëInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:61)
*HLSZ214-131h px 

éInlining function 'hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:45)
*HLSZ214-131h px 

ëInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:267:60)
*HLSZ214-131h px 

ëInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:61)
*HLSZ214-131h px 

éInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::empty()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:268:45)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:293:50)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:296:25)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:67)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:295:36)
*HLSZ214-131h px 

êInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:39)
*HLSZ214-131h px 

èInlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::read()' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:294:23)
*HLSZ214-131h px 
´
Inlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<256>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:304:51)
*HLSZ214-131h px 
´
Inlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<256>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:307:26)
*HLSZ214-131h px 
²
Inlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<256>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:68)
*HLSZ214-131h px 
´
Inlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<256>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:306:37)
*HLSZ214-131h px 
´
Inlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<256>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:40)
*HLSZ214-131h px 
²
Inlining function 'hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<256>, 0ul, 0ul, 0ul> const&)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_axi_sdata.h:305:24)
*HLSZ214-131h px 
Ñ
µInlining function 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::empty()' into 'tie_off_udp(hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1375:25)
*HLSZ214-131h px 
þ
âInlining function 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<256>, 0ul, 0ul, 0ul> const&)' into 'tie_off_udp(hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1384:30)
*HLSZ214-131h px 
Ð
´Inlining function 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::read()' into 'tie_off_udp(hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1383:51)
*HLSZ214-131h px 
Ñ
µInlining function 'hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>::empty()' into 'tie_off_udp(hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1381:30)
*HLSZ214-131h px 
þ
âInlining function 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<512>, 0ul, 0ul, 0ul> const&)' into 'tie_off_udp(hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1378:25)
*HLSZ214-131h px 
Ð
´Inlining function 'hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>::read()' into 'tie_off_udp(hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<256>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1377:41)
*HLSZ214-131h px 

ùInlining function 'hls::stream<ap_uint<16>, 0>::stream()' into 'tie_off_tcp_close_con(hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1510:32)
*HLSZ214-131h px 
Ú
¾Inlining function 'hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>::write(hls::axis<ap_uint<16>, 0ul, 0ul, 0ul> const&)' into 'tie_off_tcp_close_con(hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1515:39)
*HLSZ214-131h px 

÷Inlining function 'hls::stream<ap_uint<16>, 0>::read()' into 'tie_off_tcp_close_con(hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1514:55)
*HLSZ214-131h px 

þInlining function 'hls::stream<ap_uint<16>, 0>::empty() const' into 'tie_off_tcp_close_con(hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1512:27)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<512>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:361:35)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<512>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:364:44)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<512>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:370:44)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<512>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:373:44)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<512>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:376:44)
*HLSZ214-131h px 
å
ÉInlining function 'hls::stream<ap_uint<64>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:379:43)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<128>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:381:44)
*HLSZ214-131h px 
Þ
ÂInlining function 'hls::stream<bool, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:383:36)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<256>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:385:44)
*HLSZ214-131h px 
Þ
ÂInlining function 'hls::stream<bool, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:387:36)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<128>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:390:37)
*HLSZ214-131h px 
Þ
ÂInlining function 'hls::stream<bool, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:391:29)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<256>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:392:37)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<128>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:393:37)
*HLSZ214-131h px 
æ
ÊInlining function 'hls::stream<ap_uint<128>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:394:37)
*HLSZ214-131h px 
Þ
ÂInlining function 'hls::stream<bool, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:395:29)
*HLSZ214-131h px 
å
ÉInlining function 'hls::stream<ap_uint<32>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:399:36)
*HLSZ214-131h px 
å
ÉInlining function 'hls::stream<ap_uint<32>, 0>::stream()' into 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:398:36)
*HLSZ214-131h px 
@
%Disaggregating variable 'stateArray'
*HLSZ214-210h px 
>
#Disaggregating variable 'decipher'
*HLSZ214-210h px 
ï
ÓUnrolling loop 'LOOP_INIT_STATE_ARRAYS' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:259:9) in function 'xf::security::internal::sha3Digest<32u>' completely with a factor of 25 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:259:9)
*HLSZ214-186h px 
æ
ÊUnrolling loop 'LOOP_SHA3_EMIT' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:365:9) in function 'xf::security::internal::sha3Digest<32u>' completely with a factor of 8 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:365:9)
*HLSZ214-186h px 
Ý
ÁUnrolling loop 'LOOP_THETA_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:109:9) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:109:9)
*HLSZ214-186h px 
Ý
ÁUnrolling loop 'LOOP_THETA_2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:116:9) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:116:9)
*HLSZ214-186h px 
ç
ËUnrolling loop 'LOOP_CALCULATE_THETA' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13)
*HLSZ214-186h px 
ç
ËUnrolling loop 'LOOP_CALCULATE_THETA' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13)
*HLSZ214-186h px 
ç
ËUnrolling loop 'LOOP_CALCULATE_THETA' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13)
*HLSZ214-186h px 
ç
ËUnrolling loop 'LOOP_CALCULATE_THETA' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13)
*HLSZ214-186h px 
ç
ËUnrolling loop 'LOOP_CALCULATE_THETA' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:120:13)
*HLSZ214-186h px 
Ù
½Unrolling loop 'LOOP_CHI' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:185:9) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:185:9)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_CALCULATE_CHI' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_INIT_STATEREG' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_CALCULATE_CHI' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_INIT_STATEREG' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_CALCULATE_CHI' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_INIT_STATEREG' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_CALCULATE_CHI' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_INIT_STATEREG' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_CALCULATE_CHI' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:195:13)
*HLSZ214-186h px 
å
ÉUnrolling loop 'LOOP_INIT_STATEREG' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13) in function 'xf::security::internal::KECCAK_f' completely with a factor of 5 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:190:13)
*HLSZ214-186h px 
ä
ÈUnrolling loop 'VITIS_LOOP_647_2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:647:31) in function 'xf::security::aesDec<256>::process' completely with a factor of 16 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:647:31)
*HLSZ214-186h px 
ã
ÇUnrolling loop 'VITIS_LOOP_664_4' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:664:35) in function 'xf::security::aesDec<256>::process' completely with a factor of 4 (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:664:35)
*HLSZ214-186h px 
Ê
®Inlining function 'xf::security::sha3_256(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&)' into 'mysha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:119:0)
*HLSZ214-178h px 
Æ
ªInlining function 'void xf::security::internal::aesCbcDecrypt<256u>(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256u>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' into 'xf::security::aes256CbcDecrypt(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:609:0)
*HLSZ214-178h px 
Ô
¸Inlining function 'xf::security::aes256CbcDecrypt(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&)' into 'myaes(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:180:0)
*HLSZ214-178h px 
ò
ÖInlining function '_llvm.fpga.pack.none.i16.s_struct.ap_uint.11s' into 'recvData_handshake(ap_uint<64>, hls::stream<hls::axis<ap_uint<128>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<32>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&) (.1)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 

øInlining function '_llvm.fpga.pack.none.i512.s_struct.ap_uint.25s' into 'recvData_consumeData(ap_uint<64>, hls::stream<hls::axis<ap_uint<16>, 0ul, 0ul, 0ul>, 0>&, hls::stream<hls::axis<ap_uint<512>, 0ul, 0ul, 0ul>, 0>&, hls::stream<ap_uint<16>, 0>&, hls::stream<ap_uint<512>, 0>&) (.1)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 
¼
 Inlining function '_llvm.fpga.pack.none.i64.s_struct.ap_uint.0s' into 'backgroundclock(ap_uint<64>*, hls::stream<ap_uint<32>, 0>&, hls::stream<ap_uint<32>, 0>&) (.1)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:48:30)
*HLSZ214-131h px 
¼
 Inlining function '_llvm.fpga.pack.none.i64.s_struct.ap_uint.0s' into 'backgroundclock(ap_uint<64>*, hls::stream<ap_uint<32>, 0>&, hls::stream<ap_uint<32>, 0>&) (.1)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:61:18)
*HLSZ214-131h px 
¼
 Inlining function '_llvm.fpga.pack.none.i64.s_struct.ap_uint.0s' into 'backgroundclock(ap_uint<64>*, hls::stream<ap_uint<32>, 0>&, hls::stream<ap_uint<32>, 0>&) (.1)' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:54:34)
*HLSZ214-131h px 
í
ÑInlining function '_llvm.fpga.pack.none.i64.s_struct.ap_uint.0s' into 'prepare_sha(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<512>, 0>&, ap_uint<32>) (.1)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 

çInlining function '_llvm.fpga.pack.none.i256.s_struct.ap_uint.57s' into 'void xf::security::internal::sha3Digest<32u>(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<(8) * (32u)>, 0>&, hls::stream<bool, 0>&) (.1)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 
ï
ÓInlining function '_llvm.fpga.pack.none.i128.s_struct.ap_uint.8s' into 'prepare_aes(hls::stream<ap_uint<512>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, ap_uint<32>) (.1)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 

Inlining function '_llvm.fpga.pack.none.i128.s_struct.ap_uint.8s' into 'myaes(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&) (.1)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 

Inlining function '_llvm.fpga.pack.none.i128.s_struct.ap_uint.8s' into 'myaes(hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, hls::stream<ap_uint<256>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<ap_uint<128>, 0>&, hls::stream<bool, 0>&, ap_uint<32>, hls::stream<ap_uint<32>, 0>&) (.1)' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174:9)
*HLSZ214-131h px 
Ë
¯Finished Compiling Optimization and Transform: CPU user time: 14.06 seconds. CPU system time: 0.77 seconds. Elapsed time: 14.92 seconds; current allocated memory: 199.795 MB.
*HLSZ200-111h px 
¯
Finished Checking Pragmas: CPU user time: 0.01 seconds. CPU system time: 0 seconds. Elapsed time: 0 seconds; current allocated memory: 199.798 MB.
*HLSZ200-111h px 
<
"Starting code transformations ...
*HLSZ200-10h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
·
Finished Standard Transforms: CPU user time: 0.8 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.82 seconds; current allocated memory: 215.710 MB.
*HLSZ200-111h px 
8
Checking synthesizability ...
*HLSZ200-10h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
¬
/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_ref.h:708: variable-indexed range selection may cause suboptimal QoR.
*SYNCHKZ200-23h px 
7
0 error(s), 1 warning(s).
*SYNCHKZ200-10h px 
¾
¢Finished Checking Synthesizability: CPU user time: 1.82 seconds. CPU system time: 0.03 seconds. Elapsed time: 1.84 seconds; current allocated memory: 235.682 MB.
*HLSZ200-111h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
s
VPipelining loop 'VITIS_LOOP_1281_2' in function 'recvData_consumeData' automatically.
*XFORMZ203-510h px 
Ù
»Pipelining loop 'VITIS_LOOP_1218_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1216) in function 'recvData_handshake' automatically.
*XFORMZ203-510h px 
Ý
¿Pipelining loop 'VITIS_LOOP_71_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:70) in function 'partition' automatically.
*XFORMZ203-510h px 
á
ÃPipelining loop 'VITIS_LOOP_154_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:154) in function 'prepare_aes' automatically.
*XFORMZ203-510h px 
¾
 Pipelining loop 'VITIS_LOOP_96_1' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) in function 'prepare_sha' automatically.
*XFORMZ203-510h px 
l
OPipelining loop 'VITIS_LOOP_42_1' in function 'backgroundclock' automatically.
*XFORMZ203-510h px 
¾
 Pipelining loop 'VITIS_LOOP_196_2' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) in function 'consumeaes' automatically.
*XFORMZ203-510h px 
¾
 Pipelining loop 'VITIS_LOOP_138_2' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) in function 'consumesha' automatically.
*XFORMZ203-510h px 
à
ÂPipelining loop 'VITIS_LOOP_81_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:81) in function 'consumetrans' automatically.
*XFORMZ203-510h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
â
ÄUnrolling all loops for pipelining in function 'xf::security::internal::sha3Digest<32u>' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:0:25).
*XFORMZ203-502h px 
à
ÂIgnored partial unroll directive for loop 'LOOP_SHA3_MAIN' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) because its parent loop or function is pipelined.
*XFORMZ203-503h px 
û
ÝIgnored partial unroll directive for loop 'LOOP_SHA3_DIGEST_NBLK' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:265) because its parent loop or function is pipelined.
*XFORMZ203-503h px 
å
ÇIgnored pipeline directive for loop 'LOOP_GEN_FULL_MESSAGE_BLK' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) because its parent loop or function is pipelined.
*XFORMZ203-505h px 
ë
ÍIgnored partial unroll directive for loop 'LOOP_GEN_FULL_MESSAGE_BLK' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) because its parent loop or function is pipelined.
*XFORMZ203-503h px 

jIgnored pipeline directive for loop 'LOOP_GEN_LAST_BLK' because its parent loop or function is pipelined.
*XFORMZ203-505h px 

pIgnored partial unroll directive for loop 'LOOP_GEN_LAST_BLK' because its parent loop or function is pipelined.
*XFORMZ203-503h px 
Þ
ÀUnrolling all loops for pipelining in function 'xf::security::aesDec<256>::process' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:620:13).
*XFORMZ203-502h px 
Ó
µUnrolling all sub-loops inside loop 'VITIS_LOOP_96_1' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) in function 'prepare_sha' for pipelining.
*XFORMZ203-502h px 
Ü
¾Unrolling all loops for pipelining in function 'xf::security::internal::KECCAK_f' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:92:21).
*XFORMZ203-502h px 
ó
ÕIgnored pipeline directive for loop 'LOOP_5_STEP_MAPPING' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:103) because its parent loop or function is pipelined.
*XFORMZ203-505h px 
ù
ÛIgnored partial unroll directive for loop 'LOOP_5_STEP_MAPPING' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:103) because its parent loop or function is pipelined.
*XFORMZ203-503h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
¥
&Cannot unroll loop %s completely: %s.
200932*hls2°
'LOOP_SHA3_MAIN' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) in function 'xf::security::internal::sha3Digest<32u>'2default:default2'
variable loop bound2default:defaultZ200-932h px 
ª
SCannot unroll loop %s: cannot completely unroll a loop with a variable trip count.
200936*hls2Ë
¶'LOOP_SHA3_DIGEST_NBLK' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:265) in function 'xf::security::internal::sha3Digest<32u>'2default:defaultZ200-936h pxcFor help on HLS 200-936 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-936.html 
ª
1Unrolling loop %s completely with a factor of %s.200489*hls2»
¦'LOOP_GEN_FULL_MESSAGE_BLK' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:0) in function 'xf::security::internal::sha3Digest<32u>'2default:default2
172default:defaultZ200-489h px 
Ë
1Unrolling loop %s completely with a factor of %s.200489*hls2]
I'LOOP_GEN_LAST_BLK' in function 'xf::security::internal::sha3Digest<32u>'2default:default2
172default:defaultZ200-489h px 
Å
1Unrolling loop %s completely with a factor of %s.200489*hls2W
C'VITIS_LOOP_623_1' in function 'xf::security::aesDec<256>::process'2default:default2
142default:defaultZ200-489h px 
¯
1Unrolling loop %s completely with a factor of %s.200489*hls2À
«'VITIS_LOOP_656_3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:625) in function 'xf::security::aesDec<256>::process'2default:default2
162default:defaultZ200-489h px 
¦
1Unrolling loop %s completely with a factor of %s.200489*hls2¸
£'VITIS_LOOP_101_2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:101) in function 'prepare_sha'2default:default2
82default:defaultZ200-489h px 
±
1Unrolling loop %s completely with a factor of %s.200489*hls2Â
­'LOOP_5_STEP_MAPPING' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:103) in function 'xf::security::internal::KECCAK_f'2default:default2
242default:defaultZ200-489h px 
Ö
¸Region '3' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '2' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Ö
¸Region '1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9) overlaps with another region '0' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:248:9), which may result in unpredictable synthesis results.
*XFORMZ203-302h px 
Æ
¨Partitioning array 'stateArray.M.V' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:256) in dimension 1 completely.
*XFORMZ203-101h px 
Ì
®Partitioning array 'decipher.key_list.V.1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:178) in dimension 1 completely.
*XFORMZ203-101h px 
Ê
¬Partitioning array 'decipher.key_list.V' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/cbc.hpp:178) in dimension 1 completely.
*XFORMZ203-101h px 
ú
ÜChanging loop 'Loop_VITIS_LOOP_71_1_proc' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:70) to a process function for dataflow in function 'partition'.
*XFORMZ203-721h px 
Ï
±Internal stream variable 'txMetaData' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1476) is invalid: it has no data producer
*XFORMZ203-731h px 
Ë
­Internal stream variable 'txData' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1486) is invalid: it has no data producer
*XFORMZ203-731h px 
Ó
µInternal stream variable 'openConnection' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1453) is invalid: it has no data producer
*XFORMZ203-731h px 
Ô
¶Internal stream variable 'closeConnection' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1510) is invalid: it has no data producer
*XFORMZ203-731h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2"
ciphertextStrm2default:default2
w(/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:390) 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2!
cipherkeyStrm2default:default2
w(/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:392) 2default:defaultZ200-805h px 
ý
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
IVStrm2default:default2
w(/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:393) 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2!
plaintextStrm2default:default2
w(/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:394) 2default:defaultZ200-805h px 
þ
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
timesha2default:default2
w(/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:398) 2default:defaultZ200-805h px 
þ
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
timeaes2default:default2
w(/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:399) 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
sha_out2default:default2
 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
sha_in2default:default2
 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2

s_data_out2default:default2
 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2"
s_data_net_out2default:default2
 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2

s_data_cal2default:default2
 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
msgStrm2default:default2
 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2

msgLenStrm2default:default2
 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2

digestStrm2default:default2
 2default:defaultZ200-805h px 
Ê
¬Applying dataflow to function 'listenPorts' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:760:6), detected/extracted 4 process function(s): 
	 'listenPorts.entry37'
	 'listenPorts_Block_.split2_proc'
	 'listen_port_handler'
	 'port_status_handler'.
*XFORMZ203-712h px 

ïApplying dataflow to function 'recvData' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1323:6), detected/extracted 2 process function(s): 
	 'recvData_handshake'
	 'recvData_consumeData'.
*XFORMZ203-712h px 

üApplying dataflow to function 'partition' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:64:43), detected/extracted 1 process function(s): 
	 'partition_Loop_VITIS_LOOP_71_1_proc2761'.
*XFORMZ203-712h px 
¢
Applying dataflow to function 'hls_recv_krnl' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:329), detected/extracted 17 process function(s): 
	 'hls_recv_krnl.entry45'
	 'Block_.split11_proc'
	 'listenPorts'
	 'recvData'
	 'backgroundclock'
	 'partition'
	 'consumetrans'
	 'prepare_sha'
	 'mysha'
	 'consumesha'
	 'prepare_aes'
	 'myaes'
	 'consumeaes'
	 'tie_off_tcp_open_connection'
	 'tie_off_tcp_tx'
	 'tie_off_udp'
	 'tie_off_tcp_close_con'.
*XFORMZ203-712h px 
ê
ÍBalancing expressions in function 'xf::security::internal::KECCAK_f' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/sha3.hpp:94:1)...840 expression(s) balanced.
*XFORMZ203-11h px 
ì
ÏBalancing expressions in function 'xf::security::aesDec<256>::process' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/xf_security/aes.hpp:657:5)...624 expression(s) balanced.
*XFORMZ203-11h px 
Í
±Finished Loop, function and other optimizations: CPU user time: 76.22 seconds. CPU system time: 0.13 seconds. Elapsed time: 76.36 seconds; current allocated memory: 293.832 MB.
*HLSZ200-111h px 
¥
Cannot flatten loop %s %s.
200960*hls2µ
 'VITIS_LOOP_1275_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/common/include/communication.hpp:1272:18) in function 'recvData_consumeData'2default:default2G
3either the parent loop or sub loop is do-while loop2default:defaultZ200-960h pxcFor help on HLS 200-960 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-960.html 
Ê
Cannot flatten loop %s %s.
200960*hls2µ
 'VITIS_LOOP_183_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:183:41) in function 'myaes'2default:default2l
Xthe outer loop is not a perfect loop because there is nontrivial logic in the loop latch2default:defaultZ200-960h pxcFor help on HLS 200-960 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-960.html 

Cannot flatten loop %s %s.
200960*hls2º
¥'VITIS_LOOP_135_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:135:41) in function 'consumesha'2default:default28
$the outer loop is not a perfect loop2default:defaultZ200-960h pxcFor help on HLS 200-960 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-960.html 

Cannot flatten loop %s %s.
200960*hls2º
¥'VITIS_LOOP_193_1' (/space1/hxh/APB/sha_aes_tcpip/Vitis_with_100Gbps_TCP-IP/kernel/user_krnl/hls_recv_krnl/src/hls/hls_recv_krnl.cpp:193:41) in function 'consumeaes'2default:default28
$the outer loop is not a perfect loop2default:defaultZ200-960h pxcFor help on HLS 200-960 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-960.html 
í
Cosimulation may deadlock if process %s has a streamed top-level array input and has predecessor processes. If a deadlock occurs, please consider converting the streamed array into an hls::stream or using '::common::get_param hls.config_cosim.top_streamed_array true' in the TCL script.2001607*hls2'
port_status_handler2default:defaultZ200-1614h px 
Ó
Process %s is made part of the output synchronization in its dataflow region, because it has an external FIFO output and no PIPO output200765*hls2&
recvData_handshake2default:defaultZ200-765h px 

»Process %s has both a successor and writes an output to its caller (see the GUI dataflow viewer). This may lead to lower throughput. Consider copying this output via a successor process.
2001450*hls2&
recvData_handshake2default:defaultZ200-1450h px 
î
Cosimulation may deadlock if process %s has a streamed top-level array input and has predecessor processes. If a deadlock occurs, please consider converting the streamed array into an hls::stream or using '::common::get_param hls.config_cosim.top_streamed_array true' in the TCL script.2001607*hls2(
recvData_consumeData2default:defaultZ200-1614h px 

BGenerating channel %s that flows backwards in the dataflow region.200657*hls2
timesha2default:defaultZ200-657h px 

BGenerating channel %s that flows backwards in the dataflow region.200657*hls2
timeaes2default:defaultZ200-657h px 
å
Cosimulation may deadlock if process %s has a streamed top-level array input and has predecessor processes. If a deadlock occurs, please consider converting the streamed array into an hls::stream or using '::common::get_param hls.config_cosim.top_streamed_array true' in the TCL script.2001607*hls2
listenPorts2default:defaultZ200-1614h px 
É
Process %s is made part of the output synchronization in its dataflow region, because it has an external FIFO output and no PIPO output200765*hls2
recvData2default:defaultZ200-765h px 
ÿ
»Process %s has both a successor and writes an output to its caller (see the GUI dataflow viewer). This may lead to lower throughput. Consider copying this output via a successor process.
2001450*hls2
recvData2default:defaultZ200-1450h px 
â
Cosimulation may deadlock if process %s has a streamed top-level array input and has predecessor processes. If a deadlock occurs, please consider converting the streamed array into an hls::stream or using '::common::get_param hls.config_cosim.top_streamed_array true' in the TCL script.2001607*hls2
recvData2default:defaultZ200-1614h px 
½
¡Finished Architecture Synthesis: CPU user time: 67.96 seconds. CPU system time: 0.18 seconds. Elapsed time: 68.14 seconds; current allocated memory: 621.693 MB.
*HLSZ200-111h px 
:
 Starting hardware synthesis ...
*HLSZ200-10h px 
;
!Synthesizing 'hls_recv_krnl' ...
*HLSZ200-10h px 
f
KLegalizing function name 'hls_recv_krnl.entry3' to 'hls_recv_krnl_entry3'.
*SYNZ201-103h px 
h
MLegalizing function name 'hls_recv_krnl.entry45' to 'hls_recv_krnl_entry45'.
*SYNZ201-103h px 
c
HLegalizing function name 'Block_.split11_proc' to 'Block_split11_proc'.
*SYNZ201-103h px 
d
ILegalizing function name 'listenPorts.entry37' to 'listenPorts_entry37'.
*SYNZ201-103h px 
y
^Legalizing function name 'listenPorts_Block_.split2_proc' to 'listenPorts_Block_split2_proc'.
*SYNZ201-103h px 
]
BLegalizing function name 'sha3Digest<32u>' to 'sha3Digest_32u_s'.
*SYNZ201-103h px 
N
3Legalizing function name 'process' to 'process_r'.
*SYNZ201-103h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
I
/-- Implementing module 'hls_recv_krnl_entry3' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.25 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.28 seconds; current allocated memory: 626.212 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.04 seconds; current allocated memory: 626.314 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
J
0-- Implementing module 'hls_recv_krnl_entry45' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.05 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 626.382 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.05 seconds; current allocated memory: 626.544 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
G
--- Implementing module 'Block_split11_proc' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.03 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.05 seconds; current allocated memory: 626.584 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.04 seconds; current allocated memory: 626.646 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
H
.-- Implementing module 'listenPorts_entry37' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.05 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 626.696 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.04 seconds; current allocated memory: 626.813 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
R
8-- Implementing module 'listenPorts_Block_split2_proc' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.04 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 626.845 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.03 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.04 seconds; current allocated memory: 626.887 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
H
.-- Implementing module 'listen_port_handler' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_730_1'.
*SCHEDZ204-61h px 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_730_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.07 seconds; current allocated memory: 626.977 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 627.124 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
H
.-- Implementing module 'port_status_handler' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_742_1'.
*SCHEDZ204-61h px 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
12default:default2+
loop 'VITIS_LOOP_742_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.09 seconds; current allocated memory: 627.205 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 627.331 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
@
&-- Implementing module 'listenPorts' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 627.422 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 627.639 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
G
--- Implementing module 'recvData_handshake' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
A
%Pipelining loop 'VITIS_LOOP_1218_1'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
22default:default2,
loop 'VITIS_LOOP_1218_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.11 seconds. CPU system time: 0 seconds. Elapsed time: 0.11 seconds; current allocated memory: 627.829 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 628.423 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
I
/-- Implementing module 'recvData_consumeData' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
A
%Pipelining loop 'VITIS_LOOP_1281_2'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
12default:default2,
loop 'VITIS_LOOP_1281_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.1 seconds. CPU system time: 0 seconds. Elapsed time: 0.1 seconds; current allocated memory: 628.562 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 628.855 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
=
#-- Implementing module 'recvData' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 628.964 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 629.301 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
D
*-- Implementing module 'backgroundclock' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_42_1'.
*SCHEDZ204-61h px 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
722default:default2*
loop 'VITIS_LOOP_42_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.38 seconds. CPU system time: 0 seconds. Elapsed time: 0.38 seconds; current allocated memory: 629.883 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.79 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.81 seconds; current allocated memory: 630.651 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
\
B-- Implementing module 'partition_Loop_VITIS_LOOP_71_1_proc2761' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_71_1'.
*SCHEDZ204-61h px 

The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2;
'partition_Loop_VITIS_LOOP_71_1_proc27612default:default2*
loop 'VITIS_LOOP_71_1'2default:default2
12default:default2
12default:default2
12default:default2
yfifo read on port 's_data_net_out' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:145)2default:default2
yfifo read on port 's_data_net_out' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:145)2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-880.html 
Ø
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
22default:default2
22default:default2*
loop 'VITIS_LOOP_71_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.25 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.27 seconds; current allocated memory: 630.814 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 631.419 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
>
$-- Implementing module 'partition' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 631.487 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 631.688 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
A
'-- Implementing module 'consumetrans' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_81_1'.
*SCHEDZ204-61h px 
Ø
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
22default:default2*
loop 'VITIS_LOOP_81_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 631.757 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 631.886 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
@
&-- Implementing module 'prepare_sha' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_96_1'.
*SCHEDZ204-61h px 
å
The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2
prepare_sha2default:default2*
loop 'VITIS_LOOP_96_1'2default:default2
12default:default2
12default:default2
12default:default2
yfifo write on port 'endMsgLenStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
yfifo write on port 'endMsgLenStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-880.html 
Ù
The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2
prepare_sha2default:default2*
loop 'VITIS_LOOP_96_1'2default:default2
22default:default2
12default:default2
12default:default2
sfifo write on port 'msgStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
sfifo write on port 'msgStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-880.html 
Ù
The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2
prepare_sha2default:default2*
loop 'VITIS_LOOP_96_1'2default:default2
32default:default2
12default:default2
12default:default2
sfifo write on port 'msgStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
sfifo write on port 'msgStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-880.html 
Ù
The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2
prepare_sha2default:default2*
loop 'VITIS_LOOP_96_1'2default:default2
42default:default2
12default:default2
12default:default2
sfifo write on port 'msgStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
sfifo write on port 'msgStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-880.html 
Ù
The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2
prepare_sha2default:default2*
loop 'VITIS_LOOP_96_1'2default:default2
72default:default2
12default:default2
12default:default2
sfifo write on port 'msgStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
sfifo write on port 'msgStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-880.html 
Ø
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
82default:default2
82default:default2*
loop 'VITIS_LOOP_96_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.16 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.17 seconds; current allocated memory: 632.082 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.12 seconds. CPU system time: 0 seconds. Elapsed time: 0.12 seconds; current allocated memory: 632.499 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
=
#-- Implementing module 'KECCAK_f' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
<
 Pipelining function 'KECCAK_f'.
*SCHEDZ204-61h px 
À
9User specified resource constraint cannot be honored %s.
200882*hls2|
hThe memory core ROM_2P_LUTRAM has insufficient ports to support accesses to array 'roundIndex' (II = 1).2default:defaultZ200-882h pxcFor help on HLS 200-882 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-882.html 

Unable to schedule %s %s.
200885*hls2P
<'load' operation ('roundIndex_load_4') on array 'roundIndex'2default:default2
wdue to limited memory ports. Please consider using a memory core with more ports or partitioning the array 'roundIndex'2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-885.html 
×
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
122default:default2
132default:default2'
function 'KECCAK_f'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
°
Finished Scheduling: CPU user time: 51.4 seconds. CPU system time: 0.33 seconds. Elapsed time: 51.73 seconds; current allocated memory: 648.372 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 9.82 seconds. CPU system time: 0.01 seconds. Elapsed time: 9.83 seconds; current allocated memory: 664.584 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
E
+-- Implementing module 'sha3Digest_32u_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 

pUnable to satisfy pipeline directive for function 'sha3Digest<32u>': contains subloop(s) that are not unrolled.
*SCHEDZ204-65h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
±
Finished Scheduling: CPU user time: 11.73 seconds. CPU system time: 0.04 seconds. Elapsed time: 11.78 seconds; current allocated memory: 668.251 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 4.31 seconds. CPU system time: 0.01 seconds. Elapsed time: 4.33 seconds; current allocated memory: 672.656 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
:
 -- Implementing module 'mysha' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 

Unable to satisfy pipeline directive for loop 'VITIS_LOOP_123_1': contains subfunction 'sha3Digest<32u>' which is not pipelined.
*SCHEDZ204-67h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
®
Finished Scheduling: CPU user time: 9.5 seconds. CPU system time: 0.02 seconds. Elapsed time: 9.66 seconds; current allocated memory: 672.817 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 3.05 seconds. CPU system time: 0 seconds. Elapsed time: 3.06 seconds; current allocated memory: 673.254 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
?
%-- Implementing module 'consumesha' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_138_2'.
*SCHEDZ204-61h px 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_138_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 9.06 seconds. CPU system time: 0.01 seconds. Elapsed time: 9.06 seconds; current allocated memory: 673.352 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.07 seconds; current allocated memory: 673.579 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
@
&-- Implementing module 'prepare_aes' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_154_1'.
*SCHEDZ204-61h px 
î
The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2
prepare_aes2default:default2+
loop 'VITIS_LOOP_154_1'2default:default2
12default:default2
12default:default2
12default:default2
}fifo write on port 'endCiphertextStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
}fifo write on port 'endCiphertextStrm' (/space1/Xilinx20202/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h:174)2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-880.html 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
22default:default2
32default:default2+
loop 'VITIS_LOOP_154_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.11 seconds. CPU system time: 0 seconds. Elapsed time: 0.12 seconds; current allocated memory: 673.691 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 673.911 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
>
$-- Implementing module 'updateKey' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_583_1'.
*SCHEDZ204-61h px 
·
The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2
	updateKey2default:default2+
loop 'VITIS_LOOP_583_1'2default:default2
12default:default2
12default:default2
02default:default2=
)'bitconcatenate' operation ('__Result__')2default:default22
'partselect' operation ('tmp')2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-880.html 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
22default:default2
32default:default2+
loop 'VITIS_LOOP_583_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.26 seconds. CPU system time: 0 seconds. Elapsed time: 0.26 seconds; current allocated memory: 674.580 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.2 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.2 seconds; current allocated memory: 675.793 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
>
$-- Implementing module 'process_r' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
;
Pipelining function 'process'.
*SCHEDZ204-61h px 
Õ
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
282default:default2&
function 'process'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 3.01 seconds. CPU system time: 0.01 seconds. Elapsed time: 3.02 seconds; current allocated memory: 684.842 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 4.48 seconds. CPU system time: 0.01 seconds. Elapsed time: 4.48 seconds; current allocated memory: 695.637 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
:
 -- Implementing module 'myaes' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
C
'Pipelining loop 'decryption_cbc_loop'.
*SCHEDZ204-61h px 
Ý
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
292default:default2.
loop 'decryption_cbc_loop'2default:defaultZ200-1470h px 
C
'Pipelining loop 'decryption_cbc_loop'.
*SCHEDZ204-61h px 
Ý
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
292default:default2.
loop 'decryption_cbc_loop'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
®
Finished Scheduling: CPU user time: 4.8 seconds. CPU system time: 0.02 seconds. Elapsed time: 4.83 seconds; current allocated memory: 696.161 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 1.75 seconds. CPU system time: 0.01 seconds. Elapsed time: 1.75 seconds; current allocated memory: 697.300 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
?
%-- Implementing module 'consumeaes' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_196_2'.
*SCHEDZ204-61h px 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
12default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_196_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 2.13 seconds. CPU system time: 0.01 seconds. Elapsed time: 2.15 seconds; current allocated memory: 697.388 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 697.523 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
P
6-- Implementing module 'tie_off_tcp_open_connection' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 697.607 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 697.737 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
C
)-- Implementing module 'tie_off_tcp_tx' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 697.847 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.07 seconds; current allocated memory: 698.041 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
@
&-- Implementing module 'tie_off_udp' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 698.141 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 698.321 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
J
0-- Implementing module 'tie_off_tcp_close_con' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 698.377 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.06 seconds; current allocated memory: 698.464 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
B
(-- Implementing module 'hls_recv_krnl' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 

mConsider increasing the depth of FIFO %s (from %s to %s) to %s to improve performance and/or avoid deadlocks.2001018*hls2!
endMsgLenStrm2default:default2"
prepare_sha_U02default:default2
mysha_U02default:default2
22default:defaultZ200-1018h px 

mConsider increasing the depth of FIFO %s (from %s to %s) to %s to improve performance and/or avoid deadlocks.2001018*hls2!
endDigestStrm2default:default2
mysha_U02default:default2!
consumesha_U02default:default2
22default:defaultZ200-1018h px 

mConsider increasing the depth of FIFO %s (from %s to %s) to %s to improve performance and/or avoid deadlocks.2001018*hls2%
endCiphertextStrm2default:default2"
prepare_aes_U02default:default2
myaes_U02default:default2
22default:defaultZ200-1018h px 

mConsider increasing the depth of FIFO %s (from %s to %s) to %s to improve performance and/or avoid deadlocks.2001018*hls2$
endPlaintextStrm2default:default2
myaes_U02default:default2!
consumeaes_U02default:default2
22default:defaultZ200-1018h px 
¬
Finished Scheduling: CPU user time: 0.16 seconds. CPU system time: 0 seconds. Elapsed time: 0.16 seconds; current allocated memory: 698.923 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
®
Finished Binding: CPU user time: 22.26 seconds. CPU system time: 0.03 seconds. Elapsed time: 22.28 seconds; current allocated memory: 700.113 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
O
5-- Generating RTL for module 'hls_recv_krnl_entry3' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
U
8Finished creating RTL model for 'hls_recv_krnl_entry3'.
*RTGENZ206-100h px 
¹
Finished Creating RTL model: CPU user time: 11.14 seconds. CPU system time: 0.02 seconds. Elapsed time: 11.17 seconds; current allocated memory: 700.306 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
P
6-- Generating RTL for module 'hls_recv_krnl_entry45' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
V
9Finished creating RTL model for 'hls_recv_krnl_entry45'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.07 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 700.718 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
M
3-- Generating RTL for module 'Block_split11_proc' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
S
6Finished creating RTL model for 'Block_split11_proc'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 701.142 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
N
4-- Generating RTL for module 'listenPorts_entry37' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
T
7Finished creating RTL model for 'listenPorts_entry37'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 701.446 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
X
>-- Generating RTL for module 'listenPorts_Block_split2_proc' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
^
AFinished creating RTL model for 'listenPorts_Block_split2_proc'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.06 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.07 seconds; current allocated memory: 701.756 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
N
4-- Generating RTL for module 'listen_port_handler' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
T
7Finished creating RTL model for 'listen_port_handler'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 702.118 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
N
4-- Generating RTL for module 'port_status_handler' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
T
7Finished creating RTL model for 'port_status_handler'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.13 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.14 seconds; current allocated memory: 702.666 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
F
,-- Generating RTL for module 'listenPorts' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
L
/Finished creating RTL model for 'listenPorts'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.1 seconds. CPU system time: 0 seconds. Elapsed time: 0.1 seconds; current allocated memory: 703.358 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
M
3-- Generating RTL for module 'recvData_handshake' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
S
6Finished creating RTL model for 'recvData_handshake'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.14 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.14 seconds; current allocated memory: 704.069 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
O
5-- Generating RTL for module 'recvData_consumeData' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
U
8Finished creating RTL model for 'recvData_consumeData'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.16 seconds. CPU system time: 0 seconds. Elapsed time: 0.17 seconds; current allocated memory: 704.978 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
C
)-- Generating RTL for module 'recvData' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
I
,Finished creating RTL model for 'recvData'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.14 seconds. CPU system time: 0 seconds. Elapsed time: 0.14 seconds; current allocated memory: 705.934 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
J
0-- Generating RTL for module 'backgroundclock' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
P
3Finished creating RTL model for 'backgroundclock'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.17 seconds. CPU system time: 0 seconds. Elapsed time: 0.17 seconds; current allocated memory: 708.444 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
b
H-- Generating RTL for module 'partition_Loop_VITIS_LOOP_71_1_proc2761' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
h
KFinished creating RTL model for 'partition_Loop_VITIS_LOOP_71_1_proc2761'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.44 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.45 seconds; current allocated memory: 710.215 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
D
*-- Generating RTL for module 'partition' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
J
-Finished creating RTL model for 'partition'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.11 seconds. CPU system time: 0 seconds. Elapsed time: 0.11 seconds; current allocated memory: 710.790 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
G
--- Generating RTL for module 'consumetrans' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
M
0Finished creating RTL model for 'consumetrans'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 711.205 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
F
,-- Generating RTL for module 'prepare_sha' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
L
/Finished creating RTL model for 'prepare_sha'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.12 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.12 seconds; current allocated memory: 711.927 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
C
)-- Generating RTL for module 'KECCAK_f' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
I
,Finished creating RTL model for 'KECCAK_f'.
*RTGENZ206-100h px 
¶
Finished Creating RTL model: CPU user time: 1.2 seconds. CPU system time: 0.01 seconds. Elapsed time: 1.22 seconds; current allocated memory: 743.478 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
K
1-- Generating RTL for module 'sha3Digest_32u_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
_
BGenerating core module 'udiv_128ns_9ns_128_132_1': 1 instance(s).
*RTGENZ206-100h px 
Q
4Finished creating RTL model for 'sha3Digest_32u_s'.
*RTGENZ206-100h px 
¹
Finished Creating RTL model: CPU user time: 26.79 seconds. CPU system time: 0.25 seconds. Elapsed time: 27.12 seconds; current allocated memory: 829.379 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
@
&-- Generating RTL for module 'mysha' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
F
)Finished creating RTL model for 'mysha'.
*RTGENZ206-100h px 
¹
Finished Creating RTL model: CPU user time: 11.96 seconds. CPU system time: 0.05 seconds. Elapsed time: 12.01 seconds; current allocated memory: 846.811 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
E
+-- Generating RTL for module 'consumesha' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
K
.Finished creating RTL model for 'consumesha'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 9.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 9.09 seconds; current allocated memory: 847.385 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
F
,-- Generating RTL for module 'prepare_aes' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
L
/Finished creating RTL model for 'prepare_aes'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.14 seconds. CPU system time: 0 seconds. Elapsed time: 0.14 seconds; current allocated memory: 848.158 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
D
*-- Generating RTL for module 'updateKey' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
V
9Generating core module 'mux_164_128_1_1': 8 instance(s).
*RTGENZ206-100h px 
T
7Generating core module 'mux_164_1_1_1': 8 instance(s).
*RTGENZ206-100h px 
J
-Finished creating RTL model for 'updateKey'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.26 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.26 seconds; current allocated memory: 851.223 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
D
*-- Generating RTL for module 'process_r' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 

{Estimated max fanout for 'process_r' is 21632 from HDL expression: ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))
*RTGENZ206-104h px 
J
-Finished creating RTL model for 'process_r'.
*RTGENZ206-100h px 
¶
Finished Creating RTL model: CPU user time: 1.18 seconds. CPU system time: 0.02 seconds. Elapsed time: 1.2 seconds; current allocated memory: 874.272 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
@
&-- Generating RTL for module 'myaes' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 

ñEstimated max fanout for 'myaes' is 25650 from HDL expression: (((1'b0 == ap_block_pp1_stage0_11001_ignoreCallOp233) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp112) & (1'b1 == ap_CS_fsm_pp0_stage0)))
*RTGENZ206-104h px 
F
)Finished creating RTL model for 'myaes'.
*RTGENZ206-100h px 
¹
Finished Creating RTL model: CPU user time: 16.28 seconds. CPU system time: 0.17 seconds. Elapsed time: 16.48 seconds; current allocated memory: 920.733 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
E
+-- Generating RTL for module 'consumeaes' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
K
.Finished creating RTL model for 'consumeaes'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 2.35 seconds. CPU system time: 0.02 seconds. Elapsed time: 2.36 seconds; current allocated memory: 923.191 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
V
<-- Generating RTL for module 'tie_off_tcp_open_connection' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
\
?Finished creating RTL model for 'tie_off_tcp_open_connection'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.14 seconds. CPU system time: 0 seconds. Elapsed time: 0.14 seconds; current allocated memory: 923.946 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
I
/-- Generating RTL for module 'tie_off_tcp_tx' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
O
2Finished creating RTL model for 'tie_off_tcp_tx'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.13 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.14 seconds; current allocated memory: 924.838 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
F
,-- Generating RTL for module 'tie_off_udp' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
L
/Finished creating RTL model for 'tie_off_udp'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.14 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.14 seconds; current allocated memory: 925.909 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
P
6-- Generating RTL for module 'tie_off_tcp_close_con' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
V
9Finished creating RTL model for 'tie_off_tcp_close_con'.
*RTGENZ206-100h px 
´
Finished Creating RTL model: CPU user time: 0.12 seconds. CPU system time: 0 seconds. Elapsed time: 0.13 seconds; current allocated memory: 926.701 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
H
.-- Generating RTL for module 'hls_recv_krnl' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
f
IDesign contains AXI ports. Reset is fixed to synchronous and active low.
*RTGENZ206-101h px 
]
@Setting interface mode on port 'hls_recv_krnl/gmem' to 'm_axi'.
*RTGENZ206-500h px 

gSetting interface mode on port 'hls_recv_krnl/s_axis_udp_rx_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

gSetting interface mode on port 'hls_recv_krnl/s_axis_udp_rx_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

gSetting interface mode on port 'hls_recv_krnl/s_axis_udp_rx_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

gSetting interface mode on port 'hls_recv_krnl/s_axis_udp_rx_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

gSetting interface mode on port 'hls_recv_krnl/m_axis_udp_tx_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

gSetting interface mode on port 'hls_recv_krnl/m_axis_udp_tx_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

gSetting interface mode on port 'hls_recv_krnl/m_axis_udp_tx_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

gSetting interface mode on port 'hls_recv_krnl/m_axis_udp_tx_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_udp_rx_meta_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_udp_rx_meta_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_udp_rx_meta_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_udp_rx_meta_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_udp_tx_meta_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_udp_tx_meta_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_udp_tx_meta_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_udp_tx_meta_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_listen_port_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_listen_port_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_listen_port_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_listen_port_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_port_status_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_port_status_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_port_status_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_port_status_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

tSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_open_connection_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

tSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_open_connection_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

tSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_open_connection_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

tSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_open_connection_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_open_status_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_open_status_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_open_status_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

pSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_open_status_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

uSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_close_connection_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

uSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_close_connection_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

uSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_close_connection_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

uSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_close_connection_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

qSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_notification_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

qSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_notification_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

qSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_notification_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

qSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_notification_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

mSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_read_pkg_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

mSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_read_pkg_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

mSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_read_pkg_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

mSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_read_pkg_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_rx_meta_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_rx_meta_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_rx_meta_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_rx_meta_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_rx_data_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_rx_data_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_rx_data_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_rx_data_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_tx_meta_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_tx_meta_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_tx_meta_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_tx_meta_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_tx_data_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_tx_data_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_tx_data_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

lSetting interface mode on port 'hls_recv_krnl/m_axis_tcp_tx_data_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

nSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_tx_status_V_data_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

nSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_tx_status_V_keep_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

nSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_tx_status_V_strb_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 

nSetting interface mode on port 'hls_recv_krnl/s_axis_tcp_tx_status_V_last_V' to 'axis' (register, both mode).
*RTGENZ206-500h px 
n
QSetting interface mode on port 'hls_recv_krnl/useConn' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
o
RSetting interface mode on port 'hls_recv_krnl/basePort' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
l
OSetting interface mode on port 'hls_recv_krnl/delay' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
x
[Setting interface mode on port 'hls_recv_krnl/expectedRxByteCnt' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
o
RSetting interface mode on port 'hls_recv_krnl/out_time' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
p
SSetting interface mode on function 'hls_recv_krnl' to 's_axilite & ap_ctrl_chain'.
*RTGENZ206-500h px 

uBundling port 'useConn', 'basePort', 'delay', 'expectedRxByteCnt', 'out_time' and 'return' to AXI-Lite port control.
*RTGENZ206-100h px 
g
JRTL name 'fifo_w32_d2_S' is changed to 'fifo_w32_d2_S_x' due to conflict.
*RTGENZ206-101h px 
g
JRTL name 'fifo_w64_d2_S' is changed to 'fifo_w64_d2_S_x' due to conflict.
*RTGENZ206-101h px 
N
1Finished creating RTL model for 'hls_recv_krnl'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.95 seconds. CPU system time: 0.07 seconds. Elapsed time: 1.03 seconds; current allocated memory: 930.236 MB.
*HLSZ200-111h px 
s
WImplementing FIFO 'basePort_c_i_U(hls_recv_krnl_fifo_w16_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 'useConn_c_i_U(hls_recv_krnl_fifo_w32_d3_S)' using Shift Registers.
*RTMGZ210-285h px 
s
WImplementing FIFO 'useConn_c8_i_U(hls_recv_krnl_fifo_w32_d2_S)' using Shift Registers.
*RTMGZ210-285h px 

fImplementing FIFO 'basePort_cast_loc_i_channel_U(hls_recv_krnl_fifo_w16_d2_S)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'nextRxPacketLength_U(hls_recv_krnl_fifo_w16_d512_A)' using Vivado Default RAMs.
*RTMGZ210-285h px 
~
bImplementing FIFO 'expRxBytePerSession_c_i_U(hls_recv_krnl_fifo_w64_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
p
TImplementing memory 'hls_recv_krnl_KECCAK_f_roundIndex_rom' using distributed ROMs.
*RTMGZ210-279h px 
d
HGenerating pipelined core: 'hls_recv_krnl_udiv_128ns_9ns_128_132_1_div'
*RTMGZ210-282h px 
s
WImplementing memory 'hls_recv_krnl_updateKey_decipher_0_2_rom' using distributed ROMs.
*RTMGZ210-279h px 
d
HImplementing memory 'hls_recv_krnl_updateKey_Rcon_rom' using auto ROMs.
*RTMGZ210-279h px 
s
WImplementing memory 'hls_recv_krnl_process_r_decipher_0_3_rom' using distributed ROMs.
*RTMGZ210-279h px 
s
WImplementing memory 'hls_recv_krnl_process_r_decipher_0_1_rom' using distributed ROMs.
*RTMGZ210-279h px 
s
WImplementing FIFO 'useConn_c1_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
t
XImplementing FIFO 'basePort_c2_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
}
aImplementing FIFO 'expectedRxByteCnt_c3_U(hls_recv_krnl_fifo_w64_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
t
XImplementing FIFO 'out_time_c4_U(hls_recv_krnl_fifo_w64_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 'useConn_c_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
s
WImplementing FIFO 'basePort_c_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
|
`Implementing FIFO 'expectedRxByteCnt_c_U(hls_recv_krnl_fifo_w64_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
~
bImplementing FIFO 'expectedRxByteCnt_c44_U(hls_recv_krnl_fifo_w64_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
s
WImplementing FIFO 'out_time_c_U(hls_recv_krnl_fifo_w64_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
}
aImplementing FIFO 'ComputeWordCnt_loc_c_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
v
ZImplementing FIFO 's_data_net_out_U(hls_recv_krnl_fifo_w512_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
p
TImplementing FIFO 'timesha_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
p
TImplementing FIFO 'timeaes_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'ComputeWordCnt_loc_c45_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'ComputeWordCnt_loc_c46_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 's_data_cal_U(hls_recv_krnl_fifo_w512_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 's_data_out_U(hls_recv_krnl_fifo_w512_d2_S)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'ComputeWordCnt_loc_c47_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 'msgLenStrm_U(hls_recv_krnl_fifo_w128_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
p
TImplementing FIFO 'msgStrm_U(hls_recv_krnl_fifo_w64_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
n
RImplementing FIFO 'sha_in_U(hls_recv_krnl_fifo_w512_d2_S)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'ComputeWordCnt_loc_c48_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'ComputeWordCnt_loc_c49_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
o
SImplementing FIFO 'sha_out_U(hls_recv_krnl_fifo_w512_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 'digestStrm_U(hls_recv_krnl_fifo_w256_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
v
ZImplementing FIFO 'ciphertextStrm_U(hls_recv_krnl_fifo_w128_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
u
YImplementing FIFO 'cipherkeyStrm_U(hls_recv_krnl_fifo_w256_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
n
RImplementing FIFO 'IVStrm_U(hls_recv_krnl_fifo_w128_d2_S)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'ComputeWordCnt_loc_c50_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 
u
YImplementing FIFO 'plaintextStrm_U(hls_recv_krnl_fifo_w128_d2_S)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'ComputeWordCnt_loc_c51_U(hls_recv_krnl_fifo_w32_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 

Implementing FIFO 'start_for_hls_recv_krnl_entry45_U0_U(hls_recv_krnl_start_for_hls_recv_krnl_entry45_U0)' using Shift Registers.
*RTMGZ210-285h px 

|Implementing FIFO 'start_for_Block_split11_proc_U0_U(hls_recv_krnl_start_for_Block_split11_proc_U0)' using Shift Registers.
*RTMGZ210-285h px 

nImplementing FIFO 'start_for_listenPorts_U0_U(hls_recv_krnl_start_for_listenPorts_U0)' using Shift Registers.
*RTMGZ210-285h px 

hImplementing FIFO 'start_for_recvData_U0_U(hls_recv_krnl_start_for_recvData_U0)' using Shift Registers.
*RTMGZ210-285h px 

vImplementing FIFO 'start_for_backgroundclock_U0_U(hls_recv_krnl_start_for_backgroundclock_U0)' using Shift Registers.
*RTMGZ210-285h px 

jImplementing FIFO 'start_for_partition_U0_U(hls_recv_krnl_start_for_partition_U0)' using Shift Registers.
*RTMGZ210-285h px 

pImplementing FIFO 'start_for_consumetrans_U0_U(hls_recv_krnl_start_for_consumetrans_U0)' using Shift Registers.
*RTMGZ210-285h px 

nImplementing FIFO 'start_for_prepare_sha_U0_U(hls_recv_krnl_start_for_prepare_sha_U0)' using Shift Registers.
*RTMGZ210-285h px 
~
bImplementing FIFO 'start_for_mysha_U0_U(hls_recv_krnl_start_for_mysha_U0)' using Shift Registers.
*RTMGZ210-285h px 

lImplementing FIFO 'start_for_consumesha_U0_U(hls_recv_krnl_start_for_consumesha_U0)' using Shift Registers.
*RTMGZ210-285h px 

nImplementing FIFO 'start_for_prepare_aes_U0_U(hls_recv_krnl_start_for_prepare_aes_U0)' using Shift Registers.
*RTMGZ210-285h px 
~
bImplementing FIFO 'start_for_myaes_U0_U(hls_recv_krnl_start_for_myaes_U0)' using Shift Registers.
*RTMGZ210-285h px 

lImplementing FIFO 'start_for_consumeaes_U0_U(hls_recv_krnl_start_for_consumeaes_U0)' using Shift Registers.
*RTMGZ210-285h px 
À
¤Finished Generating all RTL models: CPU user time: 43.28 seconds. CPU system time: 0.39 seconds. Elapsed time: 43.68 seconds; current allocated memory: 946.569 MB.
*HLSZ200-111h px 
C
'Generating VHDL RTL for hls_recv_krnl.
*VHDLZ208-304h px 
F
*Generating Verilog RTL for hls_recv_krnl.
*VLOGZ209-307h px 

**** Loop Constraint Status: %s200790*hls2<
(All loop constraints were NOT satisfied.2default:defaultZ200-790h px 
Z
**** Estimated Fmax: %s MHz200789*hls2
273.972default:defaultZ200-789h px 
¼
 Finished Command csynth_design CPU user time: 446.65 seconds. CPU system time: 4.04 seconds. Elapsed time: 449.9 seconds; current allocated memory: 950.468 MB.
*HLSZ200-111h px 
U
Running: %s
2001510*hls2"
export_design 2default:defaultZ200-1510h px 
8
Exporting RTL as a Vivado IP.
*IMPLZ213-8h px 

í
****** Vivado v2020.2 (64-bit)
  **** SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
  **** IP Build 3064653 on Wed Nov 18 14:17:31 MST 2020
    ** Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

source run_ippack.tcl -notrace
*commonh px 
G
2INFO: [IP_Flow 19-234] Refreshing IP repositories
*commonh px 
O
:INFO: [IP_Flow 19-1704] No user IP repositories specified
*commonh px 
v
aINFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/space1/Xilinx20202/Vivado/2020.2/data/ip'.
*commonh px 
Y
DINFO: [Common 17-206] Exiting Vivado at Sun Dec 11 15:19:49 2022...
*commonh px 
x
Generated output file %s
200802*hls2:
&hls_recv_krnl/solution/impl/export.zip2default:defaultZ200-802h px 
º
Finished Command export_design CPU user time: 31.1 seconds. CPU system time: 2.17 seconds. Elapsed time: 32.72 seconds; current allocated memory: 962.099 MB.
*HLSZ200-111h px 
6
HLS completed successfully
*HLSZ200-150h px 
­
Total CPU user time: 481.09 seconds. Total CPU system time: 7.11 seconds. Total elapsed time: 485.39 seconds; peak allocated memory: 946.569 MB.
*HLSZ200-112h px 

Exiting %s at %s...
206*common2
	vitis_hls2default:default2,
Sun Dec 11 15:19:52 20222default:defaultZ17-206h px 


End Record