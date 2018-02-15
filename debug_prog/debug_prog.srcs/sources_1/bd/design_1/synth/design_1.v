//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue Feb  6 17:09:44 2018
//Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (scl_0,
    sda_out_0);
  output scl_0;
  output sda_out_0;

  wire [15:0]camera_reg_0_addr_data;
  wire clk_div_0_clk_out;
  wire [7:0]sccb_0_reg_loc;
  wire sccb_0_scl;
  wire sccb_0_sda_out;

  assign scl_0 = sccb_0_scl;
  assign sda_out_0 = sccb_0_sda_out;
  design_1_camera_reg_0_0 camera_reg_0
       (.addr(sccb_0_reg_loc),
        .addr_data(camera_reg_0_addr_data),
        .clk(clk_div_0_clk_out));
  design_1_processing_system7_0_0 processing_system7_0
       (.FCLK_CLK0(clk_div_0_clk_out));
  design_1_sccb_0_0 sccb_0
       (.addr_data(camera_reg_0_addr_data),
        .clk_in(clk_div_0_clk_out),
        .reg_loc(sccb_0_reg_loc),
        .scl(sccb_0_scl),
        .sda_out(sccb_0_sda_out));
endmodule
