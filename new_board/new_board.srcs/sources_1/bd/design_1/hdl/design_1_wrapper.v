//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Fri Feb  9 08:11:26 2018
//Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (reset,
    reset_mods,
    scl_0,
    sda_0,
    sys_clock);
  input reset;
  input reset_mods;
  output scl_0;
  inout sda_0;
  input sys_clock;

  wire reset;
  wire reset_mods;
  wire scl_0;
  wire sda_0;
  wire sys_clock;

  design_1 design_1_i
       (.reset(reset),
        .reset_mods(reset_mods),
        .scl_0(scl_0),
        .sda_0(sda_0),
        .sys_clock(sys_clock));
endmodule
