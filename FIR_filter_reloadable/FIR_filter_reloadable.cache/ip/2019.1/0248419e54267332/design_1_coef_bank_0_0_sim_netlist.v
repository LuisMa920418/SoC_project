// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Dec  6 16:53:39 2020
// Host        : DESKTOP-VJ7SO95 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_coef_bank_0_0_sim_netlist.v
// Design      : design_1_coef_bank_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg
   (dout,
    \Q_buf_reg[24]_0 ,
    coef_data,
    clk,
    rst);
  output [24:0]dout;
  input \Q_buf_reg[24]_0 ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf[24]_i_1_n_0 ;
  wire \Q_buf_reg[24]_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [24:0]dout;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Q_buf[24]_i_1 
       (.I0(1'b0),
        .I1(\Q_buf_reg[24]_0 ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(\Q_buf[24]_i_1_n_0 ));
  FDCE \Q_buf_reg[0] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[0]),
        .Q(dout[0]));
  FDCE \Q_buf_reg[10] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[10]),
        .Q(dout[10]));
  FDCE \Q_buf_reg[11] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[11]),
        .Q(dout[11]));
  FDCE \Q_buf_reg[12] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[12]),
        .Q(dout[12]));
  FDCE \Q_buf_reg[13] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[13]),
        .Q(dout[13]));
  FDCE \Q_buf_reg[14] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[14]),
        .Q(dout[14]));
  FDCE \Q_buf_reg[15] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[15]),
        .Q(dout[15]));
  FDCE \Q_buf_reg[16] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[16]),
        .Q(dout[16]));
  FDCE \Q_buf_reg[17] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[17]),
        .Q(dout[17]));
  FDCE \Q_buf_reg[18] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[18]),
        .Q(dout[18]));
  FDCE \Q_buf_reg[19] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[19]),
        .Q(dout[19]));
  FDCE \Q_buf_reg[1] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[1]),
        .Q(dout[1]));
  FDCE \Q_buf_reg[20] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[20]),
        .Q(dout[20]));
  FDCE \Q_buf_reg[21] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[21]),
        .Q(dout[21]));
  FDCE \Q_buf_reg[22] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[22]),
        .Q(dout[22]));
  FDCE \Q_buf_reg[23] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[23]),
        .Q(dout[23]));
  FDCE \Q_buf_reg[24] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[24]),
        .Q(dout[24]));
  FDCE \Q_buf_reg[2] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[2]),
        .Q(dout[2]));
  FDCE \Q_buf_reg[3] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[3]),
        .Q(dout[3]));
  FDCE \Q_buf_reg[4] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[4]),
        .Q(dout[4]));
  FDCE \Q_buf_reg[5] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[5]),
        .Q(dout[5]));
  FDCE \Q_buf_reg[6] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[6]),
        .Q(dout[6]));
  FDCE \Q_buf_reg[7] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[7]),
        .Q(dout[7]));
  FDCE \Q_buf_reg[8] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[8]),
        .Q(dout[8]));
  FDCE \Q_buf_reg[9] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1_n_0 ),
        .CLR(rst),
        .D(coef_data[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "bank_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_0
   (dout,
    \Q_buf_reg[24]_0 ,
    coef_data,
    clk,
    rst);
  output [24:0]dout;
  input \Q_buf_reg[24]_0 ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf[24]_i_1__0_n_0 ;
  wire \Q_buf_reg[24]_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [24:0]dout;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Q_buf[24]_i_1__0 
       (.I0(1'b0),
        .I1(\Q_buf_reg[24]_0 ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(\Q_buf[24]_i_1__0_n_0 ));
  FDCE \Q_buf_reg[0] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[0]),
        .Q(dout[0]));
  FDCE \Q_buf_reg[10] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[10]),
        .Q(dout[10]));
  FDCE \Q_buf_reg[11] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[11]),
        .Q(dout[11]));
  FDCE \Q_buf_reg[12] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[12]),
        .Q(dout[12]));
  FDCE \Q_buf_reg[13] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[13]),
        .Q(dout[13]));
  FDCE \Q_buf_reg[14] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[14]),
        .Q(dout[14]));
  FDCE \Q_buf_reg[15] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[15]),
        .Q(dout[15]));
  FDCE \Q_buf_reg[16] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[16]),
        .Q(dout[16]));
  FDCE \Q_buf_reg[17] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[17]),
        .Q(dout[17]));
  FDCE \Q_buf_reg[18] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[18]),
        .Q(dout[18]));
  FDCE \Q_buf_reg[19] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[19]),
        .Q(dout[19]));
  FDCE \Q_buf_reg[1] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[1]),
        .Q(dout[1]));
  FDCE \Q_buf_reg[20] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[20]),
        .Q(dout[20]));
  FDCE \Q_buf_reg[21] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[21]),
        .Q(dout[21]));
  FDCE \Q_buf_reg[22] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[22]),
        .Q(dout[22]));
  FDCE \Q_buf_reg[23] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[23]),
        .Q(dout[23]));
  FDCE \Q_buf_reg[24] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[24]),
        .Q(dout[24]));
  FDCE \Q_buf_reg[2] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[2]),
        .Q(dout[2]));
  FDCE \Q_buf_reg[3] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[3]),
        .Q(dout[3]));
  FDCE \Q_buf_reg[4] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[4]),
        .Q(dout[4]));
  FDCE \Q_buf_reg[5] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[5]),
        .Q(dout[5]));
  FDCE \Q_buf_reg[6] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[6]),
        .Q(dout[6]));
  FDCE \Q_buf_reg[7] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[7]),
        .Q(dout[7]));
  FDCE \Q_buf_reg[8] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[8]),
        .Q(dout[8]));
  FDCE \Q_buf_reg[9] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__0_n_0 ),
        .CLR(rst),
        .D(coef_data[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "bank_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_1
   (dout,
    \Q_buf_reg[24]_0 ,
    coef_data,
    clk,
    rst);
  output [24:0]dout;
  input \Q_buf_reg[24]_0 ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf[24]_i_1__1_n_0 ;
  wire \Q_buf_reg[24]_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [24:0]dout;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Q_buf[24]_i_1__1 
       (.I0(1'b0),
        .I1(\Q_buf_reg[24]_0 ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(\Q_buf[24]_i_1__1_n_0 ));
  FDCE \Q_buf_reg[0] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[0]),
        .Q(dout[0]));
  FDCE \Q_buf_reg[10] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[10]),
        .Q(dout[10]));
  FDCE \Q_buf_reg[11] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[11]),
        .Q(dout[11]));
  FDCE \Q_buf_reg[12] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[12]),
        .Q(dout[12]));
  FDCE \Q_buf_reg[13] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[13]),
        .Q(dout[13]));
  FDCE \Q_buf_reg[14] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[14]),
        .Q(dout[14]));
  FDCE \Q_buf_reg[15] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[15]),
        .Q(dout[15]));
  FDCE \Q_buf_reg[16] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[16]),
        .Q(dout[16]));
  FDCE \Q_buf_reg[17] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[17]),
        .Q(dout[17]));
  FDCE \Q_buf_reg[18] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[18]),
        .Q(dout[18]));
  FDCE \Q_buf_reg[19] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[19]),
        .Q(dout[19]));
  FDCE \Q_buf_reg[1] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[1]),
        .Q(dout[1]));
  FDCE \Q_buf_reg[20] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[20]),
        .Q(dout[20]));
  FDCE \Q_buf_reg[21] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[21]),
        .Q(dout[21]));
  FDCE \Q_buf_reg[22] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[22]),
        .Q(dout[22]));
  FDCE \Q_buf_reg[23] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[23]),
        .Q(dout[23]));
  FDCE \Q_buf_reg[24] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[24]),
        .Q(dout[24]));
  FDCE \Q_buf_reg[2] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[2]),
        .Q(dout[2]));
  FDCE \Q_buf_reg[3] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[3]),
        .Q(dout[3]));
  FDCE \Q_buf_reg[4] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[4]),
        .Q(dout[4]));
  FDCE \Q_buf_reg[5] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[5]),
        .Q(dout[5]));
  FDCE \Q_buf_reg[6] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[6]),
        .Q(dout[6]));
  FDCE \Q_buf_reg[7] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[7]),
        .Q(dout[7]));
  FDCE \Q_buf_reg[8] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[8]),
        .Q(dout[8]));
  FDCE \Q_buf_reg[9] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__1_n_0 ),
        .CLR(rst),
        .D(coef_data[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "bank_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_2
   (dout,
    \Q_buf_reg[24]_0 ,
    coef_data,
    clk,
    rst);
  output [24:0]dout;
  input \Q_buf_reg[24]_0 ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf[24]_i_1__2_n_0 ;
  wire \Q_buf_reg[24]_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [24:0]dout;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Q_buf[24]_i_1__2 
       (.I0(1'b0),
        .I1(\Q_buf_reg[24]_0 ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(\Q_buf[24]_i_1__2_n_0 ));
  FDCE \Q_buf_reg[0] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[0]),
        .Q(dout[0]));
  FDCE \Q_buf_reg[10] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[10]),
        .Q(dout[10]));
  FDCE \Q_buf_reg[11] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[11]),
        .Q(dout[11]));
  FDCE \Q_buf_reg[12] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[12]),
        .Q(dout[12]));
  FDCE \Q_buf_reg[13] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[13]),
        .Q(dout[13]));
  FDCE \Q_buf_reg[14] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[14]),
        .Q(dout[14]));
  FDCE \Q_buf_reg[15] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[15]),
        .Q(dout[15]));
  FDCE \Q_buf_reg[16] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[16]),
        .Q(dout[16]));
  FDCE \Q_buf_reg[17] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[17]),
        .Q(dout[17]));
  FDCE \Q_buf_reg[18] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[18]),
        .Q(dout[18]));
  FDCE \Q_buf_reg[19] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[19]),
        .Q(dout[19]));
  FDCE \Q_buf_reg[1] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[1]),
        .Q(dout[1]));
  FDCE \Q_buf_reg[20] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[20]),
        .Q(dout[20]));
  FDCE \Q_buf_reg[21] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[21]),
        .Q(dout[21]));
  FDCE \Q_buf_reg[22] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[22]),
        .Q(dout[22]));
  FDCE \Q_buf_reg[23] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[23]),
        .Q(dout[23]));
  FDCE \Q_buf_reg[24] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[24]),
        .Q(dout[24]));
  FDCE \Q_buf_reg[2] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[2]),
        .Q(dout[2]));
  FDCE \Q_buf_reg[3] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[3]),
        .Q(dout[3]));
  FDCE \Q_buf_reg[4] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[4]),
        .Q(dout[4]));
  FDCE \Q_buf_reg[5] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[5]),
        .Q(dout[5]));
  FDCE \Q_buf_reg[6] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[6]),
        .Q(dout[6]));
  FDCE \Q_buf_reg[7] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[7]),
        .Q(dout[7]));
  FDCE \Q_buf_reg[8] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[8]),
        .Q(dout[8]));
  FDCE \Q_buf_reg[9] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__2_n_0 ),
        .CLR(rst),
        .D(coef_data[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "bank_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_3
   (dout,
    \Q_buf_reg[24]_0 ,
    coef_data,
    clk,
    rst);
  output [24:0]dout;
  input \Q_buf_reg[24]_0 ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf[24]_i_1__3_n_0 ;
  wire \Q_buf_reg[24]_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [24:0]dout;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Q_buf[24]_i_1__3 
       (.I0(1'b0),
        .I1(\Q_buf_reg[24]_0 ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(\Q_buf[24]_i_1__3_n_0 ));
  FDCE \Q_buf_reg[0] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[0]),
        .Q(dout[0]));
  FDCE \Q_buf_reg[10] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[10]),
        .Q(dout[10]));
  FDCE \Q_buf_reg[11] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[11]),
        .Q(dout[11]));
  FDCE \Q_buf_reg[12] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[12]),
        .Q(dout[12]));
  FDCE \Q_buf_reg[13] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[13]),
        .Q(dout[13]));
  FDCE \Q_buf_reg[14] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[14]),
        .Q(dout[14]));
  FDCE \Q_buf_reg[15] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[15]),
        .Q(dout[15]));
  FDCE \Q_buf_reg[16] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[16]),
        .Q(dout[16]));
  FDCE \Q_buf_reg[17] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[17]),
        .Q(dout[17]));
  FDCE \Q_buf_reg[18] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[18]),
        .Q(dout[18]));
  FDCE \Q_buf_reg[19] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[19]),
        .Q(dout[19]));
  FDCE \Q_buf_reg[1] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[1]),
        .Q(dout[1]));
  FDCE \Q_buf_reg[20] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[20]),
        .Q(dout[20]));
  FDCE \Q_buf_reg[21] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[21]),
        .Q(dout[21]));
  FDCE \Q_buf_reg[22] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[22]),
        .Q(dout[22]));
  FDCE \Q_buf_reg[23] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[23]),
        .Q(dout[23]));
  FDCE \Q_buf_reg[24] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[24]),
        .Q(dout[24]));
  FDCE \Q_buf_reg[2] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[2]),
        .Q(dout[2]));
  FDCE \Q_buf_reg[3] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[3]),
        .Q(dout[3]));
  FDCE \Q_buf_reg[4] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[4]),
        .Q(dout[4]));
  FDCE \Q_buf_reg[5] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[5]),
        .Q(dout[5]));
  FDCE \Q_buf_reg[6] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[6]),
        .Q(dout[6]));
  FDCE \Q_buf_reg[7] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[7]),
        .Q(dout[7]));
  FDCE \Q_buf_reg[8] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[8]),
        .Q(dout[8]));
  FDCE \Q_buf_reg[9] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__3_n_0 ),
        .CLR(rst),
        .D(coef_data[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "bank_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_4
   (dout,
    \Q_buf_reg[24]_0 ,
    coef_data,
    clk,
    rst);
  output [24:0]dout;
  input \Q_buf_reg[24]_0 ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf[24]_i_1__4_n_0 ;
  wire \Q_buf_reg[24]_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [24:0]dout;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Q_buf[24]_i_1__4 
       (.I0(1'b0),
        .I1(\Q_buf_reg[24]_0 ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(\Q_buf[24]_i_1__4_n_0 ));
  FDCE \Q_buf_reg[0] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[0]),
        .Q(dout[0]));
  FDCE \Q_buf_reg[10] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[10]),
        .Q(dout[10]));
  FDCE \Q_buf_reg[11] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[11]),
        .Q(dout[11]));
  FDCE \Q_buf_reg[12] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[12]),
        .Q(dout[12]));
  FDCE \Q_buf_reg[13] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[13]),
        .Q(dout[13]));
  FDCE \Q_buf_reg[14] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[14]),
        .Q(dout[14]));
  FDCE \Q_buf_reg[15] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[15]),
        .Q(dout[15]));
  FDCE \Q_buf_reg[16] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[16]),
        .Q(dout[16]));
  FDCE \Q_buf_reg[17] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[17]),
        .Q(dout[17]));
  FDCE \Q_buf_reg[18] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[18]),
        .Q(dout[18]));
  FDCE \Q_buf_reg[19] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[19]),
        .Q(dout[19]));
  FDCE \Q_buf_reg[1] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[1]),
        .Q(dout[1]));
  FDCE \Q_buf_reg[20] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[20]),
        .Q(dout[20]));
  FDCE \Q_buf_reg[21] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[21]),
        .Q(dout[21]));
  FDCE \Q_buf_reg[22] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[22]),
        .Q(dout[22]));
  FDCE \Q_buf_reg[23] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[23]),
        .Q(dout[23]));
  FDCE \Q_buf_reg[24] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[24]),
        .Q(dout[24]));
  FDCE \Q_buf_reg[2] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[2]),
        .Q(dout[2]));
  FDCE \Q_buf_reg[3] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[3]),
        .Q(dout[3]));
  FDCE \Q_buf_reg[4] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[4]),
        .Q(dout[4]));
  FDCE \Q_buf_reg[5] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[5]),
        .Q(dout[5]));
  FDCE \Q_buf_reg[6] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[6]),
        .Q(dout[6]));
  FDCE \Q_buf_reg[7] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[7]),
        .Q(dout[7]));
  FDCE \Q_buf_reg[8] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[8]),
        .Q(dout[8]));
  FDCE \Q_buf_reg[9] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__4_n_0 ),
        .CLR(rst),
        .D(coef_data[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "bank_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_5
   (dout,
    \Q_buf_reg[24]_0 ,
    coef_data,
    clk,
    rst);
  output [24:0]dout;
  input \Q_buf_reg[24]_0 ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf[24]_i_1__5_n_0 ;
  wire \Q_buf_reg[24]_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [24:0]dout;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Q_buf[24]_i_1__5 
       (.I0(1'b0),
        .I1(\Q_buf_reg[24]_0 ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(\Q_buf[24]_i_1__5_n_0 ));
  FDCE \Q_buf_reg[0] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[0]),
        .Q(dout[0]));
  FDCE \Q_buf_reg[10] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[10]),
        .Q(dout[10]));
  FDCE \Q_buf_reg[11] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[11]),
        .Q(dout[11]));
  FDCE \Q_buf_reg[12] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[12]),
        .Q(dout[12]));
  FDCE \Q_buf_reg[13] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[13]),
        .Q(dout[13]));
  FDCE \Q_buf_reg[14] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[14]),
        .Q(dout[14]));
  FDCE \Q_buf_reg[15] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[15]),
        .Q(dout[15]));
  FDCE \Q_buf_reg[16] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[16]),
        .Q(dout[16]));
  FDCE \Q_buf_reg[17] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[17]),
        .Q(dout[17]));
  FDCE \Q_buf_reg[18] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[18]),
        .Q(dout[18]));
  FDCE \Q_buf_reg[19] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[19]),
        .Q(dout[19]));
  FDCE \Q_buf_reg[1] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[1]),
        .Q(dout[1]));
  FDCE \Q_buf_reg[20] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[20]),
        .Q(dout[20]));
  FDCE \Q_buf_reg[21] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[21]),
        .Q(dout[21]));
  FDCE \Q_buf_reg[22] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[22]),
        .Q(dout[22]));
  FDCE \Q_buf_reg[23] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[23]),
        .Q(dout[23]));
  FDCE \Q_buf_reg[24] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[24]),
        .Q(dout[24]));
  FDCE \Q_buf_reg[2] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[2]),
        .Q(dout[2]));
  FDCE \Q_buf_reg[3] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[3]),
        .Q(dout[3]));
  FDCE \Q_buf_reg[4] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[4]),
        .Q(dout[4]));
  FDCE \Q_buf_reg[5] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[5]),
        .Q(dout[5]));
  FDCE \Q_buf_reg[6] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[6]),
        .Q(dout[6]));
  FDCE \Q_buf_reg[7] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[7]),
        .Q(dout[7]));
  FDCE \Q_buf_reg[8] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[8]),
        .Q(dout[8]));
  FDCE \Q_buf_reg[9] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__5_n_0 ),
        .CLR(rst),
        .D(coef_data[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "bank_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_6
   (dout,
    \Q_buf_reg[24]_0 ,
    coef_data,
    clk,
    rst);
  output [24:0]dout;
  input \Q_buf_reg[24]_0 ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf[24]_i_1__6_n_0 ;
  wire \Q_buf_reg[24]_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [24:0]dout;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Q_buf[24]_i_1__6 
       (.I0(1'b0),
        .I1(\Q_buf_reg[24]_0 ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(\Q_buf[24]_i_1__6_n_0 ));
  FDCE \Q_buf_reg[0] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[0]),
        .Q(dout[0]));
  FDCE \Q_buf_reg[10] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[10]),
        .Q(dout[10]));
  FDCE \Q_buf_reg[11] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[11]),
        .Q(dout[11]));
  FDCE \Q_buf_reg[12] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[12]),
        .Q(dout[12]));
  FDCE \Q_buf_reg[13] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[13]),
        .Q(dout[13]));
  FDCE \Q_buf_reg[14] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[14]),
        .Q(dout[14]));
  FDCE \Q_buf_reg[15] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[15]),
        .Q(dout[15]));
  FDCE \Q_buf_reg[16] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[16]),
        .Q(dout[16]));
  FDCE \Q_buf_reg[17] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[17]),
        .Q(dout[17]));
  FDCE \Q_buf_reg[18] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[18]),
        .Q(dout[18]));
  FDCE \Q_buf_reg[19] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[19]),
        .Q(dout[19]));
  FDCE \Q_buf_reg[1] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[1]),
        .Q(dout[1]));
  FDCE \Q_buf_reg[20] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[20]),
        .Q(dout[20]));
  FDCE \Q_buf_reg[21] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[21]),
        .Q(dout[21]));
  FDCE \Q_buf_reg[22] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[22]),
        .Q(dout[22]));
  FDCE \Q_buf_reg[23] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[23]),
        .Q(dout[23]));
  FDCE \Q_buf_reg[24] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[24]),
        .Q(dout[24]));
  FDCE \Q_buf_reg[2] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[2]),
        .Q(dout[2]));
  FDCE \Q_buf_reg[3] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[3]),
        .Q(dout[3]));
  FDCE \Q_buf_reg[4] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[4]),
        .Q(dout[4]));
  FDCE \Q_buf_reg[5] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[5]),
        .Q(dout[5]));
  FDCE \Q_buf_reg[6] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[6]),
        .Q(dout[6]));
  FDCE \Q_buf_reg[7] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[7]),
        .Q(dout[7]));
  FDCE \Q_buf_reg[8] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[8]),
        .Q(dout[8]));
  FDCE \Q_buf_reg[9] 
       (.C(clk),
        .CE(\Q_buf[24]_i_1__6_n_0 ),
        .CLR(rst),
        .D(coef_data[9]),
        .Q(dout[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coef_bank
   (dout,
    \Q_buf_reg[24] ,
    coef_data,
    clk,
    rst);
  output [199:0]dout;
  input \Q_buf_reg[24] ;
  input [24:0]coef_data;
  input clk;
  input rst;

  wire \Q_buf_reg[24] ;
  wire clk;
  wire [24:0]coef_data;
  wire [199:0]dout;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg \REG[0].R 
       (.\Q_buf_reg[24]_0 (\Q_buf_reg[24] ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout[24:0]),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_0 \REG[1].R 
       (.\Q_buf_reg[24]_0 (\Q_buf_reg[24] ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout[49:25]),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_1 \REG[2].R 
       (.\Q_buf_reg[24]_0 (\Q_buf_reg[24] ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout[74:50]),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_2 \REG[3].R 
       (.\Q_buf_reg[24]_0 (\Q_buf_reg[24] ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout[99:75]),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_3 \REG[4].R 
       (.\Q_buf_reg[24]_0 (\Q_buf_reg[24] ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout[124:100]),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_4 \REG[5].R 
       (.\Q_buf_reg[24]_0 (\Q_buf_reg[24] ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout[149:125]),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_5 \REG[6].R 
       (.\Q_buf_reg[24]_0 (\Q_buf_reg[24] ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout[174:150]),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bank_reg_6 \REG[7].R 
       (.\Q_buf_reg[24]_0 (\Q_buf_reg[24] ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout[199:175]),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_coef_bank_0_0,coef_bank,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "coef_bank,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    coef_data,
    addr,
    en,
    dout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [24:0]coef_data;
  input [2:0]addr;
  input en;
  output [199:0]dout;

  wire \Q_buf_reg[24]_i_2_n_0 ;
  wire clk;
  wire [24:0]coef_data;
  wire [199:0]dout;
  wire rst;

  FDPE #(
    .INIT(1'b1)) 
    \Q_buf_reg[24]_i_2 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(\Q_buf_reg[24]_i_2_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_coef_bank U0
       (.\Q_buf_reg[24] (\Q_buf_reg[24]_i_2_n_0 ),
        .clk(clk),
        .coef_data(coef_data),
        .dout(dout),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
