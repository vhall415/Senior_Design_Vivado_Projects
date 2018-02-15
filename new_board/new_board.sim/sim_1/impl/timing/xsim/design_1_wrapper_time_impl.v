// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb  9 02:11:59 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/vhall/Desktop/new_board/new_board.sim/sim_1/impl/timing/xsim/design_1_wrapper_time_impl.v
// Design      : design_1_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (scl_0,
    sda_0,
    sys_clock);
  output scl_0;
  inout sda_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;

  wire [15:0]cam_reg_config_0_addr_data;
  wire cam_reg_config_0_done;
  wire [7:0]cam_reg_config_0_reg_loc;
  wire cam_reg_config_0_sccb_start;
  wire [15:0]camera_reg_0_addr_data;
  wire clk_wiz_0_clk_out1;
  wire sccb_interface_0_busy;
  wire sccb_interface_0_ready_out;
  wire scl_0;
  wire sda_0;
  wire sys_clock;

  (* X_CORE_INFO = "cam_reg_config,Vivado 2017.4" *) 
  design_1_cam_reg_config_0_0 cam_reg_config_0
       (.addr_data(cam_reg_config_0_addr_data),
        .clk(clk_wiz_0_clk_out1),
        .done(cam_reg_config_0_done),
        .reg_data(camera_reg_0_addr_data),
        .reg_loc(cam_reg_config_0_reg_loc),
        .sccb_busy(sccb_interface_0_busy),
        .sccb_ready(sccb_interface_0_ready_out),
        .sccb_start(cam_reg_config_0_sccb_start));
  (* X_CORE_INFO = "camera_reg,Vivado 2017.4" *) 
  design_1_camera_reg_0_0 camera_reg_0
       (.addr(cam_reg_config_0_reg_loc),
        .addr_data(camera_reg_0_addr_data),
        .clk(clk_wiz_0_clk_out1));
  design_1_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(sys_clock),
        .clk_out1(clk_wiz_0_clk_out1));
  (* X_CORE_INFO = "sccb_interface,Vivado 2017.4" *) 
  design_1_sccb_interface_0_0 sccb_interface_0
       (.addr_data(cam_reg_config_0_addr_data),
        .busy(sccb_interface_0_busy),
        .clk(clk_wiz_0_clk_out1),
        .done(cam_reg_config_0_done),
        .ready_out(sccb_interface_0_ready_out),
        .scl(scl_0),
        .sda(sda_0),
        .start(cam_reg_config_0_sccb_start));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_cam_reg_config_0_0,cam_reg_config,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cam_reg_config,Vivado 2017.4" *) 
module design_1_cam_reg_config_0_0
   (clk,
    sccb_busy,
    sccb_ready,
    reg_data,
    done,
    sccb_start,
    reg_loc,
    addr_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
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
  wire sccb_busy;
  wire sccb_ready;
  wire sccb_start;

  design_1_cam_reg_config_0_0_cam_reg_config inst
       (.addr_data(addr_data),
        .clk(clk),
        .done(done),
        .reg_data(reg_data),
        .reg_loc(reg_loc),
        .sccb_busy(sccb_busy),
        .sccb_ready(sccb_ready),
        .sccb_start(sccb_start));
endmodule

(* ORIG_REF_NAME = "cam_reg_config" *) 
module design_1_cam_reg_config_0_0_cam_reg_config
   (reg_loc,
    addr_data,
    sccb_start,
    done,
    clk,
    sccb_ready,
    sccb_busy,
    reg_data);
  output [7:0]reg_loc;
  output [15:0]addr_data;
  output sccb_start;
  output done;
  input clk;
  input sccb_ready;
  input sccb_busy;
  input [15:0]reg_data;

  wire [15:0]addr_data;
  wire \addr_data[15]_i_1_n_0 ;
  wire clk;
  wire done;
  wire done_i_1_n_0;
  wire \loc[7]_i_3_n_0 ;
  wire \loc[7]_i_4_n_0 ;
  wire \loc[7]_i_5_n_0 ;
  wire \loc[7]_i_6_n_0 ;
  wire \loc[7]_i_7_n_0 ;
  wire [7:0]loc_reg__0;
  wire [7:0]p_0_in;
  wire [15:0]reg_data;
  wire [7:0]reg_loc;
  wire \reg_loc[7]_i_1_n_0 ;
  wire sccb_busy;
  wire sccb_ready;
  wire sccb_start;
  wire sccb_start_i_1_n_0;
  wire sccb_start_i_2_n_0;
  wire sccb_start_i_3_n_0;
  wire sccb_start_i_4_n_0;
  wire [7:0]sel0;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire state_return;
  wire wait_time0;
  wire \wait_time[0]_i_1_n_0 ;
  wire \wait_time[1]_i_1_n_0 ;
  wire \wait_time[2]_i_1_n_0 ;
  wire \wait_time[3]_i_1_n_0 ;
  wire \wait_time[4]_i_1_n_0 ;
  wire \wait_time[5]_i_1_n_0 ;
  wire \wait_time[5]_i_2_n_0 ;
  wire \wait_time[6]_i_1_n_0 ;
  wire \wait_time[6]_i_2_n_0 ;
  wire \wait_time[7]_i_2_n_0 ;
  wire \wait_time[7]_i_3_n_0 ;
  wire \wait_time[7]_i_4_n_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    \addr_data[15]_i_1 
       (.I0(state_return),
        .I1(sccb_start_i_3_n_0),
        .O(\addr_data[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[0] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[0]),
        .Q(addr_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[10] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[10]),
        .Q(addr_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[11] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[11]),
        .Q(addr_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[12] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[12]),
        .Q(addr_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[13] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[13]),
        .Q(addr_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[14] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[14]),
        .Q(addr_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[15] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[15]),
        .Q(addr_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[1] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[1]),
        .Q(addr_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[2] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[2]),
        .Q(addr_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[3] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[3]),
        .Q(addr_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[4] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[4]),
        .Q(addr_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[5] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[5]),
        .Q(addr_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[6] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[6]),
        .Q(addr_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[7] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[7]),
        .Q(addr_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[8] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[8]),
        .Q(addr_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[9] 
       (.C(clk),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(reg_data[9]),
        .Q(addr_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    done_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(done),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \loc[0]_i_1 
       (.I0(loc_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \loc[1]_i_1 
       (.I0(loc_reg__0[0]),
        .I1(loc_reg__0[1]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \loc[2]_i_1 
       (.I0(loc_reg__0[0]),
        .I1(loc_reg__0[1]),
        .I2(loc_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \loc[3]_i_1 
       (.I0(loc_reg__0[3]),
        .I1(loc_reg__0[0]),
        .I2(loc_reg__0[1]),
        .I3(loc_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \loc[4]_i_1 
       (.I0(loc_reg__0[4]),
        .I1(loc_reg__0[2]),
        .I2(loc_reg__0[1]),
        .I3(loc_reg__0[0]),
        .I4(loc_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \loc[5]_i_1 
       (.I0(loc_reg__0[5]),
        .I1(loc_reg__0[3]),
        .I2(loc_reg__0[0]),
        .I3(loc_reg__0[1]),
        .I4(loc_reg__0[2]),
        .I5(loc_reg__0[4]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \loc[6]_i_1 
       (.I0(loc_reg__0[6]),
        .I1(loc_reg__0[4]),
        .I2(\loc[7]_i_7_n_0 ),
        .I3(loc_reg__0[3]),
        .I4(loc_reg__0[5]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h4444444444444404)) 
    \loc[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\loc[7]_i_3_n_0 ),
        .I3(\loc[7]_i_4_n_0 ),
        .I4(\loc[7]_i_5_n_0 ),
        .I5(\loc[7]_i_6_n_0 ),
        .O(state_return));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \loc[7]_i_2 
       (.I0(loc_reg__0[7]),
        .I1(loc_reg__0[5]),
        .I2(loc_reg__0[3]),
        .I3(\loc[7]_i_7_n_0 ),
        .I4(loc_reg__0[4]),
        .I5(loc_reg__0[6]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \loc[7]_i_3 
       (.I0(reg_data[10]),
        .I1(reg_data[14]),
        .I2(reg_data[13]),
        .I3(reg_data[15]),
        .O(\loc[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \loc[7]_i_4 
       (.I0(reg_data[11]),
        .I1(reg_data[12]),
        .I2(reg_data[9]),
        .I3(reg_data[8]),
        .O(\loc[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \loc[7]_i_5 
       (.I0(reg_data[1]),
        .I1(reg_data[0]),
        .I2(reg_data[2]),
        .I3(reg_data[3]),
        .O(\loc[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \loc[7]_i_6 
       (.I0(reg_data[5]),
        .I1(reg_data[4]),
        .I2(reg_data[7]),
        .I3(reg_data[6]),
        .O(\loc[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \loc[7]_i_7 
       (.I0(loc_reg__0[2]),
        .I1(loc_reg__0[1]),
        .I2(loc_reg__0[0]),
        .O(\loc[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[0] 
       (.C(clk),
        .CE(state_return),
        .D(p_0_in[0]),
        .Q(loc_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[1] 
       (.C(clk),
        .CE(state_return),
        .D(p_0_in[1]),
        .Q(loc_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[2] 
       (.C(clk),
        .CE(state_return),
        .D(p_0_in[2]),
        .Q(loc_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[3] 
       (.C(clk),
        .CE(state_return),
        .D(p_0_in[3]),
        .Q(loc_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[4] 
       (.C(clk),
        .CE(state_return),
        .D(p_0_in[4]),
        .Q(loc_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[5] 
       (.C(clk),
        .CE(state_return),
        .D(p_0_in[5]),
        .Q(loc_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[6] 
       (.C(clk),
        .CE(state_return),
        .D(p_0_in[6]),
        .Q(loc_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[7] 
       (.C(clk),
        .CE(state_return),
        .D(p_0_in[7]),
        .Q(loc_reg__0[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_loc[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\reg_loc[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_reg[0] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[0]),
        .Q(reg_loc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_reg[1] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[1]),
        .Q(reg_loc[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_reg[2] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[2]),
        .Q(reg_loc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_reg[3] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[3]),
        .Q(reg_loc[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_reg[4] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[4]),
        .Q(reg_loc[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_reg[5] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[5]),
        .Q(reg_loc[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_reg[6] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[6]),
        .Q(reg_loc[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_loc_reg[7] 
       (.C(clk),
        .CE(\reg_loc[7]_i_1_n_0 ),
        .D(loc_reg__0[7]),
        .Q(reg_loc[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFAA0400)) 
    sccb_start_i_1
       (.I0(state[1]),
        .I1(sccb_start_i_2_n_0),
        .I2(sccb_start_i_3_n_0),
        .I3(state[0]),
        .I4(sccb_start),
        .O(sccb_start_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    sccb_start_i_2
       (.I0(\loc[7]_i_6_n_0 ),
        .I1(\loc[7]_i_5_n_0 ),
        .I2(\loc[7]_i_4_n_0 ),
        .I3(\loc[7]_i_3_n_0 ),
        .O(sccb_start_i_2_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    sccb_start_i_3
       (.I0(\loc[7]_i_4_n_0 ),
        .I1(\loc[7]_i_3_n_0 ),
        .I2(sccb_start_i_4_n_0),
        .I3(\loc[7]_i_6_n_0 ),
        .O(sccb_start_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sccb_start_i_4
       (.I0(reg_data[2]),
        .I1(reg_data[1]),
        .I2(reg_data[3]),
        .I3(reg_data[0]),
        .O(sccb_start_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sccb_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(sccb_start_i_1_n_0),
        .Q(sccb_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCC0000AAAA00F0)) 
    \state[0]_i_1 
       (.I0(sccb_start_i_2_n_0),
        .I1(\wait_time[7]_i_3_n_0 ),
        .I2(sccb_ready),
        .I3(sccb_busy),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \state[1]_i_1 
       (.I0(\wait_time[7]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wait_time[0]_i_1 
       (.I0(state[1]),
        .I1(sel0[0]),
        .O(\wait_time[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \wait_time[1]_i_1 
       (.I0(state[1]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\wait_time[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCCC35555)) 
    \wait_time[2]_i_1 
       (.I0(sccb_start_i_3_n_0),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(state[1]),
        .O(\wait_time[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \wait_time[3]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(state[1]),
        .I5(sccb_start_i_3_n_0),
        .O(\wait_time[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \wait_time[4]_i_1 
       (.I0(sel0[4]),
        .I1(\wait_time[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(sccb_start_i_3_n_0),
        .O(\wait_time[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F6A6FAA6FAA6FAA)) 
    \wait_time[5]_i_1 
       (.I0(sel0[5]),
        .I1(\wait_time[5]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state_return),
        .I4(\wait_time[7]_i_3_n_0 ),
        .I5(state[0]),
        .O(\wait_time[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \wait_time[5]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[4]),
        .O(\wait_time[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F6A6FAA6FAA6FAA)) 
    \wait_time[6]_i_1 
       (.I0(sel0[6]),
        .I1(\wait_time[6]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state_return),
        .I4(\wait_time[7]_i_3_n_0 ),
        .I5(state[0]),
        .O(\wait_time[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_time[6]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\wait_time[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \wait_time[7]_i_1 
       (.I0(state_return),
        .I1(\wait_time[7]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .O(wait_time0));
  LUT6 #(
    .INIT(64'hFFFB000400000000)) 
    \wait_time[7]_i_2 
       (.I0(sel0[5]),
        .I1(\wait_time[7]_i_4_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .I5(state[1]),
        .O(\wait_time[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \wait_time[7]_i_3 
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(\wait_time[7]_i_4_n_0 ),
        .O(\wait_time[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \wait_time[7]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\wait_time[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[0] 
       (.C(clk),
        .CE(wait_time0),
        .D(\wait_time[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[1] 
       (.C(clk),
        .CE(wait_time0),
        .D(\wait_time[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[2] 
       (.C(clk),
        .CE(wait_time0),
        .D(\wait_time[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[3] 
       (.C(clk),
        .CE(wait_time0),
        .D(\wait_time[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[4] 
       (.C(clk),
        .CE(wait_time0),
        .D(\wait_time[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\wait_time[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\wait_time[6]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[7] 
       (.C(clk),
        .CE(wait_time0),
        .D(\wait_time[7]_i_2_n_0 ),
        .Q(sel0[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_camera_reg_0_0,camera_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "camera_reg,Vivado 2017.4" *) 
module design_1_camera_reg_0_0
   (clk,
    addr,
    addr_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  input [7:0]addr;
  output [15:0]addr_data;

  wire [7:0]addr;
  wire [15:0]addr_data;
  wire clk;

  design_1_camera_reg_0_0_camera_reg inst
       (.addr(addr),
        .addr_data(addr_data),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "camera_reg" *) 
module design_1_camera_reg_0_0_camera_reg
   (addr_data,
    clk,
    addr);
  output [15:0]addr_data;
  input clk;
  input [7:0]addr;

  wire [7:0]addr;
  wire [15:0]addr_data;
  wire clk;
  wire [15:0]NLW_addr_data_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_addr_data_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_addr_data_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "inst/addr_data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
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
    addr_data_reg
       (.ADDRARDADDR({1'b0,1'b0,addr,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(addr_data),
        .DOBDO(NLW_addr_data_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_addr_data_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_addr_data_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module design_1_clk_wiz_0_1
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;

  design_1_clk_wiz_0_1_design_1_clk_wiz_0_1_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

(* ORIG_REF_NAME = "design_1_clk_wiz_0_1_clk_wiz" *) 
module design_1_clk_wiz_0_1_design_1_clk_wiz_0_1_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_design_1_clk_wiz_0_1;
  wire clk_out1;
  wire clk_out1_design_1_clk_wiz_0_1;
  wire clkfbout_buf_design_1_clk_wiz_0_1;
  wire clkfbout_design_1_clk_wiz_0_1;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire NLW_plle2_adv_inst_LOCKED_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_design_1_clk_wiz_0_1),
        .O(clkfbout_buf_design_1_clk_wiz_0_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_design_1_clk_wiz_0_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_design_1_clk_wiz_0_1),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(42),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(35),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_design_1_clk_wiz_0_1),
        .CLKFBOUT(clkfbout_design_1_clk_wiz_0_1),
        .CLKIN1(clk_in1_design_1_clk_wiz_0_1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_out1_design_1_clk_wiz_0_1),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_plle2_adv_inst_LOCKED_UNCONNECTED),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_sccb_interface_0_0,sccb_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sccb_interface,Vivado 2017.4" *) 
module design_1_sccb_interface_0_0
   (clk,
    start,
    done,
    addr_data,
    busy,
    ready_out,
    scl,
    sda);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
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

  design_1_sccb_interface_0_0_sccb_interface inst
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
module design_1_sccb_interface_0_0_sccb_interface
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
  LUT2 #(
    .INIT(4'h1)) 
    \phase[1]_i_2 
       (.I0(state[3]),
        .I1(state[0]),
        .O(\phase[1]_i_2_n_0 ));
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
  LUT4 #(
    .INIT(16'hFFFD)) 
    \wait_time[5]_i_3 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .O(\wait_time[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time[5]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\wait_time[5]_i_4_n_0 ));
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

(* ECO_CHECKSUM = "bb48c418" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module design_1_wrapper
   (scl_0,
    sda_0,
    sys_clock);
  output scl_0;
  inout sda_0;
  (* CLOCK_BUFFER_TYPE = "none" *) input sys_clock;

  wire scl_0;
  wire scl_0_OBUF;
  wire sda_0;
  wire sda_0_OBUF;
  (* IBUF_LOW_PWR *) wire sys_clock;

initial begin
 $sdf_annotate("design_1_wrapper_time_impl.sdf",,,,"tool_control");
end
  (* HW_HANDOFF = "design_1.hwdef" *) 
  design_1 design_1_i
       (.scl_0(scl_0_OBUF),
        .sda_0(sda_0_OBUF),
        .sys_clock(sys_clock));
  OBUF scl_0_OBUF_inst
       (.I(scl_0_OBUF),
        .O(scl_0));
  (* OPT_INSERTED *) 
  OBUF sda_0_OBUF_inst
       (.I(sda_0_OBUF),
        .O(sda_0));
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
