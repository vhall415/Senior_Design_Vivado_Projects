//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue Jan 30 21:26:10 2018
//Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (cam_byte_0,
    gray_0,
    href_0,
    pclk_0,
    scl_0,
    sda_0,
    vsync_0,
    xclk_0);
  input [7:0]cam_byte_0;
  output [7:0]gray_0;
  input href_0;
  input pclk_0;
  output scl_0;
  inout sda_0;
  input vsync_0;
  output xclk_0;

  wire [7:0]cam_byte_0;
  wire [7:0]gray_0;
  wire href_0;
  wire pclk_0;
  wire scl_0;
  wire sda_0;
  wire vsync_0;
  wire xclk_0;

  design_1 design_1_i
       (.cam_byte_0(cam_byte_0),
        .gray_0(gray_0),
        .href_0(href_0),
        .pclk_0(pclk_0),
        .scl_0(scl_0),
        .sda_0(sda_0),
        .vsync_0(vsync_0),
        .xclk_0(xclk_0));
endmodule
