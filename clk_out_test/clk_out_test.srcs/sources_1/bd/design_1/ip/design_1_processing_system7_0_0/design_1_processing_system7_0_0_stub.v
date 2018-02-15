// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Feb  8 19:31:59 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/vhall/Desktop/clk_out_test/clk_out_test.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0_stub.v
// Design      : design_1_processing_system7_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "processing_system7_v5_5_processing_system7,Vivado 2017.4" *)
module design_1_processing_system7_0_0(FCLK_CLK0, MIO, PS_SRSTB, PS_CLK, PS_PORB)
/* synthesis syn_black_box black_box_pad_pin="FCLK_CLK0,MIO[53:0],PS_SRSTB,PS_CLK,PS_PORB" */;
  output FCLK_CLK0;
  inout [53:0]MIO;
  inout PS_SRSTB;
  inout PS_CLK;
  inout PS_PORB;
endmodule
