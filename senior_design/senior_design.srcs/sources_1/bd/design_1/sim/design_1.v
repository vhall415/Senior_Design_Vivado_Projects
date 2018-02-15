//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue Jan 30 21:26:10 2018
//Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire Net;
  wire [15:0]blk_mem_gen_0_doutb;
  wire [7:0]cam_byte_0_1;
  wire camera_receiver_0_clk_out;
  wire [15:0]camera_receiver_0_pixel_data_out;
  wire camera_receiver_0_write_en;
  wire [10:0]camera_receiver_0_write_reg_loc;
  wire camera_receiver_0_xclk;
  wire [15:0]camera_reg_0_addr_data;
  wire href_0_1;
  wire pclk_0_1;
  wire processing_system7_0_FCLK_CLK0;
  wire rgb2gray_0_clk_out;
  wire [7:0]rgb2gray_0_gray;
  wire [10:0]rgb2gray_0_reg_loc;
  wire [7:0]sccb_0_reg_loc;
  wire sccb_0_scl;
  wire vsync_0_1;

  assign cam_byte_0_1 = cam_byte_0[7:0];
  assign gray_0[7:0] = rgb2gray_0_gray;
  assign href_0_1 = href_0;
  assign pclk_0_1 = pclk_0;
  assign scl_0 = sccb_0_scl;
  assign vsync_0_1 = vsync_0;
  assign xclk_0 = camera_receiver_0_xclk;
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(camera_receiver_0_write_reg_loc),
        .addrb(rgb2gray_0_reg_loc),
        .clka(camera_receiver_0_clk_out),
        .clkb(rgb2gray_0_clk_out),
        .dina(camera_receiver_0_pixel_data_out),
        .doutb(blk_mem_gen_0_doutb),
        .enb(1'b0),
        .wea(camera_receiver_0_write_en));
  design_1_camera_receiver_0_0 camera_receiver_0
       (.cam_byte(cam_byte_0_1),
        .clk_out(camera_receiver_0_clk_out),
        .href(href_0_1),
        .pclk(pclk_0_1),
        .pixel_data_out(camera_receiver_0_pixel_data_out),
        .vsync(vsync_0_1),
        .write_en(camera_receiver_0_write_en),
        .write_reg_loc(camera_receiver_0_write_reg_loc),
        .xclk(camera_receiver_0_xclk));
  design_1_camera_reg_0_0 camera_reg_0
       (.addr(sccb_0_reg_loc),
        .addr_data(camera_reg_0_addr_data),
        .clk(processing_system7_0_FCLK_CLK0));
  design_1_processing_system7_0_0 processing_system7_0
       (.FCLK_CLK0(processing_system7_0_FCLK_CLK0));
  design_1_rgb2gray_0_1 rgb2gray_0
       (.clk_in(camera_receiver_0_clk_out),
        .clk_out(rgb2gray_0_clk_out),
        .gray(rgb2gray_0_gray),
        .pixel_data_in(blk_mem_gen_0_doutb),
        .read_reg_loc(rgb2gray_0_reg_loc));
  design_1_sccb_0_0 sccb_0
       (.addr_data(camera_reg_0_addr_data),
        .clk_in(processing_system7_0_FCLK_CLK0),
        .reg_loc(sccb_0_reg_loc),
        .scl(sccb_0_scl),
        .sda(sda_0));
endmodule
