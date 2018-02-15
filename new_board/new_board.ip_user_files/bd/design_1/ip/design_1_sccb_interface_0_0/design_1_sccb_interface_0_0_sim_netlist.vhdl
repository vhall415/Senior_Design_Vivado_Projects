-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Feb  9 02:39:22 2018
-- Host        : DESKTOP-VPQ35UP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/vhall/Desktop/new_board/new_board.srcs/sources_1/bd/design_1/ip/design_1_sccb_interface_0_0/design_1_sccb_interface_0_0_sim_netlist.vhdl
-- Design      : design_1_sccb_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sccb_interface_0_0_sccb_interface is
  port (
    scl : out STD_LOGIC;
    ready_out : out STD_LOGIC;
    busy : out STD_LOGIC;
    sda : inout STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    addr_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start : in STD_LOGIC;
    done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sccb_interface_0_0_sccb_interface : entity is "sccb_interface";
end design_1_sccb_interface_0_0_sccb_interface;

architecture STRUCTURE of design_1_sccb_interface_0_0_sccb_interface is
  signal addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addr_0 : STD_LOGIC;
  signal \^busy\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal \i[1]_i_1_n_0\ : STD_LOGIC;
  signal \i[2]_i_1_n_0\ : STD_LOGIC;
  signal \i[3]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_reg_n_0_[3]\ : STD_LOGIC;
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
  signal sda_out2_out : STD_LOGIC;
  signal sda_out_i_1_n_0 : STD_LOGIC;
  signal sda_out_i_3_n_0 : STD_LOGIC;
  signal sda_out_i_4_n_0 : STD_LOGIC;
  signal sda_out_i_5_n_0 : STD_LOGIC;
  signal sda_out_i_6_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_return[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[3]_i_1_n_0\ : STD_LOGIC;
  signal \state_return[3]_i_2_n_0\ : STD_LOGIC;
  signal \state_return_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_return_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_return_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_return_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_data_reg_n_0_[7]\ : STD_LOGIC;
  signal wait_time : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \wait_time[2]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[3]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[4]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time[5]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phase[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phase[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sda_out_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sda_out_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state_return[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state_return[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state_return[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state_return[3]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_data[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wait_time[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_time[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_time[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_time[5]_i_4\ : label is "soft_lutpair6";
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
      D => addr_data(15),
      Q => addr(7),
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => \^busy\,
      I1 => busy_i_2_n_0,
      I2 => done,
      I3 => start,
      I4 => reset,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      O => busy_i_2_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => \^busy\,
      R => '0'
    );
\data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => busy_i_2_n_0,
      I1 => start,
      I2 => done,
      I3 => reset,
      O => addr_0
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
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
      CE => addr_0,
      D => addr_data(7),
      Q => data(7),
      R => '0'
    );
\i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[0]\,
      O => \i[0]_i_1_n_0\
    );
\i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[1]\,
      O => \i[1]_i_1_n_0\
    );
\i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A802"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[2]\,
      O => \i[2]_i_1_n_0\
    );
\i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003023"
    )
        port map (
      I0 => \phase[1]_i_2_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => reset,
      I5 => \state_reg_n_0_[1]\,
      O => i
    );
\i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE01FFFF"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[0]\,
      O => \i[3]_i_2_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i,
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
      CE => i,
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
      CE => i,
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
      CE => i,
      D => \i[3]_i_2_n_0\,
      Q => \i_reg_n_0_[3]\,
      R => '0'
    );
\phase[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF005208F208"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \phase[1]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \phase_reg_n_0_[0]\,
      I4 => \phase_reg_n_0_[1]\,
      I5 => \phase[1]_i_3_n_0\,
      O => \phase[0]_i_1_n_0\
    );
\phase[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000052FA0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \phase[1]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \phase_reg_n_0_[0]\,
      I4 => \phase_reg_n_0_[1]\,
      I5 => \phase[1]_i_3_n_0\,
      O => \phase[1]_i_1_n_0\
    );
\phase[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \i_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[2]\,
      I3 => \i_reg_n_0_[3]\,
      O => \phase[1]_i_2_n_0\
    );
\phase[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => reset,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
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
ready_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EE2E"
    )
        port map (
      I0 => \^ready_out\,
      I1 => busy_i_2_n_0,
      I2 => start,
      I3 => done,
      I4 => reset,
      O => ready_out_i_1_n_0
    );
ready_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ready_out_i_1_n_0,
      Q => \^ready_out\,
      R => '0'
    );
scl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAACEAA8A"
    )
        port map (
      I0 => \^scl\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => reset,
      O => scl_i_1_n_0
    );
scl_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => scl_i_1_n_0,
      Q => \^scl\,
      R => '0'
    );
sda_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => sda_out2_out,
      I1 => sda,
      I2 => sda_out_i_3_n_0,
      O => sda_out_i_1_n_0
    );
sda_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000016"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => reset,
      I4 => \state_reg_n_0_[1]\,
      O => sda_out2_out
    );
sda_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBAAABAAAAAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \phase[1]_i_2_n_0\,
      I2 => sda_out_i_4_n_0,
      I3 => sda_out_i_5_n_0,
      I4 => sda_out_i_6_n_0,
      I5 => \state_reg_n_0_[2]\,
      O => sda_out_i_3_n_0
    );
sda_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[4]\,
      I1 => \tx_data_reg_n_0_[5]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[0]\,
      I4 => \tx_data_reg_n_0_[6]\,
      I5 => \tx_data_reg_n_0_[7]\,
      O => sda_out_i_4_n_0
    );
sda_out_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[1]\,
      O => sda_out_i_5_n_0
    );
sda_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \tx_data_reg_n_0_[0]\,
      I1 => \tx_data_reg_n_0_[1]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[0]\,
      I4 => \tx_data_reg_n_0_[2]\,
      I5 => \tx_data_reg_n_0_[3]\,
      O => sda_out_i_6_n_0
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
      INIT => X"FFDDDFDF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_return_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[3]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \state_return_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C080C00"
    )
        port map (
      I0 => \state_return_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000110155551151"
    )
        port map (
      I0 => reset,
      I1 => \state[3]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \wait_time[5]_i_3_n_0\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBFFFC"
    )
        port map (
      I0 => \state_return_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"89888989"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => done,
      I4 => start,
      O => \state[3]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
      CE => \state[3]_i_1_n_0\,
      D => \state[3]_i_2_n_0\,
      Q => \state_reg_n_0_[3]\,
      R => '0'
    );
\state_return[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[3]\,
      O => \state_return[0]_i_1_n_0\
    );
\state_return[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \state_return[1]_i_1_n_0\
    );
\state_return[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000CCCC"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state_return[2]_i_1_n_0\
    );
\state_return[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11110114"
    )
        port map (
      I0 => reset,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      O => \state_return[3]_i_1_n_0\
    );
\state_return[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
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
      Q => \state_return_reg_n_0_[0]\,
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
      Q => \state_return_reg_n_0_[1]\,
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
      Q => \state_return_reg_n_0_[2]\,
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
      Q => \state_return_reg_n_0_[3]\,
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
      O => \tx_data[0]_i_1_n_0\
    );
\tx_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => data(1),
      I1 => \phase_reg_n_0_[1]\,
      I2 => addr(1),
      I3 => \phase_reg_n_0_[0]\,
      O => \tx_data[1]_i_1_n_0\
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
      O => \tx_data[2]_i_1_n_0\
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
      O => \tx_data[3]_i_1_n_0\
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
      O => \tx_data[4]_i_1_n_0\
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
      O => \tx_data[5]_i_1_n_0\
    );
\tx_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => data(6),
      I1 => \phase_reg_n_0_[1]\,
      I2 => addr(6),
      I3 => \phase_reg_n_0_[0]\,
      O => \tx_data[6]_i_1_n_0\
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => reset,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
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
      O => \tx_data[7]_i_2_n_0\
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[0]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[0]\,
      R => '0'
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[1]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[1]\,
      R => '0'
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[2]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[2]\,
      R => '0'
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[3]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[3]\,
      R => '0'
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[4]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[4]\,
      R => '0'
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[5]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[5]\,
      R => '0'
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[6]_i_1_n_0\,
      Q => \tx_data_reg_n_0_[6]\,
      R => '0'
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => \tx_data[7]_i_2_n_0\,
      Q => \tx_data_reg_n_0_[7]\,
      R => '0'
    );
\wait_time[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6E"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => sel0(0),
      I3 => \state_reg_n_0_[1]\,
      O => wait_time(0)
    );
\wait_time[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => sel0(1),
      I3 => sel0(0),
      O => wait_time(1)
    );
\wait_time[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A802FFFFA8020000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \state_reg_n_0_[0]\,
      I5 => \wait_time[2]_i_2_n_0\,
      O => wait_time(2)
    );
\wait_time[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \phase_reg_n_0_[1]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      O => \wait_time[2]_i_2_n_0\
    );
\wait_time[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4544"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \wait_time[3]_i_2_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      O => \wait_time[3]_i_1_n_0\
    );
\wait_time[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01000000000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[0]\,
      O => \wait_time[3]_i_2_n_0\
    );
\wait_time[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9FF000F"
    )
        port map (
      I0 => sel0(4),
      I1 => \wait_time[4]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[0]\,
      O => wait_time(4)
    );
\wait_time[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(2),
      O => \wait_time[4]_i_2_n_0\
    );
\wait_time[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000333033330"
    )
        port map (
      I0 => \wait_time[5]_i_3_n_0\,
      I1 => reset,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[3]\,
      O => \wait_time[5]_i_1_n_0\
    );
\wait_time[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF201120112011"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \wait_time[5]_i_4_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \wait_time[5]_i_5_n_0\,
      O => wait_time(5)
    );
\wait_time[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(5),
      I5 => sel0(4),
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
\wait_time[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      I4 => sel0(2),
      I5 => sel0(4),
      O => \wait_time[5]_i_5_n_0\
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
entity design_1_sccb_interface_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    start : in STD_LOGIC;
    done : in STD_LOGIC;
    addr_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    busy : out STD_LOGIC;
    ready_out : out STD_LOGIC;
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sccb_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sccb_interface_0_0 : entity is "design_1_sccb_interface_0_0,sccb_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_sccb_interface_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_sccb_interface_0_0 : entity is "sccb_interface,Vivado 2017.4";
end design_1_sccb_interface_0_0;

architecture STRUCTURE of design_1_sccb_interface_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
inst: entity work.design_1_sccb_interface_0_0_sccb_interface
     port map (
      addr_data(15 downto 0) => addr_data(15 downto 0),
      busy => busy,
      clk => clk,
      done => done,
      ready_out => ready_out,
      reset => reset,
      scl => scl,
      sda => sda,
      start => start
    );
end STRUCTURE;
