-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Feb  8 19:31:59 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/vhall/Desktop/clk_out_test/clk_out_test.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0_stub.vhdl
-- Design      : design_1_processing_system7_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_processing_system7_0_0 is
  Port ( 
    FCLK_CLK0 : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );

end design_1_processing_system7_0_0;

architecture stub of design_1_processing_system7_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "FCLK_CLK0,MIO[53:0],PS_SRSTB,PS_CLK,PS_PORB";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "processing_system7_v5_5_processing_system7,Vivado 2017.4";
begin
end;