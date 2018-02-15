-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jan 29 17:26:31 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_camera_receiver_0_0_sim_netlist.vhdl
-- Design      : design_1_camera_receiver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_camera_receiver is
  port (
    pixel_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    write_reg_loc : out STD_LOGIC_VECTOR ( 10 downto 0 );
    write_en : out STD_LOGIC;
    vsync : in STD_LOGIC;
    cam_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC;
    href : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_camera_receiver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_camera_receiver is
  signal \_inferred__0/i__n_0\ : STD_LOGIC;
  signal byte_num : STD_LOGIC;
  signal byte_num_reg_i_1_n_0 : STD_LOGIC;
  signal byte_num_reg_i_2_n_0 : STD_LOGIC;
  signal pixel : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \pixel_data_out_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_reg_i_1_n_0 : STD_LOGIC;
  signal state_reg_i_2_n_0 : STD_LOGIC;
  signal write_en_reg_i_1_n_0 : STD_LOGIC;
  signal write_loc : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \write_loc_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \write_loc_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \write_loc_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \write_loc_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \write_loc_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \write_loc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \write_loc_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \write_loc_reg[9]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \_inferred__0/i_\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of byte_num_reg : label is "LD";
  attribute SOFT_HLUTNM of byte_num_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of byte_num_reg_i_2 : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_data_out_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pixel_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of state_reg : label is "LD";
  attribute SOFT_HLUTNM of state_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of state_reg_i_2 : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of write_en_reg : label is "LD";
  attribute SOFT_HLUTNM of write_en_reg_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \write_loc_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \write_loc_reg[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_loc_reg[10]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_loc_reg[10]_i_4\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \write_loc_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \write_loc_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \write_loc_reg[5]_i_2\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \write_loc_reg[7]_i_2\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \write_loc_reg[8]_i_2\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \write_loc_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \write_loc_reg[9]_i_2\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \write_reg_loc_reg[9]\ : label is "LD";
begin
\_inferred__0/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => vsync,
      I1 => byte_num,
      I2 => state,
      I3 => pclk,
      I4 => href,
      O => \_inferred__0/i__n_0\
    );
byte_num_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => byte_num_reg_i_1_n_0,
      G => byte_num_reg_i_2_n_0,
      GE => '1',
      Q => byte_num
    );
byte_num_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => byte_num,
      I1 => state,
      I2 => vsync,
      O => byte_num_reg_i_1_n_0
    );
byte_num_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => href,
      I1 => pclk,
      I2 => state,
      I3 => vsync,
      O => byte_num_reg_i_2_n_0
    );
\pixel_data_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(0),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(0)
    );
\pixel_data_out_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixel(10),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(10)
    );
\pixel_data_out_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixel(11),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(11)
    );
\pixel_data_out_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixel(12),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(12)
    );
\pixel_data_out_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixel(13),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(13)
    );
\pixel_data_out_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixel(14),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(14)
    );
\pixel_data_out_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixel(15),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(15)
    );
\pixel_data_out_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => state,
      I1 => vsync,
      I2 => href,
      I3 => pclk,
      I4 => byte_num,
      O => \pixel_data_out_reg[15]_i_1_n_0\
    );
\pixel_data_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(1),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(1)
    );
\pixel_data_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(2),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(2)
    );
\pixel_data_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(3),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(3)
    );
\pixel_data_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(4),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(4)
    );
\pixel_data_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(5),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(5)
    );
\pixel_data_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(6),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(6)
    );
\pixel_data_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(7),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(7)
    );
\pixel_data_out_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixel(8),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(8)
    );
\pixel_data_out_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixel(9),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => pixel_data_out(9)
    );
\pixel_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(2),
      G => \_inferred__0/i__n_0\,
      GE => '1',
      Q => pixel(10)
    );
\pixel_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(3),
      G => \_inferred__0/i__n_0\,
      GE => '1',
      Q => pixel(11)
    );
\pixel_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(4),
      G => \_inferred__0/i__n_0\,
      GE => '1',
      Q => pixel(12)
    );
\pixel_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(5),
      G => \_inferred__0/i__n_0\,
      GE => '1',
      Q => pixel(13)
    );
\pixel_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(6),
      G => \_inferred__0/i__n_0\,
      GE => '1',
      Q => pixel(14)
    );
\pixel_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(7),
      G => \_inferred__0/i__n_0\,
      GE => '1',
      Q => pixel(15)
    );
\pixel_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(0),
      G => \_inferred__0/i__n_0\,
      GE => '1',
      Q => pixel(8)
    );
\pixel_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cam_byte(1),
      G => \_inferred__0/i__n_0\,
      GE => '1',
      Q => pixel(9)
    );
state_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => state_reg_i_1_n_0,
      G => state_reg_i_2_n_0,
      GE => '1',
      Q => state
    );
state_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state,
      I1 => vsync,
      O => state_reg_i_1_n_0
    );
state_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state,
      I1 => vsync,
      O => state_reg_i_2_n_0
    );
write_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => byte_num,
      G => write_en_reg_i_1_n_0,
      GE => '1',
      Q => write_en
    );
write_en_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => state,
      I1 => pclk,
      I2 => vsync,
      I3 => href,
      O => write_en_reg_i_1_n_0
    );
\write_loc_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[0]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(0)
    );
\write_loc_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \write_loc_reg[10]_i_4_n_0\,
      I1 => \write_loc_reg[10]_i_2_n_0\,
      I2 => write_loc(0),
      O => \write_loc_reg[0]_i_1_n_0\
    );
\write_loc_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[10]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(10)
    );
\write_loc_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F00EE0"
    )
        port map (
      I0 => write_loc(0),
      I1 => \write_loc_reg[10]_i_2_n_0\,
      I2 => write_loc(10),
      I3 => \write_loc_reg[10]_i_3_n_0\,
      I4 => \write_loc_reg[10]_i_4_n_0\,
      O => \write_loc_reg[10]_i_1_n_0\
    );
\write_loc_reg[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => write_loc(1),
      I1 => write_loc(5),
      I2 => write_loc(10),
      I3 => write_loc(3),
      I4 => write_loc(2),
      O => \write_loc_reg[10]_i_2_n_0\
    );
\write_loc_reg[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => write_loc(3),
      I1 => write_loc(1),
      I2 => write_loc(0),
      I3 => write_loc(2),
      I4 => write_loc(5),
      O => \write_loc_reg[10]_i_3_n_0\
    );
\write_loc_reg[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => write_loc(8),
      I1 => write_loc(6),
      I2 => write_loc(4),
      I3 => write_loc(7),
      I4 => write_loc(9),
      O => \write_loc_reg[10]_i_4_n_0\
    );
\write_loc_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[1]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(1)
    );
\write_loc_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FE0"
    )
        port map (
      I0 => \write_loc_reg[10]_i_2_n_0\,
      I1 => \write_loc_reg[10]_i_4_n_0\,
      I2 => write_loc(1),
      I3 => write_loc(0),
      O => \write_loc_reg[1]_i_1_n_0\
    );
\write_loc_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[2]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(2)
    );
\write_loc_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FE0F0E0"
    )
        port map (
      I0 => \write_loc_reg[10]_i_2_n_0\,
      I1 => \write_loc_reg[10]_i_4_n_0\,
      I2 => write_loc(2),
      I3 => write_loc(0),
      I4 => write_loc(1),
      O => \write_loc_reg[2]_i_1_n_0\
    );
\write_loc_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[3]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(3)
    );
\write_loc_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0E0E0F0F0E0E0"
    )
        port map (
      I0 => \write_loc_reg[10]_i_2_n_0\,
      I1 => \write_loc_reg[10]_i_4_n_0\,
      I2 => write_loc(3),
      I3 => write_loc(1),
      I4 => write_loc(0),
      I5 => write_loc(2),
      O => \write_loc_reg[3]_i_1_n_0\
    );
\write_loc_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[4]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(4)
    );
\write_loc_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FEFE00"
    )
        port map (
      I0 => write_loc(0),
      I1 => \write_loc_reg[10]_i_2_n_0\,
      I2 => \write_loc_reg[10]_i_4_n_0\,
      I3 => write_loc(4),
      I4 => \write_loc_reg[5]_i_2_n_0\,
      O => \write_loc_reg[4]_i_1_n_0\
    );
\write_loc_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[5]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(5)
    );
\write_loc_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFE00FE00FE00"
    )
        port map (
      I0 => write_loc(0),
      I1 => \write_loc_reg[10]_i_2_n_0\,
      I2 => \write_loc_reg[10]_i_4_n_0\,
      I3 => write_loc(5),
      I4 => \write_loc_reg[5]_i_2_n_0\,
      I5 => write_loc(4),
      O => \write_loc_reg[5]_i_1_n_0\
    );
\write_loc_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => write_loc(2),
      I1 => write_loc(0),
      I2 => write_loc(1),
      I3 => write_loc(3),
      O => \write_loc_reg[5]_i_2_n_0\
    );
\write_loc_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[6]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(6)
    );
\write_loc_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFE00FE00FE00"
    )
        port map (
      I0 => write_loc(0),
      I1 => \write_loc_reg[10]_i_2_n_0\,
      I2 => \write_loc_reg[10]_i_4_n_0\,
      I3 => write_loc(6),
      I4 => \write_loc_reg[10]_i_3_n_0\,
      I5 => write_loc(4),
      O => \write_loc_reg[6]_i_1_n_0\
    );
\write_loc_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[7]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(7)
    );
\write_loc_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE0000FEFE00"
    )
        port map (
      I0 => write_loc(0),
      I1 => \write_loc_reg[10]_i_2_n_0\,
      I2 => \write_loc_reg[10]_i_4_n_0\,
      I3 => write_loc(7),
      I4 => \write_loc_reg[10]_i_3_n_0\,
      I5 => \write_loc_reg[7]_i_2_n_0\,
      O => \write_loc_reg[7]_i_1_n_0\
    );
\write_loc_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => write_loc(4),
      I1 => write_loc(6),
      O => \write_loc_reg[7]_i_2_n_0\
    );
\write_loc_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[8]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(8)
    );
\write_loc_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0000FFEF00"
    )
        port map (
      I0 => write_loc(0),
      I1 => \write_loc_reg[10]_i_2_n_0\,
      I2 => write_loc(9),
      I3 => write_loc(8),
      I4 => \write_loc_reg[10]_i_3_n_0\,
      I5 => \write_loc_reg[8]_i_2_n_0\,
      O => \write_loc_reg[8]_i_1_n_0\
    );
\write_loc_reg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => write_loc(6),
      I1 => write_loc(4),
      I2 => write_loc(7),
      O => \write_loc_reg[8]_i_2_n_0\
    );
\write_loc_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \write_loc_reg[9]_i_1_n_0\,
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_loc(9)
    );
\write_loc_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F00FE0"
    )
        port map (
      I0 => write_loc(0),
      I1 => \write_loc_reg[10]_i_2_n_0\,
      I2 => write_loc(9),
      I3 => \write_loc_reg[10]_i_3_n_0\,
      I4 => \write_loc_reg[9]_i_2_n_0\,
      O => \write_loc_reg[9]_i_1_n_0\
    );
\write_loc_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => write_loc(7),
      I1 => write_loc(4),
      I2 => write_loc(6),
      I3 => write_loc(8),
      O => \write_loc_reg[9]_i_2_n_0\
    );
\write_reg_loc_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(0),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(0)
    );
\write_reg_loc_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(10),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(10)
    );
\write_reg_loc_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(1),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(1)
    );
\write_reg_loc_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(2),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(2)
    );
\write_reg_loc_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(3),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(3)
    );
\write_reg_loc_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(4),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(4)
    );
\write_reg_loc_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(5),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(5)
    );
\write_reg_loc_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(6),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(6)
    );
\write_reg_loc_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(7),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(7)
    );
\write_reg_loc_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(8),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(8)
    );
\write_reg_loc_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_loc(9),
      G => \pixel_data_out_reg[15]_i_1_n_0\,
      GE => '1',
      Q => write_reg_loc(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    cam_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    xclk : out STD_LOGIC;
    pixel_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    write_reg_loc : out STD_LOGIC_VECTOR ( 10 downto 0 );
    write_en : out STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_camera_receiver_0_0,camera_receiver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "camera_receiver,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^pclk\ : STD_LOGIC;
begin
  \^pclk\ <= pclk;
  clk_out <= \^pclk\;
  xclk <= \^pclk\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_camera_receiver
     port map (
      cam_byte(7 downto 0) => cam_byte(7 downto 0),
      href => href,
      pclk => \^pclk\,
      pixel_data_out(15 downto 0) => pixel_data_out(15 downto 0),
      vsync => vsync,
      write_en => write_en,
      write_reg_loc(10 downto 0) => write_reg_loc(10 downto 0)
    );
end STRUCTURE;
