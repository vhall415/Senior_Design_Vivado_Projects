set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####################################################################
#                          Clock 100 MHz                            #
#####################################################################

set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}];
set_property PACKAGE_PIN F4 [get_ports {sys_clk}];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {sys_clk}];

#####################################################################
#                          System Inputs                            #
#####################################################################
#set_property SLEW FAST [get_ports  {Header_P4[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports {vsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {href}]
set_property IOSTANDARD LVCMOS33 [get_ports {pclk}]

set_property PACKAGE_PIN A11 [get_ports {vsync}]
set_property PACKAGE_PIN B11 [get_ports {href}]
set_property PACKAGE_PIN B14 [get_ports {pclk}]

set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[7]}]

set_property PACKAGE_PIN C6 [get_ports {cam_byte[0]}]
set_property PACKAGE_PIN C5 [get_ports {cam_byte[1]}]
set_property PACKAGE_PIN C9 [get_ports {cam_byte[2]}]
set_property PACKAGE_PIN B9 [get_ports {cam_byte[3]}]
set_property PACKAGE_PIN B8 [get_ports {cam_byte[4]}]
set_property PACKAGE_PIN A8 [get_ports {cam_byte[5]}]
set_property PACKAGE_PIN A10 [get_ports {cam_byte[6]}]
set_property PACKAGE_PIN A9 [get_ports {cam_byte[7]}]

#####################################################################
#                          System Outputs                           #
#####################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {sda}]
set_property IOSTANDARD LVCMOS33 [get_ports {xclk}]

set_property PACKAGE_PIN A14 [get_ports {scl}]
set_property PACKAGE_PIN A13 [get_ports {sda}]
set_property PACKAGE_PIN B13 [get_ports {xclk}]

set_property IOSTANDARD LVCMOS33 [get_ports {gray_byte[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gray_byte[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gray_byte[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gray_byte[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gray_byte[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gray_byte[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gray_byte[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gray_byte[7]}]

set_property PACKAGE_PIN C1 [get_ports {gray_byte[0]}]
set_property PACKAGE_PIN C2 [get_ports {gray_byte[1]}]
set_property PACKAGE_PIN A1 [get_ports {gray_byte[2]}]
set_property PACKAGE_PIN B1 [get_ports {gray_byte[3]}]
set_property PACKAGE_PIN G1 [get_ports {gray_byte[4]}]
set_property PACKAGE_PIN H1 [get_ports {gray_byte[5]}]
set_property PACKAGE_PIN E1 [get_ports {gray_byte[6]}]
set_property PACKAGE_PIN F1 [get_ports {gray_byte[7]}]