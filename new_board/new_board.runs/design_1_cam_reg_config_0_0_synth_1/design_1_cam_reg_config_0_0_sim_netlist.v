// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb  9 02:39:22 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cam_reg_config_0_0_sim_netlist.v
// Design      : design_1_cam_reg_config_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_reg_config
   (reg_loc,
    addr_data,
    sccb_start,
    done,
    reset,
    clk,
    reg_data,
    sccb_busy,
    sccb_ready);
  output [7:0]reg_loc;
  output [15:0]addr_data;
  output sccb_start;
  output done;
  input reset;
  input clk;
  input [15:0]reg_data;
  input sccb_busy;
  input sccb_ready;

  wire [15:0]addr_data;
  wire \addr_data[15]_i_1_n_0 ;
  wire \addr_data[15]_i_2_n_0 ;
  wire \addr_data[15]_i_3_n_0 ;
  wire clk;
  wire done;
  wire done_i_1_n_0;
  wire loc;
  wire \loc[7]_i_3_n_0 ;
  wire [7:0]loc_reg__0;
  wire [7:0]p_0_in;
  wire [15:0]reg_data;
  wire [7:0]reg_loc;
  wire \reg_loc[7]_i_1_n_0 ;
  wire reset;
  wire sccb_busy;
  wire sccb_ready;
  wire sccb_start;
  wire sccb_start_i_1_n_0;
  wire sccb_start_i_2_n_0;
  wire sccb_start_i_3_n_0;
  wire sccb_start_i_4_n_0;
  wire sccb_start_i_5_n_0;
  wire sccb_start_i_6_n_0;
  wire sccb_start_i_7_n_0;
  wire [7:0]sel0;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire wait_time;
  wire \wait_time[0]_i_1_n_0 ;
  wire \wait_time[1]_i_1_n_0 ;
  wire \wait_time[2]_i_1_n_0 ;
  wire \wait_time[3]_i_1_n_0 ;
  wire \wait_time[4]_i_1_n_0 ;
  wire \wait_time[4]_i_2_n_0 ;
  wire \wait_time[5]_i_1_n_0 ;
  wire \wait_time[6]_i_1_n_0 ;
  wire \wait_time[7]_i_2_n_0 ;
  wire \wait_time[7]_i_3_n_0 ;

  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAA8)) 
    \addr_data[15]_i_1 
       (.I0(\addr_data[15]_i_2_n_0 ),
        .I1(\addr_data[15]_i_3_n_0 ),
        .I2(reg_data[1]),
        .I3(reg_data[2]),
        .I4(reg_data[0]),
        .I5(reg_data[3]),
        .O(\addr_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_data[15]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\addr_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \addr_data[15]_i_3 
       (.I0(sccb_start_i_5_n_0),
        .I1(reg_data[9]),
        .I2(reg_data[4]),
        .I3(reg_data[10]),
        .I4(reg_data[11]),
        .I5(sccb_start_i_7_n_0),
        .O(\addr_data[15]_i_3_n_0 ));
  FDRE \addr_data_reg[0] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[0]),
        .Q(addr_data[0]),
        .R(reset));
  FDRE \addr_data_reg[10] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[10]),
        .Q(addr_data[10]),
        .R(reset));
  FDRE \addr_data_reg[11] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[11]),
        .Q(addr_data[11]),
        .R(reset));
  FDRE \addr_data_reg[12] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[12]),
        .Q(addr_data[12]),
        .R(reset));
  FDRE \addr_data_reg[13] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[13]),
        .Q(addr_data[13]),
        .R(reset));
  FDRE \addr_data_reg[14] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[14]),
        .Q(addr_data[14]),
        .R(reset));
  FDRE \addr_data_reg[15] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[15]),
        .Q(addr_data[15]),
        .R(reset));
  FDRE \addr_data_reg[1] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[1]),
        .Q(addr_data[1]),
        .R(reset));
  FDRE \addr_data_reg[2] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[2]),
        .Q(addr_data[2]),
        .R(reset));
  FDRE \addr_data_reg[3] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[3]),
        .Q(addr_data[3]),
        .R(reset));
  FDRE \addr_data_reg[4] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[4]),
        .Q(addr_data[4]),
        .R(reset));
  FDRE \addr_data_reg[5] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[5]),
        .Q(addr_data[5]),
        .R(reset));
  FDRE \addr_data_reg[6] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[6]),
        .Q(addr_data[6]),
        .R(reset));
  FDRE \addr_data_reg[7] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[7]),
        .Q(addr_data[7]),
        .R(reset));
  FDRE \addr_data_reg[8] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[8]),
        .Q(addr_data[8]),
        .R(reset));
  FDRE \addr_data_reg[9] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[9]),
        .Q(addr_data[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    done_i_1
       (.I0(done),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(reset),
        .O(done_i_1_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done),
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \loc[3]_i_1 
       (.I0(loc_reg__0[1]),
        .I1(loc_reg__0[0]),
        .I2(loc_reg__0[2]),
        .I3(loc_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
    .INIT(16'h0008)) 
    \loc[7]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(reset),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
       (.C(clk),
        .CE(loc),
        .D(p_0_in[0]),
        .Q(loc_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[1] 
       (.C(clk),
        .CE(loc),
        .D(p_0_in[1]),
        .Q(loc_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[2] 
       (.C(clk),
        .CE(loc),
        .D(p_0_in[2]),
        .Q(loc_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[3] 
       (.C(clk),
        .CE(loc),
        .D(p_0_in[3]),
        .Q(loc_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[4] 
       (.C(clk),
        .CE(loc),
        .D(p_0_in[4]),
        .Q(loc_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[5] 
       (.C(clk),
        .CE(loc),
        .D(p_0_in[5]),
        .Q(loc_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[6] 
       (.C(clk),
        .CE(loc),
        .D(p_0_in[6]),
        .Q(loc_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[7] 
       (.C(clk),
        .CE(loc),
        .D(p_0_in[7]),
        .Q(loc_reg__0[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_loc[7]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\reg_loc[7]_i_1_n_0 ));
  FDRE \reg_loc_reg[0] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[0]),
        .Q(reg_loc[0]),
        .R(reset));
  FDRE \reg_loc_reg[1] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[1]),
        .Q(reg_loc[1]),
        .R(reset));
  FDRE \reg_loc_reg[2] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[2]),
        .Q(reg_loc[2]),
        .R(reset));
  FDRE \reg_loc_reg[3] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[3]),
        .Q(reg_loc[3]),
        .R(reset));
  FDRE \reg_loc_reg[4] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[4]),
        .Q(reg_loc[4]),
        .R(reset));
  FDRE \reg_loc_reg[5] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[5]),
        .Q(reg_loc[5]),
        .R(reset));
  FDRE \reg_loc_reg[6] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[6]),
        .Q(reg_loc[6]),
        .R(reset));
  FDRE \reg_loc_reg[7] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[7]),
        .Q(reg_loc[7]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000AA8C)) 
    sccb_start_i_1
       (.I0(sccb_start),
        .I1(\state_reg_n_0_[0] ),
        .I2(sccb_start_i_2_n_0),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset),
        .O(sccb_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000B0000)) 
    sccb_start_i_2
       (.I0(sccb_start_i_3_n_0),
        .I1(sccb_start_i_4_n_0),
        .I2(sccb_start_i_5_n_0),
        .I3(sccb_start_i_6_n_0),
        .I4(sccb_start_i_7_n_0),
        .O(sccb_start_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    sccb_start_i_3
       (.I0(reg_data[1]),
        .I1(reg_data[0]),
        .I2(reg_data[2]),
        .I3(reg_data[3]),
        .O(sccb_start_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sccb_start_i_4
       (.I0(reg_data[3]),
        .I1(reg_data[0]),
        .I2(reg_data[2]),
        .I3(reg_data[1]),
        .O(sccb_start_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    sccb_start_i_5
       (.I0(reg_data[13]),
        .I1(reg_data[15]),
        .I2(reg_data[12]),
        .I3(reg_data[6]),
        .O(sccb_start_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    sccb_start_i_6
       (.I0(reg_data[9]),
        .I1(reg_data[4]),
        .I2(reg_data[10]),
        .I3(reg_data[11]),
        .O(sccb_start_i_6_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    sccb_start_i_7
       (.I0(reg_data[14]),
        .I1(reg_data[8]),
        .I2(reg_data[7]),
        .I3(reg_data[5]),
        .O(sccb_start_i_7_n_0));
  FDRE sccb_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(sccb_start_i_1_n_0),
        .Q(sccb_start),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F50)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(state),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \state[0]_i_2 
       (.I0(sccb_start_i_7_n_0),
        .I1(sccb_start_i_6_n_0),
        .I2(sccb_start_i_5_n_0),
        .I3(sccb_start_i_3_n_0),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000002000000AAAA)) 
    \state[0]_i_3 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(\state[0]_i_5_n_0 ),
        .I2(\wait_time[7]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(reset),
        .I5(\state_reg_n_0_[1] ),
        .O(state));
  LUT3 #(
    .INIT(8'hBA)) 
    \state[0]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(sccb_busy),
        .I2(sccb_ready),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_5 
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF70C)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(reset),
        .I3(\state_reg_n_0_[1] ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wait_time[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[0]),
        .O(\wait_time[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \wait_time[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\wait_time[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
       (.I0(sccb_start_i_7_n_0),
        .I1(sccb_start_i_6_n_0),
        .I2(sccb_start_i_5_n_0),
        .I3(sccb_start_i_4_n_0),
        .O(\wait_time[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE1FF)) 
    \wait_time[5]_i_1 
       (.I0(sel0[4]),
        .I1(\wait_time[7]_i_3_n_0 ),
        .I2(sel0[5]),
        .I3(\state_reg_n_0_[1] ),
        .O(\wait_time[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
    .INIT(32'h00000A88)) 
    \wait_time[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reset),
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
       (.C(clk),
        .CE(wait_time),
        .D(\wait_time[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[1] 
       (.C(clk),
        .CE(wait_time),
        .D(\wait_time[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[2] 
       (.C(clk),
        .CE(wait_time),
        .D(\wait_time[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[3] 
       (.C(clk),
        .CE(wait_time),
        .D(\wait_time[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[4] 
       (.C(clk),
        .CE(wait_time),
        .D(\wait_time[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[5] 
       (.C(clk),
        .CE(wait_time),
        .D(\wait_time[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[6] 
       (.C(clk),
        .CE(wait_time),
        .D(\wait_time[6]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[7] 
       (.C(clk),
        .CE(wait_time),
        .D(\wait_time[7]_i_2_n_0 ),
        .Q(sel0[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_cam_reg_config_0_0,cam_reg_config,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cam_reg_config,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    sccb_busy,
    sccb_ready,
    reg_data,
    done,
    sccb_start,
    reg_loc,
    addr_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  input sccb_busy;
  input sccb_ready;
  input [15:0]reg_data;
  output done;
  output sccb_start;
  output [7:0]reg_loc;
  output [15:0]addr_data;

  wire [15:0]addr_data;
  wire clk;
  wire done;
  wire [15:0]reg_data;
  wire [7:0]reg_loc;
  wire reset;
  wire sccb_busy;
  wire sccb_ready;
  wire sccb_start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_reg_config inst
       (.addr_data(addr_data),
        .clk(clk),
        .done(done),
        .reg_data(reg_data),
        .reg_loc(reg_loc),
        .reset(reset),
        .sccb_busy(sccb_busy),
        .sccb_ready(sccb_ready),
        .sccb_start(sccb_start));
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
