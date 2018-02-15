//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Fri Feb  9 08:11:26 2018
//Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_mb_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (reset,
    reset_mods,
    scl_0,
    sda_0,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_MODS RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_MODS, POLARITY ACTIVE_LOW" *) input reset_mods;
  output scl_0;
  inout sda_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;

  wire Net;
  wire [15:0]cam_reg_config_0_addr_data;
  wire cam_reg_config_0_done;
  wire [7:0]cam_reg_config_0_reg_loc;
  wire cam_reg_config_0_sccb_start;
  wire [15:0]camera_reg_0_addr_data;
  wire clk_wiz_0_clk_out1;
  wire reset_0_1;
  wire reset_1;
  wire sccb_interface_0_busy;
  wire sccb_interface_0_ready_out;
  wire sccb_interface_0_scl;
  wire sys_clock_1;

  assign reset_0_1 = reset_mods;
  assign reset_1 = reset;
  assign scl_0 = sccb_interface_0_scl;
  assign sys_clock_1 = sys_clock;
  design_1_cam_reg_config_0_0 cam_reg_config_0
       (.addr_data(cam_reg_config_0_addr_data),
        .clk(clk_wiz_0_clk_out1),
        .done(cam_reg_config_0_done),
        .reg_data(camera_reg_0_addr_data),
        .reg_loc(cam_reg_config_0_reg_loc),
        .reset(reset_0_1),
        .sccb_busy(sccb_interface_0_busy),
        .sccb_ready(sccb_interface_0_ready_out),
        .sccb_start(cam_reg_config_0_sccb_start));
  design_1_camera_reg_0_0 camera_reg_0
       (.addr(cam_reg_config_0_reg_loc),
        .addr_data(camera_reg_0_addr_data),
        .clk(clk_wiz_0_clk_out1));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .resetn(reset_1));
  design_1_sccb_interface_0_0 sccb_interface_0
       (.addr_data(cam_reg_config_0_addr_data),
        .busy(sccb_interface_0_busy),
        .clk(clk_wiz_0_clk_out1),
        .done(cam_reg_config_0_done),
        .ready_out(sccb_interface_0_ready_out),
        .reset(reset_0_1),
        .scl(sccb_interface_0_scl),
        .sda(sda_0),
        .start(cam_reg_config_0_sccb_start));
endmodule
