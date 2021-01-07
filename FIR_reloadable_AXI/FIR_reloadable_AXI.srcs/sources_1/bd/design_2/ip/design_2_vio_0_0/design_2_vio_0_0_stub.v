// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Dec 25 22:00:37 2020
// Host        : DESKTOP-VJ7SO95 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/cosas/eseca_M2/SoC/SoC_project/FIR_filter_reloadable/FIR_reloadable_AXI/FIR_reloadable_AXI.srcs/sources_1/bd/design_2/ip/design_2_vio_0_0/design_2_vio_0_0_stub.v
// Design      : design_2_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2018.2" *)
module design_2_vio_0_0(clk, probe_in0, probe_out0, probe_out1, 
  probe_out2, probe_out3, probe_out4, probe_out5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[48:0],probe_out0[0:0],probe_out1[24:0],probe_out2[0:0],probe_out3[17:0],probe_out4[0:0],probe_out5[0:0]" */;
  input clk;
  input [48:0]probe_in0;
  output [0:0]probe_out0;
  output [24:0]probe_out1;
  output [0:0]probe_out2;
  output [17:0]probe_out3;
  output [0:0]probe_out4;
  output [0:0]probe_out5;
endmodule
