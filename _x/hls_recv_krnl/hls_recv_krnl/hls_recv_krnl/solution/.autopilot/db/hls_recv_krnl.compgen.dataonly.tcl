# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
useConn { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
basePort { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
delay { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
expectedRxByteCnt { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
out_time { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


