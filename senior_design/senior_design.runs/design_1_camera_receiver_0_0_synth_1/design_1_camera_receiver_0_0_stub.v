// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jan 29 17:26:31 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_camera_receiver_0_0_stub.v
// Design      : design_1_camera_receiver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "camera_receiver,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(cam_byte, pclk, vsync, href, xclk, pixel_data_out, 
  write_reg_loc, write_en, clk_out)
/* synthesis syn_black_box black_box_pad_pin="cam_byte[7:0],pclk,vsync,href,xclk,pixel_data_out[15:0],write_reg_loc[10:0],write_en,clk_out" */;
  input [7:0]cam_byte;
  input pclk;
  input vsync;
  input href;
  output xclk;
  output [15:0]pixel_data_out;
  output [10:0]write_reg_loc;
  output write_en;
  output clk_out;
endmodule
