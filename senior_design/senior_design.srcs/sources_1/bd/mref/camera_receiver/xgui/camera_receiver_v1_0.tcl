# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "SYS_CLK_FRQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "XCLK_FRQ" -parent ${Page_0}


}

proc update_PARAM_VALUE.SYS_CLK_FRQ { PARAM_VALUE.SYS_CLK_FRQ } {
	# Procedure called to update SYS_CLK_FRQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SYS_CLK_FRQ { PARAM_VALUE.SYS_CLK_FRQ } {
	# Procedure called to validate SYS_CLK_FRQ
	return true
}

proc update_PARAM_VALUE.XCLK_FRQ { PARAM_VALUE.XCLK_FRQ } {
	# Procedure called to update XCLK_FRQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.XCLK_FRQ { PARAM_VALUE.XCLK_FRQ } {
	# Procedure called to validate XCLK_FRQ
	return true
}


proc update_MODELPARAM_VALUE.SYS_CLK_FRQ { MODELPARAM_VALUE.SYS_CLK_FRQ PARAM_VALUE.SYS_CLK_FRQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SYS_CLK_FRQ}] ${MODELPARAM_VALUE.SYS_CLK_FRQ}
}

proc update_MODELPARAM_VALUE.XCLK_FRQ { MODELPARAM_VALUE.XCLK_FRQ PARAM_VALUE.XCLK_FRQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.XCLK_FRQ}] ${MODELPARAM_VALUE.XCLK_FRQ}
}

