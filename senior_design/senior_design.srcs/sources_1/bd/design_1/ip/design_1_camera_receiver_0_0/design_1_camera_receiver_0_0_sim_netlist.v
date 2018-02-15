// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jan 29 17:26:32 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/vhall/Desktop/senior_design/senior_design.srcs/sources_1/bd/design_1/ip/design_1_camera_receiver_0_0/design_1_camera_receiver_0_0_sim_netlist.v
// Design      : design_1_camera_receiver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_camera_receiver_0_0,camera_receiver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "camera_receiver,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_camera_receiver_0_0
   (cam_byte,
    pclk,
    vsync,
    href,
    xclk,
    pixel_data_out,
    write_reg_loc,
    write_en,
    clk_out);
  input [7:0]cam_byte;
  input pclk;
  input vsync;
  input href;
  output xclk;
  output [15:0]pixel_data_out;
  output [10:0]write_reg_loc;
  output write_en;
  output clk_out;

  wire [7:0]cam_byte;
  wire href;
  wire pclk;
  wire [15:0]pixel_data_out;
  wire vsync;
  wire write_en;
  wire [10:0]write_reg_loc;

  assign clk_out = pclk;
  assign xclk = pclk;
  design_1_camera_receiver_0_0_camera_receiver inst
       (.cam_byte(cam_byte),
        .href(href),
        .pclk(pclk),
        .pixel_data_out(pixel_data_out),
        .vsync(vsync),
        .write_en(write_en),
        .write_reg_loc(write_reg_loc));
endmodule

(* ORIG_REF_NAME = "camera_receiver" *) 
module design_1_camera_receiver_0_0_camera_receiver
   (pixel_data_out,
    write_reg_loc,
    write_en,
    vsync,
    cam_byte,
    pclk,
    href);
  output [15:0]pixel_data_out;
  output [10:0]write_reg_loc;
  output write_en;
  input vsync;
  input [7:0]cam_byte;
  input pclk;
  input href;

  wire \_inferred__0/i__n_0 ;
  wire byte_num;
  wire byte_num_reg_i_1_n_0;
  wire byte_num_reg_i_2_n_0;
  wire [7:0]cam_byte;
  wire href;
  wire pclk;
  wire [15:8]pixel;
  wire [15:0]pixel_data_out;
  wire \pixel_data_out_reg[15]_i_1_n_0 ;
  wire state;
  wire state_reg_i_1_n_0;
  wire state_reg_i_2_n_0;
  wire vsync;
  wire write_en;
  wire write_en_reg_i_1_n_0;
  wire [10:0]write_loc;
  wire \write_loc_reg[0]_i_1_n_0 ;
  wire \write_loc_reg[10]_i_1_n_0 ;
  wire \write_loc_reg[10]_i_2_n_0 ;
  wire \write_loc_reg[10]_i_3_n_0 ;
  wire \write_loc_reg[10]_i_4_n_0 ;
  wire \write_loc_reg[1]_i_1_n_0 ;
  wire \write_loc_reg[2]_i_1_n_0 ;
  wire \write_loc_reg[3]_i_1_n_0 ;
  wire \write_loc_reg[4]_i_1_n_0 ;
  wire \write_loc_reg[5]_i_1_n_0 ;
  wire \write_loc_reg[5]_i_2_n_0 ;
  wire \write_loc_reg[6]_i_1_n_0 ;
  wire \write_loc_reg[7]_i_1_n_0 ;
  wire \write_loc_reg[7]_i_2_n_0 ;
  wire \write_loc_reg[8]_i_1_n_0 ;
  wire \write_loc_reg[8]_i_2_n_0 ;
  wire \write_loc_reg[9]_i_1_n_0 ;
  wire \write_loc_reg[9]_i_2_n_0 ;
  wire [10:0]write_reg_loc;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \_inferred__0/i_ 
       (.I0(vsync),
        .I1(byte_num),
        .I2(state),
        .I3(pclk),
        .I4(href),
        .O(\_inferred__0/i__n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    byte_num_reg
       (.CLR(1'b0),
        .D(byte_num_reg_i_1_n_0),
        .G(byte_num_reg_i_2_n_0),
        .GE(1'b1),
        .Q(byte_num));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h74)) 
    byte_num_reg_i_1
       (.I0(byte_num),
        .I1(state),
        .I2(vsync),
        .O(byte_num_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h008F)) 
    byte_num_reg_i_2
       (.I0(href),
        .I1(pclk),
        .I2(state),
        .I3(vsync),
        .O(byte_num_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[0] 
       (.CLR(1'b0),
        .D(cam_byte[0]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[10] 
       (.CLR(1'b0),
        .D(pixel[10]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[11] 
       (.CLR(1'b0),
        .D(pixel[11]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[12] 
       (.CLR(1'b0),
        .D(pixel[12]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[13] 
       (.CLR(1'b0),
        .D(pixel[13]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[14] 
       (.CLR(1'b0),
        .D(pixel[14]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[15] 
       (.CLR(1'b0),
        .D(pixel[15]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[15]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \pixel_data_out_reg[15]_i_1 
       (.I0(state),
        .I1(vsync),
        .I2(href),
        .I3(pclk),
        .I4(byte_num),
        .O(\pixel_data_out_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[1] 
       (.CLR(1'b0),
        .D(cam_byte[1]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[2] 
       (.CLR(1'b0),
        .D(cam_byte[2]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[3] 
       (.CLR(1'b0),
        .D(cam_byte[3]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[4] 
       (.CLR(1'b0),
        .D(cam_byte[4]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[5] 
       (.CLR(1'b0),
        .D(cam_byte[5]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[6] 
       (.CLR(1'b0),
        .D(cam_byte[6]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[7] 
       (.CLR(1'b0),
        .D(cam_byte[7]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[8] 
       (.CLR(1'b0),
        .D(pixel[8]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[9] 
       (.CLR(1'b0),
        .D(pixel[9]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel_data_out[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[10] 
       (.CLR(1'b0),
        .D(cam_byte[2]),
        .G(\_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(pixel[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[11] 
       (.CLR(1'b0),
        .D(cam_byte[3]),
        .G(\_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(pixel[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[12] 
       (.CLR(1'b0),
        .D(cam_byte[4]),
        .G(\_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(pixel[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[13] 
       (.CLR(1'b0),
        .D(cam_byte[5]),
        .G(\_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(pixel[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[14] 
       (.CLR(1'b0),
        .D(cam_byte[6]),
        .G(\_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(pixel[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[15] 
       (.CLR(1'b0),
        .D(cam_byte[7]),
        .G(\_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(pixel[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[8] 
       (.CLR(1'b0),
        .D(cam_byte[0]),
        .G(\_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(pixel[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[9] 
       (.CLR(1'b0),
        .D(cam_byte[1]),
        .G(\_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(pixel[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    state_reg
       (.CLR(1'b0),
        .D(state_reg_i_1_n_0),
        .G(state_reg_i_2_n_0),
        .GE(1'b1),
        .Q(state));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    state_reg_i_1
       (.I0(state),
        .I1(vsync),
        .O(state_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    state_reg_i_2
       (.I0(state),
        .I1(vsync),
        .O(state_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    write_en_reg
       (.CLR(1'b0),
        .D(byte_num),
        .G(write_en_reg_i_1_n_0),
        .GE(1'b1),
        .Q(write_en));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    write_en_reg_i_1
       (.I0(state),
        .I1(pclk),
        .I2(vsync),
        .I3(href),
        .O(write_en_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[0] 
       (.CLR(1'b0),
        .D(\write_loc_reg[0]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \write_loc_reg[0]_i_1 
       (.I0(\write_loc_reg[10]_i_4_n_0 ),
        .I1(\write_loc_reg[10]_i_2_n_0 ),
        .I2(write_loc[0]),
        .O(\write_loc_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[10] 
       (.CLR(1'b0),
        .D(\write_loc_reg[10]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F00EE0)) 
    \write_loc_reg[10]_i_1 
       (.I0(write_loc[0]),
        .I1(\write_loc_reg[10]_i_2_n_0 ),
        .I2(write_loc[10]),
        .I3(\write_loc_reg[10]_i_3_n_0 ),
        .I4(\write_loc_reg[10]_i_4_n_0 ),
        .O(\write_loc_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \write_loc_reg[10]_i_2 
       (.I0(write_loc[1]),
        .I1(write_loc[5]),
        .I2(write_loc[10]),
        .I3(write_loc[3]),
        .I4(write_loc[2]),
        .O(\write_loc_reg[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \write_loc_reg[10]_i_3 
       (.I0(write_loc[3]),
        .I1(write_loc[1]),
        .I2(write_loc[0]),
        .I3(write_loc[2]),
        .I4(write_loc[5]),
        .O(\write_loc_reg[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \write_loc_reg[10]_i_4 
       (.I0(write_loc[8]),
        .I1(write_loc[6]),
        .I2(write_loc[4]),
        .I3(write_loc[7]),
        .I4(write_loc[9]),
        .O(\write_loc_reg[10]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[1] 
       (.CLR(1'b0),
        .D(\write_loc_reg[1]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0FE0)) 
    \write_loc_reg[1]_i_1 
       (.I0(\write_loc_reg[10]_i_2_n_0 ),
        .I1(\write_loc_reg[10]_i_4_n_0 ),
        .I2(write_loc[1]),
        .I3(write_loc[0]),
        .O(\write_loc_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[2] 
       (.CLR(1'b0),
        .D(\write_loc_reg[2]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0FE0F0E0)) 
    \write_loc_reg[2]_i_1 
       (.I0(\write_loc_reg[10]_i_2_n_0 ),
        .I1(\write_loc_reg[10]_i_4_n_0 ),
        .I2(write_loc[2]),
        .I3(write_loc[0]),
        .I4(write_loc[1]),
        .O(\write_loc_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[3] 
       (.CLR(1'b0),
        .D(\write_loc_reg[3]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[3]));
  LUT6 #(
    .INIT(64'h0FF0E0E0F0F0E0E0)) 
    \write_loc_reg[3]_i_1 
       (.I0(\write_loc_reg[10]_i_2_n_0 ),
        .I1(\write_loc_reg[10]_i_4_n_0 ),
        .I2(write_loc[3]),
        .I3(write_loc[1]),
        .I4(write_loc[0]),
        .I5(write_loc[2]),
        .O(\write_loc_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[4] 
       (.CLR(1'b0),
        .D(\write_loc_reg[4]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[4]));
  LUT5 #(
    .INIT(32'h00FEFE00)) 
    \write_loc_reg[4]_i_1 
       (.I0(write_loc[0]),
        .I1(\write_loc_reg[10]_i_2_n_0 ),
        .I2(\write_loc_reg[10]_i_4_n_0 ),
        .I3(write_loc[4]),
        .I4(\write_loc_reg[5]_i_2_n_0 ),
        .O(\write_loc_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[5] 
       (.CLR(1'b0),
        .D(\write_loc_reg[5]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[5]));
  LUT6 #(
    .INIT(64'h00FEFE00FE00FE00)) 
    \write_loc_reg[5]_i_1 
       (.I0(write_loc[0]),
        .I1(\write_loc_reg[10]_i_2_n_0 ),
        .I2(\write_loc_reg[10]_i_4_n_0 ),
        .I3(write_loc[5]),
        .I4(\write_loc_reg[5]_i_2_n_0 ),
        .I5(write_loc[4]),
        .O(\write_loc_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \write_loc_reg[5]_i_2 
       (.I0(write_loc[2]),
        .I1(write_loc[0]),
        .I2(write_loc[1]),
        .I3(write_loc[3]),
        .O(\write_loc_reg[5]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[6] 
       (.CLR(1'b0),
        .D(\write_loc_reg[6]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[6]));
  LUT6 #(
    .INIT(64'h00FEFE00FE00FE00)) 
    \write_loc_reg[6]_i_1 
       (.I0(write_loc[0]),
        .I1(\write_loc_reg[10]_i_2_n_0 ),
        .I2(\write_loc_reg[10]_i_4_n_0 ),
        .I3(write_loc[6]),
        .I4(\write_loc_reg[10]_i_3_n_0 ),
        .I5(write_loc[4]),
        .O(\write_loc_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[7] 
       (.CLR(1'b0),
        .D(\write_loc_reg[7]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[7]));
  LUT6 #(
    .INIT(64'hFE00FE0000FEFE00)) 
    \write_loc_reg[7]_i_1 
       (.I0(write_loc[0]),
        .I1(\write_loc_reg[10]_i_2_n_0 ),
        .I2(\write_loc_reg[10]_i_4_n_0 ),
        .I3(write_loc[7]),
        .I4(\write_loc_reg[10]_i_3_n_0 ),
        .I5(\write_loc_reg[7]_i_2_n_0 ),
        .O(\write_loc_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \write_loc_reg[7]_i_2 
       (.I0(write_loc[4]),
        .I1(write_loc[6]),
        .O(\write_loc_reg[7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[8] 
       (.CLR(1'b0),
        .D(\write_loc_reg[8]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[8]));
  LUT6 #(
    .INIT(64'hFF00FF0000FFEF00)) 
    \write_loc_reg[8]_i_1 
       (.I0(write_loc[0]),
        .I1(\write_loc_reg[10]_i_2_n_0 ),
        .I2(write_loc[9]),
        .I3(write_loc[8]),
        .I4(\write_loc_reg[10]_i_3_n_0 ),
        .I5(\write_loc_reg[8]_i_2_n_0 ),
        .O(\write_loc_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \write_loc_reg[8]_i_2 
       (.I0(write_loc[6]),
        .I1(write_loc[4]),
        .I2(write_loc[7]),
        .O(\write_loc_reg[8]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_loc_reg[9] 
       (.CLR(1'b0),
        .D(\write_loc_reg[9]_i_1_n_0 ),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_loc[9]));
  LUT5 #(
    .INIT(32'hF0F00FE0)) 
    \write_loc_reg[9]_i_1 
       (.I0(write_loc[0]),
        .I1(\write_loc_reg[10]_i_2_n_0 ),
        .I2(write_loc[9]),
        .I3(\write_loc_reg[10]_i_3_n_0 ),
        .I4(\write_loc_reg[9]_i_2_n_0 ),
        .O(\write_loc_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \write_loc_reg[9]_i_2 
       (.I0(write_loc[7]),
        .I1(write_loc[4]),
        .I2(write_loc[6]),
        .I3(write_loc[8]),
        .O(\write_loc_reg[9]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[0] 
       (.CLR(1'b0),
        .D(write_loc[0]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[10] 
       (.CLR(1'b0),
        .D(write_loc[10]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[1] 
       (.CLR(1'b0),
        .D(write_loc[1]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[2] 
       (.CLR(1'b0),
        .D(write_loc[2]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[3] 
       (.CLR(1'b0),
        .D(write_loc[3]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[4] 
       (.CLR(1'b0),
        .D(write_loc[4]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[5] 
       (.CLR(1'b0),
        .D(write_loc[5]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[6] 
       (.CLR(1'b0),
        .D(write_loc[6]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[7] 
       (.CLR(1'b0),
        .D(write_loc[7]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[8] 
       (.CLR(1'b0),
        .D(write_loc[8]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_reg_loc_reg[9] 
       (.CLR(1'b0),
        .D(write_loc[9]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(write_reg_loc[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
