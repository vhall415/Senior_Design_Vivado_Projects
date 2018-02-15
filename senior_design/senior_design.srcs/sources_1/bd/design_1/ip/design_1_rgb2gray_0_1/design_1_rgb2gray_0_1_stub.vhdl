-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jan 29 17:26:14 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/vhall/Desktop/senior_design/senior_design.srcs/sources_1/bd/design_1/ip/design_1_rgb2gray_0_1/design_1_rgb2gray_0_1_stub.vhdl
-- Design      : design_1_rgb2gray_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_rgb2gray_0_1 is
  Port ( 
    pixel_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_in : in STD_LOGIC;
    gray : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_reg_loc : out STD_LOGIC_VECTOR ( 10 downto 0 );
    clk_out : out STD_LOGIC
  );

end design_1_rgb2gray_0_1;

architecture stub of design_1_rgb2gray_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_data_in[15:0],clk_in,gray[7:0],read_reg_loc[10:0],clk_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rgb2gray,Vivado 2017.4";
begin
end;