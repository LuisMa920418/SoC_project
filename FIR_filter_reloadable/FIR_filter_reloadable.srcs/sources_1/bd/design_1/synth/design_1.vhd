--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Sun Dec  6 17:07:35 2020
--Host        : DESKTOP-VJ7SO95 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    clk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 199 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_vio_0_0;
  component design_1_coef_bank_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    coef_data : in STD_LOGIC_VECTOR ( 24 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 199 downto 0 )
  );
  end component design_1_coef_bank_0_0;
  signal clk_1 : STD_LOGIC;
  signal coef_bank_0_dout : STD_LOGIC_VECTOR ( 199 downto 0 );
  signal vio_0_probe_out0 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal vio_0_probe_out1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vio_0_probe_out2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_0_probe_out3 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
begin
  clk_1 <= clk;
coef_bank_0: component design_1_coef_bank_0_0
     port map (
      addr(2 downto 0) => vio_0_probe_out1(2 downto 0),
      clk => clk_1,
      coef_data(24 downto 0) => vio_0_probe_out0(24 downto 0),
      dout(199 downto 0) => coef_bank_0_dout(199 downto 0),
      en => vio_0_probe_out2(0),
      rst => vio_0_probe_out3(0)
    );
vio_0: component design_1_vio_0_0
     port map (
      clk => clk_1,
      probe_in0(199 downto 0) => coef_bank_0_dout(199 downto 0),
      probe_out0(24 downto 0) => vio_0_probe_out0(24 downto 0),
      probe_out1(2 downto 0) => vio_0_probe_out1(2 downto 0),
      probe_out2(0) => vio_0_probe_out2(0),
      probe_out3(0) => vio_0_probe_out3(0)
    );
end STRUCTURE;
