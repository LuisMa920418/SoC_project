# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "coef_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "log2_nbr_coef" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nbr_coef" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sig_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.coef_width { PARAM_VALUE.coef_width } {
	# Procedure called to update coef_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.coef_width { PARAM_VALUE.coef_width } {
	# Procedure called to validate coef_width
	return true
}

proc update_PARAM_VALUE.log2_nbr_coef { PARAM_VALUE.log2_nbr_coef } {
	# Procedure called to update log2_nbr_coef when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.log2_nbr_coef { PARAM_VALUE.log2_nbr_coef } {
	# Procedure called to validate log2_nbr_coef
	return true
}

proc update_PARAM_VALUE.nbr_coef { PARAM_VALUE.nbr_coef } {
	# Procedure called to update nbr_coef when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nbr_coef { PARAM_VALUE.nbr_coef } {
	# Procedure called to validate nbr_coef
	return true
}

proc update_PARAM_VALUE.sig_width { PARAM_VALUE.sig_width } {
	# Procedure called to update sig_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sig_width { PARAM_VALUE.sig_width } {
	# Procedure called to validate sig_width
	return true
}


proc update_MODELPARAM_VALUE.sig_width { MODELPARAM_VALUE.sig_width PARAM_VALUE.sig_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sig_width}] ${MODELPARAM_VALUE.sig_width}
}

proc update_MODELPARAM_VALUE.coef_width { MODELPARAM_VALUE.coef_width PARAM_VALUE.coef_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.coef_width}] ${MODELPARAM_VALUE.coef_width}
}

proc update_MODELPARAM_VALUE.nbr_coef { MODELPARAM_VALUE.nbr_coef PARAM_VALUE.nbr_coef } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nbr_coef}] ${MODELPARAM_VALUE.nbr_coef}
}

proc update_MODELPARAM_VALUE.log2_nbr_coef { MODELPARAM_VALUE.log2_nbr_coef PARAM_VALUE.log2_nbr_coef } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.log2_nbr_coef}] ${MODELPARAM_VALUE.log2_nbr_coef}
}

