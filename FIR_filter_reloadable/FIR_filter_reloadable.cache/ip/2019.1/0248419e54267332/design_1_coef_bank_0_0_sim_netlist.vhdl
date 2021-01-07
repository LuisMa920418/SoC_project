-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Dec  6 16:53:39 2020
-- Host        : DESKTOP-VJ7SO95 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_coef_bank_0_0_sim_netlist.vhdl
-- Design      : design_1_coef_bank_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg is
  port (
    dout : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \Q_buf_reg[24]_0\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg is
  signal \Q_buf[24]_i_1_n_0\ : STD_LOGIC;
begin
\Q_buf[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \Q_buf_reg[24]_0\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \Q_buf[24]_i_1_n_0\
    );
\Q_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(0),
      Q => dout(0)
    );
\Q_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(10),
      Q => dout(10)
    );
\Q_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(11),
      Q => dout(11)
    );
\Q_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(12),
      Q => dout(12)
    );
\Q_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(13),
      Q => dout(13)
    );
\Q_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(14),
      Q => dout(14)
    );
\Q_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(15),
      Q => dout(15)
    );
\Q_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(16),
      Q => dout(16)
    );
\Q_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(17),
      Q => dout(17)
    );
\Q_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(18),
      Q => dout(18)
    );
\Q_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(19),
      Q => dout(19)
    );
\Q_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(1),
      Q => dout(1)
    );
\Q_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(20),
      Q => dout(20)
    );
\Q_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(21),
      Q => dout(21)
    );
\Q_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(22),
      Q => dout(22)
    );
\Q_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(23),
      Q => dout(23)
    );
\Q_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(24),
      Q => dout(24)
    );
\Q_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(2),
      Q => dout(2)
    );
\Q_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(3),
      Q => dout(3)
    );
\Q_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(4),
      Q => dout(4)
    );
\Q_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(5),
      Q => dout(5)
    );
\Q_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(6),
      Q => dout(6)
    );
\Q_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(7),
      Q => dout(7)
    );
\Q_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(8),
      Q => dout(8)
    );
\Q_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1_n_0\,
      CLR => rst,
      D => coef_data(9),
      Q => dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \Q_buf_reg[24]_0\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_0 : entity is "bank_reg";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_0 is
  signal \Q_buf[24]_i_1__0_n_0\ : STD_LOGIC;
begin
\Q_buf[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \Q_buf_reg[24]_0\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \Q_buf[24]_i_1__0_n_0\
    );
\Q_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(0),
      Q => dout(0)
    );
\Q_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(10),
      Q => dout(10)
    );
\Q_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(11),
      Q => dout(11)
    );
\Q_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(12),
      Q => dout(12)
    );
\Q_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(13),
      Q => dout(13)
    );
\Q_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(14),
      Q => dout(14)
    );
\Q_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(15),
      Q => dout(15)
    );
\Q_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(16),
      Q => dout(16)
    );
\Q_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(17),
      Q => dout(17)
    );
\Q_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(18),
      Q => dout(18)
    );
\Q_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(19),
      Q => dout(19)
    );
\Q_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(1),
      Q => dout(1)
    );
\Q_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(20),
      Q => dout(20)
    );
\Q_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(21),
      Q => dout(21)
    );
\Q_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(22),
      Q => dout(22)
    );
\Q_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(23),
      Q => dout(23)
    );
\Q_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(24),
      Q => dout(24)
    );
\Q_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(2),
      Q => dout(2)
    );
\Q_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(3),
      Q => dout(3)
    );
\Q_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(4),
      Q => dout(4)
    );
\Q_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(5),
      Q => dout(5)
    );
\Q_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(6),
      Q => dout(6)
    );
\Q_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(7),
      Q => dout(7)
    );
\Q_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(8),
      Q => dout(8)
    );
\Q_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__0_n_0\,
      CLR => rst,
      D => coef_data(9),
      Q => dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \Q_buf_reg[24]_0\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_1 : entity is "bank_reg";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_1 is
  signal \Q_buf[24]_i_1__1_n_0\ : STD_LOGIC;
begin
\Q_buf[24]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \Q_buf_reg[24]_0\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \Q_buf[24]_i_1__1_n_0\
    );
\Q_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(0),
      Q => dout(0)
    );
\Q_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(10),
      Q => dout(10)
    );
\Q_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(11),
      Q => dout(11)
    );
\Q_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(12),
      Q => dout(12)
    );
\Q_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(13),
      Q => dout(13)
    );
\Q_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(14),
      Q => dout(14)
    );
\Q_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(15),
      Q => dout(15)
    );
\Q_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(16),
      Q => dout(16)
    );
\Q_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(17),
      Q => dout(17)
    );
\Q_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(18),
      Q => dout(18)
    );
\Q_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(19),
      Q => dout(19)
    );
\Q_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(1),
      Q => dout(1)
    );
\Q_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(20),
      Q => dout(20)
    );
\Q_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(21),
      Q => dout(21)
    );
\Q_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(22),
      Q => dout(22)
    );
\Q_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(23),
      Q => dout(23)
    );
\Q_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(24),
      Q => dout(24)
    );
\Q_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(2),
      Q => dout(2)
    );
\Q_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(3),
      Q => dout(3)
    );
\Q_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(4),
      Q => dout(4)
    );
\Q_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(5),
      Q => dout(5)
    );
\Q_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(6),
      Q => dout(6)
    );
\Q_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(7),
      Q => dout(7)
    );
\Q_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(8),
      Q => dout(8)
    );
\Q_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__1_n_0\,
      CLR => rst,
      D => coef_data(9),
      Q => dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \Q_buf_reg[24]_0\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_2 : entity is "bank_reg";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_2 is
  signal \Q_buf[24]_i_1__2_n_0\ : STD_LOGIC;
begin
\Q_buf[24]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \Q_buf_reg[24]_0\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \Q_buf[24]_i_1__2_n_0\
    );
\Q_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(0),
      Q => dout(0)
    );
\Q_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(10),
      Q => dout(10)
    );
\Q_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(11),
      Q => dout(11)
    );
\Q_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(12),
      Q => dout(12)
    );
\Q_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(13),
      Q => dout(13)
    );
\Q_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(14),
      Q => dout(14)
    );
\Q_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(15),
      Q => dout(15)
    );
\Q_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(16),
      Q => dout(16)
    );
\Q_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(17),
      Q => dout(17)
    );
\Q_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(18),
      Q => dout(18)
    );
\Q_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(19),
      Q => dout(19)
    );
\Q_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(1),
      Q => dout(1)
    );
\Q_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(20),
      Q => dout(20)
    );
\Q_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(21),
      Q => dout(21)
    );
\Q_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(22),
      Q => dout(22)
    );
\Q_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(23),
      Q => dout(23)
    );
\Q_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(24),
      Q => dout(24)
    );
\Q_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(2),
      Q => dout(2)
    );
\Q_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(3),
      Q => dout(3)
    );
\Q_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(4),
      Q => dout(4)
    );
\Q_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(5),
      Q => dout(5)
    );
\Q_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(6),
      Q => dout(6)
    );
\Q_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(7),
      Q => dout(7)
    );
\Q_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(8),
      Q => dout(8)
    );
\Q_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__2_n_0\,
      CLR => rst,
      D => coef_data(9),
      Q => dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_3 is
  port (
    dout : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \Q_buf_reg[24]_0\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_3 : entity is "bank_reg";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_3 is
  signal \Q_buf[24]_i_1__3_n_0\ : STD_LOGIC;
begin
\Q_buf[24]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \Q_buf_reg[24]_0\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \Q_buf[24]_i_1__3_n_0\
    );
\Q_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(0),
      Q => dout(0)
    );
\Q_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(10),
      Q => dout(10)
    );
\Q_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(11),
      Q => dout(11)
    );
\Q_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(12),
      Q => dout(12)
    );
\Q_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(13),
      Q => dout(13)
    );
\Q_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(14),
      Q => dout(14)
    );
\Q_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(15),
      Q => dout(15)
    );
\Q_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(16),
      Q => dout(16)
    );
\Q_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(17),
      Q => dout(17)
    );
\Q_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(18),
      Q => dout(18)
    );
\Q_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(19),
      Q => dout(19)
    );
\Q_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(1),
      Q => dout(1)
    );
\Q_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(20),
      Q => dout(20)
    );
\Q_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(21),
      Q => dout(21)
    );
\Q_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(22),
      Q => dout(22)
    );
\Q_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(23),
      Q => dout(23)
    );
\Q_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(24),
      Q => dout(24)
    );
\Q_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(2),
      Q => dout(2)
    );
\Q_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(3),
      Q => dout(3)
    );
\Q_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(4),
      Q => dout(4)
    );
\Q_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(5),
      Q => dout(5)
    );
\Q_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(6),
      Q => dout(6)
    );
\Q_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(7),
      Q => dout(7)
    );
\Q_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(8),
      Q => dout(8)
    );
\Q_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__3_n_0\,
      CLR => rst,
      D => coef_data(9),
      Q => dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_4 is
  port (
    dout : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \Q_buf_reg[24]_0\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_4 : entity is "bank_reg";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_4 is
  signal \Q_buf[24]_i_1__4_n_0\ : STD_LOGIC;
begin
\Q_buf[24]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \Q_buf_reg[24]_0\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \Q_buf[24]_i_1__4_n_0\
    );
\Q_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(0),
      Q => dout(0)
    );
\Q_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(10),
      Q => dout(10)
    );
\Q_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(11),
      Q => dout(11)
    );
\Q_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(12),
      Q => dout(12)
    );
\Q_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(13),
      Q => dout(13)
    );
\Q_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(14),
      Q => dout(14)
    );
\Q_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(15),
      Q => dout(15)
    );
\Q_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(16),
      Q => dout(16)
    );
\Q_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(17),
      Q => dout(17)
    );
\Q_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(18),
      Q => dout(18)
    );
\Q_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(19),
      Q => dout(19)
    );
\Q_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(1),
      Q => dout(1)
    );
\Q_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(20),
      Q => dout(20)
    );
\Q_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(21),
      Q => dout(21)
    );
\Q_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(22),
      Q => dout(22)
    );
\Q_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(23),
      Q => dout(23)
    );
\Q_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(24),
      Q => dout(24)
    );
\Q_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(2),
      Q => dout(2)
    );
\Q_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(3),
      Q => dout(3)
    );
\Q_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(4),
      Q => dout(4)
    );
\Q_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(5),
      Q => dout(5)
    );
\Q_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(6),
      Q => dout(6)
    );
\Q_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(7),
      Q => dout(7)
    );
\Q_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(8),
      Q => dout(8)
    );
\Q_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__4_n_0\,
      CLR => rst,
      D => coef_data(9),
      Q => dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_5 is
  port (
    dout : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \Q_buf_reg[24]_0\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_5 : entity is "bank_reg";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_5 is
  signal \Q_buf[24]_i_1__5_n_0\ : STD_LOGIC;
begin
\Q_buf[24]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \Q_buf_reg[24]_0\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \Q_buf[24]_i_1__5_n_0\
    );
\Q_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(0),
      Q => dout(0)
    );
\Q_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(10),
      Q => dout(10)
    );
\Q_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(11),
      Q => dout(11)
    );
\Q_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(12),
      Q => dout(12)
    );
\Q_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(13),
      Q => dout(13)
    );
\Q_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(14),
      Q => dout(14)
    );
\Q_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(15),
      Q => dout(15)
    );
\Q_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(16),
      Q => dout(16)
    );
\Q_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(17),
      Q => dout(17)
    );
\Q_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(18),
      Q => dout(18)
    );
\Q_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(19),
      Q => dout(19)
    );
\Q_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(1),
      Q => dout(1)
    );
\Q_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(20),
      Q => dout(20)
    );
\Q_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(21),
      Q => dout(21)
    );
\Q_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(22),
      Q => dout(22)
    );
\Q_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(23),
      Q => dout(23)
    );
\Q_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(24),
      Q => dout(24)
    );
\Q_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(2),
      Q => dout(2)
    );
\Q_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(3),
      Q => dout(3)
    );
\Q_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(4),
      Q => dout(4)
    );
\Q_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(5),
      Q => dout(5)
    );
\Q_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(6),
      Q => dout(6)
    );
\Q_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(7),
      Q => dout(7)
    );
\Q_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(8),
      Q => dout(8)
    );
\Q_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__5_n_0\,
      CLR => rst,
      D => coef_data(9),
      Q => dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_6 is
  port (
    dout : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \Q_buf_reg[24]_0\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_6 : entity is "bank_reg";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_6 is
  signal \Q_buf[24]_i_1__6_n_0\ : STD_LOGIC;
begin
\Q_buf[24]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \Q_buf_reg[24]_0\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \Q_buf[24]_i_1__6_n_0\
    );
\Q_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(0),
      Q => dout(0)
    );
\Q_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(10),
      Q => dout(10)
    );
\Q_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(11),
      Q => dout(11)
    );
\Q_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(12),
      Q => dout(12)
    );
\Q_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(13),
      Q => dout(13)
    );
\Q_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(14),
      Q => dout(14)
    );
\Q_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(15),
      Q => dout(15)
    );
\Q_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(16),
      Q => dout(16)
    );
\Q_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(17),
      Q => dout(17)
    );
\Q_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(18),
      Q => dout(18)
    );
\Q_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(19),
      Q => dout(19)
    );
\Q_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(1),
      Q => dout(1)
    );
\Q_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(20),
      Q => dout(20)
    );
\Q_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(21),
      Q => dout(21)
    );
\Q_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(22),
      Q => dout(22)
    );
\Q_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(23),
      Q => dout(23)
    );
\Q_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(24),
      Q => dout(24)
    );
\Q_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(2),
      Q => dout(2)
    );
\Q_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(3),
      Q => dout(3)
    );
\Q_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(4),
      Q => dout(4)
    );
\Q_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(5),
      Q => dout(5)
    );
\Q_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(6),
      Q => dout(6)
    );
\Q_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(7),
      Q => dout(7)
    );
\Q_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(8),
      Q => dout(8)
    );
\Q_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q_buf[24]_i_1__6_n_0\,
      CLR => rst,
      D => coef_data(9),
      Q => dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coef_bank is
  port (
    dout : out STD_LOGIC_VECTOR ( 199 downto 0 );
    \Q_buf_reg[24]\ : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coef_bank;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coef_bank is
begin
\REG[0].R\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg
     port map (
      \Q_buf_reg[24]_0\ => \Q_buf_reg[24]\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(24 downto 0) => dout(24 downto 0),
      rst => rst
    );
\REG[1].R\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_0
     port map (
      \Q_buf_reg[24]_0\ => \Q_buf_reg[24]\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(24 downto 0) => dout(49 downto 25),
      rst => rst
    );
\REG[2].R\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_1
     port map (
      \Q_buf_reg[24]_0\ => \Q_buf_reg[24]\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(24 downto 0) => dout(74 downto 50),
      rst => rst
    );
\REG[3].R\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_2
     port map (
      \Q_buf_reg[24]_0\ => \Q_buf_reg[24]\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(24 downto 0) => dout(99 downto 75),
      rst => rst
    );
\REG[4].R\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_3
     port map (
      \Q_buf_reg[24]_0\ => \Q_buf_reg[24]\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(24 downto 0) => dout(124 downto 100),
      rst => rst
    );
\REG[5].R\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_4
     port map (
      \Q_buf_reg[24]_0\ => \Q_buf_reg[24]\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(24 downto 0) => dout(149 downto 125),
      rst => rst
    );
\REG[6].R\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_5
     port map (
      \Q_buf_reg[24]_0\ => \Q_buf_reg[24]\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(24 downto 0) => dout(174 downto 150),
      rst => rst
    );
\REG[7].R\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_6
     port map (
      \Q_buf_reg[24]_0\ => \Q_buf_reg[24]\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(24 downto 0) => dout(199 downto 175),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 199 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_coef_bank_0_0,coef_bank,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "coef_bank,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \Q_buf_reg[24]_i_2_n_0\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
\Q_buf_reg[24]_i_2\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => \Q_buf_reg[24]_i_2_n_0\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coef_bank
     port map (
      \Q_buf_reg[24]\ => \Q_buf_reg[24]_i_2_n_0\,
      clk => clk,
      coef_data(24 downto 0) => coef_data(24 downto 0),
      dout(199 downto 0) => dout(199 downto 0),
      rst => rst
    );
end STRUCTURE;
