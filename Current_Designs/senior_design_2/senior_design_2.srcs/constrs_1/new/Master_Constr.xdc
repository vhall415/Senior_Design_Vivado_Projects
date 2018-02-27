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

set_property IOSTANDARD LVCMOS33 [get_ports {vsync_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {href_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {pclk_1}]

set_property PACKAGE_PIN K2 [get_ports {vsync_1}]
set_property PACKAGE_PIN G2 [get_ports {href_1}]
set_property PACKAGE_PIN D5 [get_ports {pclk_1}] 
# must be on clock compatible pin
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk1_IBUF]

set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte_1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte_1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte_1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte_1[7]}]

set_property PACKAGE_PIN G4 [get_ports {cam_byte_1[0]}]
set_property PACKAGE_PIN E5 [get_ports {cam_byte_1[1]}]
set_property PACKAGE_PIN G3 [get_ports {cam_byte_1[2]}]
set_property PACKAGE_PIN C4 [get_ports {cam_byte_1[3]}]
set_property PACKAGE_PIN F5 [get_ports {cam_byte_1[4]}]
set_property PACKAGE_PIN B4 [get_ports {cam_byte_1[5]}]
set_property PACKAGE_PIN F3 [get_ports {cam_byte_1[6]}]
set_property PACKAGE_PIN J3 [get_ports {cam_byte_1[7]}]

#####################################################################
#                          System Outputs                           #
#####################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {scl_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {sda_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {xclk}]

set_property PACKAGE_PIN D3 [get_ports {scl_1}]
set_property PACKAGE_PIN E3 [get_ports {sda_1}]
#set_property PIO_DIRECTION "BIDIR" [get_ports {sda1}]
set_property PACKAGE_PIN D2 [get_ports {xclk}]

set_property IOSTANDARD LVCMOS33 [get_ports {cam_gray_byte_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gray_byte_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gray_byte_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gray_byte_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gray_byte_1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gray_byte_1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gray_byte_1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_gray_byte_1[7]}]

set_property PACKAGE_PIN B9 [get_ports {cam_gray_byte_1[0]}]
set_property PACKAGE_PIN C9 [get_ports {cam_gray_byte_1[1]}]
set_property PACKAGE_PIN B6 [get_ports {cam_gray_byte_1[2]}]
set_property PACKAGE_PIN B7 [get_ports {cam_gray_byte_1[3]}]
set_property PACKAGE_PIN C5 [get_ports {cam_gray_byte_1[4]}]
set_property PACKAGE_PIN C6 [get_ports {cam_gray_byte_1[5]}]
set_property PACKAGE_PIN A5 [get_ports {cam_gray_byte_1[6]}]
set_property PACKAGE_PIN A6 [get_ports {cam_gray_byte_1[7]}]