//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Fri Feb  9 03:25:47 2018
//Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_clkrst_cnt=3,da_ps7_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    scl_0,
    sda_0);
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output scl_0;
  inout sda_0;

  wire Net;
  wire [15:0]cam_reg_config_0_addr_data;
  wire cam_reg_config_0_done;
  wire [7:0]cam_reg_config_0_reg_loc;
  wire cam_reg_config_0_sccb_start;
  wire [15:0]camera_reg_0_addr_data;
  wire processing_system7_0_FCLK_CLK0;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire sccb_interface_0_busy;
  wire sccb_interface_0_ready_out;
  wire sccb_interface_0_scl;

  assign scl_0 = sccb_interface_0_scl;
  design_2_cam_reg_config_0_0 cam_reg_config_0
       (.addr_data(cam_reg_config_0_addr_data),
        .clk(processing_system7_0_FCLK_CLK0),
        .done(cam_reg_config_0_done),
        .reg_data(camera_reg_0_addr_data),
        .reg_loc(cam_reg_config_0_reg_loc),
        .sccb_busy(sccb_interface_0_busy),
        .sccb_ready(sccb_interface_0_ready_out),
        .sccb_start(cam_reg_config_0_sccb_start));
  design_2_camera_reg_0_0 camera_reg_0
       (.addr(cam_reg_config_0_reg_loc),
        .addr_data(camera_reg_0_addr_data),
        .clk(processing_system7_0_FCLK_CLK0));
  design_2_processing_system7_0_0 processing_system7_0
       (.FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  design_2_sccb_interface_0_0 sccb_interface_0
       (.addr_data(cam_reg_config_0_addr_data),
        .busy(sccb_interface_0_busy),
        .clk(processing_system7_0_FCLK_CLK0),
        .done(cam_reg_config_0_done),
        .ready_out(sccb_interface_0_ready_out),
        .scl(sccb_interface_0_scl),
        .sda(sda_0),
        .start(cam_reg_config_0_sccb_start));
endmodule
