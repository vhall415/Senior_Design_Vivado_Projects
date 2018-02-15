set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property PACKAGE_PIN A13 [get_ports scl_0]
set_property PACKAGE_PIN A14 [get_ports sda_0]
set_property IOSTANDARD LVCMOS18 [get_ports scl_0]
set_property IOSTANDARD LVCMOS18 [get_ports sda_0]



set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property PACKAGE_PIN F4 [get_ports sys_clock]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
#set_property IOSTANDARD LVCMOS33 [get_ports reset]
#set_property PACKAGE_PIN G6 [get_ports reset]


