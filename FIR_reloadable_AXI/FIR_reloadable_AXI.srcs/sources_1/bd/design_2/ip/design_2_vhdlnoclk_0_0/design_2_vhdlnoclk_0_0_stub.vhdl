-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Dec 25 22:02:02 2020
-- Host        : DESKTOP-VJ7SO95 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/cosas/eseca_M2/SoC/SoC_project/FIR_filter_reloadable/FIR_reloadable_AXI/FIR_reloadable_AXI.srcs/sources_1/bd/design_2/ip/design_2_vhdlnoclk_0_0/design_2_vhdlnoclk_0_0_stub.vhdl
-- Design      : design_2_vhdlnoclk_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_2_vhdlnoclk_0_0 is
  Port ( 
    clk65MHz : out STD_LOGIC
  );

end design_2_vhdlnoclk_0_0;

architecture stub of design_2_vhdlnoclk_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk65MHz";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "vhdlnoclk,Vivado 2018.2";
begin
end;
