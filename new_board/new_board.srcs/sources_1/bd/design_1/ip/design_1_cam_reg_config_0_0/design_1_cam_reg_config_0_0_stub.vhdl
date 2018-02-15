-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Feb  9 02:39:22 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/vhall/Desktop/new_board/new_board.srcs/sources_1/bd/design_1/ip/design_1_cam_reg_config_0_0/design_1_cam_reg_config_0_0_stub.vhdl
-- Design      : design_1_cam_reg_config_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_cam_reg_config_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sccb_busy : in STD_LOGIC;
    sccb_ready : in STD_LOGIC;
    reg_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    sccb_start : out STD_LOGIC;
    reg_loc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_cam_reg_config_0_0;

architecture stub of design_1_cam_reg_config_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,sccb_busy,sccb_ready,reg_data[15:0],done,sccb_start,reg_loc[7:0],addr_data[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cam_reg_config,Vivado 2017.4";
begin
end;