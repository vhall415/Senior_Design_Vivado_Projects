-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Feb  8 19:53:01 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/vhall/Desktop/debug_prog/debug_prog.srcs/sources_1/bd/design_2/ip/design_2_cam_reg_config_0_0/design_2_cam_reg_config_0_0_sim_netlist.vhdl
-- Design      : design_2_cam_reg_config_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_cam_reg_config_0_0_cam_reg_config is
  port (
    reg_loc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sccb_start : out STD_LOGIC;
    done : out STD_LOGIC;
    clk : in STD_LOGIC;
    sccb_ready : in STD_LOGIC;
    sccb_busy : in STD_LOGIC;
    reg_data : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_cam_reg_config_0_0_cam_reg_config : entity is "cam_reg_config";
end design_2_cam_reg_config_0_0_cam_reg_config;

architecture STRUCTURE of design_2_cam_reg_config_0_0_cam_reg_config is
  signal \addr_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal \loc[7]_i_3_n_0\ : STD_LOGIC;
  signal \loc[7]_i_4_n_0\ : STD_LOGIC;
  signal \loc[7]_i_5_n_0\ : STD_LOGIC;
  signal \loc[7]_i_6_n_0\ : STD_LOGIC;
  signal \loc[7]_i_7_n_0\ : STD_LOGIC;
  signal \loc_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_loc[7]_i_1_n_0\ : STD_LOGIC;
  signal \^sccb_start\ : STD_LOGIC;
  signal sccb_start_i_1_n_0 : STD_LOGIC;
  signal sccb_start_i_2_n_0 : STD_LOGIC;
  signal sccb_start_i_3_n_0 : STD_LOGIC;
  signal sccb_start_i_4_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal state_return : STD_LOGIC;
  signal wait_time0 : STD_LOGIC;
  signal \wait_time[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[6]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[7]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[7]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time[7]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \loc[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \loc[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \loc[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \loc[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \loc[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \loc[7]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \loc[7]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sccb_start_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sccb_start_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sccb_start_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wait_time[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_time[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wait_time[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wait_time[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_time[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_time[7]_i_4\ : label is "soft_lutpair2";
begin
  done <= \^done\;
  sccb_start <= \^sccb_start\;
\addr_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_return,
      I1 => sccb_start_i_3_n_0,
      O => \addr_data[15]_i_1_n_0\
    );
\addr_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(0),
      Q => addr_data(0),
      R => '0'
    );
\addr_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(10),
      Q => addr_data(10),
      R => '0'
    );
\addr_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(11),
      Q => addr_data(11),
      R => '0'
    );
\addr_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(12),
      Q => addr_data(12),
      R => '0'
    );
\addr_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(13),
      Q => addr_data(13),
      R => '0'
    );
\addr_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(14),
      Q => addr_data(14),
      R => '0'
    );
\addr_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(15),
      Q => addr_data(15),
      R => '0'
    );
\addr_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(1),
      Q => addr_data(1),
      R => '0'
    );
\addr_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(2),
      Q => addr_data(2),
      R => '0'
    );
\addr_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(3),
      Q => addr_data(3),
      R => '0'
    );
\addr_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(4),
      Q => addr_data(4),
      R => '0'
    );
\addr_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(5),
      Q => addr_data(5),
      R => '0'
    );
\addr_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(6),
      Q => addr_data(6),
      R => '0'
    );
\addr_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(7),
      Q => addr_data(7),
      R => '0'
    );
\addr_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(8),
      Q => addr_data(8),
      R => '0'
    );
\addr_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \addr_data[15]_i_1_n_0\,
      D => reg_data(9),
      Q => addr_data(9),
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^done\,
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done_i_1_n_0,
      Q => \^done\,
      R => '0'
    );
\loc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \loc_reg__0\(0),
      O => p_0_in(0)
    );
\loc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \loc_reg__0\(0),
      I1 => \loc_reg__0\(1),
      O => p_0_in(1)
    );
\loc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \loc_reg__0\(0),
      I1 => \loc_reg__0\(1),
      I2 => \loc_reg__0\(2),
      O => p_0_in(2)
    );
\loc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \loc_reg__0\(3),
      I1 => \loc_reg__0\(0),
      I2 => \loc_reg__0\(1),
      I3 => \loc_reg__0\(2),
      O => p_0_in(3)
    );
\loc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \loc_reg__0\(4),
      I1 => \loc_reg__0\(2),
      I2 => \loc_reg__0\(1),
      I3 => \loc_reg__0\(0),
      I4 => \loc_reg__0\(3),
      O => p_0_in(4)
    );
\loc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \loc_reg__0\(5),
      I1 => \loc_reg__0\(3),
      I2 => \loc_reg__0\(0),
      I3 => \loc_reg__0\(1),
      I4 => \loc_reg__0\(2),
      I5 => \loc_reg__0\(4),
      O => p_0_in(5)
    );
\loc[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \loc_reg__0\(6),
      I1 => \loc_reg__0\(4),
      I2 => \loc[7]_i_7_n_0\,
      I3 => \loc_reg__0\(3),
      I4 => \loc_reg__0\(5),
      O => p_0_in(6)
    );
\loc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444404"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \loc[7]_i_3_n_0\,
      I3 => \loc[7]_i_4_n_0\,
      I4 => \loc[7]_i_5_n_0\,
      I5 => \loc[7]_i_6_n_0\,
      O => state_return
    );
\loc[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \loc_reg__0\(7),
      I1 => \loc_reg__0\(5),
      I2 => \loc_reg__0\(3),
      I3 => \loc[7]_i_7_n_0\,
      I4 => \loc_reg__0\(4),
      I5 => \loc_reg__0\(6),
      O => p_0_in(7)
    );
\loc[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => reg_data(10),
      I1 => reg_data(14),
      I2 => reg_data(13),
      I3 => reg_data(15),
      O => \loc[7]_i_3_n_0\
    );
\loc[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => reg_data(11),
      I1 => reg_data(12),
      I2 => reg_data(9),
      I3 => reg_data(8),
      O => \loc[7]_i_4_n_0\
    );
\loc[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => reg_data(1),
      I1 => reg_data(0),
      I2 => reg_data(2),
      I3 => reg_data(3),
      O => \loc[7]_i_5_n_0\
    );
\loc[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => reg_data(5),
      I1 => reg_data(4),
      I2 => reg_data(7),
      I3 => reg_data(6),
      O => \loc[7]_i_6_n_0\
    );
\loc[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \loc_reg__0\(2),
      I1 => \loc_reg__0\(1),
      I2 => \loc_reg__0\(0),
      O => \loc[7]_i_7_n_0\
    );
\loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_return,
      D => p_0_in(0),
      Q => \loc_reg__0\(0),
      R => '0'
    );
\loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_return,
      D => p_0_in(1),
      Q => \loc_reg__0\(1),
      R => '0'
    );
\loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_return,
      D => p_0_in(2),
      Q => \loc_reg__0\(2),
      R => '0'
    );
\loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_return,
      D => p_0_in(3),
      Q => \loc_reg__0\(3),
      R => '0'
    );
\loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_return,
      D => p_0_in(4),
      Q => \loc_reg__0\(4),
      R => '0'
    );
\loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_return,
      D => p_0_in(5),
      Q => \loc_reg__0\(5),
      R => '0'
    );
\loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_return,
      D => p_0_in(6),
      Q => \loc_reg__0\(6),
      R => '0'
    );
\loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state_return,
      D => p_0_in(7),
      Q => \loc_reg__0\(7),
      R => '0'
    );
\reg_loc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \reg_loc[7]_i_1_n_0\
    );
\reg_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \loc_reg__0\(0),
      Q => reg_loc(0),
      R => '0'
    );
\reg_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \loc_reg__0\(1),
      Q => reg_loc(1),
      R => '0'
    );
\reg_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \loc_reg__0\(2),
      Q => reg_loc(2),
      R => '0'
    );
\reg_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \loc_reg__0\(3),
      Q => reg_loc(3),
      R => '0'
    );
\reg_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \loc_reg__0\(4),
      Q => reg_loc(4),
      R => '0'
    );
\reg_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \loc_reg__0\(5),
      Q => reg_loc(5),
      R => '0'
    );
\reg_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \loc_reg__0\(6),
      Q => reg_loc(6),
      R => '0'
    );
\reg_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \loc_reg__0\(7),
      Q => reg_loc(7),
      R => '0'
    );
sccb_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAA0400"
    )
        port map (
      I0 => state(1),
      I1 => sccb_start_i_2_n_0,
      I2 => sccb_start_i_3_n_0,
      I3 => state(0),
      I4 => \^sccb_start\,
      O => sccb_start_i_1_n_0
    );
sccb_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \loc[7]_i_6_n_0\,
      I1 => \loc[7]_i_5_n_0\,
      I2 => \loc[7]_i_4_n_0\,
      I3 => \loc[7]_i_3_n_0\,
      O => sccb_start_i_2_n_0
    );
sccb_start_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \loc[7]_i_4_n_0\,
      I1 => \loc[7]_i_3_n_0\,
      I2 => sccb_start_i_4_n_0,
      I3 => \loc[7]_i_6_n_0\,
      O => sccb_start_i_3_n_0
    );
sccb_start_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_data(2),
      I1 => reg_data(1),
      I2 => reg_data(3),
      I3 => reg_data(0),
      O => sccb_start_i_4_n_0
    );
sccb_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sccb_start_i_1_n_0,
      Q => \^sccb_start\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC0000AAAA00F0"
    )
        port map (
      I0 => sccb_start_i_2_n_0,
      I1 => \wait_time[7]_i_3_n_0\,
      I2 => sccb_ready,
      I3 => sccb_busy,
      I4 => state(0),
      I5 => state(1),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => \wait_time[7]_i_3_n_0\,
      I1 => state(0),
      I2 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\wait_time[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => sel0(0),
      O => \wait_time[0]_i_1_n_0\
    );
\wait_time[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => state(1),
      I1 => sel0(1),
      I2 => sel0(0),
      O => \wait_time[1]_i_1_n_0\
    );
\wait_time[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC35555"
    )
        port map (
      I0 => sccb_start_i_3_n_0,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => state(1),
      O => \wait_time[2]_i_1_n_0\
    );
\wait_time[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => state(1),
      I5 => sccb_start_i_3_n_0,
      O => \wait_time[3]_i_1_n_0\
    );
\wait_time[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => sel0(4),
      I1 => \wait_time[7]_i_4_n_0\,
      I2 => state(1),
      I3 => sccb_start_i_3_n_0,
      O => \wait_time[4]_i_1_n_0\
    );
\wait_time[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6A6FAA6FAA6FAA"
    )
        port map (
      I0 => sel0(5),
      I1 => \wait_time[5]_i_2_n_0\,
      I2 => state(1),
      I3 => state_return,
      I4 => \wait_time[7]_i_3_n_0\,
      I5 => state(0),
      O => \wait_time[5]_i_1_n_0\
    );
\wait_time[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(4),
      O => \wait_time[5]_i_2_n_0\
    );
\wait_time[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6A6FAA6FAA6FAA"
    )
        port map (
      I0 => sel0(6),
      I1 => \wait_time[6]_i_2_n_0\,
      I2 => state(1),
      I3 => state_return,
      I4 => \wait_time[7]_i_3_n_0\,
      I5 => state(0),
      O => \wait_time[6]_i_1_n_0\
    );
\wait_time[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      I4 => sel0(2),
      I5 => sel0(5),
      O => \wait_time[6]_i_2_n_0\
    );
\wait_time[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => state_return,
      I1 => \wait_time[7]_i_3_n_0\,
      I2 => state(1),
      I3 => state(0),
      O => wait_time0
    );
\wait_time[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB000400000000"
    )
        port map (
      I0 => sel0(5),
      I1 => \wait_time[7]_i_4_n_0\,
      I2 => sel0(4),
      I3 => sel0(6),
      I4 => sel0(7),
      I5 => state(1),
      O => \wait_time[7]_i_2_n_0\
    );
\wait_time[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(7),
      I2 => sel0(4),
      I3 => sel0(5),
      I4 => \wait_time[7]_i_4_n_0\,
      O => \wait_time[7]_i_3_n_0\
    );
\wait_time[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(2),
      O => \wait_time[7]_i_4_n_0\
    );
\wait_time_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => wait_time0,
      D => \wait_time[0]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\wait_time_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wait_time0,
      D => \wait_time[1]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\wait_time_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wait_time0,
      D => \wait_time[2]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
\wait_time_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wait_time0,
      D => \wait_time[3]_i_1_n_0\,
      Q => sel0(3),
      R => '0'
    );
\wait_time_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wait_time0,
      D => \wait_time[4]_i_1_n_0\,
      Q => sel0(4),
      R => '0'
    );
\wait_time_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \wait_time[5]_i_1_n_0\,
      Q => sel0(5),
      R => '0'
    );
\wait_time_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \wait_time[6]_i_1_n_0\,
      Q => sel0(6),
      R => '0'
    );
\wait_time_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wait_time0,
      D => \wait_time[7]_i_2_n_0\,
      Q => sel0(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_cam_reg_config_0_0 is
  port (
    clk : in STD_LOGIC;
    sccb_busy : in STD_LOGIC;
    sccb_ready : in STD_LOGIC;
    reg_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    sccb_start : out STD_LOGIC;
    reg_loc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_cam_reg_config_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_cam_reg_config_0_0 : entity is "design_2_cam_reg_config_0_0,cam_reg_config,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_2_cam_reg_config_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_2_cam_reg_config_0_0 : entity is "cam_reg_config,Vivado 2017.4";
end design_2_cam_reg_config_0_0;

architecture STRUCTURE of design_2_cam_reg_config_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 24000000, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_2_FCLK_CLK0";
begin
inst: entity work.design_2_cam_reg_config_0_0_cam_reg_config
     port map (
      addr_data(15 downto 0) => addr_data(15 downto 0),
      clk => clk,
      done => done,
      reg_data(15 downto 0) => reg_data(15 downto 0),
      reg_loc(7 downto 0) => reg_loc(7 downto 0),
      sccb_busy => sccb_busy,
      sccb_ready => sccb_ready,
      sccb_start => sccb_start
    );
end STRUCTURE;
