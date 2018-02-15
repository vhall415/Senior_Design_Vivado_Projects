// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jan 29 17:26:14 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/vhall/Desktop/senior_design/senior_design.srcs/sources_1/bd/design_1/ip/design_1_rgb2gray_0_1/design_1_rgb2gray_0_1_sim_netlist.v
// Design      : design_1_rgb2gray_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rgb2gray_0_1,rgb2gray,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "rgb2gray,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_rgb2gray_0_1
   (pixel_data_in,
    clk_in,
    gray,
    read_reg_loc,
    clk_out);
  input [15:0]pixel_data_in;
  input clk_in;
  output [7:0]gray;
  output [10:0]read_reg_loc;
  output clk_out;

  wire clk_in;
  wire [7:0]gray;
  wire [15:0]pixel_data_in;
  wire [10:0]read_reg_loc;

  assign clk_out = clk_in;
  design_1_rgb2gray_0_1_rgb2gray inst
       (.Q(read_reg_loc[0]),
        .clk_in(clk_in),
        .gray(gray),
        .pixel_data_in(pixel_data_in),
        .read_reg_loc(read_reg_loc[10:1]));
endmodule

(* ORIG_REF_NAME = "rgb2gray" *) 
module design_1_rgb2gray_0_1_rgb2gray
   (Q,
    gray,
    read_reg_loc,
    clk_in,
    pixel_data_in);
  output [0:0]Q;
  output [7:0]gray;
  output [9:0]read_reg_loc;
  input clk_in;
  input [15:0]pixel_data_in;

  wire [0:0]Q;
  wire clk_in;
  wire [0:0]count;
  wire \count[0]_i_1_n_0 ;
  wire [10:1]data0;
  wire [7:0]gray;
  wire [9:0]gray1;
  wire gray1__0_carry__0_i_1_n_0;
  wire gray1__0_carry__0_i_2_n_0;
  wire gray1__0_carry__0_i_3_n_0;
  wire gray1__0_carry__0_i_4_n_0;
  wire gray1__0_carry__0_i_5_n_0;
  wire gray1__0_carry__0_i_6_n_0;
  wire gray1__0_carry__0_i_7_n_0;
  wire gray1__0_carry__0_i_8_n_0;
  wire gray1__0_carry__0_n_0;
  wire gray1__0_carry__0_n_1;
  wire gray1__0_carry__0_n_2;
  wire gray1__0_carry__0_n_3;
  wire gray1__0_carry__1_i_1_n_0;
  wire gray1__0_carry_i_1_n_0;
  wire gray1__0_carry_i_2_n_0;
  wire gray1__0_carry_i_3_n_0;
  wire gray1__0_carry_i_4_n_0;
  wire gray1__0_carry_i_5_n_0;
  wire gray1__0_carry_n_0;
  wire gray1__0_carry_n_1;
  wire gray1__0_carry_n_2;
  wire gray1__0_carry_n_3;
  wire [7:0]p_0_in;
  wire [15:0]pixel_data_in;
  wire [0:0]read_loc;
  wire \read_loc[10]_i_1_n_0 ;
  wire \read_loc[10]_i_3_n_0 ;
  wire \read_loc[10]_i_4_n_0 ;
  wire \read_loc[10]_i_5_n_0 ;
  wire [9:0]read_reg_loc;
  wire [3:0]NLW_gray1__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_gray1__0_carry__1_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count),
        .O(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count),
        .R(1'b0));
  CARRY4 gray1__0_carry
       (.CI(1'b0),
        .CO({gray1__0_carry_n_0,gray1__0_carry_n_1,gray1__0_carry_n_2,gray1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_data_in[5],pixel_data_in[15],gray1__0_carry_i_1_n_0,1'b0}),
        .O(gray1[3:0]),
        .S({gray1__0_carry_i_2_n_0,gray1__0_carry_i_3_n_0,gray1__0_carry_i_4_n_0,gray1__0_carry_i_5_n_0}));
  CARRY4 gray1__0_carry__0
       (.CI(gray1__0_carry_n_0),
        .CO({gray1__0_carry__0_n_0,gray1__0_carry__0_n_1,gray1__0_carry__0_n_2,gray1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gray1__0_carry__0_i_1_n_0,gray1__0_carry__0_i_2_n_0,gray1__0_carry__0_i_3_n_0,gray1__0_carry__0_i_4_n_0}),
        .O(gray1[7:4]),
        .S({gray1__0_carry__0_i_5_n_0,gray1__0_carry__0_i_6_n_0,gray1__0_carry__0_i_7_n_0,gray1__0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__0_i_1
       (.I0(pixel_data_in[14]),
        .I1(pixel_data_in[9]),
        .I2(pixel_data_in[3]),
        .O(gray1__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__0_i_2
       (.I0(pixel_data_in[13]),
        .I1(pixel_data_in[2]),
        .I2(pixel_data_in[8]),
        .O(gray1__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__0_i_3
       (.I0(pixel_data_in[12]),
        .I1(pixel_data_in[1]),
        .I2(pixel_data_in[7]),
        .O(gray1__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__0_i_4
       (.I0(pixel_data_in[11]),
        .I1(pixel_data_in[0]),
        .I2(pixel_data_in[6]),
        .O(gray1__0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry__0_i_5
       (.I0(gray1__0_carry__0_i_1_n_0),
        .I1(pixel_data_in[10]),
        .I2(pixel_data_in[4]),
        .I3(pixel_data_in[15]),
        .O(gray1__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry__0_i_6
       (.I0(pixel_data_in[14]),
        .I1(pixel_data_in[9]),
        .I2(pixel_data_in[3]),
        .I3(gray1__0_carry__0_i_2_n_0),
        .O(gray1__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry__0_i_7
       (.I0(pixel_data_in[13]),
        .I1(pixel_data_in[2]),
        .I2(pixel_data_in[8]),
        .I3(gray1__0_carry__0_i_3_n_0),
        .O(gray1__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry__0_i_8
       (.I0(pixel_data_in[12]),
        .I1(pixel_data_in[1]),
        .I2(pixel_data_in[7]),
        .I3(gray1__0_carry__0_i_4_n_0),
        .O(gray1__0_carry__0_i_8_n_0));
  CARRY4 gray1__0_carry__1
       (.CI(gray1__0_carry__0_n_0),
        .CO({NLW_gray1__0_carry__1_CO_UNCONNECTED[3:2],gray1[9],NLW_gray1__0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gray1__0_carry__1_O_UNCONNECTED[3:1],gray1[8]}),
        .S({1'b0,1'b0,1'b1,gray1__0_carry__1_i_1_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__1_i_1
       (.I0(pixel_data_in[15]),
        .I1(pixel_data_in[4]),
        .I2(pixel_data_in[10]),
        .O(gray1__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry_i_1
       (.I0(pixel_data_in[13]),
        .I1(pixel_data_in[9]),
        .I2(pixel_data_in[3]),
        .O(gray1__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry_i_2
       (.I0(pixel_data_in[11]),
        .I1(pixel_data_in[0]),
        .I2(pixel_data_in[6]),
        .I3(pixel_data_in[5]),
        .O(gray1__0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    gray1__0_carry_i_3
       (.I0(pixel_data_in[10]),
        .I1(pixel_data_in[4]),
        .I2(pixel_data_in[14]),
        .I3(pixel_data_in[15]),
        .O(gray1__0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry_i_4
       (.I0(gray1__0_carry_i_1_n_0),
        .I1(pixel_data_in[10]),
        .I2(pixel_data_in[4]),
        .I3(pixel_data_in[14]),
        .O(gray1__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gray1__0_carry_i_5
       (.I0(pixel_data_in[13]),
        .I1(pixel_data_in[9]),
        .I2(pixel_data_in[3]),
        .O(gray1__0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hE0D00D0E8F4FF4F8)) 
    \gray[0]_i_1 
       (.I0(gray1[3]),
        .I1(gray1[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(gray1[2]),
        .I5(gray1[1]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hC3BE823C)) 
    \gray[1]_i_1 
       (.I0(gray1[1]),
        .I1(p_0_in[3]),
        .I2(gray1[3]),
        .I3(gray1[2]),
        .I4(p_0_in[2]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hE0D00D0E8F4FF4F8)) 
    \gray[2]_i_1 
       (.I0(gray1[5]),
        .I1(gray1[2]),
        .I2(p_0_in[4]),
        .I3(p_0_in[5]),
        .I4(gray1[4]),
        .I5(gray1[3]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hC3BE823C)) 
    \gray[3]_i_1 
       (.I0(gray1[3]),
        .I1(p_0_in[5]),
        .I2(gray1[5]),
        .I3(gray1[4]),
        .I4(p_0_in[4]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hBC2B2BC22BC2C2BC)) 
    \gray[4]_i_1 
       (.I0(gray1[4]),
        .I1(gray1[6]),
        .I2(gray1[8]),
        .I3(gray1[9]),
        .I4(gray1[7]),
        .I5(gray1[5]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2CB2CB2C)) 
    \gray[5]_i_1 
       (.I0(gray1[5]),
        .I1(gray1[7]),
        .I2(gray1[8]),
        .I3(gray1[9]),
        .I4(gray1[6]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB22C)) 
    \gray[6]_i_1 
       (.I0(gray1[6]),
        .I1(gray1[8]),
        .I2(gray1[9]),
        .I3(gray1[7]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h38)) 
    \gray[7]_i_1 
       (.I0(gray1[7]),
        .I1(gray1[8]),
        .I2(gray1[9]),
        .O(p_0_in[7]));
  FDRE \gray_reg[0] 
       (.C(clk_in),
        .CE(count),
        .D(p_0_in[0]),
        .Q(gray[0]),
        .R(1'b0));
  FDRE \gray_reg[1] 
       (.C(clk_in),
        .CE(count),
        .D(p_0_in[1]),
        .Q(gray[1]),
        .R(1'b0));
  FDRE \gray_reg[2] 
       (.C(clk_in),
        .CE(count),
        .D(p_0_in[2]),
        .Q(gray[2]),
        .R(1'b0));
  FDRE \gray_reg[3] 
       (.C(clk_in),
        .CE(count),
        .D(p_0_in[3]),
        .Q(gray[3]),
        .R(1'b0));
  FDRE \gray_reg[4] 
       (.C(clk_in),
        .CE(count),
        .D(p_0_in[4]),
        .Q(gray[4]),
        .R(1'b0));
  FDRE \gray_reg[5] 
       (.C(clk_in),
        .CE(count),
        .D(p_0_in[5]),
        .Q(gray[5]),
        .R(1'b0));
  FDRE \gray_reg[6] 
       (.C(clk_in),
        .CE(count),
        .D(p_0_in[6]),
        .Q(gray[6]),
        .R(1'b0));
  FDRE \gray_reg[7] 
       (.C(clk_in),
        .CE(count),
        .D(p_0_in[7]),
        .Q(gray[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \read_loc[0]_i_1 
       (.I0(\read_loc[10]_i_3_n_0 ),
        .I1(Q),
        .O(read_loc));
  LUT3 #(
    .INIT(8'h02)) 
    \read_loc[10]_i_1 
       (.I0(count),
        .I1(Q),
        .I2(\read_loc[10]_i_3_n_0 ),
        .O(\read_loc[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \read_loc[10]_i_2 
       (.I0(\read_loc[10]_i_4_n_0 ),
        .I1(\read_loc[10]_i_5_n_0 ),
        .I2(read_reg_loc[9]),
        .O(data0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \read_loc[10]_i_3 
       (.I0(read_reg_loc[1]),
        .I1(read_reg_loc[2]),
        .I2(read_reg_loc[9]),
        .I3(read_reg_loc[4]),
        .I4(read_reg_loc[0]),
        .I5(\read_loc[10]_i_4_n_0 ),
        .O(\read_loc[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \read_loc[10]_i_4 
       (.I0(read_reg_loc[7]),
        .I1(read_reg_loc[5]),
        .I2(read_reg_loc[3]),
        .I3(read_reg_loc[6]),
        .I4(read_reg_loc[8]),
        .O(\read_loc[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \read_loc[10]_i_5 
       (.I0(read_reg_loc[2]),
        .I1(read_reg_loc[0]),
        .I2(Q),
        .I3(read_reg_loc[1]),
        .I4(read_reg_loc[4]),
        .O(\read_loc[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \read_loc[1]_i_1 
       (.I0(Q),
        .I1(read_reg_loc[0]),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_loc[2]_i_1 
       (.I0(read_reg_loc[0]),
        .I1(Q),
        .I2(read_reg_loc[1]),
        .O(data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_loc[3]_i_1 
       (.I0(read_reg_loc[1]),
        .I1(Q),
        .I2(read_reg_loc[0]),
        .I3(read_reg_loc[2]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_loc[4]_i_1 
       (.I0(read_reg_loc[2]),
        .I1(read_reg_loc[0]),
        .I2(Q),
        .I3(read_reg_loc[1]),
        .I4(read_reg_loc[3]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_loc[5]_i_1 
       (.I0(read_reg_loc[3]),
        .I1(read_reg_loc[1]),
        .I2(Q),
        .I3(read_reg_loc[0]),
        .I4(read_reg_loc[2]),
        .I5(read_reg_loc[4]),
        .O(data0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_loc[6]_i_1 
       (.I0(read_reg_loc[3]),
        .I1(\read_loc[10]_i_5_n_0 ),
        .I2(read_reg_loc[5]),
        .O(data0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_loc[7]_i_1 
       (.I0(read_reg_loc[3]),
        .I1(read_reg_loc[5]),
        .I2(\read_loc[10]_i_5_n_0 ),
        .I3(read_reg_loc[6]),
        .O(data0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_loc[8]_i_1 
       (.I0(read_reg_loc[5]),
        .I1(read_reg_loc[3]),
        .I2(read_reg_loc[6]),
        .I3(\read_loc[10]_i_5_n_0 ),
        .I4(read_reg_loc[7]),
        .O(data0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_loc[9]_i_1 
       (.I0(read_reg_loc[6]),
        .I1(read_reg_loc[3]),
        .I2(read_reg_loc[5]),
        .I3(read_reg_loc[7]),
        .I4(\read_loc[10]_i_5_n_0 ),
        .I5(read_reg_loc[8]),
        .O(data0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[0] 
       (.C(clk_in),
        .CE(count),
        .D(read_loc),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[10] 
       (.C(clk_in),
        .CE(count),
        .D(data0[10]),
        .Q(read_reg_loc[9]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[1] 
       (.C(clk_in),
        .CE(count),
        .D(data0[1]),
        .Q(read_reg_loc[0]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[2] 
       (.C(clk_in),
        .CE(count),
        .D(data0[2]),
        .Q(read_reg_loc[1]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[3] 
       (.C(clk_in),
        .CE(count),
        .D(data0[3]),
        .Q(read_reg_loc[2]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[4] 
       (.C(clk_in),
        .CE(count),
        .D(data0[4]),
        .Q(read_reg_loc[3]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[5] 
       (.C(clk_in),
        .CE(count),
        .D(data0[5]),
        .Q(read_reg_loc[4]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[6] 
       (.C(clk_in),
        .CE(count),
        .D(data0[6]),
        .Q(read_reg_loc[5]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[7] 
       (.C(clk_in),
        .CE(count),
        .D(data0[7]),
        .Q(read_reg_loc[6]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[8] 
       (.C(clk_in),
        .CE(count),
        .D(data0[8]),
        .Q(read_reg_loc[7]),
        .R(\read_loc[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_loc_reg[9] 
       (.C(clk_in),
        .CE(count),
        .D(data0[9]),
        .Q(read_reg_loc[8]),
        .R(\read_loc[10]_i_1_n_0 ));
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
