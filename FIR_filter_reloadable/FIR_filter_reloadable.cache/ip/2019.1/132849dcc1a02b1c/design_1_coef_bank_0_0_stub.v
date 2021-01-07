// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Dec  6 17:08:35 2020
// Host        : DESKTOP-VJ7SO95 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_coef_bank_0_0_stub.v
// Design      : design_1_coef_bank_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "coef_bank,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, coef_data, addr, en, dout)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,coef_data[24:0],addr[2:0],en,dout[199:0]" */;
  input clk;
  input rst;
  input [24:0]coef_data;
  input [2:0]addr;
  input en;
  output [199:0]dout;
endmodule
