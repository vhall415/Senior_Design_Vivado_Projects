-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jan 29 17:26:14 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/vhall/Desktop/senior_design/senior_design.srcs/sources_1/bd/design_1/ip/design_1_rgb2gray_0_1/design_1_rgb2gray_0_1_sim_netlist.vhdl
-- Design      : design_1_rgb2gray_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2gray_0_1_rgb2gray is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    gray : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_reg_loc : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clk_in : in STD_LOGIC;
    pixel_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb2gray_0_1_rgb2gray : entity is "rgb2gray";
end design_1_rgb2gray_0_1_rgb2gray;

architecture STRUCTURE of design_1_rgb2gray_0_1_rgb2gray is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal gray1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gray1__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_n_0\ : STD_LOGIC;
  signal \gray1__0_carry__0_n_1\ : STD_LOGIC;
  signal \gray1__0_carry__0_n_2\ : STD_LOGIC;
  signal \gray1__0_carry__0_n_3\ : STD_LOGIC;
  signal \gray1__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gray1__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \gray1__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \gray1__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \gray1__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \gray1__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \gray1__0_carry_n_0\ : STD_LOGIC;
  signal \gray1__0_carry_n_1\ : STD_LOGIC;
  signal \gray1__0_carry_n_2\ : STD_LOGIC;
  signal \gray1__0_carry_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal read_loc : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \read_loc[10]_i_1_n_0\ : STD_LOGIC;
  signal \read_loc[10]_i_3_n_0\ : STD_LOGIC;
  signal \read_loc[10]_i_4_n_0\ : STD_LOGIC;
  signal \read_loc[10]_i_5_n_0\ : STD_LOGIC;
  signal \^read_reg_loc\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gray1__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gray1__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute HLUTNM : string;
  attribute HLUTNM of \gray1__0_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \gray1__0_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \gray1__0_carry__0_i_3\ : label is "lutpair2";
  attribute HLUTNM of \gray1__0_carry__0_i_4\ : label is "lutpair1";
  attribute HLUTNM of \gray1__0_carry__0_i_6\ : label is "lutpair4";
  attribute HLUTNM of \gray1__0_carry__0_i_7\ : label is "lutpair3";
  attribute HLUTNM of \gray1__0_carry__0_i_8\ : label is "lutpair2";
  attribute HLUTNM of \gray1__0_carry_i_1\ : label is "lutpair0";
  attribute HLUTNM of \gray1__0_carry_i_2\ : label is "lutpair1";
  attribute HLUTNM of \gray1__0_carry_i_5\ : label is "lutpair0";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gray[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gray[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_loc[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_loc[10]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_loc[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_loc[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_loc[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_loc[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_loc[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_loc[8]_i_1\ : label is "soft_lutpair1";
begin
  Q(0) <= \^q\(0);
  read_reg_loc(9 downto 0) <= \^read_reg_loc\(9 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => '0'
    );
\gray1__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1__0_carry_n_0\,
      CO(2) => \gray1__0_carry_n_1\,
      CO(1) => \gray1__0_carry_n_2\,
      CO(0) => \gray1__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => pixel_data_in(5),
      DI(2) => pixel_data_in(15),
      DI(1) => \gray1__0_carry_i_1_n_0\,
      DI(0) => '0',
      O(3 downto 0) => gray1(3 downto 0),
      S(3) => \gray1__0_carry_i_2_n_0\,
      S(2) => \gray1__0_carry_i_3_n_0\,
      S(1) => \gray1__0_carry_i_4_n_0\,
      S(0) => \gray1__0_carry_i_5_n_0\
    );
\gray1__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1__0_carry_n_0\,
      CO(3) => \gray1__0_carry__0_n_0\,
      CO(2) => \gray1__0_carry__0_n_1\,
      CO(1) => \gray1__0_carry__0_n_2\,
      CO(0) => \gray1__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gray1__0_carry__0_i_1_n_0\,
      DI(2) => \gray1__0_carry__0_i_2_n_0\,
      DI(1) => \gray1__0_carry__0_i_3_n_0\,
      DI(0) => \gray1__0_carry__0_i_4_n_0\,
      O(3 downto 0) => gray1(7 downto 4),
      S(3) => \gray1__0_carry__0_i_5_n_0\,
      S(2) => \gray1__0_carry__0_i_6_n_0\,
      S(1) => \gray1__0_carry__0_i_7_n_0\,
      S(0) => \gray1__0_carry__0_i_8_n_0\
    );
\gray1__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_in(14),
      I1 => pixel_data_in(9),
      I2 => pixel_data_in(3),
      O => \gray1__0_carry__0_i_1_n_0\
    );
\gray1__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_in(13),
      I1 => pixel_data_in(2),
      I2 => pixel_data_in(8),
      O => \gray1__0_carry__0_i_2_n_0\
    );
\gray1__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_in(12),
      I1 => pixel_data_in(1),
      I2 => pixel_data_in(7),
      O => \gray1__0_carry__0_i_3_n_0\
    );
\gray1__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_in(11),
      I1 => pixel_data_in(0),
      I2 => pixel_data_in(6),
      O => \gray1__0_carry__0_i_4_n_0\
    );
\gray1__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1__0_carry__0_i_1_n_0\,
      I1 => pixel_data_in(10),
      I2 => pixel_data_in(4),
      I3 => pixel_data_in(15),
      O => \gray1__0_carry__0_i_5_n_0\
    );
\gray1__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pixel_data_in(14),
      I1 => pixel_data_in(9),
      I2 => pixel_data_in(3),
      I3 => \gray1__0_carry__0_i_2_n_0\,
      O => \gray1__0_carry__0_i_6_n_0\
    );
\gray1__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pixel_data_in(13),
      I1 => pixel_data_in(2),
      I2 => pixel_data_in(8),
      I3 => \gray1__0_carry__0_i_3_n_0\,
      O => \gray1__0_carry__0_i_7_n_0\
    );
\gray1__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pixel_data_in(12),
      I1 => pixel_data_in(1),
      I2 => pixel_data_in(7),
      I3 => \gray1__0_carry__0_i_4_n_0\,
      O => \gray1__0_carry__0_i_8_n_0\
    );
\gray1__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1__0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gray1__0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => gray1(9),
      CO(0) => \NLW_gray1__0_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gray1__0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => gray1(8),
      S(3 downto 1) => B"001",
      S(0) => \gray1__0_carry__1_i_1_n_0\
    );
\gray1__0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_in(15),
      I1 => pixel_data_in(4),
      I2 => pixel_data_in(10),
      O => \gray1__0_carry__1_i_1_n_0\
    );
\gray1__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_in(13),
      I1 => pixel_data_in(9),
      I2 => pixel_data_in(3),
      O => \gray1__0_carry_i_1_n_0\
    );
\gray1__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pixel_data_in(11),
      I1 => pixel_data_in(0),
      I2 => pixel_data_in(6),
      I3 => pixel_data_in(5),
      O => \gray1__0_carry_i_2_n_0\
    );
\gray1__0_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => pixel_data_in(10),
      I1 => pixel_data_in(4),
      I2 => pixel_data_in(14),
      I3 => pixel_data_in(15),
      O => \gray1__0_carry_i_3_n_0\
    );
\gray1__0_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1__0_carry_i_1_n_0\,
      I1 => pixel_data_in(10),
      I2 => pixel_data_in(4),
      I3 => pixel_data_in(14),
      O => \gray1__0_carry_i_4_n_0\
    );
\gray1__0_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pixel_data_in(13),
      I1 => pixel_data_in(9),
      I2 => pixel_data_in(3),
      O => \gray1__0_carry_i_5_n_0\
    );
\gray[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0D00D0E8F4FF4F8"
    )
        port map (
      I0 => gray1(3),
      I1 => gray1(0),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => gray1(2),
      I5 => gray1(1),
      O => p_0_in(0)
    );
\gray[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3BE823C"
    )
        port map (
      I0 => gray1(1),
      I1 => p_0_in(3),
      I2 => gray1(3),
      I3 => gray1(2),
      I4 => p_0_in(2),
      O => p_0_in(1)
    );
\gray[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0D00D0E8F4FF4F8"
    )
        port map (
      I0 => gray1(5),
      I1 => gray1(2),
      I2 => p_0_in(4),
      I3 => p_0_in(5),
      I4 => gray1(4),
      I5 => gray1(3),
      O => p_0_in(2)
    );
\gray[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3BE823C"
    )
        port map (
      I0 => gray1(3),
      I1 => p_0_in(5),
      I2 => gray1(5),
      I3 => gray1(4),
      I4 => p_0_in(4),
      O => p_0_in(3)
    );
\gray[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC2B2BC22BC2C2BC"
    )
        port map (
      I0 => gray1(4),
      I1 => gray1(6),
      I2 => gray1(8),
      I3 => gray1(9),
      I4 => gray1(7),
      I5 => gray1(5),
      O => p_0_in(4)
    );
\gray[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CB2CB2C"
    )
        port map (
      I0 => gray1(5),
      I1 => gray1(7),
      I2 => gray1(8),
      I3 => gray1(9),
      I4 => gray1(6),
      O => p_0_in(5)
    );
\gray[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B22C"
    )
        port map (
      I0 => gray1(6),
      I1 => gray1(8),
      I2 => gray1(9),
      I3 => gray1(7),
      O => p_0_in(6)
    );
\gray[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => gray1(7),
      I1 => gray1(8),
      I2 => gray1(9),
      O => p_0_in(7)
    );
\gray_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => count(0),
      D => p_0_in(0),
      Q => gray(0),
      R => '0'
    );
\gray_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => count(0),
      D => p_0_in(1),
      Q => gray(1),
      R => '0'
    );
\gray_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => count(0),
      D => p_0_in(2),
      Q => gray(2),
      R => '0'
    );
\gray_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => count(0),
      D => p_0_in(3),
      Q => gray(3),
      R => '0'
    );
\gray_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => count(0),
      D => p_0_in(4),
      Q => gray(4),
      R => '0'
    );
\gray_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => count(0),
      D => p_0_in(5),
      Q => gray(5),
      R => '0'
    );
\gray_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => count(0),
      D => p_0_in(6),
      Q => gray(6),
      R => '0'
    );
\gray_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => count(0),
      D => p_0_in(7),
      Q => gray(7),
      R => '0'
    );
\read_loc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \read_loc[10]_i_3_n_0\,
      I1 => \^q\(0),
      O => read_loc(0)
    );
\read_loc[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => count(0),
      I1 => \^q\(0),
      I2 => \read_loc[10]_i_3_n_0\,
      O => \read_loc[10]_i_1_n_0\
    );
\read_loc[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \read_loc[10]_i_4_n_0\,
      I1 => \read_loc[10]_i_5_n_0\,
      I2 => \^read_reg_loc\(9),
      O => data0(10)
    );
\read_loc[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \^read_reg_loc\(1),
      I1 => \^read_reg_loc\(2),
      I2 => \^read_reg_loc\(9),
      I3 => \^read_reg_loc\(4),
      I4 => \^read_reg_loc\(0),
      I5 => \read_loc[10]_i_4_n_0\,
      O => \read_loc[10]_i_3_n_0\
    );
\read_loc[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^read_reg_loc\(7),
      I1 => \^read_reg_loc\(5),
      I2 => \^read_reg_loc\(3),
      I3 => \^read_reg_loc\(6),
      I4 => \^read_reg_loc\(8),
      O => \read_loc[10]_i_4_n_0\
    );
\read_loc[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^read_reg_loc\(2),
      I1 => \^read_reg_loc\(0),
      I2 => \^q\(0),
      I3 => \^read_reg_loc\(1),
      I4 => \^read_reg_loc\(4),
      O => \read_loc[10]_i_5_n_0\
    );
\read_loc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^read_reg_loc\(0),
      O => data0(1)
    );
\read_loc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^read_reg_loc\(0),
      I1 => \^q\(0),
      I2 => \^read_reg_loc\(1),
      O => data0(2)
    );
\read_loc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^read_reg_loc\(1),
      I1 => \^q\(0),
      I2 => \^read_reg_loc\(0),
      I3 => \^read_reg_loc\(2),
      O => data0(3)
    );
\read_loc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^read_reg_loc\(2),
      I1 => \^read_reg_loc\(0),
      I2 => \^q\(0),
      I3 => \^read_reg_loc\(1),
      I4 => \^read_reg_loc\(3),
      O => data0(4)
    );
\read_loc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^read_reg_loc\(3),
      I1 => \^read_reg_loc\(1),
      I2 => \^q\(0),
      I3 => \^read_reg_loc\(0),
      I4 => \^read_reg_loc\(2),
      I5 => \^read_reg_loc\(4),
      O => data0(5)
    );
\read_loc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^read_reg_loc\(3),
      I1 => \read_loc[10]_i_5_n_0\,
      I2 => \^read_reg_loc\(5),
      O => data0(6)
    );
\read_loc[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^read_reg_loc\(3),
      I1 => \^read_reg_loc\(5),
      I2 => \read_loc[10]_i_5_n_0\,
      I3 => \^read_reg_loc\(6),
      O => data0(7)
    );
\read_loc[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^read_reg_loc\(5),
      I1 => \^read_reg_loc\(3),
      I2 => \^read_reg_loc\(6),
      I3 => \read_loc[10]_i_5_n_0\,
      I4 => \^read_reg_loc\(7),
      O => data0(8)
    );
\read_loc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^read_reg_loc\(6),
      I1 => \^read_reg_loc\(3),
      I2 => \^read_reg_loc\(5),
      I3 => \^read_reg_loc\(7),
      I4 => \read_loc[10]_i_5_n_0\,
      I5 => \^read_reg_loc\(8),
      O => data0(9)
    );
\read_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => read_loc(0),
      Q => \^q\(0),
      R => '0'
    );
\read_loc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(10),
      Q => \^read_reg_loc\(9),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(1),
      Q => \^read_reg_loc\(0),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(2),
      Q => \^read_reg_loc\(1),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(3),
      Q => \^read_reg_loc\(2),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(4),
      Q => \^read_reg_loc\(3),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(5),
      Q => \^read_reg_loc\(4),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(6),
      Q => \^read_reg_loc\(5),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(7),
      Q => \^read_reg_loc\(6),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(8),
      Q => \^read_reg_loc\(7),
      R => \read_loc[10]_i_1_n_0\
    );
\read_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => count(0),
      D => data0(9),
      Q => \^read_reg_loc\(8),
      R => \read_loc[10]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2gray_0_1 is
  port (
    pixel_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_in : in STD_LOGIC;
    gray : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_reg_loc : out STD_LOGIC_VECTOR ( 10 downto 0 );
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rgb2gray_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rgb2gray_0_1 : entity is "design_1_rgb2gray_0_1,rgb2gray,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_rgb2gray_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_rgb2gray_0_1 : entity is "rgb2gray,Vivado 2017.4";
end design_1_rgb2gray_0_1;

architecture STRUCTURE of design_1_rgb2gray_0_1 is
  signal \^clk_in\ : STD_LOGIC;
begin
  \^clk_in\ <= clk_in;
  clk_out <= \^clk_in\;
inst: entity work.design_1_rgb2gray_0_1_rgb2gray
     port map (
      Q(0) => read_reg_loc(0),
      clk_in => \^clk_in\,
      gray(7 downto 0) => gray(7 downto 0),
      pixel_data_in(15 downto 0) => pixel_data_in(15 downto 0),
      read_reg_loc(9 downto 0) => read_reg_loc(10 downto 1)
    );
end STRUCTURE;
