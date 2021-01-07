--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Fri Dec 25 21:58:17 2020
--Host        : DESKTOP-VJ7SO95 running 64-bit major release  (build 9200)
--Command     : generate_target design_2.bd
--Design      : design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2 is
  attribute core_generation_info : string;
  attribute core_generation_info of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of design_2 : entity is "design_2.hwdef";
end design_2;

architecture STRUCTURE of design_2 is
  component design_2_filter_top_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sig_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    en1 : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 17 downto 0 );
    en2 : in STD_LOGIC;
    reset_shift_register : in STD_LOGIC;
    sig_out : out STD_LOGIC_VECTOR ( 48 downto 0 )
  );
  end component design_2_filter_top_0_0;
  component design_2_vhdlnoclk_0_0 is
  port (
    clk65MHz : out STD_LOGIC
  );
  end component design_2_vhdlnoclk_0_0;
  component design_2_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 48 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 17 downto 0 );
    probe_out4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out5 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_vio_0_0;
  signal filter_top_0_sig_out : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal vhdlnoclk_0_clk65MHz : STD_LOGIC;
  signal vio_0_probe_out0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_0_probe_out1 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal vio_0_probe_out2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_0_probe_out3 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal vio_0_probe_out4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_0_probe_out5 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
filter_top_0: component design_2_filter_top_0_0
     port map (
      clk => vhdlnoclk_0_clk65MHz,
      coef_data(17 downto 0) => vio_0_probe_out3(17 downto 0),
      en1 => vio_0_probe_out2(0),
      en2 => vio_0_probe_out4(0),
      reset_shift_register => vio_0_probe_out5(0),
      rst => vio_0_probe_out0(0),
      sig_in(24 downto 0) => vio_0_probe_out1(24 downto 0),
      sig_out(48 downto 0) => filter_top_0_sig_out(48 downto 0)
    );
vhdlnoclk_0: component design_2_vhdlnoclk_0_0
     port map (
      clk65MHz => vhdlnoclk_0_clk65MHz
    );
vio_0: component design_2_vio_0_0
     port map (
      clk => vhdlnoclk_0_clk65MHz,
      probe_in0(48 downto 0) => filter_top_0_sig_out(48 downto 0),
      probe_out0(0) => vio_0_probe_out0(0),
      probe_out1(24 downto 0) => vio_0_probe_out1(24 downto 0),
      probe_out2(0) => vio_0_probe_out2(0),
      probe_out3(17 downto 0) => vio_0_probe_out3(17 downto 0),
      probe_out4(0) => vio_0_probe_out4(0),
      probe_out5(0) => vio_0_probe_out5(0)
    );
end STRUCTURE;
