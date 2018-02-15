// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb  9 12:35:26 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/vhall/Desktop/senior_design_2/senior_design_2.sim/sim_1/impl/timing/xsim/top_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module cam_reg_config
   (sccb_done,
    sccb_start,
    reg_loc_reg_0,
    busy0,
    Q,
    CLK,
    reset_reg,
    \state_reg[0]_0 );
  output sccb_done;
  output sccb_start;
  output reg_loc_reg_0;
  output busy0;
  output [15:0]Q;
  input CLK;
  input reset_reg;
  input \state_reg[0]_0 ;

  wire CLK;
  wire [15:0]Q;
  wire \addr_data[15]_i_1_n_0 ;
  wire \addr_data[15]_i_2_n_0 ;
  wire \addr_data[15]_i_3_n_0 ;
  wire busy0;
  wire [15:0]cam_reg_data;
  wire done_i_1_n_0;
  wire loc;
  wire \loc[7]_i_3_n_0 ;
  wire [7:0]loc_reg__0;
  wire [7:0]p_0_in;
  wire reg_loc_reg_0;
  wire reg_loc_reg_i_1_n_0;
  wire reg_loc_reg_i_2_n_0;
  wire reg_loc_reg_i_3_n_0;
  wire reg_loc_reg_i_4_n_0;
  wire reg_loc_reg_i_5_n_0;
  wire reg_loc_reg_i_6_n_0;
  wire reg_loc_reg_i_7_n_0;
  wire reg_loc_reg_i_8_n_0;
  wire reg_loc_reg_i_9_n_0;
  wire reset_reg;
  wire sccb_done;
  wire sccb_start;
  wire sccb_start_i_1_n_0;
  wire sccb_start_i_2_n_0;
  wire [7:0]sel0;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[0]_i_9_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg_n_0_[1] ;
  wire wait_time;
  wire \wait_time[0]_i_1_n_0 ;
  wire \wait_time[1]_i_1_n_0 ;
  wire \wait_time[2]_i_1_n_0 ;
  wire \wait_time[3]_i_1_n_0 ;
  wire \wait_time[4]_i_1_n_0 ;
  wire \wait_time[4]_i_2_n_0 ;
  wire \wait_time[4]_i_3_n_0 ;
  wire \wait_time[5]_i_1__0_n_0 ;
  wire \wait_time[6]_i_1_n_0 ;
  wire \wait_time[7]_i_2_n_0 ;
  wire \wait_time[7]_i_3_n_0 ;
  wire [15:0]NLW_reg_loc_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_reg_loc_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_reg_loc_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAA8)) 
    \addr_data[15]_i_1 
       (.I0(\addr_data[15]_i_2_n_0 ),
        .I1(\addr_data[15]_i_3_n_0 ),
        .I2(cam_reg_data[1]),
        .I3(cam_reg_data[2]),
        .I4(cam_reg_data[0]),
        .I5(cam_reg_data[3]),
        .O(\addr_data[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr_data[15]_i_2 
       (.I0(reg_loc_reg_0),
        .I1(\state_reg_n_0_[1] ),
        .O(\addr_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \addr_data[15]_i_3 
       (.I0(\state[0]_i_7_n_0 ),
        .I1(cam_reg_data[12]),
        .I2(cam_reg_data[4]),
        .I3(cam_reg_data[11]),
        .I4(cam_reg_data[7]),
        .I5(\state[0]_i_5_n_0 ),
        .O(\addr_data[15]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[0] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[0]),
        .Q(Q[0]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[10] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[10]),
        .Q(Q[10]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[11] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[11]),
        .Q(Q[11]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[12] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[12]),
        .Q(Q[12]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[13] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[13]),
        .Q(Q[13]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[14] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[14]),
        .Q(Q[14]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[15] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[15]),
        .Q(Q[15]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[1] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[1]),
        .Q(Q[1]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[2] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[2]),
        .Q(Q[2]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[3] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[3]),
        .Q(Q[3]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[4] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[4]),
        .Q(Q[4]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[5] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[5]),
        .Q(Q[5]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[6] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[6]),
        .Q(Q[6]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[7] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[7]),
        .Q(Q[7]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[8] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[8]),
        .Q(Q[8]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[9] 
       (.C(CLK),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[9]),
        .Q(Q[9]),
        .R(reset_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \data[7]_i_2 
       (.I0(sccb_start),
        .I1(sccb_done),
        .O(busy0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    done_i_1
       (.I0(sccb_done),
        .I1(\state_reg_n_0_[1] ),
        .I2(reg_loc_reg_0),
        .I3(reset_reg),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(sccb_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \loc[0]_i_1 
       (.I0(loc_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \loc[1]_i_1 
       (.I0(loc_reg__0[0]),
        .I1(loc_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \loc[2]_i_1 
       (.I0(loc_reg__0[2]),
        .I1(loc_reg__0[0]),
        .I2(loc_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \loc[3]_i_1 
       (.I0(loc_reg__0[1]),
        .I1(loc_reg__0[0]),
        .I2(loc_reg__0[2]),
        .I3(loc_reg__0[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \loc[4]_i_1 
       (.I0(loc_reg__0[4]),
        .I1(loc_reg__0[1]),
        .I2(loc_reg__0[0]),
        .I3(loc_reg__0[2]),
        .I4(loc_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \loc[5]_i_1 
       (.I0(loc_reg__0[5]),
        .I1(loc_reg__0[3]),
        .I2(loc_reg__0[2]),
        .I3(loc_reg__0[0]),
        .I4(loc_reg__0[1]),
        .I5(loc_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \loc[6]_i_1 
       (.I0(loc_reg__0[6]),
        .I1(loc_reg__0[4]),
        .I2(\loc[7]_i_3_n_0 ),
        .I3(loc_reg__0[5]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h0004)) 
    \loc[7]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(reg_loc_reg_0),
        .I2(reset_reg),
        .I3(\state_reg_n_0_[1] ),
        .O(loc));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \loc[7]_i_2 
       (.I0(loc_reg__0[7]),
        .I1(loc_reg__0[5]),
        .I2(\loc[7]_i_3_n_0 ),
        .I3(loc_reg__0[4]),
        .I4(loc_reg__0[6]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \loc[7]_i_3 
       (.I0(loc_reg__0[3]),
        .I1(loc_reg__0[2]),
        .I2(loc_reg__0[0]),
        .I3(loc_reg__0[1]),
        .O(\loc[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[0] 
       (.C(CLK),
        .CE(loc),
        .D(p_0_in[0]),
        .Q(loc_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[1] 
       (.C(CLK),
        .CE(loc),
        .D(p_0_in[1]),
        .Q(loc_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[2] 
       (.C(CLK),
        .CE(loc),
        .D(p_0_in[2]),
        .Q(loc_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[3] 
       (.C(CLK),
        .CE(loc),
        .D(p_0_in[3]),
        .Q(loc_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[4] 
       (.C(CLK),
        .CE(loc),
        .D(p_0_in[4]),
        .Q(loc_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[5] 
       (.C(CLK),
        .CE(loc),
        .D(p_0_in[5]),
        .Q(loc_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[6] 
       (.C(CLK),
        .CE(loc),
        .D(p_0_in[6]),
        .Q(loc_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[7] 
       (.C(CLK),
        .CE(loc),
        .D(p_0_in[7]),
        .Q(loc_reg__0[7]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "config1/reg_loc" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h54E453A7523D510050B34FB314183A0440D004003E000C0011801204FFF01280),
    .INIT_01(256'hB10CB084740069003C78330B1E000F41030A1A7B19033280180217143DC0589E),
    .INIT_02(256'h8288818080767F697E5A7D357C1E7B107A20A20273F072117135703AB380B20E),
    .INIT_03(256'h25332495AB07A50514180D401000000013E089E888D787C486AF85A38496838F),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFF13E5AA94A990A8F0A7D8A6D8A103A0689F7826E3),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    reg_loc_reg
       (.ADDRARDADDR({1'b0,1'b0,reg_loc_reg_i_2_n_0,reg_loc_reg_i_3_n_0,reg_loc_reg_i_4_n_0,reg_loc_reg_i_5_n_0,reg_loc_reg_i_6_n_0,reg_loc_reg_i_7_n_0,reg_loc_reg_i_8_n_0,reg_loc_reg_i_9_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(cam_reg_data),
        .DOBDO(NLW_reg_loc_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_reg_loc_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_reg_loc_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(reg_loc_reg_i_1_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hEA)) 
    reg_loc_reg_i_1
       (.I0(reset_reg),
        .I1(reg_loc_reg_0),
        .I2(\state_reg_n_0_[1] ),
        .O(reg_loc_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    reg_loc_reg_i_2
       (.I0(loc_reg__0[7]),
        .I1(reset_reg),
        .O(reg_loc_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    reg_loc_reg_i_3
       (.I0(loc_reg__0[6]),
        .I1(reset_reg),
        .O(reg_loc_reg_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    reg_loc_reg_i_4
       (.I0(loc_reg__0[5]),
        .I1(reset_reg),
        .O(reg_loc_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    reg_loc_reg_i_5
       (.I0(loc_reg__0[4]),
        .I1(reset_reg),
        .O(reg_loc_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    reg_loc_reg_i_6
       (.I0(loc_reg__0[3]),
        .I1(reset_reg),
        .O(reg_loc_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    reg_loc_reg_i_7
       (.I0(loc_reg__0[2]),
        .I1(reset_reg),
        .O(reg_loc_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    reg_loc_reg_i_8
       (.I0(loc_reg__0[1]),
        .I1(reset_reg),
        .O(reg_loc_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    reg_loc_reg_i_9
       (.I0(loc_reg__0[0]),
        .I1(reset_reg),
        .O(reg_loc_reg_i_9_n_0));
  LUT5 #(
    .INIT(32'h0000AA8C)) 
    sccb_start_i_1
       (.I0(sccb_start),
        .I1(reg_loc_reg_0),
        .I2(sccb_start_i_2_n_0),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset_reg),
        .O(sccb_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h000B0000)) 
    sccb_start_i_2
       (.I0(\state[0]_i_4_n_0 ),
        .I1(\wait_time[4]_i_3_n_0 ),
        .I2(\state[0]_i_7_n_0 ),
        .I3(\state[0]_i_6_n_0 ),
        .I4(\state[0]_i_5_n_0 ),
        .O(sccb_start_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sccb_start_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sccb_start_i_1_n_0),
        .Q(sccb_start),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1F50)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(state),
        .I3(reg_loc_reg_0),
        .O(\state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \state[0]_i_2 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(\state[0]_i_5_n_0 ),
        .I2(\state[0]_i_6_n_0 ),
        .I3(\state[0]_i_7_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000002000000AAAA)) 
    \state[0]_i_3 
       (.I0(\state_reg[0]_0 ),
        .I1(\state[0]_i_9_n_0 ),
        .I2(\wait_time[7]_i_3_n_0 ),
        .I3(reg_loc_reg_0),
        .I4(reset_reg),
        .I5(\state_reg_n_0_[1] ),
        .O(state));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[0]_i_4 
       (.I0(cam_reg_data[2]),
        .I1(cam_reg_data[0]),
        .I2(cam_reg_data[3]),
        .I3(cam_reg_data[1]),
        .O(\state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[0]_i_5 
       (.I0(cam_reg_data[10]),
        .I1(cam_reg_data[6]),
        .I2(cam_reg_data[8]),
        .I3(cam_reg_data[5]),
        .O(\state[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[0]_i_6 
       (.I0(cam_reg_data[12]),
        .I1(cam_reg_data[4]),
        .I2(cam_reg_data[11]),
        .I3(cam_reg_data[7]),
        .O(\state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[0]_i_7 
       (.I0(cam_reg_data[14]),
        .I1(cam_reg_data[9]),
        .I2(cam_reg_data[13]),
        .I3(cam_reg_data[15]),
        .O(\state[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_9 
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\state[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF70C)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(reg_loc_reg_0),
        .I2(reset_reg),
        .I3(\state_reg_n_0_[1] ),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[1]_i_2 
       (.I0(\wait_time[7]_i_3_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .O(\state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(reg_loc_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_time[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[0]),
        .O(\wait_time[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \wait_time[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\wait_time[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \wait_time[2]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\wait_time[4]_i_2_n_0 ),
        .O(\wait_time[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC355555555)) 
    \wait_time[3]_i_1 
       (.I0(\wait_time[4]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\state_reg_n_0_[1] ),
        .O(\wait_time[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h990F)) 
    \wait_time[4]_i_1 
       (.I0(sel0[4]),
        .I1(\wait_time[7]_i_3_n_0 ),
        .I2(\wait_time[4]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .O(\wait_time[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \wait_time[4]_i_2 
       (.I0(\state[0]_i_5_n_0 ),
        .I1(\state[0]_i_6_n_0 ),
        .I2(\state[0]_i_7_n_0 ),
        .I3(\wait_time[4]_i_3_n_0 ),
        .O(\wait_time[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time[4]_i_3 
       (.I0(cam_reg_data[3]),
        .I1(cam_reg_data[0]),
        .I2(cam_reg_data[2]),
        .I3(cam_reg_data[1]),
        .O(\wait_time[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE1FF)) 
    \wait_time[5]_i_1__0 
       (.I0(sel0[4]),
        .I1(\wait_time[7]_i_3_n_0 ),
        .I2(sel0[5]),
        .I3(\state_reg_n_0_[1] ),
        .O(\wait_time[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \wait_time[6]_i_1 
       (.I0(\wait_time[7]_i_3_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(\state_reg_n_0_[1] ),
        .O(\wait_time[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A22)) 
    \wait_time[7]_i_1 
       (.I0(reg_loc_reg_0),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset_reg),
        .O(wait_time));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \wait_time[7]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(\wait_time[7]_i_3_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .I5(\state_reg_n_0_[1] ),
        .O(\wait_time[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time[7]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\wait_time[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[0] 
       (.C(CLK),
        .CE(wait_time),
        .D(\wait_time[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[1] 
       (.C(CLK),
        .CE(wait_time),
        .D(\wait_time[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[2] 
       (.C(CLK),
        .CE(wait_time),
        .D(\wait_time[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[3] 
       (.C(CLK),
        .CE(wait_time),
        .D(\wait_time[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[4] 
       (.C(CLK),
        .CE(wait_time),
        .D(\wait_time[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[5] 
       (.C(CLK),
        .CE(wait_time),
        .D(\wait_time[5]_i_1__0_n_0 ),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[6] 
       (.C(CLK),
        .CE(wait_time),
        .D(\wait_time[6]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[7] 
       (.C(CLK),
        .CE(wait_time),
        .D(\wait_time[7]_i_2_n_0 ),
        .Q(sel0[7]),
        .R(1'b0));
endmodule

module clk_div
   (clk,
    sys_clk_IBUF_BUFG);
  output clk;
  input sys_clk_IBUF_BUFG;

  wire clk;
  wire clk_out_i_1_n_0;
  wire [0:0]count;
  wire \count[0]_i_1_n_0 ;
  wire reset;
  wire sys_clk_IBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h06)) 
    clk_out_i_1
       (.I0(clk),
        .I1(count),
        .I2(reset),
        .O(clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(clk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(count),
        .I1(reset),
        .O(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    reset_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(reset),
        .R(1'b0));
endmodule

module sccb_interface
   (scl_OBUF,
    scl_reg_0,
    sda_OBUF,
    \state_reg[0]_0 ,
    CLK,
    \state_reg[0]_1 ,
    busy0,
    sccb_done,
    sccb_start,
    Q);
  output scl_OBUF;
  output scl_reg_0;
  output sda_OBUF;
  output \state_reg[0]_0 ;
  input CLK;
  input \state_reg[0]_1 ;
  input busy0;
  input sccb_done;
  input sccb_start;
  input [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire [7:0]addr;
  wire addr_0;
  wire busy0;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire [7:0]data;
  wire i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_2_n_0 ;
  wire \i[3]_i_3_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire phase;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase_reg_n_0_[0] ;
  wire \phase_reg_n_0_[1] ;
  wire ready_out_i_1_n_0;
  wire sccb_busy;
  wire sccb_done;
  wire sccb_ready;
  wire sccb_start;
  wire scl_OBUF;
  wire scl_i_1_n_0;
  wire scl_reg_0;
  wire sda_OBUF;
  wire sda_out1_out;
  wire sda_out_i_1_n_0;
  wire sda_out_i_2_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire [5:0]sel0__0;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_return[0]_i_1_n_0 ;
  wire \state_return[1]_i_1_n_0 ;
  wire \state_return[2]_i_1_n_0 ;
  wire \state_return[3]_i_1_n_0 ;
  wire \state_return[3]_i_2_n_0 ;
  wire \state_return_reg_n_0_[0] ;
  wire \state_return_reg_n_0_[1] ;
  wire \state_return_reg_n_0_[2] ;
  wire \state_return_reg_n_0_[3] ;
  wire tx_data;
  wire \tx_data[0]_i_1_n_0 ;
  wire \tx_data[1]_i_1_n_0 ;
  wire \tx_data[2]_i_1_n_0 ;
  wire \tx_data[3]_i_1_n_0 ;
  wire \tx_data[4]_i_1_n_0 ;
  wire \tx_data[5]_i_1_n_0 ;
  wire \tx_data[6]_i_1_n_0 ;
  wire \tx_data[7]_i_2_n_0 ;
  wire \tx_data_reg_n_0_[0] ;
  wire \tx_data_reg_n_0_[1] ;
  wire \tx_data_reg_n_0_[2] ;
  wire \tx_data_reg_n_0_[3] ;
  wire \tx_data_reg_n_0_[4] ;
  wire \tx_data_reg_n_0_[5] ;
  wire \tx_data_reg_n_0_[6] ;
  wire \tx_data_reg_n_0_[7] ;
  wire [5:0]wait_time;
  wire \wait_time[2]_i_2_n_0 ;
  wire \wait_time[3]_i_1__0_n_0 ;
  wire \wait_time[3]_i_2_n_0 ;
  wire \wait_time[4]_i_2__0_n_0 ;
  wire \wait_time[5]_i_1_n_0 ;
  wire \wait_time[5]_i_3_n_0 ;
  wire \wait_time[5]_i_4_n_0 ;
  wire \wait_time[5]_i_5_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[8]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[9]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[10]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[11]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[12]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[13]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[14]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[15]),
        .Q(addr[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00002E22)) 
    busy_i_1
       (.I0(sccb_busy),
        .I1(busy_i_2_n_0),
        .I2(sccb_done),
        .I3(sccb_start),
        .I4(scl_reg_0),
        .O(busy_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    busy_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(busy_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(CLK),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(sccb_busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \data[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(scl_reg_0),
        .I3(busy0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(addr_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(addr_0),
        .D(Q[7]),
        .Q(data[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h2A)) 
    \i[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[0] ),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \i[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \i[2]_i_1 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003013)) 
    \i[3]_i_1 
       (.I0(\i[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(scl_reg_0),
        .I5(\state_reg_n_0_[1] ),
        .O(i));
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \i[3]_i_2 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\i[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i[3]_i_3 
       (.I0(\i_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .O(\i[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK),
        .CE(i),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK),
        .CE(i),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK),
        .CE(i),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \i_reg[3] 
       (.C(CLK),
        .CE(i),
        .D(\i[3]_i_2_n_0 ),
        .Q(\i_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0F40)) 
    \phase[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(phase),
        .I3(\phase_reg_n_0_[0] ),
        .O(\phase[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h10FF4000)) 
    \phase[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(phase),
        .I4(\phase_reg_n_0_[1] ),
        .O(\phase[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AB)) 
    \phase[1]_i_2 
       (.I0(\wait_time[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\i[3]_i_3_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(scl_reg_0),
        .O(phase));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\phase[0]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\phase[1]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000EE2E)) 
    ready_out_i_1
       (.I0(sccb_ready),
        .I1(busy_i_2_n_0),
        .I2(sccb_start),
        .I3(sccb_done),
        .I4(scl_reg_0),
        .O(ready_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ready_out_i_1_n_0),
        .Q(sccb_ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    reset_reg
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(scl_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2320)) 
    scl_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(scl_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    scl_reg
       (.C(CLK),
        .CE(scl_i_1_n_0),
        .D(\state_reg_n_0_[0] ),
        .Q(scl_OBUF),
        .S(scl_reg_0));
  LUT6 #(
    .INIT(64'hFF20FFF0AAAAAAAA)) 
    sda_out_i_1
       (.I0(sda_OBUF),
        .I1(\i[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(sda_out_i_2_n_0),
        .I5(sda_out1_out),
        .O(sda_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h00033335FFF3333F)) 
    sda_out_i_2
       (.I0(\i_reg_n_0_[3] ),
        .I1(sda_out_i_4_n_0),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(sda_out_i_5_n_0),
        .O(sda_out_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000016)) 
    sda_out_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(scl_reg_0),
        .I4(\state_reg_n_0_[1] ),
        .O(sda_out1_out));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    sda_out_i_4
       (.I0(\tx_data_reg_n_0_[0] ),
        .I1(\tx_data_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\tx_data_reg_n_0_[2] ),
        .I5(\tx_data_reg_n_0_[3] ),
        .O(sda_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    sda_out_i_5
       (.I0(\tx_data_reg_n_0_[4] ),
        .I1(\tx_data_reg_n_0_[5] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\tx_data_reg_n_0_[6] ),
        .I5(\tx_data_reg_n_0_[7] ),
        .O(sda_out_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sda_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda_out_i_1_n_0),
        .Q(sda_OBUF),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFDDDFDF)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_return_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \state[0]_i_8 
       (.I0(\state_reg[0]_1 ),
        .I1(sccb_busy),
        .I2(sccb_ready),
        .O(\state_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \state[1]_i_1 
       (.I0(\state_return_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0C0C0800)) 
    \state[2]_i_1 
       (.I0(\state_return_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000110155551151)) 
    \state[3]_i_1 
       (.I0(scl_reg_0),
        .I1(\state[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\wait_time[5]_i_3_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFBBFC)) 
    \state[3]_i_2 
       (.I0(\state_return_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA1A0A1A1)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(sccb_done),
        .I4(sccb_start),
        .O(\state[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[3]_i_2_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \state_return[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state_return[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \state_return[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state_return[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4000CCCC)) 
    \state_return[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state_return[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11110114)) 
    \state_return[3]_i_1 
       (.I0(scl_reg_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\state_return[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state_return[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state_return[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[0] 
       (.C(CLK),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[0]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[1] 
       (.C(CLK),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[1]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[2] 
       (.C(CLK),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[2]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[3] 
       (.C(CLK),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[3]_i_2_n_0 ),
        .Q(\state_return_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[0]_i_1 
       (.I0(data[0]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[0]),
        .O(\tx_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \tx_data[1]_i_1 
       (.I0(data[1]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(addr[1]),
        .I3(\phase_reg_n_0_[0] ),
        .O(\tx_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[2]_i_1 
       (.I0(data[2]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[2]),
        .O(\tx_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[3]_i_1 
       (.I0(data[3]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[3]),
        .O(\tx_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[4]_i_1 
       (.I0(data[4]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[4]),
        .O(\tx_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[5]_i_1 
       (.I0(data[5]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[5]),
        .O(\tx_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \tx_data[6]_i_1 
       (.I0(data[6]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(addr[6]),
        .I3(\phase_reg_n_0_[0] ),
        .O(\tx_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \tx_data[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(scl_reg_0),
        .O(tx_data));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[7]_i_2 
       (.I0(data[7]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[7]),
        .O(\tx_data[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[0] 
       (.C(CLK),
        .CE(tx_data),
        .D(\tx_data[0]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(CLK),
        .CE(tx_data),
        .D(\tx_data[1]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(CLK),
        .CE(tx_data),
        .D(\tx_data[2]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(CLK),
        .CE(tx_data),
        .D(\tx_data[3]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(CLK),
        .CE(tx_data),
        .D(\tx_data[4]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(CLK),
        .CE(tx_data),
        .D(\tx_data[5]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(CLK),
        .CE(tx_data),
        .D(\tx_data[6]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(CLK),
        .CE(tx_data),
        .D(\tx_data[7]_i_2_n_0 ),
        .Q(\tx_data_reg_n_0_[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF6E)) 
    \wait_time[0]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(sel0__0[0]),
        .I3(\state_reg_n_0_[1] ),
        .O(wait_time[0]));
  LUT6 #(
    .INIT(64'h000000005555D700)) 
    \wait_time[1]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\wait_time[5]_i_5_n_0 ),
        .O(wait_time[1]));
  LUT6 #(
    .INIT(64'hA3A3A303030303A3)) 
    \wait_time[2]_i_1__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\wait_time[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(wait_time[2]));
  LUT4 #(
    .INIT(16'h800F)) 
    \wait_time[2]_i_2 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\wait_time[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4544)) 
    \wait_time[3]_i_1__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\wait_time[3]_i_2_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\wait_time[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFE01000000000000)) 
    \wait_time[3]_i_2 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(sel0__0[3]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\wait_time[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF9F000F)) 
    \wait_time[4]_i_1__0 
       (.I0(sel0__0[4]),
        .I1(\wait_time[4]_i_2__0_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(wait_time[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time[4]_i_2__0 
       (.I0(sel0__0[1]),
        .I1(sel0__0[0]),
        .I2(sel0__0[3]),
        .I3(sel0__0[2]),
        .O(\wait_time[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0300031303030330)) 
    \wait_time[5]_i_1 
       (.I0(\wait_time[5]_i_3_n_0 ),
        .I1(scl_reg_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\wait_time[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000004141FF41)) 
    \wait_time[5]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\wait_time[5]_i_4_n_0 ),
        .I5(\wait_time[5]_i_5_n_0 ),
        .O(wait_time[5]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_time[5]_i_3 
       (.I0(sel0__0[5]),
        .I1(sel0__0[4]),
        .I2(sel0__0[2]),
        .I3(sel0__0[3]),
        .I4(sel0__0[0]),
        .I5(sel0__0[1]),
        .O(\wait_time[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \wait_time[5]_i_4 
       (.I0(sel0__0[5]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(sel0__0[3]),
        .I4(sel0__0[2]),
        .I5(sel0__0[4]),
        .O(\wait_time[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \wait_time[5]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .O(\wait_time[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[0] 
       (.C(CLK),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[0]),
        .Q(sel0__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[1] 
       (.C(CLK),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[1]),
        .Q(sel0__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[2] 
       (.C(CLK),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[2]),
        .Q(sel0__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[3] 
       (.C(CLK),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[3]_i_1__0_n_0 ),
        .Q(sel0__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[4] 
       (.C(CLK),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[4]),
        .Q(sel0__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[5] 
       (.C(CLK),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[5]),
        .Q(sel0__0[5]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "5b9d58ae" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module top
   (sys_clk,
    scl,
    sda);
  input sys_clk;
  output scl;
  inout sda;

  wire busy0;
  wire clk;
  wire clk_BUFG;
  wire config1_n_10;
  wire config1_n_11;
  wire config1_n_12;
  wire config1_n_13;
  wire config1_n_14;
  wire config1_n_15;
  wire config1_n_16;
  wire config1_n_17;
  wire config1_n_18;
  wire config1_n_19;
  wire config1_n_2;
  wire config1_n_4;
  wire config1_n_5;
  wire config1_n_6;
  wire config1_n_7;
  wire config1_n_8;
  wire config1_n_9;
  wire sccb1_n_1;
  wire sccb1_n_3;
  wire sccb_done;
  wire sccb_start;
  wire scl;
  wire scl_OBUF;
  wire sda;
  wire sda_OBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;

initial begin
 $sdf_annotate("top_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_BUFG_inst
       (.I(clk),
        .O(clk_BUFG));
  cam_reg_config config1
       (.CLK(clk_BUFG),
        .Q({config1_n_4,config1_n_5,config1_n_6,config1_n_7,config1_n_8,config1_n_9,config1_n_10,config1_n_11,config1_n_12,config1_n_13,config1_n_14,config1_n_15,config1_n_16,config1_n_17,config1_n_18,config1_n_19}),
        .busy0(busy0),
        .reg_loc_reg_0(config1_n_2),
        .reset_reg(sccb1_n_1),
        .sccb_done(sccb_done),
        .sccb_start(sccb_start),
        .\state_reg[0]_0 (sccb1_n_3));
  clk_div div1
       (.clk(clk),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
  sccb_interface sccb1
       (.CLK(clk_BUFG),
        .Q({config1_n_4,config1_n_5,config1_n_6,config1_n_7,config1_n_8,config1_n_9,config1_n_10,config1_n_11,config1_n_12,config1_n_13,config1_n_14,config1_n_15,config1_n_16,config1_n_17,config1_n_18,config1_n_19}),
        .busy0(busy0),
        .sccb_done(sccb_done),
        .sccb_start(sccb_start),
        .scl_OBUF(scl_OBUF),
        .scl_reg_0(sccb1_n_1),
        .sda_OBUF(sda_OBUF),
        .\state_reg[0]_0 (sccb1_n_3),
        .\state_reg[0]_1 (config1_n_2));
  OBUF scl_OBUF_inst
       (.I(scl_OBUF),
        .O(scl));
  OBUF sda_OBUF_inst
       (.I(sda_OBUF),
        .O(sda));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
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
