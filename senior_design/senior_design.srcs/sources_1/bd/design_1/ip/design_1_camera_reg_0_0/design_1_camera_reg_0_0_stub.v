// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jan 29 17:24:39 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/vhall/Desktop/senior_design/senior_design.srcs/sources_1/bd/design_1/ip/design_1_camera_reg_0_0/design_1_camera_reg_0_0_stub.v
// Design      : design_1_camera_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "camera_reg,Vivado 2017.4" *)
module design_1_camera_reg_0_0(clk, addr, addr_data)
/* synthesis syn_black_box black_box_pad_pin="clk,addr[7:0],addr_data[15:0]" */;
  input clk;
  input [7:0]addr;
  output [15:0]addr_data;
endmodule
