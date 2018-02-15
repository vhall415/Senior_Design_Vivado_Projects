// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jan 30 21:28:14 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/vhall/Desktop/senior_design/senior_design.srcs/sources_1/bd/design_1/ip/design_1_sccb_0_0/design_1_sccb_0_0_sim_netlist.v
// Design      : design_1_sccb_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sccb_0_0,sccb,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sccb,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_sccb_0_0
   (clk_in,
    addr_data,
    reg_loc,
    scl,
    sda);
  input clk_in;
  input [15:0]addr_data;
  output [7:0]reg_loc;
  output scl;
  inout sda;

  wire [15:0]addr_data;
  wire clk_in;
  wire [7:0]reg_loc;
  wire scl;
  wire sda;

  design_1_sccb_0_0_sccb inst
       (.addr_data(addr_data),
        .clk_in(clk_in),
        .reg_loc(reg_loc),
        .scl(scl),
        .sda(sda));
endmodule

(* ORIG_REF_NAME = "sccb" *) 
module design_1_sccb_0_0_sccb
   (reg_loc,
    scl,
    sda,
    clk_in,
    addr_data);
  output [7:0]reg_loc;
  output scl;
  inout sda;
  input clk_in;
  input [15:0]addr_data;

  wire [7:0]addr;
  wire [15:0]addr_data;
  wire clk_in;
  wire [7:0]data;
  wire data_0;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[3]_i_2_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire [7:0]p_0_in;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[1]_i_3_n_0 ;
  wire \phase_reg_n_0_[0] ;
  wire \phase_reg_n_0_[1] ;
  wire ready;
  wire ready_i_1_n_0;
  wire [7:0]reg_loc;
  wire \reg_loc[7]_i_1_n_0 ;
  wire \reg_loc_val[7]_i_1_n_0 ;
  wire \reg_loc_val[7]_i_3_n_0 ;
  wire [7:0]reg_loc_val_reg__0;
  wire scl;
  wire scl_i_1_n_0;
  wire sda;
  wire sda_out1__2;
  wire sda_out_i_1_n_0;
  wire sda_out_i_2_n_0;
  wire sda_out_i_3_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire sda_out_i_6_n_0;
  wire state0__10;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[3]_i_6_n_0 ;
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
  wire [7:0]tx_data;
  wire \tx_data[0]_i_1_n_0 ;
  wire \tx_data[1]_i_1_n_0 ;
  wire \tx_data[2]_i_1_n_0 ;
  wire \tx_data[3]_i_1_n_0 ;
  wire \tx_data[4]_i_1_n_0 ;
  wire \tx_data[5]_i_1_n_0 ;
  wire \tx_data[6]_i_1_n_0 ;
  wire \tx_data[7]_i_1_n_0 ;
  wire \tx_data[7]_i_2_n_0 ;
  wire [5:0]wait_time;
  wire \wait_time[0]_i_1_n_0 ;
  wire \wait_time[1]_i_1_n_0 ;
  wire \wait_time[2]_i_1_n_0 ;
  wire \wait_time[2]_i_2_n_0 ;
  wire \wait_time[3]_i_1_n_0 ;
  wire \wait_time[3]_i_2_n_0 ;
  wire \wait_time[4]_i_1_n_0 ;
  wire \wait_time[5]_i_1_n_0 ;
  wire \wait_time[5]_i_2_n_0 ;
  wire \wait_time[5]_i_3_n_0 ;
  wire \wait_time[5]_i_4_n_0 ;
  wire \wait_time[5]_i_5_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[8]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[9]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[10]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[11]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[12]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[13]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[14]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[15]),
        .Q(addr[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \data[7]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .O(data_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_in),
        .CE(data_0),
        .D(addr_data[7]),
        .Q(data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \i[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[0] ),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF0000FE)) 
    \i[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[3] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[1] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFF0000E)) 
    \i[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .O(\i[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0024)) 
    \i[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \i[3]_i_2 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[3] ),
        .O(\i[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk_in),
        .CE(\i[3]_i_1_n_0 ),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk_in),
        .CE(\i[3]_i_1_n_0 ),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk_in),
        .CE(\i[3]_i_1_n_0 ),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \i_reg[3] 
       (.C(clk_in),
        .CE(\i[3]_i_1_n_0 ),
        .D(\i[3]_i_2_n_0 ),
        .Q(\i_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAA22AAAAAAA5AA)) 
    \phase[0]_i_1 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(\phase_reg_n_0_[1] ),
        .I2(sda_out1__2),
        .I3(\phase[1]_i_3_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\phase[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC44CCCCCCC6CC)) 
    \phase[1]_i_1 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(\phase_reg_n_0_[1] ),
        .I2(sda_out1__2),
        .I3(\phase[1]_i_3_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\phase[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \phase[1]_i_2 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[3] ),
        .O(sda_out1__2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \phase[1]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\phase[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\phase[0]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\phase[1]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020002)) 
    ready_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state0__10),
        .I5(ready),
        .O(ready_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ready_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(ready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \reg_loc[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\reg_loc[7]_i_1_n_0 ));
  FDRE \reg_loc_reg[0] 
       (.C(clk_in),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(reg_loc_val_reg__0[0]),
        .Q(reg_loc[0]),
        .R(1'b0));
  FDRE \reg_loc_reg[1] 
       (.C(clk_in),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(reg_loc_val_reg__0[1]),
        .Q(reg_loc[1]),
        .R(1'b0));
  FDRE \reg_loc_reg[2] 
       (.C(clk_in),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(reg_loc_val_reg__0[2]),
        .Q(reg_loc[2]),
        .R(1'b0));
  FDRE \reg_loc_reg[3] 
       (.C(clk_in),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(reg_loc_val_reg__0[3]),
        .Q(reg_loc[3]),
        .R(1'b0));
  FDRE \reg_loc_reg[4] 
       (.C(clk_in),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(reg_loc_val_reg__0[4]),
        .Q(reg_loc[4]),
        .R(1'b0));
  FDRE \reg_loc_reg[5] 
       (.C(clk_in),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(reg_loc_val_reg__0[5]),
        .Q(reg_loc[5]),
        .R(1'b0));
  FDRE \reg_loc_reg[6] 
       (.C(clk_in),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(reg_loc_val_reg__0[6]),
        .Q(reg_loc[6]),
        .R(1'b0));
  FDRE \reg_loc_reg[7] 
       (.C(clk_in),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(reg_loc_val_reg__0[7]),
        .Q(reg_loc[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \reg_loc_val[0]_i_1 
       (.I0(reg_loc_val_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_loc_val[1]_i_1 
       (.I0(reg_loc_val_reg__0[0]),
        .I1(reg_loc_val_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reg_loc_val[2]_i_1 
       (.I0(reg_loc_val_reg__0[0]),
        .I1(reg_loc_val_reg__0[1]),
        .I2(reg_loc_val_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reg_loc_val[3]_i_1 
       (.I0(reg_loc_val_reg__0[2]),
        .I1(reg_loc_val_reg__0[1]),
        .I2(reg_loc_val_reg__0[0]),
        .I3(reg_loc_val_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \reg_loc_val[4]_i_1 
       (.I0(reg_loc_val_reg__0[3]),
        .I1(reg_loc_val_reg__0[0]),
        .I2(reg_loc_val_reg__0[1]),
        .I3(reg_loc_val_reg__0[2]),
        .I4(reg_loc_val_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \reg_loc_val[5]_i_1 
       (.I0(reg_loc_val_reg__0[2]),
        .I1(reg_loc_val_reg__0[1]),
        .I2(reg_loc_val_reg__0[0]),
        .I3(reg_loc_val_reg__0[3]),
        .I4(reg_loc_val_reg__0[4]),
        .I5(reg_loc_val_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \reg_loc_val[6]_i_1 
       (.I0(\reg_loc_val[7]_i_3_n_0 ),
        .I1(reg_loc_val_reg__0[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \reg_loc_val[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state0__10),
        .O(\reg_loc_val[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \reg_loc_val[7]_i_2 
       (.I0(reg_loc_val_reg__0[6]),
        .I1(\reg_loc_val[7]_i_3_n_0 ),
        .I2(reg_loc_val_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \reg_loc_val[7]_i_3 
       (.I0(reg_loc_val_reg__0[5]),
        .I1(reg_loc_val_reg__0[2]),
        .I2(reg_loc_val_reg__0[1]),
        .I3(reg_loc_val_reg__0[0]),
        .I4(reg_loc_val_reg__0[3]),
        .I5(reg_loc_val_reg__0[4]),
        .O(\reg_loc_val[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_val_reg[0] 
       (.C(clk_in),
        .CE(\reg_loc_val[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(reg_loc_val_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_val_reg[1] 
       (.C(clk_in),
        .CE(\reg_loc_val[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(reg_loc_val_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_val_reg[2] 
       (.C(clk_in),
        .CE(\reg_loc_val[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(reg_loc_val_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_val_reg[3] 
       (.C(clk_in),
        .CE(\reg_loc_val[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(reg_loc_val_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_val_reg[4] 
       (.C(clk_in),
        .CE(\reg_loc_val[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(reg_loc_val_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_val_reg[5] 
       (.C(clk_in),
        .CE(\reg_loc_val[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(reg_loc_val_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_val_reg[6] 
       (.C(clk_in),
        .CE(\reg_loc_val[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(reg_loc_val_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_val_reg[7] 
       (.C(clk_in),
        .CE(\reg_loc_val[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(reg_loc_val_reg__0[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFCF0088)) 
    scl_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(scl),
        .O(scl_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    scl_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(scl_i_1_n_0),
        .Q(scl),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0134FECB0000)) 
    sda_out_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(sda),
        .I5(sda_out_i_2_n_0),
        .O(sda_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0E000400)) 
    sda_out_i_2
       (.I0(sda_out_i_3_n_0),
        .I1(sda_out_i_4_n_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(sda_out1__2),
        .I4(sda_out_i_5_n_0),
        .I5(sda_out_i_6_n_0),
        .O(sda_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    sda_out_i_3
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(sda_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    sda_out_i_4
       (.I0(\tx_data[2]_i_1_n_0 ),
        .I1(\tx_data[3]_i_1_n_0 ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\tx_data[0]_i_1_n_0 ),
        .I5(\tx_data[1]_i_1_n_0 ),
        .O(sda_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    sda_out_i_5
       (.I0(\tx_data[6]_i_1_n_0 ),
        .I1(\tx_data[7]_i_2_n_0 ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\tx_data[4]_i_1_n_0 ),
        .I5(\tx_data[5]_i_1_n_0 ),
        .O(sda_out_i_5_n_0));
  LUT6 #(
    .INIT(64'h2100FFFF21000000)) 
    sda_out_i_6
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(sda_out_i_6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sda_out_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(sda_out_i_1_n_0),
        .Q(sda),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \state[0]_i_1 
       (.I0(\state[3]_i_4_n_0 ),
        .I1(\state_return_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_return_reg_n_0_[1] ),
        .I2(\state[3]_i_4_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_return_reg_n_0_[2] ),
        .I2(\state[3]_i_4_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11FF11FE)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(state0__10),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFF0)) 
    \state[3]_i_2 
       (.I0(\state[3]_i_4_n_0 ),
        .I1(\state_return_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00001F0000000000)) 
    \state[3]_i_3 
       (.I0(reg_loc_val_reg__0[4]),
        .I1(reg_loc_val_reg__0[5]),
        .I2(reg_loc_val_reg__0[6]),
        .I3(ready),
        .I4(reg_loc_val_reg__0[7]),
        .I5(\state[3]_i_5_n_0 ),
        .O(state0__10));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \state[3]_i_4 
       (.I0(\state[3]_i_6_n_0 ),
        .I1(wait_time[4]),
        .I2(\state_reg_n_0_[0] ),
        .I3(wait_time[1]),
        .I4(wait_time[2]),
        .I5(wait_time[5]),
        .O(\state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7777777F)) 
    \state[3]_i_5 
       (.I0(reg_loc_val_reg__0[3]),
        .I1(reg_loc_val_reg__0[6]),
        .I2(reg_loc_val_reg__0[0]),
        .I3(reg_loc_val_reg__0[1]),
        .I4(reg_loc_val_reg__0[2]),
        .O(\state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \state[3]_i_6 
       (.I0(wait_time[5]),
        .I1(wait_time[3]),
        .I2(wait_time[4]),
        .I3(wait_time[2]),
        .I4(wait_time[0]),
        .I5(wait_time[1]),
        .O(\state[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_in),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_in),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_in),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_in),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[3]_i_2_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08F00F00)) 
    \state_return[0]_i_1 
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state_return[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FF8000)) 
    \state_return[1]_i_1 
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state_return[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7A)) 
    \state_return[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state_return[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FE)) 
    \state_return[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\state_return[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \state_return[3]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\state_return[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[0] 
       (.C(clk_in),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[0]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[1] 
       (.C(clk_in),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[1]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[2] 
       (.C(clk_in),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[2]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[3] 
       (.C(clk_in),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[3]_i_2_n_0 ),
        .Q(\state_return_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \tx_data[0]_i_1 
       (.I0(addr[0]),
        .I1(data[0]),
        .I2(tx_data[0]),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(\tx_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \tx_data[1]_i_1 
       (.I0(addr[1]),
        .I1(data[1]),
        .I2(tx_data[1]),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(\tx_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCF0AAFF)) 
    \tx_data[2]_i_1 
       (.I0(data[2]),
        .I1(tx_data[2]),
        .I2(addr[2]),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(\tx_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \tx_data[3]_i_1 
       (.I0(addr[3]),
        .I1(data[3]),
        .I2(tx_data[3]),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(\tx_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \tx_data[4]_i_1 
       (.I0(addr[4]),
        .I1(data[4]),
        .I2(tx_data[4]),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(\tx_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \tx_data[5]_i_1 
       (.I0(addr[5]),
        .I1(data[5]),
        .I2(tx_data[5]),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(\tx_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \tx_data[6]_i_1 
       (.I0(addr[6]),
        .I1(data[6]),
        .I2(tx_data[6]),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(\tx_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \tx_data[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\tx_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCF0AAFF)) 
    \tx_data[7]_i_2 
       (.I0(data[7]),
        .I1(tx_data[7]),
        .I2(addr[7]),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(\tx_data[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[0] 
       (.C(clk_in),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[0]_i_1_n_0 ),
        .Q(tx_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(clk_in),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[1]_i_1_n_0 ),
        .Q(tx_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(clk_in),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[2]_i_1_n_0 ),
        .Q(tx_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(clk_in),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[3]_i_1_n_0 ),
        .Q(tx_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(clk_in),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[4]_i_1_n_0 ),
        .Q(tx_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(clk_in),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[5]_i_1_n_0 ),
        .Q(tx_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(clk_in),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[6]_i_1_n_0 ),
        .Q(tx_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(clk_in),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[7]_i_2_n_0 ),
        .Q(tx_data[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F40)) 
    \wait_time[0]_i_1 
       (.I0(wait_time[0]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\wait_time[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3C3C3F3D3D3F3)) 
    \wait_time[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(wait_time[1]),
        .I4(wait_time[0]),
        .I5(\state_reg_n_0_[1] ),
        .O(\wait_time[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAFA)) 
    \wait_time[2]_i_1 
       (.I0(\wait_time[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(wait_time[0]),
        .I4(wait_time[1]),
        .I5(wait_time[2]),
        .O(\wait_time[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF5333355553333)) 
    \wait_time[2]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(wait_time[0]),
        .I3(wait_time[1]),
        .I4(\state_reg_n_0_[0] ),
        .I5(wait_time[2]),
        .O(\wait_time[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF22FEEEE2222EEEE)) 
    \wait_time[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(wait_time[3]),
        .I3(\wait_time[3]_i_2_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\wait_time[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \wait_time[3]_i_2 
       (.I0(wait_time[1]),
        .I1(wait_time[2]),
        .I2(wait_time[0]),
        .O(\wait_time[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF9FF000F)) 
    \wait_time[4]_i_1 
       (.I0(wait_time[4]),
        .I1(\wait_time[5]_i_4_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\wait_time[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF44F8)) 
    \wait_time[5]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\wait_time[5]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\wait_time[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFD005700)) 
    \wait_time[5]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\wait_time[5]_i_4_n_0 ),
        .I2(wait_time[4]),
        .I3(\state_reg_n_0_[3] ),
        .I4(wait_time[5]),
        .O(\wait_time[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \wait_time[5]_i_3 
       (.I0(wait_time[5]),
        .I1(\wait_time[5]_i_5_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(wait_time[4]),
        .I4(wait_time[3]),
        .I5(wait_time[0]),
        .O(\wait_time[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time[5]_i_4 
       (.I0(wait_time[0]),
        .I1(wait_time[2]),
        .I2(wait_time[1]),
        .I3(wait_time[3]),
        .O(\wait_time[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time[5]_i_5 
       (.I0(wait_time[2]),
        .I1(wait_time[1]),
        .O(\wait_time[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[0] 
       (.C(clk_in),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[0]_i_1_n_0 ),
        .Q(wait_time[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[1] 
       (.C(clk_in),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[1]_i_1_n_0 ),
        .Q(wait_time[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[2] 
       (.C(clk_in),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[2]_i_1_n_0 ),
        .Q(wait_time[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[3] 
       (.C(clk_in),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[3]_i_1_n_0 ),
        .Q(wait_time[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[4] 
       (.C(clk_in),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[4]_i_1_n_0 ),
        .Q(wait_time[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[5] 
       (.C(clk_in),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[5]_i_2_n_0 ),
        .Q(wait_time[5]),
        .R(1'b0));
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
