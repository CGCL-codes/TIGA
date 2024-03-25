# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"


}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CONTROL_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 12 ${MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CONTROL_DATA_WIDTH". Setting updated value from the model parameter.
set_property value 32 ${MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M00_AXI_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 64 ${MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M00_AXI_DATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M01_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M01_AXI_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 64 ${MODELPARAM_VALUE.C_M01_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M01_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M01_AXI_DATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_M01_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_UDP_RX_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_UDP_RX_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M_AXIS_UDP_RX_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_M_AXIS_UDP_RX_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_UDP_TX_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_UDP_TX_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXIS_UDP_TX_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_S_AXIS_UDP_TX_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_UDP_RX_META_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_UDP_RX_META_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M_AXIS_UDP_RX_META_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 256 ${MODELPARAM_VALUE.C_M_AXIS_UDP_RX_META_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_UDP_TX_META_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_UDP_TX_META_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXIS_UDP_TX_META_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 256 ${MODELPARAM_VALUE.C_S_AXIS_UDP_TX_META_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 16 ${MODELPARAM_VALUE.C_S_AXIS_TCP_LISTEN_PORT_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TCP_PORT_STATUS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TCP_PORT_STATUS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M_AXIS_TCP_PORT_STATUS_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 8 ${MODELPARAM_VALUE.C_M_AXIS_TCP_PORT_STATUS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 64 ${MODELPARAM_VALUE.C_S_AXIS_TCP_OPEN_CONNECTION_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 128 ${MODELPARAM_VALUE.C_M_AXIS_TCP_OPEN_STATUS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 16 ${MODELPARAM_VALUE.C_S_AXIS_TCP_CLOSE_CONNECTION_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TCP_NOTIFICATION_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TCP_NOTIFICATION_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M_AXIS_TCP_NOTIFICATION_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 128 ${MODELPARAM_VALUE.C_M_AXIS_TCP_NOTIFICATION_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TCP_READ_PKG_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TCP_READ_PKG_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXIS_TCP_READ_PKG_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 32 ${MODELPARAM_VALUE.C_S_AXIS_TCP_READ_PKG_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TCP_RX_META_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TCP_RX_META_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M_AXIS_TCP_RX_META_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 16 ${MODELPARAM_VALUE.C_M_AXIS_TCP_RX_META_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TCP_RX_DATA_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TCP_RX_DATA_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M_AXIS_TCP_RX_DATA_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_M_AXIS_TCP_RX_DATA_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TCP_TX_META_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TCP_TX_META_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXIS_TCP_TX_META_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 32 ${MODELPARAM_VALUE.C_S_AXIS_TCP_TX_META_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TCP_TX_DATA_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TCP_TX_DATA_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXIS_TCP_TX_DATA_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_S_AXIS_TCP_TX_DATA_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TCP_TX_STATUS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TCP_TX_STATUS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_M_AXIS_TCP_TX_STATUS_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 64 ${MODELPARAM_VALUE.C_M_AXIS_TCP_TX_STATUS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXIS_NET_TX_TDATA_WIDTH { MODELPARAM_VALUE.C_AXIS_NET_TX_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_AXIS_NET_TX_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_AXIS_NET_TX_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXIS_NET_RX_TDATA_WIDTH { MODELPARAM_VALUE.C_AXIS_NET_RX_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_AXIS_NET_RX_TDATA_WIDTH". Setting updated value from the model parameter.
set_property value 512 ${MODELPARAM_VALUE.C_AXIS_NET_RX_TDATA_WIDTH}
}

