// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb  9 02:39:22 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sccb_interface_0_0_sim_netlist.v
// Design      : design_1_sccb_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sccb_interface_0_0,sccb_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sccb_interface,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    start,
    done,
    addr_data,
    busy,
    ready_out,
    scl,
    sda);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
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
  wire reset;
  wire scl;
  wire sda;
  wire start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sccb_interface inst
       (.addr_data(addr_data),
        .busy(busy),
        .clk(clk),
        .done(done),
        .ready_out(ready_out),
        .reset(reset),
        .scl(scl),
        .sda(sda),
        .start(start));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sccb_interface
   (scl,
    ready_out,
    busy,
    sda,
    reset,
    clk,
    addr_data,
    start,
    done);
  output scl;
  output ready_out;
  output busy;
  inout sda;
  input reset;
  input clk;
  input [15:0]addr_data;
  input start;
  input done;

  wire [7:0]addr;
  wire addr_0;
  wire [15:0]addr_data;
  wire busy;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire clk;
  wire [7:0]data;
  wire done;
  wire i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_2_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[1]_i_2_n_0 ;
  wire \phase[1]_i_3_n_0 ;
  wire \phase_reg_n_0_[0] ;
  wire \phase_reg_n_0_[1] ;
  wire ready_out;
  wire ready_out_i_1_n_0;
  wire reset;
  wire scl;
  wire scl_i_1_n_0;
  wire sda;
  wire sda_out2_out;
  wire sda_out_i_1_n_0;
  wire sda_out_i_3_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire sda_out_i_6_n_0;
  wire [5:0]sel0;
  wire start;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
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
  wire \tx_data[0]_i_1_n_0 ;
  wire \tx_data[1]_i_1_n_0 ;
  wire \tx_data[2]_i_1_n_0 ;
  wire \tx_data[3]_i_1_n_0 ;
  wire \tx_data[4]_i_1_n_0 ;
  wire \tx_data[5]_i_1_n_0 ;
  wire \tx_data[6]_i_1_n_0 ;
  wire \tx_data[7]_i_1_n_0 ;
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
  wire \wait_time[3]_i_1_n_0 ;
  wire \wait_time[3]_i_2_n_0 ;
  wire \wait_time[4]_i_2_n_0 ;
  wire \wait_time[5]_i_1_n_0 ;
  wire \wait_time[5]_i_3_n_0 ;
  wire \wait_time[5]_i_4_n_0 ;
  wire \wait_time[5]_i_5_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[8]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[9]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[10]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[11]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[12]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[13]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[14]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[15]),
        .Q(addr[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00002E22)) 
    busy_i_1
       (.I0(busy),
        .I1(busy_i_2_n_0),
        .I2(done),
        .I3(start),
        .I4(reset),
        .O(busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    busy_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(busy_i_2_n_0));
  FDRE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \data[7]_i_1 
       (.I0(busy_i_2_n_0),
        .I1(start),
        .I2(done),
        .I3(reset),
        .O(addr_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk),
        .CE(addr_0),
        .D(addr_data[7]),
        .Q(data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \i[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \i[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA802)) 
    \i[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[2] ),
        .O(\i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003023)) 
    \i[3]_i_1 
       (.I0(\phase[1]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(reset),
        .I5(\state_reg_n_0_[1] ),
        .O(i));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \i[3]_i_2 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\i[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(i),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(i),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(i),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \i_reg[3] 
       (.C(clk),
        .CE(i),
        .D(\i[3]_i_2_n_0 ),
        .Q(\i_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00FF005208F208)) 
    \phase[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\phase[1]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg_n_0_[1] ),
        .I5(\phase[1]_i_3_n_0 ),
        .O(\phase[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000052FA0800)) 
    \phase[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\phase[1]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg_n_0_[1] ),
        .I5(\phase[1]_i_3_n_0 ),
        .O(\phase[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \phase[1]_i_2 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[3] ),
        .O(\phase[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \phase[1]_i_3 
       (.I0(reset),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
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
  LUT5 #(
    .INIT(32'h0000EE2E)) 
    ready_out_i_1
       (.I0(ready_out),
        .I1(busy_i_2_n_0),
        .I2(start),
        .I3(done),
        .I4(reset),
        .O(ready_out_i_1_n_0));
  FDRE ready_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_out_i_1_n_0),
        .Q(ready_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAACEAA8A)) 
    scl_i_1
       (.I0(scl),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(reset),
        .O(scl_i_1_n_0));
  FDRE scl_reg
       (.C(clk),
        .CE(1'b1),
        .D(scl_i_1_n_0),
        .Q(scl),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE4)) 
    sda_out_i_1
       (.I0(sda_out2_out),
        .I1(sda),
        .I2(sda_out_i_3_n_0),
        .O(sda_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000016)) 
    sda_out_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(reset),
        .I4(\state_reg_n_0_[1] ),
        .O(sda_out2_out));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    sda_out_i_3
       (.I0(\state_reg_n_0_[3] ),
        .I1(\phase[1]_i_2_n_0 ),
        .I2(sda_out_i_4_n_0),
        .I3(sda_out_i_5_n_0),
        .I4(sda_out_i_6_n_0),
        .I5(\state_reg_n_0_[2] ),
        .O(sda_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    sda_out_i_4
       (.I0(\tx_data_reg_n_0_[4] ),
        .I1(\tx_data_reg_n_0_[5] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\tx_data_reg_n_0_[6] ),
        .I5(\tx_data_reg_n_0_[7] ),
        .O(sda_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h56)) 
    sda_out_i_5
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(sda_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    sda_out_i_6
       (.I0(\tx_data_reg_n_0_[0] ),
        .I1(\tx_data_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\tx_data_reg_n_0_[2] ),
        .I5(\tx_data_reg_n_0_[3] ),
        .O(sda_out_i_6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sda_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(sda_out_i_1_n_0),
        .Q(sda),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
    .INIT(8'h80)) 
    \state[1]_i_1 
       (.I0(\state_return_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0C080C00)) 
    \state[2]_i_1 
       (.I0(\state_return_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000110155551151)) 
    \state[3]_i_1 
       (.I0(reset),
        .I1(\state[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\wait_time[5]_i_3_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBFFFC)) 
    \state[3]_i_2 
       (.I0(\state_return_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h89888989)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(done),
        .I4(start),
        .O(\state[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[3]_i_2_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state_return[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state_return[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_return[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state_return[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
       (.I0(reset),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\state_return[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state_return[3]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state_return[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[0] 
       (.C(clk),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[0]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[1] 
       (.C(clk),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[1]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[2] 
       (.C(clk),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[2]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[3] 
       (.C(clk),
        .CE(\state_return[3]_i_1_n_0 ),
        .D(\state_return[3]_i_2_n_0 ),
        .Q(\state_return_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
    .INIT(32'h00000040)) 
    \tx_data[7]_i_1 
       (.I0(reset),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\tx_data[7]_i_1_n_0 ));
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
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[0]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[1]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[2]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[3]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[4]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[5]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[6]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(\tx_data[7]_i_2_n_0 ),
        .Q(\tx_data_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF6E)) 
    \wait_time[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(sel0[0]),
        .I3(\state_reg_n_0_[1] ),
        .O(wait_time[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \wait_time[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(wait_time[1]));
  LUT6 #(
    .INIT(64'hA802FFFFA8020000)) 
    \wait_time[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\wait_time[2]_i_2_n_0 ),
        .O(wait_time[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FAA)) 
    \wait_time[2]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\wait_time[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4544)) 
    \wait_time[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\wait_time[3]_i_2_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\wait_time[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE01000000000000)) 
    \wait_time[3]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\wait_time[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF9FF000F)) 
    \wait_time[4]_i_1 
       (.I0(sel0[4]),
        .I1(\wait_time[4]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .O(wait_time[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time[4]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\wait_time[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000333033330)) 
    \wait_time[5]_i_1 
       (.I0(\wait_time[5]_i_3_n_0 ),
        .I1(reset),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\wait_time[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF201120112011)) 
    \wait_time[5]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\wait_time[5]_i_4_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\wait_time[5]_i_5_n_0 ),
        .O(wait_time[5]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_time[5]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\wait_time[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wait_time[5]_i_4 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(\phase_reg_n_0_[1] ),
        .O(\wait_time[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time[5]_i_5 
       (.I0(sel0[5]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(\wait_time[5]_i_5_n_0 ));
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
