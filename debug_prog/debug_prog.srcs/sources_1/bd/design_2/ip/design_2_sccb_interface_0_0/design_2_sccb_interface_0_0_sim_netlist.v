// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Feb  8 14:07:53 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/vhall/Desktop/debug_prog/debug_prog.srcs/sources_1/bd/design_2/ip/design_2_sccb_interface_0_0/design_2_sccb_interface_0_0_sim_netlist.v
// Design      : design_2_sccb_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_sccb_interface_0_0,sccb_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sccb_interface,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_2_sccb_interface_0_0
   (clk,
    start,
    done,
    addr_data,
    busy,
    ready_out,
    scl,
    sda);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 24000000, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0" *) input clk;
  input start;
  input done;
  input [15:0]addr_data;
  output busy;
  output ready_out;
  output scl;
  inout sda;

  wire [15:0]addr_data;
  wire busy;
  wire clk;
  wire done;
  wire ready_out;
  wire scl;
  wire sda;
  wire start;

  design_2_sccb_interface_0_0_sccb_interface inst
       (.addr_data(addr_data),
        .busy(busy),
        .clk(clk),
        .done(done),
        .ready_out(ready_out),
        .scl(scl),
        .sda(sda),
        .start(start));
endmodule

(* ORIG_REF_NAME = "sccb_interface" *) 
module design_2_sccb_interface_0_0_sccb_interface
   (scl,
    ready_out,
    busy,
    sda,
    start,
    done,
    clk,
    addr_data);
  output scl;
  output ready_out;
  output busy;
  inout sda;
  input start;
  input done;
  input clk;
  input [15:0]addr_data;

  wire [7:0]addr;
  wire [15:0]addr_data;
  wire busy;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire clk;
  wire [7:0]data;
  wire data_0;
  wire done;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[3]_i_2_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire [7:0]p_1_in;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[1]_i_2_n_0 ;
  wire \phase[1]_i_3_n_0 ;
  wire \phase_reg_n_0_[0] ;
  wire \phase_reg_n_0_[1] ;
  wire ready_out;
  wire ready_out_i_1_n_0;
  wire scl;
  wire scl_i_1_n_0;
  wire sda;
  wire sda_out_i_1_n_0;
  wire sda_out_i_2_n_0;
  wire sda_out_i_3_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire [5:0]sel0;
  wire start;
  wire [3:0]state;
  wire state0;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire [3:0]state_return;
  wire \state_return[0]_i_1_n_0 ;
  wire \state_return[1]_i_1_n_0 ;
  wire \state_return[2]_i_1_n_0 ;
  wire \state_return[3]_i_1_n_0 ;
  wire \state_return[3]_i_2_n_0 ;
  wire [7:0]tx_data;
  wire \tx_data[7]_i_1_n_0 ;
  wire [5:0]wait_time;
  wire \wait_time[2]_i_2_n_0 ;
  wire \wait_time[3]_i_1_n_0 ;
  wire \wait_time[3]_i_2_n_0 ;
  wire \wait_time[4]_i_2_n_0 ;
  wire \wait_time[5]_i_1_n_0 ;
  wire \wait_time[5]_i_3_n_0 ;
  wire \wait_time[5]_i_4_n_0 ;
  wire \wait_time[5]_i_5_n_0 ;
  wire \wait_time[5]_i_6_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[8]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[9]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[10]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[11]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[12]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[13]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[14]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[15]),
        .Q(addr[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    busy_i_1
       (.I0(busy_i_2_n_0),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(busy),
        .O(busy_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    busy_i_2
       (.I0(start),
        .I1(done),
        .O(busy_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \data[7]_i_1 
       (.I0(done),
        .I1(start),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[3]),
        .O(data_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk),
        .CE(data_0),
        .D(addr_data[7]),
        .Q(data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \i[0]_i_1 
       (.I0(state[2]),
        .I1(\i_reg_n_0_[0] ),
        .I2(state[0]),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \i[1]_i_1 
       (.I0(state[0]),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8882)) 
    \i[2]_i_1 
       (.I0(state[0]),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .O(\i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10011101)) 
    \i[3]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\phase[1]_i_3_n_0 ),
        .O(\i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDDDDDDD7)) 
    \i[3]_i_2 
       (.I0(state[0]),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .O(\i[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(\i[3]_i_1_n_0 ),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(\i[3]_i_1_n_0 ),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(\i[3]_i_1_n_0 ),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \i_reg[3] 
       (.C(clk),
        .CE(\i[3]_i_1_n_0 ),
        .D(\i[3]_i_2_n_0 ),
        .Q(\i_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5FD5FFD500200020)) 
    \phase[0]_i_1 
       (.I0(\phase[1]_i_2_n_0 ),
        .I1(\phase[1]_i_3_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\phase_reg_n_0_[1] ),
        .I5(\phase_reg_n_0_[0] ),
        .O(\phase[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5FD50020FFF50000)) 
    \phase[1]_i_1 
       (.I0(\phase[1]_i_2_n_0 ),
        .I1(\phase[1]_i_3_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\phase_reg_n_0_[1] ),
        .I5(\phase_reg_n_0_[0] ),
        .O(\phase[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \phase[1]_i_2 
       (.I0(state[3]),
        .I1(state[0]),
        .O(\phase[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \phase[1]_i_3 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[3] ),
        .O(\phase[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[0]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    ready_out_i_1
       (.I0(busy_i_2_n_0),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(ready_out),
        .O(ready_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_out_i_1_n_0),
        .Q(ready_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFDD00C0)) 
    scl_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(scl),
        .O(scl_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    scl_reg
       (.C(clk),
        .CE(1'b1),
        .D(scl_i_1_n_0),
        .Q(scl),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0016FFE90000)) 
    sda_out_i_1
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(sda),
        .I5(sda_out_i_2_n_0),
        .O(sda_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEEAAAEAAAAAAAAA)) 
    sda_out_i_2
       (.I0(state[3]),
        .I1(\phase[1]_i_3_n_0 ),
        .I2(sda_out_i_3_n_0),
        .I3(sda_out_i_4_n_0),
        .I4(sda_out_i_5_n_0),
        .I5(state[2]),
        .O(sda_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_3
       (.I0(tx_data[4]),
        .I1(tx_data[5]),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(tx_data[6]),
        .I5(tx_data[7]),
        .O(sda_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    sda_out_i_4
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[2] ),
        .O(sda_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_5
       (.I0(tx_data[0]),
        .I1(tx_data[1]),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(tx_data[2]),
        .I5(tx_data[3]),
        .O(sda_out_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sda_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(sda_out_i_1_n_0),
        .Q(sda),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFDFDDDF)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state_return[0]),
        .O(\state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \state[1]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state_return[1]),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h54440000)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state_return[2]),
        .I3(state[3]),
        .I4(state[0]),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00050505FFFFFEFE)) 
    \state[3]_i_1 
       (.I0(state[1]),
        .I1(busy_i_2_n_0),
        .I2(state[2]),
        .I3(\state[3]_i_3_n_0 ),
        .I4(state[0]),
        .I5(state[3]),
        .O(state0));
  LUT5 #(
    .INIT(32'hB8BBFFFC)) 
    \state[3]_i_2 
       (.I0(state_return[3]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[3]_i_3 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[2]),
        .O(\state[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk),
        .CE(state0),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(state0),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(state0),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(clk),
        .CE(state0),
        .D(\state[3]_i_2_n_0 ),
        .Q(state[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state_return[0]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .O(\state_return[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_return[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\state_return[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2A222222)) 
    \state_return[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg_n_0_[1] ),
        .O(\state_return[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01BE)) 
    \state_return[3]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .O(\state_return[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state_return[3]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\state_return[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[0] 
       (.C(clk),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[0]_i_1_n_0 ),
        .Q(state_return[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[1] 
       (.C(clk),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[1]_i_1_n_0 ),
        .Q(state_return[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[2] 
       (.C(clk),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[2]_i_1_n_0 ),
        .Q(state_return[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[3] 
       (.C(clk),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[3]_i_2_n_0 ),
        .Q(state_return[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[0]_i_1 
       (.I0(data[0]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hF0DD)) 
    \tx_data[1]_i_1 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(addr[1]),
        .I2(data[1]),
        .I3(\phase_reg_n_0_[1] ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[2]_i_1 
       (.I0(data[2]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[2]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[3]_i_1 
       (.I0(data[3]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[3]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[4]_i_1 
       (.I0(data[4]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[4]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[5]_i_1 
       (.I0(data[5]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[5]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hF0DD)) 
    \tx_data[6]_i_1 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(addr[6]),
        .I2(data[6]),
        .I3(\phase_reg_n_0_[1] ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'h1000)) 
    \tx_data[7]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\tx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \tx_data[7]_i_2 
       (.I0(data[7]),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(addr[7]),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[0] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(tx_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(tx_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(tx_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(tx_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(tx_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(tx_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(tx_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(tx_data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBEFE)) 
    \wait_time[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(sel0[0]),
        .O(wait_time[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8200)) 
    \wait_time[1]_i_1 
       (.I0(state[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(state[0]),
        .O(wait_time[1]));
  LUT6 #(
    .INIT(64'hFFFF7FF000007FF0)) 
    \wait_time[2]_i_1 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(\phase_reg_n_0_[1] ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\wait_time[2]_i_2_n_0 ),
        .O(wait_time[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8882)) 
    \wait_time[2]_i_2 
       (.I0(state[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\wait_time[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E22E2222)) 
    \wait_time[3]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\wait_time[3]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(state[3]),
        .I5(state[1]),
        .O(\wait_time[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \wait_time[3]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\wait_time[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFDDF1111)) 
    \wait_time[4]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(sel0[4]),
        .I3(\wait_time[4]_i_2_n_0 ),
        .I4(state[0]),
        .O(wait_time[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time[4]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\wait_time[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0F0F00EE0FF0)) 
    \wait_time[5]_i_1 
       (.I0(\wait_time[5]_i_3_n_0 ),
        .I1(\wait_time[5]_i_4_n_0 ),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(\wait_time[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1003100355FF1003)) 
    \wait_time[5]_i_2 
       (.I0(\wait_time[5]_i_5_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(\wait_time[5]_i_6_n_0 ),
        .O(wait_time[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \wait_time[5]_i_3 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .O(\wait_time[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time[5]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\wait_time[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wait_time[5]_i_5 
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase_reg_n_0_[0] ),
        .O(\wait_time[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \wait_time[5]_i_6 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\wait_time[5]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[0] 
       (.C(clk),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[0]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[1] 
       (.C(clk),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[1]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[2] 
       (.C(clk),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[3] 
       (.C(clk),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[4] 
       (.C(clk),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[4]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[5] 
       (.C(clk),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[5]),
        .Q(sel0[5]),
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
