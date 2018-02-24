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

set_property IOSTANDARD LVCMOS33 [get_ports {vsync1}]
set_property IOSTANDARD LVCMOS33 [get_ports {href1}]
set_property IOSTANDARD LVCMOS33 [get_ports {pclk1}]

set_property PACKAGE_PIN K2 [get_ports {vsync1}]
set_property PACKAGE_PIN G2 [get_ports {href1}]
set_property PACKAGE_PIN D5 [get_ports {pclk1}] 
# must be on clock compatible pin
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk1_IBUF]

set_property IOSTANDARD LVCMOS33 [get_ports {cam1_byte[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_byte[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_byte[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_byte[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_byte[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_byte[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_byte[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_byte[7]}]

set_property PACKAGE_PIN G4 [get_ports {cam1_byte[0]}]
set_property PACKAGE_PIN E5 [get_ports {cam1_byte[1]}]
set_property PACKAGE_PIN G3 [get_ports {cam1_byte[2]}]
set_property PACKAGE_PIN C4 [get_ports {cam1_byte[3]}]
set_property PACKAGE_PIN F5 [get_ports {cam1_byte[4]}]
set_property PACKAGE_PIN B4 [get_ports {cam1_byte[5]}]
set_property PACKAGE_PIN F3 [get_ports {cam1_byte[6]}]
set_property PACKAGE_PIN J3 [get_ports {cam1_byte[7]}]

#####################################################################
#                          System Outputs                           #
#####################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {scl1}]
set_property IOSTANDARD LVCMOS33 [get_ports {sda1}]
set_property IOSTANDARD LVCMOS33 [get_ports {xclk1}]

set_property PACKAGE_PIN K1 [get_ports {scl1}]
set_property PACKAGE_PIN E6 [get_ports {sda1}]
#set_property PIO_DIRECTION "BIDIR" [get_ports {sda1}]
set_property PACKAGE_PIN D2 [get_ports {xclk1}]

set_property IOSTANDARD LVCMOS33 [get_ports {cam1_gray_byte[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_gray_byte[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_gray_byte[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_gray_byte[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_gray_byte[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_gray_byte[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_gray_byte[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam1_gray_byte[7]}]

set_property PACKAGE_PIN B9 [get_ports {cam1_gray_byte[0]}]
set_property PACKAGE_PIN C9 [get_ports {cam1_gray_byte[1]}]
set_property PACKAGE_PIN B6 [get_ports {cam1_gray_byte[2]}]
set_property PACKAGE_PIN B7 [get_ports {cam1_gray_byte[3]}]
set_property PACKAGE_PIN C5 [get_ports {cam1_gray_byte[4]}]
set_property PACKAGE_PIN C6 [get_ports {cam1_gray_byte[5]}]
set_property PACKAGE_PIN A5 [get_ports {cam1_gray_byte[6]}]
set_property PACKAGE_PIN A6 [get_ports {cam1_gray_byte[7]}]