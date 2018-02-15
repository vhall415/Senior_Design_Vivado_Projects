-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Feb  8 14:07:53 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/vhall/Desktop/debug_prog/debug_prog.srcs/sources_1/bd/design_2/ip/design_2_sccb_interface_0_0/design_2_sccb_interface_0_0_sim_netlist.vhdl
-- Design      : design_2_sccb_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_sccb_interface_0_0_sccb_interface is
  port (
    scl : out STD_LOGIC;
    ready_out : out STD_LOGIC;
    busy : out STD_LOGIC;
    sda : inout STD_LOGIC;
    start : in STD_LOGIC;
    done : in STD_LOGIC;
    clk : in STD_LOGIC;
    addr_data : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_sccb_interface_0_0_sccb_interface : entity is "sccb_interface";
end design_2_sccb_interface_0_0_sccb_interface;

architecture STRUCTURE of design_2_sccb_interface_0_0_sccb_interface is
  signal addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^busy\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_0 : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal \i[1]_i_1_n_0\ : STD_LOGIC;
  signal \i[2]_i_1_n_0\ : STD_LOGIC;
  signal \i[3]_i_1_n_0\ : STD_LOGIC;
  signal \i[3]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_reg_n_0_[3]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \phase[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase[1]_i_2_n_0\ : STD_LOGIC;
  signal \phase[1]_i_3_n_0\ : STD_LOGIC;
  signal \phase_reg_n_0_[0]\ : STD_LOGIC;
  signal \phase_reg_n_0_[1]\ : STD_LOGIC;
  signal \^ready_out\ : STD_LOGIC;
  signal ready_out_i_1_n_0 : STD_LOGIC;
  signal \^scl\ : STD_LOGIC;
  signal scl_i_1_n_0 : STD_LOGIC;
  signal sda_out_i_1_n_0 : STD_LOGIC;
  signal sda_out_i_2_n_0 : STD_LOGIC;
  signal sda_out_i_3_n_0 : STD_LOGIC;
  signal sda_out_i_4_n_0 : STD_LOGIC;
  signal sda_out_i_5_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal state_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state_return[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[3]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[3]_i_2_n_0\ : STD_LOGIC;
  signal tx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal wait_time : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \wait_time[2]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[3]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[4]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \phase[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \phase[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of scl_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sda_out_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state_return[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state_return[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state_return[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_data[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wait_time[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wait_time[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wait_time[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_time[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_time[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_time[5]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wait_time[5]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_time[5]_i_5\ : label is "soft_lutpair5";
begin
  busy <= \^busy\;
  ready_out <= \^ready_out\;
  scl <= \^scl\;
\addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
      CE => data_0,
      D => addr_data(15),
      Q => addr(7),
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => busy_i_2_n_0,
      I1 => state(3),
      I2 => state(2),
      I3 => state(0),
      I4 => state(1),
      I5 => \^busy\,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => start,
      I1 => done,
      O => busy_i_2_n_0
    );
busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => \^busy\,
      R => '0'
    );
\data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => done,
      I1 => start,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => state(3),
      O => data_0
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
      CE => data_0,
      D => addr_data(7),
      Q => data(7),
      R => '0'
    );
\i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => state(2),
      I1 => \i_reg_n_0_[0]\,
      I2 => state(0),
      O => \i[0]_i_1_n_0\
    );
\i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => state(0),
      I1 => \i_reg_n_0_[1]\,
      I2 => \i_reg_n_0_[0]\,
      O => \i[1]_i_1_n_0\
    );
\i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => state(0),
      I1 => \i_reg_n_0_[2]\,
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[1]\,
      O => \i[2]_i_1_n_0\
    );
\i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10011101"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => \phase[1]_i_3_n_0\,
      O => \i[3]_i_1_n_0\
    );
\i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD7"
    )
        port map (
      I0 => state(0),
      I1 => \i_reg_n_0_[3]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[0]\,
      I4 => \i_reg_n_0_[2]\,
      O => \i[3]_i_2_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[3]_i_1_n_0\,
      D => \i[0]_i_1_n_0\,
      Q => \i_reg_n_0_[0]\,
      R => '0'
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[3]_i_1_n_0\,
      D => \i[1]_i_1_n_0\,
      Q => \i_reg_n_0_[1]\,
      R => '0'
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[3]_i_1_n_0\,
      D => \i[2]_i_1_n_0\,
      Q => \i_reg_n_0_[2]\,
      R => '0'
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \i[3]_i_1_n_0\,
      D => \i[3]_i_2_n_0\,
      Q => \i_reg_n_0_[3]\,
      R => '0'
    );
\phase[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FD5FFD500200020"
    )
        port map (
      I0 => \phase[1]_i_2_n_0\,
      I1 => \phase[1]_i_3_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => \phase_reg_n_0_[1]\,
      I5 => \phase_reg_n_0_[0]\,
      O => \phase[0]_i_1_n_0\
    );
\phase[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FD50020FFF50000"
    )
        port map (
      I0 => \phase[1]_i_2_n_0\,
      I1 => \phase[1]_i_3_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => \phase_reg_n_0_[1]\,
      I5 => \phase_reg_n_0_[0]\,
      O => \phase[1]_i_1_n_0\
    );
\phase[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      O => \phase[1]_i_2_n_0\
    );
\phase[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[2]\,
      I3 => \i_reg_n_0_[3]\,
      O => \phase[1]_i_3_n_0\
    );
\phase_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
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
      C => clk,
      CE => '1',
      D => \phase[1]_i_1_n_0\,
      Q => \phase_reg_n_0_[1]\,
      R => '0'
    );
ready_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => busy_i_2_n_0,
      I1 => state(3),
      I2 => state(2),
      I3 => state(0),
      I4 => state(1),
      I5 => \^ready_out\,
      O => ready_out_i_1_n_0
    );
ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_out_i_1_n_0,
      Q => \^ready_out\,
      R => '0'
    );
scl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDD00C0"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      I4 => \^scl\,
      O => scl_i_1_n_0
    );
scl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => scl_i_1_n_0,
      Q => \^scl\,
      R => '0'
    );
sda_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0016FFE90000"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => sda,
      I5 => sda_out_i_2_n_0,
      O => sda_out_i_1_n_0
    );
sda_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAEAAAAAAAAA"
    )
        port map (
      I0 => state(3),
      I1 => \phase[1]_i_3_n_0\,
      I2 => sda_out_i_3_n_0,
      I3 => sda_out_i_4_n_0,
      I4 => sda_out_i_5_n_0,
      I5 => state(2),
      O => sda_out_i_2_n_0
    );
sda_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => tx_data(4),
      I1 => tx_data(5),
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[1]\,
      I4 => tx_data(6),
      I5 => tx_data(7),
      O => sda_out_i_3_n_0
    );
sda_out_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[2]\,
      O => sda_out_i_4_n_0
    );
sda_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => tx_data(0),
      I1 => tx_data(1),
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[1]\,
      I4 => tx_data(2),
      I5 => tx_data(3),
      O => sda_out_i_5_n_0
    );
sda_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => sda_out_i_1_n_0,
      Q => sda,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFDDDF"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state_return(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state_return(1),
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54440000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state_return(2),
      I3 => state(3),
      I4 => state(0),
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00050505FFFFFEFE"
    )
        port map (
      I0 => state(1),
      I1 => busy_i_2_n_0,
      I2 => state(2),
      I3 => \state[3]_i_3_n_0\,
      I4 => state(0),
      I5 => state(3),
      O => state0
    );
\state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBFFFC"
    )
        port map (
      I0 => state_return(3),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      I5 => sel0(2),
      O => \state[3]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => state0,
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state0,
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => state0,
      D => \state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => state0,
      D => \state[3]_i_2_n_0\,
      Q => state(3),
      R => '0'
    );
\state_return[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      O => \state_return[0]_i_1_n_0\
    );
\state_return[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \state_return[1]_i_1_n_0\
    );
\state_return[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A222222"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \phase_reg_n_0_[0]\,
      I4 => \phase_reg_n_0_[1]\,
      O => \state_return[2]_i_1_n_0\
    );
\state_return[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01BE"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      O => \state_return[3]_i_1_n_0\
    );
\state_return[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \state_return[3]_i_2_n_0\
    );
\state_return_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state_return[3]_i_1_n_0\,
      D => \state_return[0]_i_1_n_0\,
      Q => state_return(0),
      R => '0'
    );
\state_return_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state_return[3]_i_1_n_0\,
      D => \state_return[1]_i_1_n_0\,
      Q => state_return(1),
      R => '0'
    );
\state_return_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state_return[3]_i_1_n_0\,
      D => \state_return[2]_i_1_n_0\,
      Q => state_return(2),
      R => '0'
    );
\state_return_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state_return[3]_i_1_n_0\,
      D => \state_return[3]_i_2_n_0\,
      Q => state_return(3),
      R => '0'
    );
\tx_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data(0),
      I1 => \phase_reg_n_0_[1]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => addr(0),
      O => p_1_in(0)
    );
\tx_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0DD"
    )
        port map (
      I0 => \phase_reg_n_0_[0]\,
      I1 => addr(1),
      I2 => data(1),
      I3 => \phase_reg_n_0_[1]\,
      O => p_1_in(1)
    );
\tx_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data(2),
      I1 => \phase_reg_n_0_[1]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => addr(2),
      O => p_1_in(2)
    );
\tx_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data(3),
      I1 => \phase_reg_n_0_[1]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => addr(3),
      O => p_1_in(3)
    );
\tx_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data(4),
      I1 => \phase_reg_n_0_[1]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => addr(4),
      O => p_1_in(4)
    );
\tx_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data(5),
      I1 => \phase_reg_n_0_[1]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => addr(5),
      O => p_1_in(5)
    );
\tx_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0DD"
    )
        port map (
      I0 => \phase_reg_n_0_[0]\,
      I1 => addr(6),
      I2 => data(6),
      I3 => \phase_reg_n_0_[1]\,
      O => p_1_in(6)
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => \tx_data[7]_i_1_n_0\
    );
\tx_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data(7),
      I1 => \phase_reg_n_0_[1]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => addr(7),
      O => p_1_in(7)
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => tx_data(0),
      R => '0'
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => tx_data(1),
      R => '0'
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => tx_data(2),
      R => '0'
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => tx_data(3),
      R => '0'
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => tx_data(4),
      R => '0'
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => tx_data(5),
      R => '0'
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => tx_data(6),
      R => '0'
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => tx_data(7),
      R => '0'
    );
\wait_time[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEFE"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => sel0(0),
      O => wait_time(0)
    );
\wait_time[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8200"
    )
        port map (
      I0 => state(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => state(0),
      O => wait_time(1)
    );
\wait_time[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FF000007FF0"
    )
        port map (
      I0 => \phase_reg_n_0_[0]\,
      I1 => \phase_reg_n_0_[1]\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => \wait_time[2]_i_2_n_0\,
      O => wait_time(2)
    );
\wait_time[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => state(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => \wait_time[2]_i_2_n_0\
    );
\wait_time[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E22E2222"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \wait_time[3]_i_2_n_0\,
      I3 => sel0(3),
      I4 => state(3),
      I5 => state(1),
      O => \wait_time[3]_i_1_n_0\
    );
\wait_time[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      O => \wait_time[3]_i_2_n_0\
    );
\wait_time[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDF1111"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => sel0(4),
      I3 => \wait_time[4]_i_2_n_0\,
      I4 => state(0),
      O => wait_time(4)
    );
\wait_time[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(3),
      O => \wait_time[4]_i_2_n_0\
    );
\wait_time[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0F0F00EE0FF0"
    )
        port map (
      I0 => \wait_time[5]_i_3_n_0\,
      I1 => \wait_time[5]_i_4_n_0\,
      I2 => state(3),
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => \wait_time[5]_i_1_n_0\
    );
\wait_time[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1003100355FF1003"
    )
        port map (
      I0 => \wait_time[5]_i_5_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      I5 => \wait_time[5]_i_6_n_0\,
      O => wait_time(5)
    );
\wait_time[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => sel0(4),
      I3 => sel0(5),
      O => \wait_time[5]_i_3_n_0\
    );
\wait_time[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      O => \wait_time[5]_i_4_n_0\
    );
\wait_time[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \phase_reg_n_0_[1]\,
      I1 => \phase_reg_n_0_[0]\,
      O => \wait_time[5]_i_5_n_0\
    );
\wait_time[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(3),
      I5 => sel0(5),
      O => \wait_time[5]_i_6_n_0\
    );
\wait_time_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
      CE => \wait_time[5]_i_1_n_0\,
      D => \wait_time[3]_i_1_n_0\,
      Q => sel0(3),
      R => '0'
    );
\wait_time_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
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
      C => clk,
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
entity design_2_sccb_interface_0_0 is
  port (
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    done : in STD_LOGIC;
    addr_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    busy : out STD_LOGIC;
    ready_out : out STD_LOGIC;
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_sccb_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_sccb_interface_0_0 : entity is "design_2_sccb_interface_0_0,sccb_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_2_sccb_interface_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_2_sccb_interface_0_0 : entity is "sccb_interface,Vivado 2017.4";
end design_2_sccb_interface_0_0;

architecture STRUCTURE of design_2_sccb_interface_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 24000000, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0";
begin
inst: entity work.design_2_sccb_interface_0_0_sccb_interface
     port map (
      addr_data(15 downto 0) => addr_data(15 downto 0),
      busy => busy,
      clk => clk,
      done => done,
      ready_out => ready_out,
      scl => scl,
      sda => sda,
      start => start
    );
end STRUCTURE;
