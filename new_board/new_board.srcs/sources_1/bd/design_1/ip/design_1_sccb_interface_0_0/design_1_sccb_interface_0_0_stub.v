// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb  9 02:39:22 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/vhall/Desktop/new_board/new_board.srcs/sources_1/bd/design_1/ip/design_1_sccb_interface_0_0/design_1_sccb_interface_0_0_stub.v
// Design      : design_1_sccb_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sccb_interface,Vivado 2017.4" *)
module design_1_sccb_interface_0_0(clk, reset, start, done, addr_data, busy, ready_out, 
  scl, sda)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,start,done,addr_data[15:0],busy,ready_out,scl,sda" */;
  input clk;
  input reset;
  input start;
  input done;
  input [15:0]addr_data;
  output busy;
  output ready_out;
  output scl;
  inout sda;
endmodule
