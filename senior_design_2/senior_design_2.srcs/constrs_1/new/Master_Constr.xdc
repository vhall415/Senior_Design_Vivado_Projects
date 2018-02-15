set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####################################################################
#                          Clock 100 MHz                            #
#####################################################################

set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}];
set_property PACKAGE_PIN F4 [get_ports {sys_clk}];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {sys_clk}];

######################################################################
##                          Header P4                                #
######################################################################
#set_property SLEW FAST [get_ports  {Header_P4[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {sda}]

set_property PACKAGE_PIN A14 [get_ports {scl}]
set_property PACKAGE_PIN A13 [get_ports {sda}]