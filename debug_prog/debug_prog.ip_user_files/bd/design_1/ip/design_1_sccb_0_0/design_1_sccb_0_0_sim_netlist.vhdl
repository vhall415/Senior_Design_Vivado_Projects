-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Feb  6 17:10:48 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/vhall/Desktop/debug_prog/debug_prog.srcs/sources_1/bd/design_1/ip/design_1_sccb_0_0/design_1_sccb_0_0_sim_netlist.vhdl
-- Design      : design_1_sccb_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sccb_0_0_sccb is
  port (
    reg_loc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    scl : out STD_LOGIC;
    sda_out : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    addr_data : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sccb_0_0_sccb : entity is "sccb";
end design_1_sccb_0_0_sccb;

architecture STRUCTURE of design_1_sccb_0_0_sccb is
  signal addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_0 : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \phase[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase[1]_i_2_n_0\ : STD_LOGIC;
  signal \phase[1]_i_3_n_0\ : STD_LOGIC;
  signal \phase_reg_n_0_[0]\ : STD_LOGIC;
  signal \phase_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_loc[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_loc_val[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_loc_val[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_loc_val_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^scl\ : STD_LOGIC;
  signal scl_i_1_n_0 : STD_LOGIC;
  signal \^sda_out\ : STD_LOGIC;
  signal sda_out_i_1_n_0 : STD_LOGIC;
  signal sda_out_i_2_n_0 : STD_LOGIC;
  signal sda_out_i_3_n_0 : STD_LOGIC;
  signal sda_out_i_4_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_return[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_return_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_return_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_return_reg_n_0_[2]\ : STD_LOGIC;
  signal tx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tx_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_2_n_0\ : STD_LOGIC;
  signal wait_time : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \wait_time[2]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[3]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[4]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \phase[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \phase[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_loc_val[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_loc_val[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_loc_val[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_loc_val[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_loc_val[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_data[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wait_time[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_time[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_time[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_time[5]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_time[5]_i_4\ : label is "soft_lutpair1";
begin
  scl <= \^scl\;
  sda_out <= \^sda_out\;
\addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(8),
      Q => addr(0),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(9),
      Q => addr(1),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(10),
      Q => addr(2),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(11),
      Q => addr(3),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(12),
      Q => addr(4),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(13),
      Q => addr(5),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(14),
      Q => addr(6),
      R => '0'
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(15),
      Q => addr(7),
      R => '0'
    );
\data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      O => data_0
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(0),
      Q => data(0),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(1),
      Q => data(1),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(2),
      Q => data(2),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(3),
      Q => data(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(4),
      Q => data(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(5),
      Q => data(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(6),
      Q => data(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => data_0,
      D => addr_data(7),
      Q => data(7),
      R => '0'
    );
\i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3332"
    )
        port map (
      I0 => \i_reg__0\(2),
      I1 => \i_reg__0\(0),
      I2 => \i_reg__0\(1),
      I3 => \i_reg__0\(3),
      O => \i[0]_i_1_n_0\
    );
\i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F00E"
    )
        port map (
      I0 => \i_reg__0\(2),
      I1 => \i_reg__0\(3),
      I2 => \i_reg__0\(0),
      I3 => \i_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9A8"
    )
        port map (
      I0 => \i_reg__0\(2),
      I1 => \i_reg__0\(0),
      I2 => \i_reg__0\(1),
      I3 => \i_reg__0\(3),
      O => \p_0_in__0\(2)
    );
\i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \i_reg__0\(2),
      I1 => \i_reg__0\(0),
      I2 => \i_reg__0\(1),
      I3 => \i_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \i[0]_i_1_n_0\,
      Q => \i_reg__0\(0),
      R => '0'
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \i_reg__0\(1),
      R => '0'
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \i_reg__0\(2),
      R => '0'
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \i_reg__0\(3),
      R => '0'
    );
\phase[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \phase[1]_i_2_n_0\,
      I2 => \phase_reg_n_0_[0]\,
      O => \phase[0]_i_1_n_0\
    );
\phase[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => \phase_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \phase[1]_i_2_n_0\,
      I3 => \phase_reg_n_0_[1]\,
      O => \phase[1]_i_1_n_0\
    );
\phase[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000008800"
    )
        port map (
      I0 => \phase[1]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \wait_time[5]_i_4_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[2]\,
      O => \phase[1]_i_2_n_0\
    );
\phase[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \i_reg__0\(3),
      I1 => \i_reg__0\(1),
      I2 => \i_reg__0\(0),
      I3 => \i_reg__0\(2),
      O => \phase[1]_i_3_n_0\
    );
\phase_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \phase[0]_i_1_n_0\,
      Q => \phase_reg_n_0_[0]\,
      R => '0'
    );
\phase_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \phase[1]_i_1_n_0\,
      Q => \phase_reg_n_0_[1]\,
      R => '0'
    );
\reg_loc[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      O => \reg_loc[7]_i_1_n_0\
    );
\reg_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \reg_loc_val_reg__0\(0),
      Q => reg_loc(0),
      R => '0'
    );
\reg_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \reg_loc_val_reg__0\(1),
      Q => reg_loc(1),
      R => '0'
    );
\reg_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \reg_loc_val_reg__0\(2),
      Q => reg_loc(2),
      R => '0'
    );
\reg_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \reg_loc_val_reg__0\(3),
      Q => reg_loc(3),
      R => '0'
    );
\reg_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \reg_loc_val_reg__0\(4),
      Q => reg_loc(4),
      R => '0'
    );
\reg_loc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \reg_loc_val_reg__0\(5),
      Q => reg_loc(5),
      R => '0'
    );
\reg_loc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \reg_loc_val_reg__0\(6),
      Q => reg_loc(6),
      R => '0'
    );
\reg_loc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \reg_loc[7]_i_1_n_0\,
      D => \reg_loc_val_reg__0\(7),
      Q => reg_loc(7),
      R => '0'
    );
\reg_loc_val[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(0),
      O => p_0_in(0)
    );
\reg_loc_val[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(0),
      I1 => \reg_loc_val_reg__0\(1),
      O => p_0_in(1)
    );
\reg_loc_val[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(2),
      I1 => \reg_loc_val_reg__0\(0),
      I2 => \reg_loc_val_reg__0\(1),
      O => p_0_in(2)
    );
\reg_loc_val[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(3),
      I1 => \reg_loc_val_reg__0\(1),
      I2 => \reg_loc_val_reg__0\(0),
      I3 => \reg_loc_val_reg__0\(2),
      O => p_0_in(3)
    );
\reg_loc_val[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(4),
      I1 => \reg_loc_val_reg__0\(2),
      I2 => \reg_loc_val_reg__0\(0),
      I3 => \reg_loc_val_reg__0\(1),
      I4 => \reg_loc_val_reg__0\(3),
      O => p_0_in(4)
    );
\reg_loc_val[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(5),
      I1 => \reg_loc_val_reg__0\(3),
      I2 => \reg_loc_val_reg__0\(1),
      I3 => \reg_loc_val_reg__0\(0),
      I4 => \reg_loc_val_reg__0\(2),
      I5 => \reg_loc_val_reg__0\(4),
      O => p_0_in(5)
    );
\reg_loc_val[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \reg_loc_val[7]_i_3_n_0\,
      I1 => \reg_loc_val_reg__0\(6),
      O => p_0_in(6)
    );
\reg_loc_val[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \state[3]_i_3_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      O => \reg_loc_val[7]_i_1_n_0\
    );
\reg_loc_val[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(7),
      I1 => \reg_loc_val[7]_i_3_n_0\,
      I2 => \reg_loc_val_reg__0\(6),
      O => p_0_in(7)
    );
\reg_loc_val[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(4),
      I1 => \reg_loc_val_reg__0\(2),
      I2 => \reg_loc_val_reg__0\(0),
      I3 => \reg_loc_val_reg__0\(1),
      I4 => \reg_loc_val_reg__0\(3),
      I5 => \reg_loc_val_reg__0\(5),
      O => \reg_loc_val[7]_i_3_n_0\
    );
\reg_loc_val_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \reg_loc_val[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \reg_loc_val_reg__0\(0),
      R => '0'
    );
\reg_loc_val_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \reg_loc_val[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \reg_loc_val_reg__0\(1),
      R => '0'
    );
\reg_loc_val_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \reg_loc_val[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \reg_loc_val_reg__0\(2),
      R => '0'
    );
\reg_loc_val_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \reg_loc_val[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \reg_loc_val_reg__0\(3),
      R => '0'
    );
\reg_loc_val_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \reg_loc_val[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \reg_loc_val_reg__0\(4),
      R => '0'
    );
\reg_loc_val_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \reg_loc_val[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \reg_loc_val_reg__0\(5),
      R => '0'
    );
\reg_loc_val_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \reg_loc_val[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \reg_loc_val_reg__0\(6),
      R => '0'
    );
\reg_loc_val_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \reg_loc_val[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \reg_loc_val_reg__0\(7),
      R => '0'
    );
scl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEF0045"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \^scl\,
      O => scl_i_1_n_0
    );
scl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => scl_i_1_n_0,
      Q => \^scl\,
      R => '0'
    );
sda_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFCFF0E000003"
    )
        port map (
      I0 => sda_out_i_2_n_0,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \^sda_out\,
      O => sda_out_i_1_n_0
    );
sda_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAAAAC000AAAA0"
    )
        port map (
      I0 => sda_out_i_3_n_0,
      I1 => \i_reg__0\(3),
      I2 => \i_reg__0\(1),
      I3 => \i_reg__0\(0),
      I4 => \i_reg__0\(2),
      I5 => sda_out_i_4_n_0,
      O => sda_out_i_2_n_0
    );
sda_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \tx_data[0]_i_1_n_0\,
      I1 => \tx_data[1]_i_1_n_0\,
      I2 => \i_reg__0\(1),
      I3 => \i_reg__0\(0),
      I4 => \tx_data[2]_i_1_n_0\,
      I5 => \tx_data[3]_i_1_n_0\,
      O => sda_out_i_3_n_0
    );
sda_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \tx_data[4]_i_1_n_0\,
      I1 => \tx_data[5]_i_1_n_0\,
      I2 => \i_reg__0\(1),
      I3 => \i_reg__0\(0),
      I4 => \tx_data[6]_i_1_n_0\,
      I5 => \tx_data[7]_i_2_n_0\,
      O => sda_out_i_4_n_0
    );
sda_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => sda_out_i_1_n_0,
      Q => \^sda_out\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200030003"
    )
        port map (
      I0 => \state_return_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state[3]_i_4_n_0\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state_return_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state[3]_i_4_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state_return_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state[3]_i_4_n_0\,
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0003FFFE"
    )
        port map (
      I0 => \state[3]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state[3]_i_4_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \state[3]_i_5_n_0\,
      I1 => \reg_loc_val_reg__0\(6),
      I2 => \reg_loc_val_reg__0\(7),
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(4),
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFE00"
    )
        port map (
      I0 => \reg_loc_val_reg__0\(2),
      I1 => \reg_loc_val_reg__0\(1),
      I2 => \reg_loc_val_reg__0\(0),
      I3 => \reg_loc_val_reg__0\(3),
      I4 => \reg_loc_val_reg__0\(5),
      I5 => \reg_loc_val_reg__0\(4),
      O => \state[3]_i_5_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \state[3]_i_1_n_0\,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \state[3]_i_1_n_0\,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \state[3]_i_1_n_0\,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => \state[3]_i_1_n_0\,
      D => \state[3]_i_2_n_0\,
      Q => \state_reg_n_0_[3]\,
      R => '0'
    );
\state_return[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDCFFFF00103330"
    )
        port map (
      I0 => \wait_time[5]_i_4_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_return_reg_n_0_[0]\,
      O => \state_return[0]_i_1_n_0\
    );
\state_return[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFB0550"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_return_reg_n_0_[1]\,
      O => \state_return[1]_i_1_n_0\
    );
\state_return[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFECFCFF03203030"
    )
        port map (
      I0 => \wait_time[5]_i_4_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_return_reg_n_0_[2]\,
      O => \state_return[2]_i_1_n_0\
    );
\state_return_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \state_return[0]_i_1_n_0\,
      Q => \state_return_reg_n_0_[0]\,
      R => '0'
    );
\state_return_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \state_return[1]_i_1_n_0\,
      Q => \state_return_reg_n_0_[1]\,
      R => '0'
    );
\state_return_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \state_return[2]_i_1_n_0\,
      Q => \state_return_reg_n_0_[2]\,
      R => '0'
    );
\tx_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => tx_data(0),
      I1 => addr(0),
      I2 => \phase_reg_n_0_[0]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => data(0),
      O => \tx_data[0]_i_1_n_0\
    );
\tx_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEF322F3"
    )
        port map (
      I0 => addr(1),
      I1 => \phase_reg_n_0_[1]\,
      I2 => data(1),
      I3 => \phase_reg_n_0_[0]\,
      I4 => tx_data(1),
      O => \tx_data[1]_i_1_n_0\
    );
\tx_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => tx_data(2),
      I1 => addr(2),
      I2 => \phase_reg_n_0_[0]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => data(2),
      O => \tx_data[2]_i_1_n_0\
    );
\tx_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => tx_data(3),
      I1 => addr(3),
      I2 => \phase_reg_n_0_[0]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => data(3),
      O => \tx_data[3]_i_1_n_0\
    );
\tx_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => tx_data(4),
      I1 => addr(4),
      I2 => \phase_reg_n_0_[0]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => data(4),
      O => \tx_data[4]_i_1_n_0\
    );
\tx_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => tx_data(5),
      I1 => addr(5),
      I2 => \phase_reg_n_0_[0]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => data(5),
      O => \tx_data[5]_i_1_n_0\
    );
\tx_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEF322F3"
    )
        port map (
      I0 => addr(6),
      I1 => \phase_reg_n_0_[1]\,
      I2 => data(6),
      I3 => \phase_reg_n_0_[0]\,
      I4 => tx_data(6),
      O => \tx_data[6]_i_1_n_0\
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      O => \tx_data[7]_i_1_n_0\
    );
\tx_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => tx_data(7),
      I1 => addr(7),
      I2 => \phase_reg_n_0_[0]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => data(7),
      O => \tx_data[7]_i_2_n_0\
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[0]_i_1_n_0\,
      Q => tx_data(0),
      R => '0'
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[1]_i_1_n_0\,
      Q => tx_data(1),
      R => '0'
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[2]_i_1_n_0\,
      Q => tx_data(2),
      R => '0'
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[3]_i_1_n_0\,
      Q => tx_data(3),
      R => '0'
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[4]_i_1_n_0\,
      Q => tx_data(4),
      R => '0'
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[5]_i_1_n_0\,
      Q => tx_data(5),
      R => '0'
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[6]_i_1_n_0\,
      Q => tx_data(6),
      R => '0'
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[7]_i_2_n_0\,
      Q => tx_data(7),
      R => '0'
    );
\wait_time[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFDCFFF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => sel0(0),
      I4 => \state_reg_n_0_[1]\,
      O => wait_time(0)
    );
\wait_time[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => sel0(1),
      I2 => sel0(0),
      O => wait_time(1)
    );
\wait_time[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555500415555AA41"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \wait_time[2]_i_2_n_0\,
      I2 => sel0(2),
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \wait_time[5]_i_4_n_0\,
      O => wait_time(2)
    );
\wait_time[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \wait_time[2]_i_2_n_0\
    );
\wait_time[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F009"
    )
        port map (
      I0 => sel0(3),
      I1 => \wait_time[3]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      O => wait_time(3)
    );
\wait_time[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => \wait_time[3]_i_2_n_0\
    );
\wait_time[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFFF09"
    )
        port map (
      I0 => sel0(4),
      I1 => \wait_time[4]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      O => wait_time(4)
    );
\wait_time[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \wait_time[4]_i_2_n_0\
    );
\wait_time[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FEFE"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state[3]_i_4_n_0\,
      I4 => \state_reg_n_0_[3]\,
      O => \wait_time[5]_i_1_n_0\
    );
\wait_time[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AA001414"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \wait_time[5]_i_3_n_0\,
      I2 => sel0(5),
      I3 => \wait_time[5]_i_4_n_0\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => wait_time(5)
    );
\wait_time[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \wait_time[5]_i_3_n_0\
    );
\wait_time[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_reg_n_0_[0]\,
      I1 => \phase_reg_n_0_[1]\,
      O => \wait_time[5]_i_4_n_0\
    );
\wait_time_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => \wait_time[5]_i_1_n_0\,
      D => wait_time(0),
      Q => sel0(0),
      R => '0'
    );
\wait_time_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => \wait_time[5]_i_1_n_0\,
      D => wait_time(1),
      Q => sel0(1),
      R => '0'
    );
\wait_time_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => \wait_time[5]_i_1_n_0\,
      D => wait_time(2),
      Q => sel0(2),
      R => '0'
    );
\wait_time_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => \wait_time[5]_i_1_n_0\,
      D => wait_time(3),
      Q => sel0(3),
      R => '0'
    );
\wait_time_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => \wait_time[5]_i_1_n_0\,
      D => wait_time(4),
      Q => sel0(4),
      R => '0'
    );
\wait_time_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \wait_time[5]_i_1_n_0\,
      D => wait_time(5),
      Q => sel0(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sccb_0_0 is
  port (
    clk_in : in STD_LOGIC;
    addr_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_loc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    scl : out STD_LOGIC;
    sda_out : out STD_LOGIC;
    sccb_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sccb_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sccb_0_0 : entity is "design_1_sccb_0_0,sccb,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_sccb_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_sccb_0_0 : entity is "sccb,Vivado 2017.4";
end design_1_sccb_0_0;

architecture STRUCTURE of design_1_sccb_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  sccb_done <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_sccb_0_0_sccb
     port map (
      addr_data(15 downto 0) => addr_data(15 downto 0),
      clk_in => clk_in,
      reg_loc(7 downto 0) => reg_loc(7 downto 0),
      scl => scl,
      sda_out => sda_out
    );
end STRUCTURE;
