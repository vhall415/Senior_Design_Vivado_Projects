
set_property PACKAGE_PIN B19 [get_ports scl_0]
set_property IOSTANDARD LVCMOS18 [get_ports scl_0]

set_property PACKAGE_PIN A20 [get_ports sda_0]
set_property IOSTANDARD LVCMOS18 [get_ports sda_0]


set_output_delay -clock [get_clocks clk_fpga_0] -min -add_delay 0.250 [get_ports sda_0]
set_output_delay -clock [get_clocks clk_fpga_0] -max -add_delay 0.350 [get_ports sda_0]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]


