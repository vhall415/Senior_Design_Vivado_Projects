// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb 16 09:43:23 2018
// Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/vhall/Desktop/senior_design_2/senior_design_2.sim/sim_1/impl/func/xsim/sim_sccb1_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module async_fifo
   (DOBDO,
    bram1_empty,
    memory_reg_0,
    S,
    D,
    \gray_reg[1] ,
    DI,
    \gray_reg[7] ,
    \gray_reg[7]_0 ,
    clk_out_reg,
    write_en,
    outputData0,
    Q,
    xclk_OBUF_BUFG,
    NextWriteAddr_en,
    gray1);
  output [1:0]DOBDO;
  output bram1_empty;
  output memory_reg_0;
  output [0:0]S;
  output [6:0]D;
  output [3:0]\gray_reg[1] ;
  output [0:0]DI;
  output [3:0]\gray_reg[7] ;
  output [3:0]\gray_reg[7]_0 ;
  input clk_out_reg;
  input write_en;
  input outputData0;
  input [15:0]Q;
  input xclk_OBUF_BUFG;
  input NextWriteAddr_en;
  input [9:0]gray1;

  wire [6:0]D;
  wire [0:0]DI;
  wire [1:0]DOBDO;
  wire NextWriteAddr_en;
  wire [15:0]Q;
  wire [0:0]S;
  wire bram1_empty;
  wire [14:0]bram_pixel;
  wire clk_out_reg;
  wire [9:0]gray1;
  wire [3:0]\gray_reg[1] ;
  wire [3:0]\gray_reg[7] ;
  wire [3:0]\gray_reg[7]_0 ;
  wire memory_reg_0;
  wire memory_reg_ENARDEN_cooolgate_en_sig_1;
  wire memory_reg_i_2_n_0;
  wire outputData0;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire pRead_counter_n_7;
  wire pWrite_counter_n_9;
  wire presetEmpty;
  wire presetFull;
  wire set_Status;
  wire status;
  wire write_en;
  wire xclk_OBUF_BUFG;
  wire [15:0]NLW_memory_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;

  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    empty_reg
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(presetEmpty),
        .Q(bram1_empty));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    full_reg
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(presetFull),
        .Q(memory_reg_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__0_i_1
       (.I0(bram_pixel[14]),
        .I1(bram_pixel[9]),
        .I2(bram_pixel[3]),
        .O(\gray_reg[7]_0 [3]));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__0_i_2
       (.I0(bram_pixel[13]),
        .I1(bram_pixel[2]),
        .I2(bram_pixel[8]),
        .O(\gray_reg[7]_0 [2]));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__0_i_3
       (.I0(bram_pixel[12]),
        .I1(bram_pixel[1]),
        .I2(bram_pixel[7]),
        .O(\gray_reg[7]_0 [1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__0_i_4
       (.I0(bram_pixel[11]),
        .I1(bram_pixel[0]),
        .I2(bram_pixel[6]),
        .O(\gray_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry__0_i_5
       (.I0(\gray_reg[7]_0 [3]),
        .I1(bram_pixel[10]),
        .I2(bram_pixel[4]),
        .I3(DOBDO[1]),
        .O(\gray_reg[7] [3]));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry__0_i_6
       (.I0(bram_pixel[14]),
        .I1(bram_pixel[9]),
        .I2(bram_pixel[3]),
        .I3(\gray_reg[7]_0 [2]),
        .O(\gray_reg[7] [2]));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry__0_i_7
       (.I0(bram_pixel[13]),
        .I1(bram_pixel[2]),
        .I2(bram_pixel[8]),
        .I3(\gray_reg[7]_0 [1]),
        .O(\gray_reg[7] [1]));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry__0_i_8
       (.I0(bram_pixel[12]),
        .I1(bram_pixel[1]),
        .I2(bram_pixel[7]),
        .I3(\gray_reg[7]_0 [0]),
        .O(\gray_reg[7] [0]));
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry__1_i_1
       (.I0(DOBDO[1]),
        .I1(bram_pixel[4]),
        .I2(bram_pixel[10]),
        .O(S));
  LUT3 #(
    .INIT(8'hE8)) 
    gray1__0_carry_i_1
       (.I0(bram_pixel[13]),
        .I1(bram_pixel[9]),
        .I2(bram_pixel[3]),
        .O(DI));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry_i_2
       (.I0(bram_pixel[11]),
        .I1(bram_pixel[0]),
        .I2(bram_pixel[6]),
        .I3(DOBDO[0]),
        .O(\gray_reg[1] [3]));
  LUT4 #(
    .INIT(16'h17E8)) 
    gray1__0_carry_i_3
       (.I0(bram_pixel[10]),
        .I1(bram_pixel[4]),
        .I2(bram_pixel[14]),
        .I3(DOBDO[1]),
        .O(\gray_reg[1] [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    gray1__0_carry_i_4
       (.I0(DI),
        .I1(bram_pixel[10]),
        .I2(bram_pixel[4]),
        .I3(bram_pixel[14]),
        .O(\gray_reg[1] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    gray1__0_carry_i_5
       (.I0(bram_pixel[13]),
        .I1(bram_pixel[9]),
        .I2(bram_pixel[3]),
        .O(\gray_reg[1] [0]));
  LUT6 #(
    .INIT(64'hE0D00D0E8F4FF4F8)) 
    \gray[0]_i_1 
       (.I0(gray1[3]),
        .I1(gray1[0]),
        .I2(D[2]),
        .I3(D[3]),
        .I4(gray1[2]),
        .I5(gray1[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hC3BE823C)) 
    \gray[1]_i_1 
       (.I0(gray1[1]),
        .I1(D[3]),
        .I2(gray1[3]),
        .I3(gray1[2]),
        .I4(D[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hE0D00D0E8F4FF4F8)) 
    \gray[2]_i_1 
       (.I0(gray1[5]),
        .I1(gray1[2]),
        .I2(D[4]),
        .I3(D[5]),
        .I4(gray1[4]),
        .I5(gray1[3]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hC3BE823C)) 
    \gray[3]_i_1 
       (.I0(gray1[3]),
        .I1(D[5]),
        .I2(gray1[5]),
        .I3(gray1[4]),
        .I4(D[4]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBC2B2BC22BC2C2BC)) 
    \gray[4]_i_1 
       (.I0(gray1[4]),
        .I1(gray1[6]),
        .I2(gray1[8]),
        .I3(gray1[9]),
        .I4(gray1[7]),
        .I5(gray1[5]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h2CB2CB2C)) 
    \gray[5]_i_1 
       (.I0(gray1[5]),
        .I1(gray1[7]),
        .I2(gray1[8]),
        .I3(gray1[9]),
        .I4(gray1[6]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hB22C)) 
    \gray[6]_i_1 
       (.I0(gray1[6]),
        .I1(gray1[8]),
        .I2(gray1[9]),
        .I3(gray1[7]),
        .O(D[6]));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "memory" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .IS_CLKARDCLK_INVERTED(1'b1),
    .IS_CLKBWRCLK_INVERTED(1'b1),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    memory_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,pNextToWrite,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,pNextToRead,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_out_reg),
        .CLKBWRCLK(clk_out_reg),
        .DIADI(Q),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_memory_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({DOBDO[1],bram_pixel[14:6],DOBDO[0],bram_pixel[4:0]}),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(memory_reg_ENARDEN_cooolgate_en_sig_1),
        .ENBWREN(outputData0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({memory_reg_i_2_n_0,memory_reg_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    memory_reg_i_2
       (.I0(memory_reg_0),
        .O(memory_reg_i_2_n_0));
  graycounter pRead_counter
       (.full_reg(pRead_counter_n_7),
        .outputData0(outputData0),
        .pNextToRead(pNextToRead),
        .pNextToWrite({pNextToWrite[5],pNextToWrite[1]}),
        .xclk_OBUF_BUFG(xclk_OBUF_BUFG));
  graycounter_0 pWrite_counter
       (.NextWriteAddr_en(NextWriteAddr_en),
        .empty_reg(pWrite_counter_n_9),
        .\graycount_reg[5]_0 (pRead_counter_n_7),
        .pNextToRead({pNextToRead[6:2],pNextToRead[0]}),
        .pNextToWrite(pNextToWrite),
        .presetEmpty(presetEmpty),
        .presetFull(presetFull),
        .set_Status(set_Status),
        .status(status),
        .xclk_OBUF_BUFG(xclk_OBUF_BUFG));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pWrite_counter_n_9),
        .D(set_Status),
        .G(set_Status),
        .GE(1'b1),
        .Q(status));
  LUT2 #(
    .INIT(4'h4)) 
    xlnx_opt_LUT_memory_reg_ENARDEN_cooolgate_en_gate_1
       (.I0(memory_reg_0),
        .I1(write_en),
        .O(memory_reg_ENARDEN_cooolgate_en_sig_1));
endmodule

module cam_reg_config
   (sccb_done,
    sccb_start,
    reg_loc_reg_0,
    \wait_time_reg[0]_0 ,
    reg_loc_reg_1,
    busy0,
    Q,
    xclk_OBUF_BUFG,
    reset_reg,
    state);
  output sccb_done;
  output sccb_start;
  output reg_loc_reg_0;
  output \wait_time_reg[0]_0 ;
  output reg_loc_reg_1;
  output busy0;
  output [15:0]Q;
  input xclk_OBUF_BUFG;
  input reset_reg;
  input state;

  wire [15:0]Q;
  wire \addr_data[15]_i_1_n_0 ;
  wire busy0;
  wire [15:0]cam_reg_data;
  wire done_i_1_n_0;
  wire loc;
  wire \loc[7]_i_3_n_0 ;
  wire [7:0]loc_reg__0;
  wire [7:0]p_0_in;
  wire reg_loc_reg_0;
  wire reg_loc_reg_1;
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
  wire [7:0]sel0;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[1]_i_1_n_0 ;
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
  wire \wait_time_reg[0]_0 ;
  wire xclk_OBUF_BUFG;
  wire [15:0]NLW_reg_loc_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_reg_loc_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_reg_loc_reg_DOPBDOP_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0100)) 
    \addr_data[15]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\wait_time[4]_i_2_n_0 ),
        .I2(reg_loc_reg_1),
        .I3(reg_loc_reg_0),
        .O(\addr_data[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[0]),
        .Q(Q[0]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[10] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[10]),
        .Q(Q[10]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[11] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[11]),
        .Q(Q[11]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[12] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[12]),
        .Q(Q[12]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[13] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[13]),
        .Q(Q[13]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[14] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[14]),
        .Q(Q[14]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[15] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[15]),
        .Q(Q[15]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[1]),
        .Q(Q[1]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[2]),
        .Q(Q[2]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[3]),
        .Q(Q[3]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[4]),
        .Q(Q[4]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[5]),
        .Q(Q[5]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[6]),
        .Q(Q[6]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[7] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[7]),
        .Q(Q[7]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[8] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[8]),
        .Q(Q[8]),
        .R(reset_reg));
  FDRE #(
    .INIT(1'b0)) 
    \addr_data_reg[9] 
       (.C(xclk_OBUF_BUFG),
        .CE(\addr_data[15]_i_1_n_0 ),
        .D(cam_reg_data[9]),
        .Q(Q[9]),
        .R(reset_reg));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    done_i_1
       (.I0(sccb_done),
        .I1(reg_loc_reg_1),
        .I2(reg_loc_reg_0),
        .I3(reset_reg),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(sccb_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \loc[0]_i_1 
       (.I0(loc_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \loc[1]_i_1 
       (.I0(loc_reg__0[0]),
        .I1(loc_reg__0[1]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \loc[2]_i_1 
       (.I0(loc_reg__0[2]),
        .I1(loc_reg__0[0]),
        .I2(loc_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \loc[3]_i_1 
       (.I0(loc_reg__0[1]),
        .I1(loc_reg__0[0]),
        .I2(loc_reg__0[2]),
        .I3(loc_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
        .I3(reg_loc_reg_1),
        .O(loc));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
       (.C(xclk_OBUF_BUFG),
        .CE(loc),
        .D(p_0_in[0]),
        .Q(loc_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(loc),
        .D(p_0_in[1]),
        .Q(loc_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(loc),
        .D(p_0_in[2]),
        .Q(loc_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(loc),
        .D(p_0_in[3]),
        .Q(loc_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(loc),
        .D(p_0_in[4]),
        .Q(loc_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(loc),
        .D(p_0_in[5]),
        .Q(loc_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(loc),
        .D(p_0_in[6]),
        .Q(loc_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \loc_reg[7] 
       (.C(xclk_OBUF_BUFG),
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
    .INIT_00(256'h54E453A7523D510050B34FB314183A0440D004003E000C00118012041280FFF0),
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
        .CLKARDCLK(xclk_OBUF_BUFG),
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
        .I2(reg_loc_reg_1),
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
  LUT6 #(
    .INIT(64'h00000000F0F0F100)) 
    sccb_start_i_1
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\wait_time[4]_i_2_n_0 ),
        .I2(sccb_start),
        .I3(reg_loc_reg_0),
        .I4(reg_loc_reg_1),
        .I5(reset_reg),
        .O(sccb_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sccb_start_reg
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(sccb_start_i_1_n_0),
        .Q(sccb_start),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1F50)) 
    \state[0]_i_1 
       (.I0(reg_loc_reg_1),
        .I1(\state[0]_i_2_n_0 ),
        .I2(state),
        .I3(reg_loc_reg_0),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \state[0]_i_2 
       (.I0(cam_reg_data[1]),
        .I1(cam_reg_data[3]),
        .I2(cam_reg_data[0]),
        .I3(cam_reg_data[2]),
        .I4(\state[0]_i_4_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \state[0]_i_4 
       (.I0(\state[0]_i_5_n_0 ),
        .I1(cam_reg_data[12]),
        .I2(cam_reg_data[4]),
        .I3(cam_reg_data[11]),
        .I4(cam_reg_data[7]),
        .I5(\state[0]_i_6_n_0 ),
        .O(\state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[0]_i_5 
       (.I0(cam_reg_data[14]),
        .I1(cam_reg_data[9]),
        .I2(cam_reg_data[13]),
        .I3(cam_reg_data[15]),
        .O(\state[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[0]_i_6 
       (.I0(cam_reg_data[10]),
        .I1(cam_reg_data[6]),
        .I2(cam_reg_data[8]),
        .I3(cam_reg_data[5]),
        .O(\state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF70C)) 
    \state[1]_i_1 
       (.I0(\wait_time_reg[0]_0 ),
        .I1(reg_loc_reg_0),
        .I2(reset_reg),
        .I3(reg_loc_reg_1),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[1]_i_2 
       (.I0(\wait_time[7]_i_3_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .O(\wait_time_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[3]_i_4 
       (.I0(sccb_start),
        .I1(sccb_done),
        .O(busy0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(reg_loc_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(reg_loc_reg_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_time[0]_i_1 
       (.I0(reg_loc_reg_1),
        .I1(sel0[0]),
        .O(\wait_time[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \wait_time[1]_i_1 
       (.I0(reg_loc_reg_1),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\wait_time[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCCC35555)) 
    \wait_time[2]_i_1 
       (.I0(\wait_time[4]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(reg_loc_reg_1),
        .O(\wait_time[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \wait_time[3]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(reg_loc_reg_1),
        .I5(\wait_time[4]_i_2_n_0 ),
        .O(\wait_time[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9F90)) 
    \wait_time[4]_i_1 
       (.I0(sel0[4]),
        .I1(\wait_time[7]_i_3_n_0 ),
        .I2(reg_loc_reg_1),
        .I3(\wait_time[4]_i_2_n_0 ),
        .O(\wait_time[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \wait_time[4]_i_2 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(cam_reg_data[1]),
        .I2(cam_reg_data[2]),
        .I3(cam_reg_data[0]),
        .I4(cam_reg_data[3]),
        .O(\wait_time[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA9FFAAAA)) 
    \wait_time[5]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(\wait_time[7]_i_3_n_0 ),
        .I3(reg_loc_reg_1),
        .I4(wait_time),
        .O(\wait_time[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAAAAAAA)) 
    \wait_time[6]_i_1 
       (.I0(sel0[6]),
        .I1(\wait_time[7]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(reg_loc_reg_1),
        .I5(wait_time),
        .O(\wait_time[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A22)) 
    \wait_time[7]_i_1 
       (.I0(reg_loc_reg_0),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\wait_time_reg[0]_0 ),
        .I3(reg_loc_reg_1),
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
        .I5(reg_loc_reg_1),
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
       (.C(xclk_OBUF_BUFG),
        .CE(wait_time),
        .D(\wait_time[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(wait_time),
        .D(\wait_time[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(wait_time),
        .D(\wait_time[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(wait_time),
        .D(\wait_time[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(wait_time),
        .D(\wait_time[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(\wait_time[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(\wait_time[6]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[7] 
       (.C(xclk_OBUF_BUFG),
        .CE(wait_time),
        .D(\wait_time[7]_i_2_n_0 ),
        .Q(sel0[7]),
        .R(1'b0));
endmodule

module camera_receiver
   (write_en,
    NextWriteAddr_en,
    Q,
    full_reg,
    pclk_IBUF,
    href_IBUF,
    vsync_IBUF,
    D);
  output write_en;
  output NextWriteAddr_en;
  output [15:0]Q;
  input full_reg;
  input pclk_IBUF;
  input href_IBUF;
  input vsync_IBUF;
  input [7:0]D;

  wire [7:0]D;
  wire NextWriteAddr_en;
  wire [15:0]Q;
  wire byte_num;
  wire byte_num_reg_i_1_n_0;
  wire byte_num_reg_i_2_n_0;
  wire full_reg;
  wire href_IBUF;
  wire pclk_IBUF;
  wire [15:8]pixel;
  wire \pixel_data_out_reg[15]_i_1_n_0 ;
  wire \pixel_reg[15]_i_1_n_0 ;
  wire reset;
  wire state;
  wire state_reg_i_1_n_0;
  wire state_reg_i_2_n_0;
  wire vsync_IBUF;
  wire write_en;
  wire write_en_reg_i_1_n_0;
  wire write_en_reg_i_2_n_0;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    byte_num_reg
       (.CLR(1'b0),
        .D(byte_num_reg_i_1_n_0),
        .G(byte_num_reg_i_2_n_0),
        .GE(1'b1),
        .Q(byte_num));
  LUT3 #(
    .INIT(8'h74)) 
    byte_num_reg_i_1
       (.I0(byte_num),
        .I1(state),
        .I2(vsync_IBUF),
        .O(byte_num_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h00005111)) 
    byte_num_reg_i_2
       (.I0(vsync_IBUF),
        .I1(state),
        .I2(href_IBUF),
        .I3(pclk_IBUF),
        .I4(reset),
        .O(byte_num_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[6]_i_1__0 
       (.I0(write_en),
        .I1(full_reg),
        .O(NextWriteAddr_en));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[0] 
       (.CLR(reset),
        .D(D[0]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[10] 
       (.CLR(reset),
        .D(pixel[10]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[11] 
       (.CLR(reset),
        .D(pixel[11]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[12] 
       (.CLR(reset),
        .D(pixel[12]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[13] 
       (.CLR(reset),
        .D(pixel[13]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[14] 
       (.CLR(reset),
        .D(pixel[14]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[15] 
       (.CLR(reset),
        .D(pixel[15]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[15]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \pixel_data_out_reg[15]_i_1 
       (.I0(byte_num),
        .I1(pclk_IBUF),
        .I2(href_IBUF),
        .I3(vsync_IBUF),
        .I4(state),
        .I5(reset),
        .O(\pixel_data_out_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[1] 
       (.CLR(reset),
        .D(D[1]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[2] 
       (.CLR(reset),
        .D(D[2]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[3] 
       (.CLR(reset),
        .D(D[3]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[4] 
       (.CLR(reset),
        .D(D[4]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[5] 
       (.CLR(reset),
        .D(D[5]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[6] 
       (.CLR(reset),
        .D(D[6]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[7] 
       (.CLR(reset),
        .D(D[7]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[8] 
       (.CLR(reset),
        .D(pixel[8]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_data_out_reg[9] 
       (.CLR(reset),
        .D(pixel[9]),
        .G(\pixel_data_out_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Q[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[10] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(\pixel_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[11] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(\pixel_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[12] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(\pixel_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[13] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(\pixel_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[14] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(\pixel_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[15] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(\pixel_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel[15]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \pixel_reg[15]_i_1 
       (.I0(href_IBUF),
        .I1(state),
        .I2(vsync_IBUF),
        .I3(reset),
        .I4(byte_num),
        .I5(pclk_IBUF),
        .O(\pixel_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[8] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(\pixel_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pixel_reg[9] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(\pixel_reg[15]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pixel[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    reset_reg
       (.CLR(1'b0),
        .D(1'b0),
        .G(reset),
        .GE(1'b1),
        .Q(reset));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    state_reg
       (.CLR(1'b0),
        .D(state_reg_i_1_n_0),
        .G(state_reg_i_2_n_0),
        .GE(1'b1),
        .Q(state));
  LUT2 #(
    .INIT(4'h7)) 
    state_reg_i_1
       (.I0(state),
        .I1(vsync_IBUF),
        .O(state_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    state_reg_i_2
       (.I0(vsync_IBUF),
        .I1(state),
        .I2(reset),
        .O(state_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    write_en_reg
       (.CLR(reset),
        .D(write_en_reg_i_1_n_0),
        .G(write_en_reg_i_2_n_0),
        .GE(1'b1),
        .Q(write_en));
  LUT2 #(
    .INIT(4'h2)) 
    write_en_reg_i_1
       (.I0(byte_num),
        .I1(vsync_IBUF),
        .O(write_en_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000EA00)) 
    write_en_reg_i_2
       (.I0(vsync_IBUF),
        .I1(pclk_IBUF),
        .I2(href_IBUF),
        .I3(state),
        .I4(reset),
        .O(write_en_reg_i_2_n_0));
endmodule

module clk_div
   (xclk_OBUF,
    sys_clk_IBUF_BUFG);
  output xclk_OBUF;
  input sys_clk_IBUF_BUFG;

  wire clk_out_i_1_n_0;
  wire [0:0]count;
  wire \count[0]_i_1_n_0 ;
  wire reset;
  wire sys_clk_IBUF_BUFG;
  wire xclk_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h06)) 
    clk_out_i_1
       (.I0(xclk_OBUF),
        .I1(count),
        .I2(reset),
        .O(clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(xclk_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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

module graycounter
   (pNextToRead,
    full_reg,
    outputData0,
    xclk_OBUF_BUFG,
    pNextToWrite);
  output [6:0]pNextToRead;
  output full_reg;
  input outputData0;
  input xclk_OBUF_BUFG;
  input [1:0]pNextToWrite;

  wire [6:0]binary_count0__0;
  wire \binary_count[6]_i_2__0_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire full_reg;
  wire outputData0;
  wire [6:0]pNextToRead;
  wire [1:0]pNextToWrite;
  wire [5:0]p_0_out;
  wire xclk_OBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0__0[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \binary_count[3]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__1[2]),
        .O(binary_count0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \binary_count[4]_i_1__0 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__1[0]),
        .I4(binary_count_reg__1[3]),
        .O(binary_count0__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \binary_count[5]_i_1__0 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__1[3]),
        .I2(binary_count_reg__1[0]),
        .I3(pNextToRead[0]),
        .I4(binary_count_reg__1[2]),
        .I5(binary_count_reg__1[4]),
        .O(binary_count0__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \binary_count[6]_i_1__0 
       (.I0(binary_count_reg__0),
        .I1(binary_count_reg__1[4]),
        .I2(\binary_count[6]_i_2__0_n_0 ),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[5]),
        .O(binary_count0__0[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \binary_count[6]_i_2__0 
       (.I0(binary_count_reg__1[2]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[0]),
        .O(\binary_count[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(binary_count0__0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(binary_count0__0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(binary_count0__0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(binary_count0__0[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(binary_count0__0[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(binary_count0__0[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    empty_i_4
       (.I0(pNextToRead[5]),
        .I1(pNextToWrite[1]),
        .I2(pNextToWrite[0]),
        .I3(pNextToRead[1]),
        .O(full_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__0 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__0 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__0 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(p_0_out[5]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(p_0_out[0]),
        .Q(pNextToRead[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(p_0_out[1]),
        .Q(pNextToRead[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(p_0_out[2]),
        .Q(pNextToRead[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(p_0_out[3]),
        .Q(pNextToRead[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(p_0_out[4]),
        .Q(pNextToRead[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(p_0_out[5]),
        .Q(pNextToRead[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(outputData0),
        .D(binary_count_reg__0),
        .Q(pNextToRead[6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_0
   (pNextToWrite,
    presetEmpty,
    presetFull,
    empty_reg,
    set_Status,
    NextWriteAddr_en,
    xclk_OBUF_BUFG,
    status,
    \graycount_reg[5]_0 ,
    pNextToRead);
  output [6:0]pNextToWrite;
  output presetEmpty;
  output presetFull;
  output empty_reg;
  output set_Status;
  input NextWriteAddr_en;
  input xclk_OBUF_BUFG;
  input status;
  input \graycount_reg[5]_0 ;
  input [5:0]pNextToRead;

  wire NextWriteAddr_en;
  wire [6:0]binary_count0;
  wire \binary_count[6]_i_2_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire empty_i_2_n_0;
  wire empty_i_3_n_0;
  wire empty_reg;
  wire \graycount_reg[5]_0 ;
  wire [5:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire [5:0]p_0_out;
  wire presetEmpty;
  wire presetFull;
  wire set_Status;
  wire status;
  wire xclk_OBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \binary_count[3]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__1[2]),
        .O(binary_count0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \binary_count[4]_i_1 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__1[0]),
        .I4(binary_count_reg__1[3]),
        .O(binary_count0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \binary_count[5]_i_1 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__1[3]),
        .I2(binary_count_reg__1[0]),
        .I3(pNextToWrite[0]),
        .I4(binary_count_reg__1[2]),
        .I5(binary_count_reg__1[4]),
        .O(binary_count0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \binary_count[6]_i_1 
       (.I0(binary_count_reg__0),
        .I1(binary_count_reg__1[4]),
        .I2(\binary_count[6]_i_2_n_0 ),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[5]),
        .O(binary_count0[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \binary_count[6]_i_2 
       (.I0(binary_count_reg__1[2]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[0]),
        .O(\binary_count[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(binary_count0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(binary_count0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(binary_count0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(binary_count0[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(binary_count0[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(binary_count0[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    empty_i_1
       (.I0(status),
        .I1(empty_i_2_n_0),
        .O(presetEmpty));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    empty_i_2
       (.I0(empty_i_3_n_0),
        .I1(\graycount_reg[5]_0 ),
        .I2(pNextToWrite[0]),
        .I3(pNextToRead[0]),
        .I4(pNextToWrite[3]),
        .I5(pNextToRead[2]),
        .O(empty_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    empty_i_3
       (.I0(pNextToWrite[2]),
        .I1(pNextToRead[1]),
        .I2(pNextToRead[3]),
        .I3(pNextToWrite[4]),
        .I4(pNextToRead[5]),
        .I5(pNextToWrite[6]),
        .O(empty_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    full_i_1
       (.I0(status),
        .I1(empty_i_2_n_0),
        .O(presetFull));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(p_0_out[5]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(p_0_out[0]),
        .Q(pNextToWrite[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(p_0_out[1]),
        .Q(pNextToWrite[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(p_0_out[2]),
        .Q(pNextToWrite[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(p_0_out[3]),
        .Q(pNextToWrite[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(p_0_out[4]),
        .Q(pNextToWrite[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(p_0_out[5]),
        .Q(pNextToWrite[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(NextWriteAddr_en),
        .D(binary_count_reg__0),
        .Q(pNextToWrite[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_1
       (.I0(pNextToWrite[6]),
        .I1(pNextToRead[4]),
        .I2(pNextToWrite[5]),
        .I3(pNextToRead[5]),
        .O(set_Status));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_2
       (.I0(pNextToWrite[5]),
        .I1(pNextToRead[5]),
        .I2(pNextToWrite[6]),
        .I3(pNextToRead[4]),
        .O(empty_reg));
endmodule

module rgb2gray
   (gray1,
    outputData0,
    Q,
    DI,
    memory_reg,
    memory_reg_0,
    memory_reg_1,
    S,
    xclk_OBUF_BUFG,
    bram1_empty,
    D);
  output [9:0]gray1;
  output outputData0;
  output [7:0]Q;
  input [2:0]DI;
  input [3:0]memory_reg;
  input [3:0]memory_reg_0;
  input [3:0]memory_reg_1;
  input [0:0]S;
  input xclk_OBUF_BUFG;
  input bram1_empty;
  input [6:0]D;

  wire [6:0]D;
  wire [2:0]DI;
  wire [7:0]Q;
  wire [0:0]S;
  wire bram1_empty;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire [9:0]gray1;
  wire gray1__0_carry__0_n_0;
  wire gray1__0_carry_n_0;
  wire \gray[7]_i_1_n_0 ;
  wire \gray[7]_i_2_n_0 ;
  wire [3:0]memory_reg;
  wire [3:0]memory_reg_0;
  wire [3:0]memory_reg_1;
  wire outputData0;
  wire read_en;
  wire read_en_i_1_n_0;
  wire xclk_OBUF_BUFG;
  wire [2:0]NLW_gray1__0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_gray1__0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gray1__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_gray1__0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(bram1_empty),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[1]_i_1 
       (.I0(bram1_empty),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  CARRY4 gray1__0_carry
       (.CI(1'b0),
        .CO({gray1__0_carry_n_0,NLW_gray1__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O(gray1[3:0]),
        .S(memory_reg));
  CARRY4 gray1__0_carry__0
       (.CI(gray1__0_carry_n_0),
        .CO({gray1__0_carry__0_n_0,NLW_gray1__0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(memory_reg_0),
        .O(gray1[7:4]),
        .S(memory_reg_1));
  CARRY4 gray1__0_carry__1
       (.CI(gray1__0_carry__0_n_0),
        .CO({NLW_gray1__0_carry__1_CO_UNCONNECTED[3:2],gray1[9],NLW_gray1__0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gray1__0_carry__1_O_UNCONNECTED[3:1],gray1[8]}),
        .S({1'b0,1'b0,1'b1,S}));
  LUT3 #(
    .INIT(8'h54)) 
    \gray[7]_i_1 
       (.I0(bram1_empty),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\gray[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \gray[7]_i_2 
       (.I0(gray1[7]),
        .I1(gray1[8]),
        .I2(gray1[9]),
        .O(\gray[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gray_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(\gray[7]_i_1_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gray_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(\gray[7]_i_1_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gray_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(\gray[7]_i_1_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gray_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(\gray[7]_i_1_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gray_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(\gray[7]_i_1_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gray_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(\gray[7]_i_1_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gray_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(\gray[7]_i_1_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gray_reg[7] 
       (.C(xclk_OBUF_BUFG),
        .CE(\gray[7]_i_1_n_0 ),
        .D(\gray[7]_i_2_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[6]_i_1 
       (.I0(read_en),
        .I1(bram1_empty),
        .O(outputData0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h888B)) 
    read_en_i_1
       (.I0(read_en),
        .I1(bram1_empty),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(read_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_en_reg
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(read_en_i_1_n_0),
        .Q(read_en),
        .R(1'b0));
endmodule

module sccb
   (scl_OBUF,
    scl_reg_0,
    sda_OBUF,
    state,
    xclk_OBUF_BUFG,
    \wait_time_reg[4]_0 ,
    \state_reg[0]_0 ,
    \state_reg[1]_0 ,
    busy0,
    sccb_start,
    sccb_done,
    Q);
  output scl_OBUF;
  output scl_reg_0;
  output sda_OBUF;
  output state;
  input xclk_OBUF_BUFG;
  input \wait_time_reg[4]_0 ;
  input \state_reg[0]_0 ;
  input \state_reg[1]_0 ;
  input busy0;
  input sccb_start;
  input sccb_done;
  input [15:0]Q;

  wire [15:0]Q;
  wire [7:0]addr;
  wire addr_1;
  wire busy0;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire [7:0]data;
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
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire sda_out_i_6_n_0;
  wire sda_out_reg_i_2_n_0;
  wire [5:0]sel0__0;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire state_0;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire state_return;
  wire \state_return[0]_i_1_n_0 ;
  wire \state_return[1]_i_1_n_0 ;
  wire \state_return[2]_i_1_n_0 ;
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
  wire \wait_time[1]_i_2_n_0 ;
  wire \wait_time[2]_i_2_n_0 ;
  wire \wait_time[3]_i_1__0_n_0 ;
  wire \wait_time[3]_i_2_n_0 ;
  wire \wait_time[3]_i_3_n_0 ;
  wire \wait_time[3]_i_4_n_0 ;
  wire \wait_time[4]_i_2__0_n_0 ;
  wire \wait_time[5]_i_1_n_0 ;
  wire \wait_time[5]_i_3_n_0 ;
  wire \wait_time[5]_i_4_n_0 ;
  wire \wait_time[5]_i_5_n_0 ;
  wire \wait_time_reg[4]_0 ;
  wire xclk_OBUF_BUFG;

  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[8]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[9]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[10]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[11]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[12]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[13]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[14]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
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
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .O(busy_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(sccb_busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \data[7]_i_1 
       (.I0(scl_reg_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(sccb_start),
        .I4(sccb_done),
        .I5(\state[3]_i_3_n_0 ),
        .O(addr_1));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
        .D(Q[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(xclk_OBUF_BUFG),
        .CE(addr_1),
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \i[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
       (.I0(\phase[1]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(scl_reg_0),
        .I5(\state_reg_n_0_[1] ),
        .O(i));
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
       (.C(xclk_OBUF_BUFG),
        .CE(i),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(i),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(i),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \i_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(i),
        .D(\i[3]_i_2_n_0 ),
        .Q(\i_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h57DD2000DFDD2000)) 
    \phase[0]_i_1 
       (.I0(\phase[1]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\phase[1]_i_3_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\phase_reg_n_0_[0] ),
        .I5(\phase_reg_n_0_[1] ),
        .O(\phase[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h57DDFFDD20000000)) 
    \phase[1]_i_1 
       (.I0(\phase[1]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\phase[1]_i_3_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\phase_reg_n_0_[0] ),
        .I5(\phase_reg_n_0_[1] ),
        .O(\phase[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \phase[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(scl_reg_0),
        .O(\phase[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \phase[1]_i_3 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[3] ),
        .O(\phase[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(\phase[0]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.C(xclk_OBUF_BUFG),
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
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(ready_out_i_1_n_0),
        .Q(sccb_ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    reset_reg
       (.C(xclk_OBUF_BUFG),
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
       (.C(xclk_OBUF_BUFG),
        .CE(scl_i_1_n_0),
        .D(\state_reg_n_0_[0] ),
        .Q(scl_OBUF),
        .S(scl_reg_0));
  LUT6 #(
    .INIT(64'hFFE4FF00F0F0F0F0)) 
    sda_out_i_1
       (.I0(\phase[1]_i_3_n_0 ),
        .I1(sda_out_reg_i_2_n_0),
        .I2(sda_OBUF),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(sda_out1_out),
        .O(sda_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000016)) 
    sda_out_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(scl_reg_0),
        .I4(\state_reg_n_0_[1] ),
        .O(sda_out1_out));
  LUT3 #(
    .INIT(8'h56)) 
    sda_out_i_4
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
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
       (.C(xclk_OBUF_BUFG),
        .CE(1'b1),
        .D(sda_out_i_1_n_0),
        .Q(sda_OBUF),
        .R(1'b0));
  MUXF7 sda_out_reg_i_2
       (.I0(sda_out_i_5_n_0),
        .I1(sda_out_i_6_n_0),
        .O(sda_out_reg_i_2_n_0),
        .S(sda_out_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFF3F7F7)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_return_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0000000FF22)) 
    \state[0]_i_3 
       (.I0(sccb_ready),
        .I1(sccb_busy),
        .I2(\wait_time_reg[4]_0 ),
        .I3(\state_reg[0]_0 ),
        .I4(scl_reg_0),
        .I5(\state_reg[1]_0 ),
        .O(state));
  LUT3 #(
    .INIT(8'h80)) 
    \state[1]_i_1 
       (.I0(\state_return_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E0C0)) 
    \state[2]_i_1 
       (.I0(\state_return_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BF33BC33)) 
    \state[3]_i_1 
       (.I0(\wait_time[5]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[3]_i_3_n_0 ),
        .I4(busy0),
        .I5(scl_reg_0),
        .O(state_0));
  LUT5 #(
    .INIT(32'hB8FFBBFC)) 
    \state[3]_i_2 
       (.I0(\state_return_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(state_0),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(state_0),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(state_0),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(state_0),
        .D(\state[3]_i_2_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \state_return[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state_return[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_return[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state_return[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2000AAAA)) 
    \state_return[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state_return[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00005516)) 
    \state_return[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(scl_reg_0),
        .O(state_return));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state_return[3]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state_return[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[0] 
       (.C(xclk_OBUF_BUFG),
        .CE(state_return),
        .D(\state_return[0]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(state_return),
        .D(\state_return[1]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(state_return),
        .D(\state_return[2]_i_1_n_0 ),
        .Q(\state_return_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_return_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(state_return),
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
    .INIT(32'h00001000)) 
    \tx_data[7]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
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
       (.C(xclk_OBUF_BUFG),
        .CE(tx_data),
        .D(\tx_data[0]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(tx_data),
        .D(\tx_data[1]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(tx_data),
        .D(\tx_data[2]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(tx_data),
        .D(\tx_data[3]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(tx_data),
        .D(\tx_data[4]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(tx_data),
        .D(\tx_data[5]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(xclk_OBUF_BUFG),
        .CE(tx_data),
        .D(\tx_data[6]_i_1_n_0 ),
        .Q(\tx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(xclk_OBUF_BUFG),
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
    .INIT(64'h000000007F4F4F7F)) 
    \wait_time[1]_i_1__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\wait_time[1]_i_2_n_0 ),
        .O(wait_time[1]));
  LUT5 #(
    .INIT(32'h1FFF1111)) 
    \wait_time[1]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\wait_time[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE100FFFFE1000000)) 
    \wait_time[2]_i_1__0 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .I2(sel0__0[2]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\wait_time[2]_i_2_n_0 ),
        .O(wait_time[2]));
  LUT4 #(
    .INIT(16'h6EEE)) 
    \wait_time[2]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\phase_reg_n_0_[1] ),
        .O(\wait_time[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500005104)) 
    \wait_time[3]_i_1__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\wait_time[3]_i_2_n_0 ),
        .I2(sel0__0[2]),
        .I3(sel0__0[3]),
        .I4(\wait_time[3]_i_3_n_0 ),
        .I5(\wait_time[3]_i_4_n_0 ),
        .O(\wait_time[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \wait_time[3]_i_2 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .O(\wait_time[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \wait_time[3]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\wait_time[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_time[3]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\wait_time[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0006F00FFF)) 
    \wait_time[4]_i_1__0 
       (.I0(sel0__0[4]),
        .I1(\wait_time[4]_i_2__0_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[1] ),
        .O(wait_time[4]));
  LUT4 #(
    .INIT(16'h0001)) 
    \wait_time[4]_i_2__0 
       (.I0(sel0__0[1]),
        .I1(sel0__0[0]),
        .I2(sel0__0[3]),
        .I3(sel0__0[2]),
        .O(\wait_time[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0303030300031330)) 
    \wait_time[5]_i_1 
       (.I0(\wait_time[5]_i_3_n_0 ),
        .I1(scl_reg_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\wait_time[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B3FCB0B0)) 
    \wait_time[5]_i_2 
       (.I0(\wait_time[5]_i_4_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\wait_time[5]_i_5_n_0 ),
        .O(wait_time[5]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_time[5]_i_3 
       (.I0(sel0__0[4]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(sel0__0[3]),
        .I4(sel0__0[2]),
        .I5(sel0__0[5]),
        .O(\wait_time[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time[5]_i_4 
       (.I0(sel0__0[5]),
        .I1(sel0__0[4]),
        .I2(sel0__0[1]),
        .I3(sel0__0[0]),
        .I4(sel0__0[3]),
        .I5(sel0__0[2]),
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
       (.C(xclk_OBUF_BUFG),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[0]),
        .Q(sel0__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[1] 
       (.C(xclk_OBUF_BUFG),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[1]),
        .Q(sel0__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[2] 
       (.C(xclk_OBUF_BUFG),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[2]),
        .Q(sel0__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[3] 
       (.C(xclk_OBUF_BUFG),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(\wait_time[3]_i_1__0_n_0 ),
        .Q(sel0__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_reg[4] 
       (.C(xclk_OBUF_BUFG),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[4]),
        .Q(sel0__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \wait_time_reg[5] 
       (.C(xclk_OBUF_BUFG),
        .CE(\wait_time[5]_i_1_n_0 ),
        .D(wait_time[5]),
        .Q(sel0__0[5]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "3dd2d3f1" *) (* POWER_OPT_BRAM_CDC = "2" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module top
   (sys_clk,
    cam_byte,
    pclk,
    vsync,
    href,
    xclk,
    scl,
    sda,
    gray_byte);
  input sys_clk;
  input [7:0]cam_byte;
  input pclk;
  input vsync;
  input href;
  output xclk;
  output scl;
  inout sda;
  output [7:0]gray_byte;

  wire NextWriteAddr_en;
  wire bram1_empty;
  wire bram1_n_10;
  wire bram1_n_11;
  wire bram1_n_12;
  wire bram1_n_13;
  wire bram1_n_14;
  wire bram1_n_15;
  wire bram1_n_16;
  wire bram1_n_17;
  wire bram1_n_18;
  wire bram1_n_19;
  wire bram1_n_20;
  wire bram1_n_21;
  wire bram1_n_22;
  wire bram1_n_23;
  wire bram1_n_24;
  wire bram1_n_3;
  wire bram1_n_4;
  wire bram1_n_5;
  wire bram1_n_6;
  wire bram1_n_7;
  wire bram1_n_8;
  wire bram1_n_9;
  wire [15:5]bram_pixel;
  wire busy0;
  wire [7:0]cam_byte;
  wire [7:0]cam_byte_IBUF;
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
  wire config1_n_20;
  wire config1_n_21;
  wire config1_n_3;
  wire config1_n_4;
  wire config1_n_6;
  wire config1_n_7;
  wire config1_n_8;
  wire config1_n_9;
  wire [9:0]gray1__0;
  wire [7:0]gray_byte;
  wire [7:0]gray_byte_OBUF;
  wire href;
  wire href_IBUF;
  wire outputData0;
  wire pclk;
  wire pclk_IBUF;
  wire [15:0]rgb_pixel;
  wire sccb1_n_1;
  wire sccb_done;
  wire sccb_start;
  wire scl;
  wire scl_OBUF;
  wire sda;
  wire sda_OBUF;
  wire state;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire vsync;
  wire vsync_IBUF;
  wire write_en;
  wire xclk;
  wire xclk_OBUF;
  wire xclk_OBUF_BUFG;

  async_fifo bram1
       (.D({bram1_n_5,bram1_n_6,bram1_n_7,bram1_n_8,bram1_n_9,bram1_n_10,bram1_n_11}),
        .DI(bram1_n_16),
        .DOBDO({bram_pixel[15],bram_pixel[5]}),
        .NextWriteAddr_en(NextWriteAddr_en),
        .Q(rgb_pixel),
        .S(bram1_n_4),
        .bram1_empty(bram1_empty),
        .clk_out_reg(xclk_OBUF_BUFG),
        .gray1(gray1__0),
        .\gray_reg[1] ({bram1_n_12,bram1_n_13,bram1_n_14,bram1_n_15}),
        .\gray_reg[7] ({bram1_n_17,bram1_n_18,bram1_n_19,bram1_n_20}),
        .\gray_reg[7]_0 ({bram1_n_21,bram1_n_22,bram1_n_23,bram1_n_24}),
        .memory_reg_0(bram1_n_3),
        .outputData0(outputData0),
        .write_en(write_en),
        .xclk_OBUF_BUFG(xclk_OBUF_BUFG));
  IBUF \cam_byte_IBUF[0]_inst 
       (.I(cam_byte[0]),
        .O(cam_byte_IBUF[0]));
  IBUF \cam_byte_IBUF[1]_inst 
       (.I(cam_byte[1]),
        .O(cam_byte_IBUF[1]));
  IBUF \cam_byte_IBUF[2]_inst 
       (.I(cam_byte[2]),
        .O(cam_byte_IBUF[2]));
  IBUF \cam_byte_IBUF[3]_inst 
       (.I(cam_byte[3]),
        .O(cam_byte_IBUF[3]));
  IBUF \cam_byte_IBUF[4]_inst 
       (.I(cam_byte[4]),
        .O(cam_byte_IBUF[4]));
  IBUF \cam_byte_IBUF[5]_inst 
       (.I(cam_byte[5]),
        .O(cam_byte_IBUF[5]));
  IBUF \cam_byte_IBUF[6]_inst 
       (.I(cam_byte[6]),
        .O(cam_byte_IBUF[6]));
  IBUF \cam_byte_IBUF[7]_inst 
       (.I(cam_byte[7]),
        .O(cam_byte_IBUF[7]));
  cam_reg_config config1
       (.Q({config1_n_6,config1_n_7,config1_n_8,config1_n_9,config1_n_10,config1_n_11,config1_n_12,config1_n_13,config1_n_14,config1_n_15,config1_n_16,config1_n_17,config1_n_18,config1_n_19,config1_n_20,config1_n_21}),
        .busy0(busy0),
        .reg_loc_reg_0(config1_n_2),
        .reg_loc_reg_1(config1_n_4),
        .reset_reg(sccb1_n_1),
        .sccb_done(sccb_done),
        .sccb_start(sccb_start),
        .state(state),
        .\wait_time_reg[0]_0 (config1_n_3),
        .xclk_OBUF_BUFG(xclk_OBUF_BUFG));
  clk_div div1
       (.sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG),
        .xclk_OBUF(xclk_OBUF));
  rgb2gray gray1
       (.D({bram1_n_5,bram1_n_6,bram1_n_7,bram1_n_8,bram1_n_9,bram1_n_10,bram1_n_11}),
        .DI({bram_pixel[5],bram_pixel[15],bram1_n_16}),
        .Q(gray_byte_OBUF),
        .S(bram1_n_4),
        .bram1_empty(bram1_empty),
        .gray1(gray1__0),
        .memory_reg({bram1_n_12,bram1_n_13,bram1_n_14,bram1_n_15}),
        .memory_reg_0({bram1_n_21,bram1_n_22,bram1_n_23,bram1_n_24}),
        .memory_reg_1({bram1_n_17,bram1_n_18,bram1_n_19,bram1_n_20}),
        .outputData0(outputData0),
        .xclk_OBUF_BUFG(xclk_OBUF_BUFG));
  OBUF \gray_byte_OBUF[0]_inst 
       (.I(gray_byte_OBUF[0]),
        .O(gray_byte[0]));
  OBUF \gray_byte_OBUF[1]_inst 
       (.I(gray_byte_OBUF[1]),
        .O(gray_byte[1]));
  OBUF \gray_byte_OBUF[2]_inst 
       (.I(gray_byte_OBUF[2]),
        .O(gray_byte[2]));
  OBUF \gray_byte_OBUF[3]_inst 
       (.I(gray_byte_OBUF[3]),
        .O(gray_byte[3]));
  OBUF \gray_byte_OBUF[4]_inst 
       (.I(gray_byte_OBUF[4]),
        .O(gray_byte[4]));
  OBUF \gray_byte_OBUF[5]_inst 
       (.I(gray_byte_OBUF[5]),
        .O(gray_byte[5]));
  OBUF \gray_byte_OBUF[6]_inst 
       (.I(gray_byte_OBUF[6]),
        .O(gray_byte[6]));
  OBUF \gray_byte_OBUF[7]_inst 
       (.I(gray_byte_OBUF[7]),
        .O(gray_byte[7]));
  IBUF href_IBUF_inst
       (.I(href),
        .O(href_IBUF));
  IBUF pclk_IBUF_inst
       (.I(pclk),
        .O(pclk_IBUF));
  camera_receiver receive1
       (.D(cam_byte_IBUF),
        .NextWriteAddr_en(NextWriteAddr_en),
        .Q(rgb_pixel),
        .full_reg(bram1_n_3),
        .href_IBUF(href_IBUF),
        .pclk_IBUF(pclk_IBUF),
        .vsync_IBUF(vsync_IBUF),
        .write_en(write_en));
  sccb sccb1
       (.Q({config1_n_6,config1_n_7,config1_n_8,config1_n_9,config1_n_10,config1_n_11,config1_n_12,config1_n_13,config1_n_14,config1_n_15,config1_n_16,config1_n_17,config1_n_18,config1_n_19,config1_n_20,config1_n_21}),
        .busy0(busy0),
        .sccb_done(sccb_done),
        .sccb_start(sccb_start),
        .scl_OBUF(scl_OBUF),
        .scl_reg_0(sccb1_n_1),
        .sda_OBUF(sda_OBUF),
        .state(state),
        .\state_reg[0]_0 (config1_n_2),
        .\state_reg[1]_0 (config1_n_4),
        .\wait_time_reg[4]_0 (config1_n_3),
        .xclk_OBUF_BUFG(xclk_OBUF_BUFG));
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
  IBUF vsync_IBUF_inst
       (.I(vsync),
        .O(vsync_IBUF));
  BUFG xclk_OBUF_BUFG_inst
       (.I(xclk_OBUF),
        .O(xclk_OBUF_BUFG));
  OBUF xclk_OBUF_inst
       (.I(xclk_OBUF_BUFG),
        .O(xclk));
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
