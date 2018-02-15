// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Feb  8 19:53:01 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_cam_reg_config_0_0_stub.v
// Design      : design_2_cam_reg_config_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cam_reg_config,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, sccb_busy, sccb_ready, reg_data, done, 
  sccb_start, reg_loc, addr_data)
/* synthesis syn_black_box black_box_pad_pin="clk,sccb_busy,sccb_ready,reg_data[15:0],done,sccb_start,reg_loc[7:0],addr_data[15:0]" */;
  input clk;
  input sccb_busy;
  input sccb_ready;
  input [15:0]reg_data;
  output done;
  output sccb_start;
  output [7:0]reg_loc;
  output [15:0]addr_data;
endmodule