--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Fri Dec 25 21:58:17 2020
--Host        : DESKTOP-VJ7SO95 running 64-bit major release  (build 9200)
--Command     : generate_target design_2_wrapper.bd
--Design      : design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_wrapper is
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
  end component design_2;
begin
design_2_i: component design_2
 ;
end STRUCTURE;
