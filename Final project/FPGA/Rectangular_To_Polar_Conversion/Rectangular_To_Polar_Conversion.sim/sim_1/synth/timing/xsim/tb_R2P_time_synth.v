// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 31 00:33:33 2024
// Host        : DESKTOP-4EGAIM9 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Cheng Hsuan
//               Hong/Desktop/DCIC/Rectangular_To_Polar_Conversion/Rectangular_To_Polar_Conversion.sim/sim_1/synth/timing/xsim/tb_R2P_time_synth.v}
// Design      : R2P
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* WIDTH = "31" *) (* angle_0 = "16'b0101101000000000" *) (* angle_1 = "16'b0010110100000000" *) 
(* angle_2 = "16'b0000110101001000" *) (* angle_3 = "16'b0000011100000101" *) (* angle_4 = "16'b0000001110010000" *) 
(* angle_5 = "16'b0000000111001010" *) (* angle_6 = "16'b0000000011100101" *) (* angle_7 = "16'b0000000001110011" *) 
(* angle_8 = "16'b0000000000001110" *) 
(* NotValidForBitStream *)
module R2P
   (clk,
    rst_n,
    in_valid,
    x_in,
    y_in,
    radius,
    angle,
    out_valid);
  input clk;
  input rst_n;
  input in_valid;
  input [31:0]x_in;
  input [31:0]y_in;
  output [31:0]radius;
  output [8:0]angle;
  output out_valid;

  wire B0;
  wire [30:2]abs_x_in;
  wire [30:1]abs_y_in;
  wire [8:0]angle;
  wire [8:0]angle_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire flag;
  wire flag_i_2_n_0;
  wire flag_reg_n_0;
  wire flag_reg_rep__0_n_0;
  wire flag_reg_rep__1_n_0;
  wire flag_reg_rep__2_n_0;
  wire flag_reg_rep__3_n_0;
  wire flag_reg_rep_n_0;
  wire flag_rep__0_i_1_n_0;
  wire flag_rep__1_i_1_n_0;
  wire flag_rep__2_i_1_n_0;
  wire flag_rep__3_i_1_n_0;
  wire flag_rep_i_1_n_0;
  wire in_valid;
  wire in_valid_IBUF;
  wire out_valid;
  wire out_valid_OBUF;
  wire \out_valid_temp_reg[0]__0 ;
  wire \out_valid_temp_reg[1]__0 ;
  wire \out_valid_temp_reg[2]__0 ;
  wire \out_valid_temp_reg[3]__0 ;
  wire \out_valid_temp_reg[4]__0 ;
  wire \out_valid_temp_reg[5]__0 ;
  wire \out_valid_temp_reg[6]__0 ;
  wire p_0_in0;
  wire [31:0]p_0_in1_in;
  wire [15:7]p_11_out;
  wire [15:3]p_1_out;
  wire p_2_in;
  wire [31:0]p_2_out;
  wire p_3_in0;
  wire [15:2]p_3_out;
  wire [15:3]p_5_out;
  wire [15:0]p_7_out;
  wire [15:0]p_9_out;
  wire [31:0]radius;
  wire [31:0]radius_OBUF;
  wire range45;
  wire rst_n;
  wire rst_n_IBUF;
  wire sel;
  wire [26:26]stage2_x;
  wire [29:0]stage2_x_taylor;
  wire [29:0]stage2_y_taylor;
  wire [31:0]stage2x;
  wire [31:0]stage2y;
  wire [31:0]stage3x;
  wire [31:0]stage3y;
  wire [31:0]stage4y;
  wire \x[0][11]_i_2_n_0 ;
  wire \x[0][11]_i_3_n_0 ;
  wire \x[0][11]_i_4_n_0 ;
  wire \x[0][11]_i_5_n_0 ;
  wire \x[0][15]_i_2_n_0 ;
  wire \x[0][15]_i_3_n_0 ;
  wire \x[0][15]_i_4_n_0 ;
  wire \x[0][15]_i_5_n_0 ;
  wire \x[0][19]_i_2_n_0 ;
  wire \x[0][19]_i_3_n_0 ;
  wire \x[0][19]_i_4_n_0 ;
  wire \x[0][19]_i_5_n_0 ;
  wire \x[0][23]_i_2_n_0 ;
  wire \x[0][23]_i_3_n_0 ;
  wire \x[0][23]_i_4_n_0 ;
  wire \x[0][23]_i_5_n_0 ;
  wire \x[0][27]_i_2_n_0 ;
  wire \x[0][3]_i_2_n_0 ;
  wire \x[0][3]_i_3_n_0 ;
  wire \x[0][3]_i_4_n_0 ;
  wire \x[0][3]_i_5_n_0 ;
  wire \x[0][7]_i_2_n_0 ;
  wire \x[0][7]_i_3_n_0 ;
  wire \x[0][7]_i_4_n_0 ;
  wire \x[0][7]_i_5_n_0 ;
  wire \x[1][11]_i_10_n_0 ;
  wire \x[1][11]_i_11_n_0 ;
  wire \x[1][11]_i_12_n_0 ;
  wire \x[1][11]_i_13_n_0 ;
  wire \x[1][11]_i_14_n_0 ;
  wire \x[1][11]_i_15_n_0 ;
  wire \x[1][11]_i_16_n_0 ;
  wire \x[1][11]_i_17_n_0 ;
  wire \x[1][11]_i_18_n_0 ;
  wire \x[1][11]_i_19_n_0 ;
  wire \x[1][11]_i_20_n_0 ;
  wire \x[1][11]_i_21_n_0 ;
  wire \x[1][11]_i_2_n_0 ;
  wire \x[1][11]_i_3_n_0 ;
  wire \x[1][11]_i_4_n_0 ;
  wire \x[1][11]_i_5_n_0 ;
  wire \x[1][11]_i_6_n_0 ;
  wire \x[1][11]_i_7_n_0 ;
  wire \x[1][11]_i_8_n_0 ;
  wire \x[1][11]_i_9_n_0 ;
  wire \x[1][15]_i_10_n_0 ;
  wire \x[1][15]_i_11_n_0 ;
  wire \x[1][15]_i_12_n_0 ;
  wire \x[1][15]_i_13_n_0 ;
  wire \x[1][15]_i_14_n_0 ;
  wire \x[1][15]_i_15_n_0 ;
  wire \x[1][15]_i_16_n_0 ;
  wire \x[1][15]_i_17_n_0 ;
  wire \x[1][15]_i_18_n_0 ;
  wire \x[1][15]_i_19_n_0 ;
  wire \x[1][15]_i_20_n_0 ;
  wire \x[1][15]_i_21_n_0 ;
  wire \x[1][15]_i_2_n_0 ;
  wire \x[1][15]_i_3_n_0 ;
  wire \x[1][15]_i_4_n_0 ;
  wire \x[1][15]_i_5_n_0 ;
  wire \x[1][15]_i_6_n_0 ;
  wire \x[1][15]_i_7_n_0 ;
  wire \x[1][15]_i_8_n_0 ;
  wire \x[1][15]_i_9_n_0 ;
  wire \x[1][19]_i_10_n_0 ;
  wire \x[1][19]_i_11_n_0 ;
  wire \x[1][19]_i_12_n_0 ;
  wire \x[1][19]_i_13_n_0 ;
  wire \x[1][19]_i_14_n_0 ;
  wire \x[1][19]_i_15_n_0 ;
  wire \x[1][19]_i_16_n_0 ;
  wire \x[1][19]_i_17_n_0 ;
  wire \x[1][19]_i_18_n_0 ;
  wire \x[1][19]_i_19_n_0 ;
  wire \x[1][19]_i_20_n_0 ;
  wire \x[1][19]_i_21_n_0 ;
  wire \x[1][19]_i_2_n_0 ;
  wire \x[1][19]_i_3_n_0 ;
  wire \x[1][19]_i_4_n_0 ;
  wire \x[1][19]_i_5_n_0 ;
  wire \x[1][19]_i_6_n_0 ;
  wire \x[1][19]_i_7_n_0 ;
  wire \x[1][19]_i_8_n_0 ;
  wire \x[1][19]_i_9_n_0 ;
  wire \x[1][23]_i_10_n_0 ;
  wire \x[1][23]_i_11_n_0 ;
  wire \x[1][23]_i_12_n_0 ;
  wire \x[1][23]_i_13_n_0 ;
  wire \x[1][23]_i_14_n_0 ;
  wire \x[1][23]_i_15_n_0 ;
  wire \x[1][23]_i_16_n_0 ;
  wire \x[1][23]_i_17_n_0 ;
  wire \x[1][23]_i_18_n_0 ;
  wire \x[1][23]_i_19_n_0 ;
  wire \x[1][23]_i_20_n_0 ;
  wire \x[1][23]_i_21_n_0 ;
  wire \x[1][23]_i_22_n_0 ;
  wire \x[1][23]_i_2_n_0 ;
  wire \x[1][23]_i_3_n_0 ;
  wire \x[1][23]_i_4_n_0 ;
  wire \x[1][23]_i_5_n_0 ;
  wire \x[1][23]_i_6_n_0 ;
  wire \x[1][23]_i_7_n_0 ;
  wire \x[1][23]_i_8_n_0 ;
  wire \x[1][23]_i_9_n_0 ;
  wire \x[1][27]_i_10_n_0 ;
  wire \x[1][27]_i_11_n_0 ;
  wire \x[1][27]_i_12_n_0 ;
  wire \x[1][27]_i_13_n_0 ;
  wire \x[1][27]_i_14_n_0 ;
  wire \x[1][27]_i_15_n_0 ;
  wire \x[1][27]_i_16_n_0 ;
  wire \x[1][27]_i_17_n_0 ;
  wire \x[1][27]_i_18_n_0 ;
  wire \x[1][27]_i_19_n_0 ;
  wire \x[1][27]_i_20_n_0 ;
  wire \x[1][27]_i_21_n_0 ;
  wire \x[1][27]_i_2_n_0 ;
  wire \x[1][27]_i_3_n_0 ;
  wire \x[1][27]_i_4_n_0 ;
  wire \x[1][27]_i_5_n_0 ;
  wire \x[1][27]_i_6_n_0 ;
  wire \x[1][27]_i_7_n_0 ;
  wire \x[1][27]_i_8_n_0 ;
  wire \x[1][27]_i_9_n_0 ;
  wire \x[1][31]_i_10_n_0 ;
  wire \x[1][31]_i_11_n_0 ;
  wire \x[1][31]_i_12_n_0 ;
  wire \x[1][31]_i_2_n_0 ;
  wire \x[1][31]_i_3_n_0 ;
  wire \x[1][31]_i_4_n_0 ;
  wire \x[1][31]_i_5_n_0 ;
  wire \x[1][31]_i_6_n_0 ;
  wire \x[1][31]_i_7_n_0 ;
  wire \x[1][31]_i_8_n_0 ;
  wire \x[1][31]_i_9_n_0 ;
  wire \x[1][3]_i_10_n_0 ;
  wire \x[1][3]_i_11_n_0 ;
  wire \x[1][3]_i_12_n_0 ;
  wire \x[1][3]_i_13_n_0 ;
  wire \x[1][3]_i_14_n_0 ;
  wire \x[1][3]_i_2_n_0 ;
  wire \x[1][3]_i_3_n_0 ;
  wire \x[1][3]_i_4_n_0 ;
  wire \x[1][3]_i_5_n_0 ;
  wire \x[1][3]_i_6_n_0 ;
  wire \x[1][3]_i_7_n_0 ;
  wire \x[1][3]_i_8_n_0 ;
  wire \x[1][3]_i_9_n_0 ;
  wire \x[1][7]_i_10_n_0 ;
  wire \x[1][7]_i_11_n_0 ;
  wire \x[1][7]_i_12_n_0 ;
  wire \x[1][7]_i_13_n_0 ;
  wire \x[1][7]_i_14_n_0 ;
  wire \x[1][7]_i_15_n_0 ;
  wire \x[1][7]_i_16_n_0 ;
  wire \x[1][7]_i_17_n_0 ;
  wire \x[1][7]_i_18_n_0 ;
  wire \x[1][7]_i_19_n_0 ;
  wire \x[1][7]_i_20_n_0 ;
  wire \x[1][7]_i_21_n_0 ;
  wire \x[1][7]_i_2_n_0 ;
  wire \x[1][7]_i_3_n_0 ;
  wire \x[1][7]_i_4_n_0 ;
  wire \x[1][7]_i_5_n_0 ;
  wire \x[1][7]_i_6_n_0 ;
  wire \x[1][7]_i_7_n_0 ;
  wire \x[1][7]_i_8_n_0 ;
  wire \x[1][7]_i_9_n_0 ;
  wire \x[3][11]_i_10_n_0 ;
  wire \x[3][11]_i_11_n_0 ;
  wire \x[3][11]_i_12_n_0 ;
  wire \x[3][11]_i_13_n_0 ;
  wire \x[3][11]_i_14_n_0 ;
  wire \x[3][11]_i_15_n_0 ;
  wire \x[3][11]_i_16_n_0 ;
  wire \x[3][11]_i_17_n_0 ;
  wire \x[3][11]_i_2_n_0 ;
  wire \x[3][11]_i_3_n_0 ;
  wire \x[3][11]_i_4_n_0 ;
  wire \x[3][11]_i_5_n_0 ;
  wire \x[3][11]_i_6_n_0 ;
  wire \x[3][11]_i_7_n_0 ;
  wire \x[3][11]_i_8_n_0 ;
  wire \x[3][11]_i_9_n_0 ;
  wire \x[3][15]_i_10_n_0 ;
  wire \x[3][15]_i_11_n_0 ;
  wire \x[3][15]_i_12_n_0 ;
  wire \x[3][15]_i_13_n_0 ;
  wire \x[3][15]_i_14_n_0 ;
  wire \x[3][15]_i_15_n_0 ;
  wire \x[3][15]_i_16_n_0 ;
  wire \x[3][15]_i_17_n_0 ;
  wire \x[3][15]_i_20_n_0 ;
  wire \x[3][15]_i_21_n_0 ;
  wire \x[3][15]_i_22_n_0 ;
  wire \x[3][15]_i_23_n_0 ;
  wire \x[3][15]_i_24_n_0 ;
  wire \x[3][15]_i_25_n_0 ;
  wire \x[3][15]_i_26_n_0 ;
  wire \x[3][15]_i_27_n_0 ;
  wire \x[3][15]_i_28_n_0 ;
  wire \x[3][15]_i_29_n_0 ;
  wire \x[3][15]_i_2_n_0 ;
  wire \x[3][15]_i_30_n_0 ;
  wire \x[3][15]_i_31_n_0 ;
  wire \x[3][15]_i_32_n_0 ;
  wire \x[3][15]_i_33_n_0 ;
  wire \x[3][15]_i_3_n_0 ;
  wire \x[3][15]_i_4_n_0 ;
  wire \x[3][15]_i_5_n_0 ;
  wire \x[3][15]_i_6_n_0 ;
  wire \x[3][15]_i_7_n_0 ;
  wire \x[3][15]_i_8_n_0 ;
  wire \x[3][15]_i_9_n_0 ;
  wire \x[3][19]_i_10_n_0 ;
  wire \x[3][19]_i_11_n_0 ;
  wire \x[3][19]_i_12_n_0 ;
  wire \x[3][19]_i_13_n_0 ;
  wire \x[3][19]_i_14_n_0 ;
  wire \x[3][19]_i_15_n_0 ;
  wire \x[3][19]_i_16_n_0 ;
  wire \x[3][19]_i_17_n_0 ;
  wire \x[3][19]_i_20_n_0 ;
  wire \x[3][19]_i_21_n_0 ;
  wire \x[3][19]_i_22_n_0 ;
  wire \x[3][19]_i_23_n_0 ;
  wire \x[3][19]_i_24_n_0 ;
  wire \x[3][19]_i_25_n_0 ;
  wire \x[3][19]_i_26_n_0 ;
  wire \x[3][19]_i_27_n_0 ;
  wire \x[3][19]_i_28_n_0 ;
  wire \x[3][19]_i_29_n_0 ;
  wire \x[3][19]_i_2_n_0 ;
  wire \x[3][19]_i_30_n_0 ;
  wire \x[3][19]_i_31_n_0 ;
  wire \x[3][19]_i_32_n_0 ;
  wire \x[3][19]_i_33_n_0 ;
  wire \x[3][19]_i_34_n_0 ;
  wire \x[3][19]_i_35_n_0 ;
  wire \x[3][19]_i_3_n_0 ;
  wire \x[3][19]_i_4_n_0 ;
  wire \x[3][19]_i_5_n_0 ;
  wire \x[3][19]_i_6_n_0 ;
  wire \x[3][19]_i_7_n_0 ;
  wire \x[3][19]_i_8_n_0 ;
  wire \x[3][19]_i_9_n_0 ;
  wire \x[3][23]_i_10_n_0 ;
  wire \x[3][23]_i_11_n_0 ;
  wire \x[3][23]_i_12_n_0 ;
  wire \x[3][23]_i_13_n_0 ;
  wire \x[3][23]_i_14_n_0 ;
  wire \x[3][23]_i_15_n_0 ;
  wire \x[3][23]_i_16_n_0 ;
  wire \x[3][23]_i_17_n_0 ;
  wire \x[3][23]_i_20_n_0 ;
  wire \x[3][23]_i_21_n_0 ;
  wire \x[3][23]_i_22_n_0 ;
  wire \x[3][23]_i_23_n_0 ;
  wire \x[3][23]_i_24_n_0 ;
  wire \x[3][23]_i_25_n_0 ;
  wire \x[3][23]_i_26_n_0 ;
  wire \x[3][23]_i_27_n_0 ;
  wire \x[3][23]_i_28_n_0 ;
  wire \x[3][23]_i_29_n_0 ;
  wire \x[3][23]_i_2_n_0 ;
  wire \x[3][23]_i_30_n_0 ;
  wire \x[3][23]_i_31_n_0 ;
  wire \x[3][23]_i_32_n_0 ;
  wire \x[3][23]_i_33_n_0 ;
  wire \x[3][23]_i_34_n_0 ;
  wire \x[3][23]_i_3_n_0 ;
  wire \x[3][23]_i_4_n_0 ;
  wire \x[3][23]_i_5_n_0 ;
  wire \x[3][23]_i_6_n_0 ;
  wire \x[3][23]_i_7_n_0 ;
  wire \x[3][23]_i_8_n_0 ;
  wire \x[3][23]_i_9_n_0 ;
  wire \x[3][27]_i_10_n_0 ;
  wire \x[3][27]_i_12_n_0 ;
  wire \x[3][27]_i_13_n_0 ;
  wire \x[3][27]_i_14_n_0 ;
  wire \x[3][27]_i_15_n_0 ;
  wire \x[3][27]_i_16_n_0 ;
  wire \x[3][27]_i_2_n_0 ;
  wire \x[3][27]_i_3_n_0 ;
  wire \x[3][27]_i_4_n_0 ;
  wire \x[3][27]_i_5_n_0 ;
  wire \x[3][27]_i_6_n_0 ;
  wire \x[3][27]_i_7_n_0 ;
  wire \x[3][27]_i_8_n_0 ;
  wire \x[3][27]_i_9_n_0 ;
  wire \x[3][31]_i_10_n_0 ;
  wire \x[3][31]_i_11_n_0 ;
  wire \x[3][31]_i_12_n_0 ;
  wire \x[3][31]_i_14_n_0 ;
  wire \x[3][31]_i_16_n_0 ;
  wire \x[3][31]_i_17_n_0 ;
  wire \x[3][31]_i_18_n_0 ;
  wire \x[3][31]_i_19_n_0 ;
  wire \x[3][31]_i_20_n_0 ;
  wire \x[3][31]_i_21_n_0 ;
  wire \x[3][31]_i_22_n_0 ;
  wire \x[3][31]_i_26_n_0 ;
  wire \x[3][31]_i_27_n_0 ;
  wire \x[3][31]_i_28_n_0 ;
  wire \x[3][31]_i_29_n_0 ;
  wire \x[3][31]_i_2_n_0 ;
  wire \x[3][31]_i_31_n_0 ;
  wire \x[3][31]_i_32_n_0 ;
  wire \x[3][31]_i_33_n_0 ;
  wire \x[3][31]_i_34_n_0 ;
  wire \x[3][31]_i_35_n_0 ;
  wire \x[3][31]_i_36_n_0 ;
  wire \x[3][31]_i_37_n_0 ;
  wire \x[3][31]_i_38_n_0 ;
  wire \x[3][31]_i_39_n_0 ;
  wire \x[3][31]_i_3_n_0 ;
  wire \x[3][31]_i_40_n_0 ;
  wire \x[3][31]_i_41_n_0 ;
  wire \x[3][31]_i_42_n_0 ;
  wire \x[3][31]_i_43_n_0 ;
  wire \x[3][31]_i_44_n_0 ;
  wire \x[3][31]_i_45_n_0 ;
  wire \x[3][31]_i_46_n_0 ;
  wire \x[3][31]_i_47_n_0 ;
  wire \x[3][31]_i_48_n_0 ;
  wire \x[3][31]_i_49_n_0 ;
  wire \x[3][31]_i_4_n_0 ;
  wire \x[3][31]_i_50_n_0 ;
  wire \x[3][31]_i_51_n_0 ;
  wire \x[3][31]_i_52_n_0 ;
  wire \x[3][31]_i_53_n_0 ;
  wire \x[3][31]_i_54_n_0 ;
  wire \x[3][31]_i_55_n_0 ;
  wire \x[3][31]_i_56_n_0 ;
  wire \x[3][31]_i_57_n_0 ;
  wire \x[3][31]_i_58_n_0 ;
  wire \x[3][31]_i_5_n_0 ;
  wire \x[3][31]_i_6_n_0 ;
  wire \x[3][31]_i_7_n_0 ;
  wire \x[3][31]_i_8_n_0 ;
  wire \x[3][31]_i_9_n_0 ;
  wire \x[3][3]_i_10_n_0 ;
  wire \x[3][3]_i_11_n_0 ;
  wire \x[3][3]_i_12_n_0 ;
  wire \x[3][3]_i_13_n_0 ;
  wire \x[3][3]_i_14_n_0 ;
  wire \x[3][3]_i_2_n_0 ;
  wire \x[3][3]_i_3_n_0 ;
  wire \x[3][3]_i_4_n_0 ;
  wire \x[3][3]_i_5_n_0 ;
  wire \x[3][3]_i_6_n_0 ;
  wire \x[3][3]_i_7_n_0 ;
  wire \x[3][3]_i_8_n_0 ;
  wire \x[3][3]_i_9_n_0 ;
  wire \x[3][7]_i_10_n_0 ;
  wire \x[3][7]_i_11_n_0 ;
  wire \x[3][7]_i_14_n_0 ;
  wire \x[3][7]_i_15_n_0 ;
  wire \x[3][7]_i_17_n_0 ;
  wire \x[3][7]_i_19_n_0 ;
  wire \x[3][7]_i_20_n_0 ;
  wire \x[3][7]_i_21_n_0 ;
  wire \x[3][7]_i_22_n_0 ;
  wire \x[3][7]_i_23_n_0 ;
  wire \x[3][7]_i_24_n_0 ;
  wire \x[3][7]_i_25_n_0 ;
  wire \x[3][7]_i_26_n_0 ;
  wire \x[3][7]_i_27_n_0 ;
  wire \x[3][7]_i_28_n_0 ;
  wire \x[3][7]_i_29_n_0 ;
  wire \x[3][7]_i_2_n_0 ;
  wire \x[3][7]_i_30_n_0 ;
  wire \x[3][7]_i_31_n_0 ;
  wire \x[3][7]_i_32_n_0 ;
  wire \x[3][7]_i_33_n_0 ;
  wire \x[3][7]_i_34_n_0 ;
  wire \x[3][7]_i_35_n_0 ;
  wire \x[3][7]_i_36_n_0 ;
  wire \x[3][7]_i_37_n_0 ;
  wire \x[3][7]_i_38_n_0 ;
  wire \x[3][7]_i_39_n_0 ;
  wire \x[3][7]_i_3_n_0 ;
  wire \x[3][7]_i_40_n_0 ;
  wire \x[3][7]_i_41_n_0 ;
  wire \x[3][7]_i_42_n_0 ;
  wire \x[3][7]_i_43_n_0 ;
  wire \x[3][7]_i_44_n_0 ;
  wire \x[3][7]_i_45_n_0 ;
  wire \x[3][7]_i_46_n_0 ;
  wire \x[3][7]_i_47_n_0 ;
  wire \x[3][7]_i_48_n_0 ;
  wire \x[3][7]_i_49_n_0 ;
  wire \x[3][7]_i_4_n_0 ;
  wire \x[3][7]_i_50_n_0 ;
  wire \x[3][7]_i_51_n_0 ;
  wire \x[3][7]_i_52_n_0 ;
  wire \x[3][7]_i_53_n_0 ;
  wire \x[3][7]_i_54_n_0 ;
  wire \x[3][7]_i_55_n_0 ;
  wire \x[3][7]_i_56_n_0 ;
  wire \x[3][7]_i_57_n_0 ;
  wire \x[3][7]_i_5_n_0 ;
  wire \x[3][7]_i_6_n_0 ;
  wire \x[3][7]_i_7_n_0 ;
  wire \x[3][7]_i_8_n_0 ;
  wire \x[3][7]_i_9_n_0 ;
  wire \x[5][11]_i_10_n_0 ;
  wire \x[5][11]_i_11_n_0 ;
  wire \x[5][11]_i_13_n_0 ;
  wire \x[5][11]_i_14_n_0 ;
  wire \x[5][11]_i_15_n_0 ;
  wire \x[5][11]_i_16_n_0 ;
  wire \x[5][11]_i_17_n_0 ;
  wire \x[5][11]_i_18_n_0 ;
  wire \x[5][11]_i_19_n_0 ;
  wire \x[5][11]_i_20_n_0 ;
  wire \x[5][11]_i_21_n_0 ;
  wire \x[5][11]_i_22_n_0 ;
  wire \x[5][11]_i_25_n_0 ;
  wire \x[5][11]_i_26_n_0 ;
  wire \x[5][11]_i_27_n_0 ;
  wire \x[5][11]_i_28_n_0 ;
  wire \x[5][11]_i_29_n_0 ;
  wire \x[5][11]_i_2_n_0 ;
  wire \x[5][11]_i_30_n_0 ;
  wire \x[5][11]_i_31_n_0 ;
  wire \x[5][11]_i_32_n_0 ;
  wire \x[5][11]_i_33_n_0 ;
  wire \x[5][11]_i_34_n_0 ;
  wire \x[5][11]_i_35_n_0 ;
  wire \x[5][11]_i_36_n_0 ;
  wire \x[5][11]_i_37_n_0 ;
  wire \x[5][11]_i_38_n_0 ;
  wire \x[5][11]_i_39_n_0 ;
  wire \x[5][11]_i_3_n_0 ;
  wire \x[5][11]_i_4_n_0 ;
  wire \x[5][11]_i_5_n_0 ;
  wire \x[5][11]_i_6_n_0 ;
  wire \x[5][11]_i_7_n_0 ;
  wire \x[5][11]_i_8_n_0 ;
  wire \x[5][11]_i_9_n_0 ;
  wire \x[5][15]_i_10_n_0 ;
  wire \x[5][15]_i_11_n_0 ;
  wire \x[5][15]_i_13_n_0 ;
  wire \x[5][15]_i_14_n_0 ;
  wire \x[5][15]_i_15_n_0 ;
  wire \x[5][15]_i_16_n_0 ;
  wire \x[5][15]_i_17_n_0 ;
  wire \x[5][15]_i_18_n_0 ;
  wire \x[5][15]_i_19_n_0 ;
  wire \x[5][15]_i_20_n_0 ;
  wire \x[5][15]_i_21_n_0 ;
  wire \x[5][15]_i_22_n_0 ;
  wire \x[5][15]_i_25_n_0 ;
  wire \x[5][15]_i_26_n_0 ;
  wire \x[5][15]_i_27_n_0 ;
  wire \x[5][15]_i_28_n_0 ;
  wire \x[5][15]_i_29_n_0 ;
  wire \x[5][15]_i_2_n_0 ;
  wire \x[5][15]_i_30_n_0 ;
  wire \x[5][15]_i_31_n_0 ;
  wire \x[5][15]_i_32_n_0 ;
  wire \x[5][15]_i_33_n_0 ;
  wire \x[5][15]_i_34_n_0 ;
  wire \x[5][15]_i_35_n_0 ;
  wire \x[5][15]_i_36_n_0 ;
  wire \x[5][15]_i_37_n_0 ;
  wire \x[5][15]_i_38_n_0 ;
  wire \x[5][15]_i_39_n_0 ;
  wire \x[5][15]_i_3_n_0 ;
  wire \x[5][15]_i_40_n_0 ;
  wire \x[5][15]_i_41_n_0 ;
  wire \x[5][15]_i_42_n_0 ;
  wire \x[5][15]_i_43_n_0 ;
  wire \x[5][15]_i_44_n_0 ;
  wire \x[5][15]_i_45_n_0 ;
  wire \x[5][15]_i_46_n_0 ;
  wire \x[5][15]_i_47_n_0 ;
  wire \x[5][15]_i_4_n_0 ;
  wire \x[5][15]_i_5_n_0 ;
  wire \x[5][15]_i_6_n_0 ;
  wire \x[5][15]_i_7_n_0 ;
  wire \x[5][15]_i_8_n_0 ;
  wire \x[5][15]_i_9_n_0 ;
  wire \x[5][19]_i_10_n_0 ;
  wire \x[5][19]_i_11_n_0 ;
  wire \x[5][19]_i_13_n_0 ;
  wire \x[5][19]_i_14_n_0 ;
  wire \x[5][19]_i_15_n_0 ;
  wire \x[5][19]_i_16_n_0 ;
  wire \x[5][19]_i_17_n_0 ;
  wire \x[5][19]_i_18_n_0 ;
  wire \x[5][19]_i_19_n_0 ;
  wire \x[5][19]_i_20_n_0 ;
  wire \x[5][19]_i_21_n_0 ;
  wire \x[5][19]_i_22_n_0 ;
  wire \x[5][19]_i_25_n_0 ;
  wire \x[5][19]_i_26_n_0 ;
  wire \x[5][19]_i_27_n_0 ;
  wire \x[5][19]_i_28_n_0 ;
  wire \x[5][19]_i_29_n_0 ;
  wire \x[5][19]_i_2_n_0 ;
  wire \x[5][19]_i_30_n_0 ;
  wire \x[5][19]_i_31_n_0 ;
  wire \x[5][19]_i_32_n_0 ;
  wire \x[5][19]_i_33_n_0 ;
  wire \x[5][19]_i_34_n_0 ;
  wire \x[5][19]_i_35_n_0 ;
  wire \x[5][19]_i_36_n_0 ;
  wire \x[5][19]_i_37_n_0 ;
  wire \x[5][19]_i_38_n_0 ;
  wire \x[5][19]_i_39_n_0 ;
  wire \x[5][19]_i_3_n_0 ;
  wire \x[5][19]_i_40_n_0 ;
  wire \x[5][19]_i_41_n_0 ;
  wire \x[5][19]_i_42_n_0 ;
  wire \x[5][19]_i_43_n_0 ;
  wire \x[5][19]_i_44_n_0 ;
  wire \x[5][19]_i_45_n_0 ;
  wire \x[5][19]_i_46_n_0 ;
  wire \x[5][19]_i_47_n_0 ;
  wire \x[5][19]_i_48_n_0 ;
  wire \x[5][19]_i_4_n_0 ;
  wire \x[5][19]_i_5_n_0 ;
  wire \x[5][19]_i_6_n_0 ;
  wire \x[5][19]_i_7_n_0 ;
  wire \x[5][19]_i_8_n_0 ;
  wire \x[5][19]_i_9_n_0 ;
  wire \x[5][23]_i_10_n_0 ;
  wire \x[5][23]_i_11_n_0 ;
  wire \x[5][23]_i_13_n_0 ;
  wire \x[5][23]_i_14_n_0 ;
  wire \x[5][23]_i_15_n_0 ;
  wire \x[5][23]_i_16_n_0 ;
  wire \x[5][23]_i_17_n_0 ;
  wire \x[5][23]_i_18_n_0 ;
  wire \x[5][23]_i_19_n_0 ;
  wire \x[5][23]_i_20_n_0 ;
  wire \x[5][23]_i_21_n_0 ;
  wire \x[5][23]_i_22_n_0 ;
  wire \x[5][23]_i_23_n_0 ;
  wire \x[5][23]_i_24_n_0 ;
  wire \x[5][23]_i_25_n_0 ;
  wire \x[5][23]_i_26_n_0 ;
  wire \x[5][23]_i_27_n_0 ;
  wire \x[5][23]_i_2_n_0 ;
  wire \x[5][23]_i_30_n_0 ;
  wire \x[5][23]_i_31_n_0 ;
  wire \x[5][23]_i_32_n_0 ;
  wire \x[5][23]_i_33_n_0 ;
  wire \x[5][23]_i_34_n_0 ;
  wire \x[5][23]_i_35_n_0 ;
  wire \x[5][23]_i_36_n_0 ;
  wire \x[5][23]_i_37_n_0 ;
  wire \x[5][23]_i_38_n_0 ;
  wire \x[5][23]_i_39_n_0 ;
  wire \x[5][23]_i_3_n_0 ;
  wire \x[5][23]_i_40_n_0 ;
  wire \x[5][23]_i_41_n_0 ;
  wire \x[5][23]_i_42_n_0 ;
  wire \x[5][23]_i_43_n_0 ;
  wire \x[5][23]_i_44_n_0 ;
  wire \x[5][23]_i_45_n_0 ;
  wire \x[5][23]_i_46_n_0 ;
  wire \x[5][23]_i_47_n_0 ;
  wire \x[5][23]_i_48_n_0 ;
  wire \x[5][23]_i_49_n_0 ;
  wire \x[5][23]_i_4_n_0 ;
  wire \x[5][23]_i_50_n_0 ;
  wire \x[5][23]_i_51_n_0 ;
  wire \x[5][23]_i_52_n_0 ;
  wire \x[5][23]_i_53_n_0 ;
  wire \x[5][23]_i_5_n_0 ;
  wire \x[5][23]_i_6_n_0 ;
  wire \x[5][23]_i_7_n_0 ;
  wire \x[5][23]_i_8_n_0 ;
  wire \x[5][23]_i_9_n_0 ;
  wire \x[5][27]_i_11_n_0 ;
  wire \x[5][27]_i_12_n_0 ;
  wire \x[5][27]_i_13_n_0 ;
  wire \x[5][27]_i_14_n_0 ;
  wire \x[5][27]_i_15_n_0 ;
  wire \x[5][27]_i_16_n_0 ;
  wire \x[5][27]_i_17_n_0 ;
  wire \x[5][27]_i_18_n_0 ;
  wire \x[5][27]_i_19_n_0 ;
  wire \x[5][27]_i_21_n_0 ;
  wire \x[5][27]_i_23_n_0 ;
  wire \x[5][27]_i_24_n_0 ;
  wire \x[5][27]_i_25_n_0 ;
  wire \x[5][27]_i_26_n_0 ;
  wire \x[5][27]_i_27_n_0 ;
  wire \x[5][27]_i_28_n_0 ;
  wire \x[5][27]_i_29_n_0 ;
  wire \x[5][27]_i_2_n_0 ;
  wire \x[5][27]_i_30_n_0 ;
  wire \x[5][27]_i_31_n_0 ;
  wire \x[5][27]_i_32_n_0 ;
  wire \x[5][27]_i_33_n_0 ;
  wire \x[5][27]_i_34_n_0 ;
  wire \x[5][27]_i_35_n_0 ;
  wire \x[5][27]_i_36_n_0 ;
  wire \x[5][27]_i_37_n_0 ;
  wire \x[5][27]_i_38_n_0 ;
  wire \x[5][27]_i_39_n_0 ;
  wire \x[5][27]_i_3_n_0 ;
  wire \x[5][27]_i_40_n_0 ;
  wire \x[5][27]_i_41_n_0 ;
  wire \x[5][27]_i_42_n_0 ;
  wire \x[5][27]_i_43_n_0 ;
  wire \x[5][27]_i_44_n_0 ;
  wire \x[5][27]_i_45_n_0 ;
  wire \x[5][27]_i_46_n_0 ;
  wire \x[5][27]_i_47_n_0 ;
  wire \x[5][27]_i_4_n_0 ;
  wire \x[5][27]_i_5_n_0 ;
  wire \x[5][27]_i_6_n_0 ;
  wire \x[5][27]_i_7_n_0 ;
  wire \x[5][27]_i_8_n_0 ;
  wire \x[5][27]_i_9_n_0 ;
  wire \x[5][31]_i_10_n_0 ;
  wire \x[5][31]_i_11_n_0 ;
  wire \x[5][31]_i_12_n_0 ;
  wire \x[5][31]_i_13_n_0 ;
  wire \x[5][31]_i_14_n_0 ;
  wire \x[5][31]_i_15_n_0 ;
  wire \x[5][31]_i_16_n_0 ;
  wire \x[5][31]_i_17_n_0 ;
  wire \x[5][31]_i_18_n_0 ;
  wire \x[5][31]_i_19_n_0 ;
  wire \x[5][31]_i_20_n_0 ;
  wire \x[5][31]_i_21_n_0 ;
  wire \x[5][31]_i_22_n_0 ;
  wire \x[5][31]_i_23_n_0 ;
  wire \x[5][31]_i_24_n_0 ;
  wire \x[5][31]_i_27_n_0 ;
  wire \x[5][31]_i_29_n_0 ;
  wire \x[5][31]_i_30_n_0 ;
  wire \x[5][31]_i_31_n_0 ;
  wire \x[5][31]_i_32_n_0 ;
  wire \x[5][31]_i_34_n_0 ;
  wire \x[5][31]_i_35_n_0 ;
  wire \x[5][31]_i_37_n_0 ;
  wire \x[5][31]_i_39_n_0 ;
  wire \x[5][31]_i_3_n_0 ;
  wire \x[5][31]_i_40_n_0 ;
  wire \x[5][31]_i_41_n_0 ;
  wire \x[5][31]_i_42_n_0 ;
  wire \x[5][31]_i_43_n_0 ;
  wire \x[5][31]_i_44_n_0 ;
  wire \x[5][31]_i_45_n_0 ;
  wire \x[5][31]_i_46_n_0 ;
  wire \x[5][31]_i_47_n_0 ;
  wire \x[5][31]_i_48_n_0 ;
  wire \x[5][31]_i_49_n_0 ;
  wire \x[5][31]_i_4_n_0 ;
  wire \x[5][31]_i_50_n_0 ;
  wire \x[5][31]_i_51_n_0 ;
  wire \x[5][31]_i_52_n_0 ;
  wire \x[5][31]_i_53_n_0 ;
  wire \x[5][31]_i_54_n_0 ;
  wire \x[5][31]_i_55_n_0 ;
  wire \x[5][31]_i_56_n_0 ;
  wire \x[5][31]_i_57_n_0 ;
  wire \x[5][31]_i_58_n_0 ;
  wire \x[5][31]_i_59_n_0 ;
  wire \x[5][31]_i_5_n_0 ;
  wire \x[5][31]_i_60_n_0 ;
  wire \x[5][31]_i_61_n_0 ;
  wire \x[5][31]_i_62_n_0 ;
  wire \x[5][31]_i_63_n_0 ;
  wire \x[5][31]_i_64_n_0 ;
  wire \x[5][31]_i_65_n_0 ;
  wire \x[5][31]_i_66_n_0 ;
  wire \x[5][31]_i_67_n_0 ;
  wire \x[5][31]_i_68_n_0 ;
  wire \x[5][31]_i_69_n_0 ;
  wire \x[5][31]_i_6_n_0 ;
  wire \x[5][31]_i_70_n_0 ;
  wire \x[5][31]_i_71_n_0 ;
  wire \x[5][31]_i_72_n_0 ;
  wire \x[5][31]_i_73_n_0 ;
  wire \x[5][31]_i_74_n_0 ;
  wire \x[5][31]_i_75_n_0 ;
  wire \x[5][31]_i_76_n_0 ;
  wire \x[5][31]_i_77_n_0 ;
  wire \x[5][31]_i_78_n_0 ;
  wire \x[5][31]_i_79_n_0 ;
  wire \x[5][31]_i_7_n_0 ;
  wire \x[5][31]_i_80_n_0 ;
  wire \x[5][31]_i_81_n_0 ;
  wire \x[5][31]_i_8_n_0 ;
  wire \x[5][3]_i_10_n_0 ;
  wire \x[5][3]_i_2_n_0 ;
  wire \x[5][3]_i_3_n_0 ;
  wire \x[5][3]_i_4_n_0 ;
  wire \x[5][3]_i_5_n_0 ;
  wire \x[5][3]_i_6_n_0 ;
  wire \x[5][3]_i_7_n_0 ;
  wire \x[5][3]_i_8_n_0 ;
  wire \x[5][3]_i_9_n_0 ;
  wire \x[5][7]_i_10_n_0 ;
  wire \x[5][7]_i_11_n_0 ;
  wire \x[5][7]_i_13_n_0 ;
  wire \x[5][7]_i_14_n_0 ;
  wire \x[5][7]_i_15_n_0 ;
  wire \x[5][7]_i_16_n_0 ;
  wire \x[5][7]_i_17_n_0 ;
  wire \x[5][7]_i_18_n_0 ;
  wire \x[5][7]_i_19_n_0 ;
  wire \x[5][7]_i_20_n_0 ;
  wire \x[5][7]_i_21_n_0 ;
  wire \x[5][7]_i_2_n_0 ;
  wire \x[5][7]_i_3_n_0 ;
  wire \x[5][7]_i_4_n_0 ;
  wire \x[5][7]_i_5_n_0 ;
  wire \x[5][7]_i_6_n_0 ;
  wire \x[5][7]_i_7_n_0 ;
  wire \x[5][7]_i_8_n_0 ;
  wire \x[5][7]_i_9_n_0 ;
  wire \x[6][0]_i_1_n_0 ;
  wire \x[6][10]_i_1_n_0 ;
  wire \x[6][11]_i_1_n_0 ;
  wire \x[6][12]_i_1_n_0 ;
  wire \x[6][12]_i_4_n_0 ;
  wire \x[6][12]_i_5_n_0 ;
  wire \x[6][12]_i_6_n_0 ;
  wire \x[6][12]_i_7_n_0 ;
  wire \x[6][13]_i_1_n_0 ;
  wire \x[6][14]_i_1_n_0 ;
  wire \x[6][15]_i_1_n_0 ;
  wire \x[6][16]_i_1_n_0 ;
  wire \x[6][16]_i_4_n_0 ;
  wire \x[6][16]_i_5_n_0 ;
  wire \x[6][16]_i_6_n_0 ;
  wire \x[6][16]_i_7_n_0 ;
  wire \x[6][17]_i_1_n_0 ;
  wire \x[6][18]_i_1_n_0 ;
  wire \x[6][19]_i_1_n_0 ;
  wire \x[6][1]_i_1_n_0 ;
  wire \x[6][20]_i_1_n_0 ;
  wire \x[6][20]_i_4_n_0 ;
  wire \x[6][20]_i_5_n_0 ;
  wire \x[6][20]_i_6_n_0 ;
  wire \x[6][20]_i_7_n_0 ;
  wire \x[6][21]_i_1_n_0 ;
  wire \x[6][22]_i_1_n_0 ;
  wire \x[6][23]_i_1_n_0 ;
  wire \x[6][24]_i_1_n_0 ;
  wire \x[6][24]_i_4_n_0 ;
  wire \x[6][24]_i_5_n_0 ;
  wire \x[6][24]_i_6_n_0 ;
  wire \x[6][24]_i_7_n_0 ;
  wire \x[6][25]_i_1_n_0 ;
  wire \x[6][26]_i_1_n_0 ;
  wire \x[6][27]_i_1_n_0 ;
  wire \x[6][28]_i_1_n_0 ;
  wire \x[6][28]_i_4_n_0 ;
  wire \x[6][28]_i_5_n_0 ;
  wire \x[6][28]_i_6_n_0 ;
  wire \x[6][28]_i_7_n_0 ;
  wire \x[6][29]_i_1_n_0 ;
  wire \x[6][2]_i_1_n_0 ;
  wire \x[6][30]_i_1_n_0 ;
  wire \x[6][31]_i_1_n_0 ;
  wire \x[6][3]_i_1_n_0 ;
  wire \x[6][4]_i_1_n_0 ;
  wire \x[6][4]_i_4_n_0 ;
  wire \x[6][4]_i_5_n_0 ;
  wire \x[6][4]_i_6_n_0 ;
  wire \x[6][4]_i_7_n_0 ;
  wire \x[6][4]_i_8_n_0 ;
  wire \x[6][5]_i_1_n_0 ;
  wire \x[6][6]_i_1_n_0 ;
  wire \x[6][7]_i_1_n_0 ;
  wire \x[6][8]_i_1_n_0 ;
  wire \x[6][8]_i_4_n_0 ;
  wire \x[6][8]_i_5_n_0 ;
  wire \x[6][8]_i_6_n_0 ;
  wire \x[6][8]_i_7_n_0 ;
  wire \x[6][9]_i_1_n_0 ;
  wire [31:0]x_in;
  wire [31:0]x_in_IBUF;
  wire [31:0]\x_reg[0] ;
  wire \x_reg[0][11]_i_1_n_0 ;
  wire \x_reg[0][11]_i_1_n_1 ;
  wire \x_reg[0][11]_i_1_n_2 ;
  wire \x_reg[0][11]_i_1_n_3 ;
  wire \x_reg[0][15]_i_1_n_0 ;
  wire \x_reg[0][15]_i_1_n_1 ;
  wire \x_reg[0][15]_i_1_n_2 ;
  wire \x_reg[0][15]_i_1_n_3 ;
  wire \x_reg[0][19]_i_1_n_0 ;
  wire \x_reg[0][19]_i_1_n_1 ;
  wire \x_reg[0][19]_i_1_n_2 ;
  wire \x_reg[0][19]_i_1_n_3 ;
  wire \x_reg[0][23]_i_1_n_0 ;
  wire \x_reg[0][23]_i_1_n_1 ;
  wire \x_reg[0][23]_i_1_n_2 ;
  wire \x_reg[0][23]_i_1_n_3 ;
  wire \x_reg[0][27]_i_1_n_0 ;
  wire \x_reg[0][27]_i_1_n_1 ;
  wire \x_reg[0][27]_i_1_n_2 ;
  wire \x_reg[0][27]_i_1_n_3 ;
  wire \x_reg[0][31]_i_1_n_1 ;
  wire \x_reg[0][31]_i_1_n_2 ;
  wire \x_reg[0][31]_i_1_n_3 ;
  wire \x_reg[0][3]_i_1_n_0 ;
  wire \x_reg[0][3]_i_1_n_1 ;
  wire \x_reg[0][3]_i_1_n_2 ;
  wire \x_reg[0][3]_i_1_n_3 ;
  wire \x_reg[0][7]_i_1_n_0 ;
  wire \x_reg[0][7]_i_1_n_1 ;
  wire \x_reg[0][7]_i_1_n_2 ;
  wire \x_reg[0][7]_i_1_n_3 ;
  wire \x_reg[1][11]_i_1_n_0 ;
  wire \x_reg[1][11]_i_1_n_1 ;
  wire \x_reg[1][11]_i_1_n_2 ;
  wire \x_reg[1][11]_i_1_n_3 ;
  wire \x_reg[1][15]_i_1_n_0 ;
  wire \x_reg[1][15]_i_1_n_1 ;
  wire \x_reg[1][15]_i_1_n_2 ;
  wire \x_reg[1][15]_i_1_n_3 ;
  wire \x_reg[1][19]_i_1_n_0 ;
  wire \x_reg[1][19]_i_1_n_1 ;
  wire \x_reg[1][19]_i_1_n_2 ;
  wire \x_reg[1][19]_i_1_n_3 ;
  wire \x_reg[1][23]_i_1_n_0 ;
  wire \x_reg[1][23]_i_1_n_1 ;
  wire \x_reg[1][23]_i_1_n_2 ;
  wire \x_reg[1][23]_i_1_n_3 ;
  wire \x_reg[1][27]_i_1_n_0 ;
  wire \x_reg[1][27]_i_1_n_1 ;
  wire \x_reg[1][27]_i_1_n_2 ;
  wire \x_reg[1][27]_i_1_n_3 ;
  wire \x_reg[1][31]_i_1_n_1 ;
  wire \x_reg[1][31]_i_1_n_2 ;
  wire \x_reg[1][31]_i_1_n_3 ;
  wire \x_reg[1][3]_i_1_n_0 ;
  wire \x_reg[1][3]_i_1_n_1 ;
  wire \x_reg[1][3]_i_1_n_2 ;
  wire \x_reg[1][3]_i_1_n_3 ;
  wire \x_reg[1][7]_i_1_n_0 ;
  wire \x_reg[1][7]_i_1_n_1 ;
  wire \x_reg[1][7]_i_1_n_2 ;
  wire \x_reg[1][7]_i_1_n_3 ;
  wire [31:0]\x_reg[3] ;
  wire \x_reg[3][11]_i_1_n_0 ;
  wire \x_reg[3][11]_i_1_n_1 ;
  wire \x_reg[3][11]_i_1_n_2 ;
  wire \x_reg[3][11]_i_1_n_3 ;
  wire \x_reg[3][15]_i_18_n_0 ;
  wire \x_reg[3][15]_i_18_n_1 ;
  wire \x_reg[3][15]_i_18_n_2 ;
  wire \x_reg[3][15]_i_18_n_3 ;
  wire \x_reg[3][15]_i_18_n_4 ;
  wire \x_reg[3][15]_i_18_n_5 ;
  wire \x_reg[3][15]_i_18_n_6 ;
  wire \x_reg[3][15]_i_18_n_7 ;
  wire \x_reg[3][15]_i_19_n_0 ;
  wire \x_reg[3][15]_i_19_n_1 ;
  wire \x_reg[3][15]_i_19_n_2 ;
  wire \x_reg[3][15]_i_19_n_3 ;
  wire \x_reg[3][15]_i_1_n_0 ;
  wire \x_reg[3][15]_i_1_n_1 ;
  wire \x_reg[3][15]_i_1_n_2 ;
  wire \x_reg[3][15]_i_1_n_3 ;
  wire \x_reg[3][19]_i_18_n_0 ;
  wire \x_reg[3][19]_i_18_n_1 ;
  wire \x_reg[3][19]_i_18_n_2 ;
  wire \x_reg[3][19]_i_18_n_3 ;
  wire \x_reg[3][19]_i_18_n_4 ;
  wire \x_reg[3][19]_i_18_n_5 ;
  wire \x_reg[3][19]_i_18_n_6 ;
  wire \x_reg[3][19]_i_18_n_7 ;
  wire \x_reg[3][19]_i_19_n_0 ;
  wire \x_reg[3][19]_i_19_n_1 ;
  wire \x_reg[3][19]_i_19_n_2 ;
  wire \x_reg[3][19]_i_19_n_3 ;
  wire \x_reg[3][19]_i_1_n_0 ;
  wire \x_reg[3][19]_i_1_n_1 ;
  wire \x_reg[3][19]_i_1_n_2 ;
  wire \x_reg[3][19]_i_1_n_3 ;
  wire \x_reg[3][23]_i_18_n_0 ;
  wire \x_reg[3][23]_i_18_n_1 ;
  wire \x_reg[3][23]_i_18_n_2 ;
  wire \x_reg[3][23]_i_18_n_3 ;
  wire \x_reg[3][23]_i_18_n_4 ;
  wire \x_reg[3][23]_i_18_n_5 ;
  wire \x_reg[3][23]_i_18_n_6 ;
  wire \x_reg[3][23]_i_18_n_7 ;
  wire \x_reg[3][23]_i_19_n_0 ;
  wire \x_reg[3][23]_i_19_n_1 ;
  wire \x_reg[3][23]_i_19_n_2 ;
  wire \x_reg[3][23]_i_19_n_3 ;
  wire \x_reg[3][23]_i_1_n_0 ;
  wire \x_reg[3][23]_i_1_n_1 ;
  wire \x_reg[3][23]_i_1_n_2 ;
  wire \x_reg[3][23]_i_1_n_3 ;
  wire \x_reg[3][27]_i_1_n_0 ;
  wire \x_reg[3][27]_i_1_n_1 ;
  wire \x_reg[3][27]_i_1_n_2 ;
  wire \x_reg[3][27]_i_1_n_3 ;
  wire \x_reg[3][31]_i_13_n_0 ;
  wire \x_reg[3][31]_i_13_n_1 ;
  wire \x_reg[3][31]_i_13_n_2 ;
  wire \x_reg[3][31]_i_13_n_3 ;
  wire \x_reg[3][31]_i_13_n_4 ;
  wire \x_reg[3][31]_i_13_n_5 ;
  wire \x_reg[3][31]_i_13_n_6 ;
  wire \x_reg[3][31]_i_13_n_7 ;
  wire \x_reg[3][31]_i_15_n_0 ;
  wire \x_reg[3][31]_i_15_n_1 ;
  wire \x_reg[3][31]_i_15_n_2 ;
  wire \x_reg[3][31]_i_15_n_3 ;
  wire \x_reg[3][31]_i_1_n_1 ;
  wire \x_reg[3][31]_i_1_n_2 ;
  wire \x_reg[3][31]_i_1_n_3 ;
  wire \x_reg[3][31]_i_23_n_1 ;
  wire \x_reg[3][31]_i_23_n_3 ;
  wire \x_reg[3][31]_i_24_n_2 ;
  wire \x_reg[3][31]_i_24_n_3 ;
  wire \x_reg[3][31]_i_24_n_5 ;
  wire \x_reg[3][31]_i_24_n_6 ;
  wire \x_reg[3][31]_i_24_n_7 ;
  wire \x_reg[3][31]_i_25_n_0 ;
  wire \x_reg[3][31]_i_25_n_1 ;
  wire \x_reg[3][31]_i_25_n_2 ;
  wire \x_reg[3][31]_i_25_n_3 ;
  wire \x_reg[3][31]_i_25_n_4 ;
  wire \x_reg[3][31]_i_25_n_5 ;
  wire \x_reg[3][31]_i_25_n_6 ;
  wire \x_reg[3][31]_i_25_n_7 ;
  wire \x_reg[3][31]_i_30_n_0 ;
  wire \x_reg[3][31]_i_30_n_1 ;
  wire \x_reg[3][31]_i_30_n_2 ;
  wire \x_reg[3][31]_i_30_n_3 ;
  wire \x_reg[3][3]_i_1_n_0 ;
  wire \x_reg[3][3]_i_1_n_1 ;
  wire \x_reg[3][3]_i_1_n_2 ;
  wire \x_reg[3][3]_i_1_n_3 ;
  wire \x_reg[3][7]_i_12_n_0 ;
  wire \x_reg[3][7]_i_12_n_1 ;
  wire \x_reg[3][7]_i_12_n_2 ;
  wire \x_reg[3][7]_i_12_n_3 ;
  wire \x_reg[3][7]_i_13_n_0 ;
  wire \x_reg[3][7]_i_13_n_1 ;
  wire \x_reg[3][7]_i_13_n_2 ;
  wire \x_reg[3][7]_i_13_n_3 ;
  wire \x_reg[3][7]_i_13_n_4 ;
  wire \x_reg[3][7]_i_13_n_5 ;
  wire \x_reg[3][7]_i_13_n_6 ;
  wire \x_reg[3][7]_i_13_n_7 ;
  wire \x_reg[3][7]_i_16_n_0 ;
  wire \x_reg[3][7]_i_16_n_1 ;
  wire \x_reg[3][7]_i_16_n_2 ;
  wire \x_reg[3][7]_i_16_n_3 ;
  wire \x_reg[3][7]_i_16_n_4 ;
  wire \x_reg[3][7]_i_16_n_5 ;
  wire \x_reg[3][7]_i_16_n_6 ;
  wire \x_reg[3][7]_i_16_n_7 ;
  wire \x_reg[3][7]_i_18_n_0 ;
  wire \x_reg[3][7]_i_18_n_1 ;
  wire \x_reg[3][7]_i_18_n_2 ;
  wire \x_reg[3][7]_i_18_n_3 ;
  wire \x_reg[3][7]_i_1_n_0 ;
  wire \x_reg[3][7]_i_1_n_1 ;
  wire \x_reg[3][7]_i_1_n_2 ;
  wire \x_reg[3][7]_i_1_n_3 ;
  wire [31:0]\x_reg[5] ;
  wire \x_reg[5][11]_i_12_n_0 ;
  wire \x_reg[5][11]_i_12_n_1 ;
  wire \x_reg[5][11]_i_12_n_2 ;
  wire \x_reg[5][11]_i_12_n_3 ;
  wire \x_reg[5][11]_i_12_n_4 ;
  wire \x_reg[5][11]_i_12_n_5 ;
  wire \x_reg[5][11]_i_12_n_6 ;
  wire \x_reg[5][11]_i_12_n_7 ;
  wire \x_reg[5][11]_i_1_n_0 ;
  wire \x_reg[5][11]_i_1_n_1 ;
  wire \x_reg[5][11]_i_1_n_2 ;
  wire \x_reg[5][11]_i_1_n_3 ;
  wire \x_reg[5][11]_i_23_n_0 ;
  wire \x_reg[5][11]_i_23_n_1 ;
  wire \x_reg[5][11]_i_23_n_2 ;
  wire \x_reg[5][11]_i_23_n_3 ;
  wire \x_reg[5][11]_i_23_n_4 ;
  wire \x_reg[5][11]_i_23_n_5 ;
  wire \x_reg[5][11]_i_23_n_6 ;
  wire \x_reg[5][11]_i_23_n_7 ;
  wire \x_reg[5][11]_i_24_n_0 ;
  wire \x_reg[5][11]_i_24_n_1 ;
  wire \x_reg[5][11]_i_24_n_2 ;
  wire \x_reg[5][11]_i_24_n_3 ;
  wire \x_reg[5][11]_i_24_n_4 ;
  wire \x_reg[5][11]_i_24_n_5 ;
  wire \x_reg[5][11]_i_24_n_6 ;
  wire \x_reg[5][11]_i_24_n_7 ;
  wire \x_reg[5][15]_i_12_n_0 ;
  wire \x_reg[5][15]_i_12_n_1 ;
  wire \x_reg[5][15]_i_12_n_2 ;
  wire \x_reg[5][15]_i_12_n_3 ;
  wire \x_reg[5][15]_i_12_n_4 ;
  wire \x_reg[5][15]_i_12_n_5 ;
  wire \x_reg[5][15]_i_12_n_6 ;
  wire \x_reg[5][15]_i_12_n_7 ;
  wire \x_reg[5][15]_i_1_n_0 ;
  wire \x_reg[5][15]_i_1_n_1 ;
  wire \x_reg[5][15]_i_1_n_2 ;
  wire \x_reg[5][15]_i_1_n_3 ;
  wire \x_reg[5][15]_i_23_n_0 ;
  wire \x_reg[5][15]_i_23_n_1 ;
  wire \x_reg[5][15]_i_23_n_2 ;
  wire \x_reg[5][15]_i_23_n_3 ;
  wire \x_reg[5][15]_i_23_n_4 ;
  wire \x_reg[5][15]_i_23_n_5 ;
  wire \x_reg[5][15]_i_23_n_6 ;
  wire \x_reg[5][15]_i_23_n_7 ;
  wire \x_reg[5][15]_i_24_n_0 ;
  wire \x_reg[5][15]_i_24_n_1 ;
  wire \x_reg[5][15]_i_24_n_2 ;
  wire \x_reg[5][15]_i_24_n_3 ;
  wire \x_reg[5][15]_i_24_n_4 ;
  wire \x_reg[5][15]_i_24_n_5 ;
  wire \x_reg[5][15]_i_24_n_6 ;
  wire \x_reg[5][15]_i_24_n_7 ;
  wire \x_reg[5][19]_i_12_n_0 ;
  wire \x_reg[5][19]_i_12_n_1 ;
  wire \x_reg[5][19]_i_12_n_2 ;
  wire \x_reg[5][19]_i_12_n_3 ;
  wire \x_reg[5][19]_i_12_n_4 ;
  wire \x_reg[5][19]_i_12_n_5 ;
  wire \x_reg[5][19]_i_12_n_6 ;
  wire \x_reg[5][19]_i_12_n_7 ;
  wire \x_reg[5][19]_i_1_n_0 ;
  wire \x_reg[5][19]_i_1_n_1 ;
  wire \x_reg[5][19]_i_1_n_2 ;
  wire \x_reg[5][19]_i_1_n_3 ;
  wire \x_reg[5][19]_i_23_n_0 ;
  wire \x_reg[5][19]_i_23_n_1 ;
  wire \x_reg[5][19]_i_23_n_2 ;
  wire \x_reg[5][19]_i_23_n_3 ;
  wire \x_reg[5][19]_i_23_n_4 ;
  wire \x_reg[5][19]_i_23_n_5 ;
  wire \x_reg[5][19]_i_23_n_6 ;
  wire \x_reg[5][19]_i_23_n_7 ;
  wire \x_reg[5][19]_i_24_n_0 ;
  wire \x_reg[5][19]_i_24_n_1 ;
  wire \x_reg[5][19]_i_24_n_2 ;
  wire \x_reg[5][19]_i_24_n_3 ;
  wire \x_reg[5][19]_i_24_n_4 ;
  wire \x_reg[5][19]_i_24_n_5 ;
  wire \x_reg[5][19]_i_24_n_6 ;
  wire \x_reg[5][19]_i_24_n_7 ;
  wire \x_reg[5][23]_i_12_n_0 ;
  wire \x_reg[5][23]_i_12_n_1 ;
  wire \x_reg[5][23]_i_12_n_2 ;
  wire \x_reg[5][23]_i_12_n_3 ;
  wire \x_reg[5][23]_i_12_n_4 ;
  wire \x_reg[5][23]_i_12_n_5 ;
  wire \x_reg[5][23]_i_12_n_6 ;
  wire \x_reg[5][23]_i_12_n_7 ;
  wire \x_reg[5][23]_i_1_n_0 ;
  wire \x_reg[5][23]_i_1_n_1 ;
  wire \x_reg[5][23]_i_1_n_2 ;
  wire \x_reg[5][23]_i_1_n_3 ;
  wire \x_reg[5][23]_i_28_n_0 ;
  wire \x_reg[5][23]_i_28_n_1 ;
  wire \x_reg[5][23]_i_28_n_2 ;
  wire \x_reg[5][23]_i_28_n_3 ;
  wire \x_reg[5][23]_i_28_n_4 ;
  wire \x_reg[5][23]_i_28_n_5 ;
  wire \x_reg[5][23]_i_28_n_6 ;
  wire \x_reg[5][23]_i_28_n_7 ;
  wire \x_reg[5][23]_i_29_n_0 ;
  wire \x_reg[5][23]_i_29_n_1 ;
  wire \x_reg[5][23]_i_29_n_2 ;
  wire \x_reg[5][23]_i_29_n_3 ;
  wire \x_reg[5][23]_i_29_n_4 ;
  wire \x_reg[5][23]_i_29_n_5 ;
  wire \x_reg[5][23]_i_29_n_6 ;
  wire \x_reg[5][23]_i_29_n_7 ;
  wire \x_reg[5][27]_i_10_n_0 ;
  wire \x_reg[5][27]_i_10_n_1 ;
  wire \x_reg[5][27]_i_10_n_2 ;
  wire \x_reg[5][27]_i_10_n_3 ;
  wire \x_reg[5][27]_i_10_n_4 ;
  wire \x_reg[5][27]_i_10_n_5 ;
  wire \x_reg[5][27]_i_10_n_6 ;
  wire \x_reg[5][27]_i_10_n_7 ;
  wire \x_reg[5][27]_i_1_n_0 ;
  wire \x_reg[5][27]_i_1_n_1 ;
  wire \x_reg[5][27]_i_1_n_2 ;
  wire \x_reg[5][27]_i_1_n_3 ;
  wire \x_reg[5][27]_i_20_n_0 ;
  wire \x_reg[5][27]_i_20_n_1 ;
  wire \x_reg[5][27]_i_20_n_2 ;
  wire \x_reg[5][27]_i_20_n_3 ;
  wire \x_reg[5][27]_i_20_n_4 ;
  wire \x_reg[5][27]_i_20_n_5 ;
  wire \x_reg[5][27]_i_20_n_6 ;
  wire \x_reg[5][27]_i_20_n_7 ;
  wire \x_reg[5][27]_i_22_n_0 ;
  wire \x_reg[5][27]_i_22_n_1 ;
  wire \x_reg[5][27]_i_22_n_2 ;
  wire \x_reg[5][27]_i_22_n_3 ;
  wire \x_reg[5][27]_i_22_n_4 ;
  wire \x_reg[5][27]_i_22_n_5 ;
  wire \x_reg[5][27]_i_22_n_6 ;
  wire \x_reg[5][27]_i_22_n_7 ;
  wire \x_reg[5][31]_i_1_n_1 ;
  wire \x_reg[5][31]_i_1_n_2 ;
  wire \x_reg[5][31]_i_1_n_3 ;
  wire \x_reg[5][31]_i_25_n_0 ;
  wire \x_reg[5][31]_i_25_n_1 ;
  wire \x_reg[5][31]_i_25_n_2 ;
  wire \x_reg[5][31]_i_25_n_3 ;
  wire \x_reg[5][31]_i_25_n_4 ;
  wire \x_reg[5][31]_i_25_n_5 ;
  wire \x_reg[5][31]_i_25_n_6 ;
  wire \x_reg[5][31]_i_25_n_7 ;
  wire \x_reg[5][31]_i_26_n_0 ;
  wire \x_reg[5][31]_i_26_n_2 ;
  wire \x_reg[5][31]_i_26_n_3 ;
  wire \x_reg[5][31]_i_26_n_5 ;
  wire \x_reg[5][31]_i_26_n_6 ;
  wire \x_reg[5][31]_i_26_n_7 ;
  wire \x_reg[5][31]_i_28_n_0 ;
  wire \x_reg[5][31]_i_28_n_1 ;
  wire \x_reg[5][31]_i_28_n_2 ;
  wire \x_reg[5][31]_i_28_n_3 ;
  wire \x_reg[5][31]_i_28_n_4 ;
  wire \x_reg[5][31]_i_28_n_5 ;
  wire \x_reg[5][31]_i_28_n_6 ;
  wire \x_reg[5][31]_i_28_n_7 ;
  wire \x_reg[5][31]_i_2_n_1 ;
  wire \x_reg[5][31]_i_2_n_2 ;
  wire \x_reg[5][31]_i_2_n_3 ;
  wire \x_reg[5][31]_i_2_n_4 ;
  wire \x_reg[5][31]_i_2_n_5 ;
  wire \x_reg[5][31]_i_2_n_6 ;
  wire \x_reg[5][31]_i_2_n_7 ;
  wire \x_reg[5][31]_i_33_n_2 ;
  wire \x_reg[5][31]_i_33_n_3 ;
  wire \x_reg[5][31]_i_33_n_5 ;
  wire \x_reg[5][31]_i_33_n_6 ;
  wire \x_reg[5][31]_i_33_n_7 ;
  wire \x_reg[5][31]_i_36_n_0 ;
  wire \x_reg[5][31]_i_36_n_1 ;
  wire \x_reg[5][31]_i_36_n_2 ;
  wire \x_reg[5][31]_i_36_n_3 ;
  wire \x_reg[5][31]_i_36_n_4 ;
  wire \x_reg[5][31]_i_36_n_5 ;
  wire \x_reg[5][31]_i_36_n_6 ;
  wire \x_reg[5][31]_i_36_n_7 ;
  wire \x_reg[5][31]_i_38_n_0 ;
  wire \x_reg[5][31]_i_38_n_1 ;
  wire \x_reg[5][31]_i_38_n_2 ;
  wire \x_reg[5][31]_i_38_n_3 ;
  wire \x_reg[5][31]_i_38_n_4 ;
  wire \x_reg[5][31]_i_38_n_5 ;
  wire \x_reg[5][31]_i_38_n_6 ;
  wire \x_reg[5][31]_i_38_n_7 ;
  wire \x_reg[5][31]_i_9_n_0 ;
  wire \x_reg[5][31]_i_9_n_1 ;
  wire \x_reg[5][31]_i_9_n_2 ;
  wire \x_reg[5][31]_i_9_n_3 ;
  wire \x_reg[5][31]_i_9_n_4 ;
  wire \x_reg[5][31]_i_9_n_5 ;
  wire \x_reg[5][31]_i_9_n_6 ;
  wire \x_reg[5][31]_i_9_n_7 ;
  wire \x_reg[5][3]_i_1_n_0 ;
  wire \x_reg[5][3]_i_1_n_1 ;
  wire \x_reg[5][3]_i_1_n_2 ;
  wire \x_reg[5][3]_i_1_n_3 ;
  wire \x_reg[5][7]_i_12_n_0 ;
  wire \x_reg[5][7]_i_12_n_1 ;
  wire \x_reg[5][7]_i_12_n_2 ;
  wire \x_reg[5][7]_i_12_n_3 ;
  wire \x_reg[5][7]_i_12_n_4 ;
  wire \x_reg[5][7]_i_12_n_5 ;
  wire \x_reg[5][7]_i_12_n_6 ;
  wire \x_reg[5][7]_i_12_n_7 ;
  wire \x_reg[5][7]_i_1_n_0 ;
  wire \x_reg[5][7]_i_1_n_1 ;
  wire \x_reg[5][7]_i_1_n_2 ;
  wire \x_reg[5][7]_i_1_n_3 ;
  wire \x_reg[6][12]_i_2_n_0 ;
  wire \x_reg[6][12]_i_2_n_1 ;
  wire \x_reg[6][12]_i_2_n_2 ;
  wire \x_reg[6][12]_i_2_n_3 ;
  wire \x_reg[6][12]_i_2_n_4 ;
  wire \x_reg[6][12]_i_2_n_5 ;
  wire \x_reg[6][12]_i_2_n_6 ;
  wire \x_reg[6][12]_i_2_n_7 ;
  wire \x_reg[6][16]_i_2_n_0 ;
  wire \x_reg[6][16]_i_2_n_1 ;
  wire \x_reg[6][16]_i_2_n_2 ;
  wire \x_reg[6][16]_i_2_n_3 ;
  wire \x_reg[6][16]_i_2_n_4 ;
  wire \x_reg[6][16]_i_2_n_5 ;
  wire \x_reg[6][16]_i_2_n_6 ;
  wire \x_reg[6][16]_i_2_n_7 ;
  wire \x_reg[6][20]_i_2_n_0 ;
  wire \x_reg[6][20]_i_2_n_1 ;
  wire \x_reg[6][20]_i_2_n_2 ;
  wire \x_reg[6][20]_i_2_n_3 ;
  wire \x_reg[6][20]_i_2_n_4 ;
  wire \x_reg[6][20]_i_2_n_5 ;
  wire \x_reg[6][20]_i_2_n_6 ;
  wire \x_reg[6][20]_i_2_n_7 ;
  wire \x_reg[6][24]_i_2_n_0 ;
  wire \x_reg[6][24]_i_2_n_1 ;
  wire \x_reg[6][24]_i_2_n_2 ;
  wire \x_reg[6][24]_i_2_n_3 ;
  wire \x_reg[6][24]_i_2_n_4 ;
  wire \x_reg[6][24]_i_2_n_5 ;
  wire \x_reg[6][24]_i_2_n_6 ;
  wire \x_reg[6][24]_i_2_n_7 ;
  wire \x_reg[6][28]_i_2_n_0 ;
  wire \x_reg[6][28]_i_2_n_1 ;
  wire \x_reg[6][28]_i_2_n_2 ;
  wire \x_reg[6][28]_i_2_n_3 ;
  wire \x_reg[6][28]_i_2_n_4 ;
  wire \x_reg[6][28]_i_2_n_5 ;
  wire \x_reg[6][28]_i_2_n_6 ;
  wire \x_reg[6][28]_i_2_n_7 ;
  wire \x_reg[6][4]_i_2_n_0 ;
  wire \x_reg[6][4]_i_2_n_1 ;
  wire \x_reg[6][4]_i_2_n_2 ;
  wire \x_reg[6][4]_i_2_n_3 ;
  wire \x_reg[6][4]_i_2_n_4 ;
  wire \x_reg[6][4]_i_2_n_5 ;
  wire \x_reg[6][4]_i_2_n_6 ;
  wire \x_reg[6][4]_i_2_n_7 ;
  wire \x_reg[6][8]_i_2_n_0 ;
  wire \x_reg[6][8]_i_2_n_1 ;
  wire \x_reg[6][8]_i_2_n_2 ;
  wire \x_reg[6][8]_i_2_n_3 ;
  wire \x_reg[6][8]_i_2_n_4 ;
  wire \x_reg[6][8]_i_2_n_5 ;
  wire \x_reg[6][8]_i_2_n_6 ;
  wire \x_reg[6][8]_i_2_n_7 ;
  wire \x_reg_n_0_[1][0] ;
  wire \x_reg_n_0_[1][10] ;
  wire \x_reg_n_0_[1][11] ;
  wire \x_reg_n_0_[1][12] ;
  wire \x_reg_n_0_[1][13] ;
  wire \x_reg_n_0_[1][14] ;
  wire \x_reg_n_0_[1][15] ;
  wire \x_reg_n_0_[1][16] ;
  wire \x_reg_n_0_[1][17] ;
  wire \x_reg_n_0_[1][18] ;
  wire \x_reg_n_0_[1][19] ;
  wire \x_reg_n_0_[1][1] ;
  wire \x_reg_n_0_[1][20] ;
  wire \x_reg_n_0_[1][21] ;
  wire \x_reg_n_0_[1][22] ;
  wire \x_reg_n_0_[1][23] ;
  wire \x_reg_n_0_[1][24] ;
  wire \x_reg_n_0_[1][25] ;
  wire \x_reg_n_0_[1][26] ;
  wire \x_reg_n_0_[1][27] ;
  wire \x_reg_n_0_[1][28] ;
  wire \x_reg_n_0_[1][29] ;
  wire \x_reg_n_0_[1][2] ;
  wire \x_reg_n_0_[1][30] ;
  wire \x_reg_n_0_[1][3] ;
  wire \x_reg_n_0_[1][4] ;
  wire \x_reg_n_0_[1][5] ;
  wire \x_reg_n_0_[1][6] ;
  wire \x_reg_n_0_[1][7] ;
  wire \x_reg_n_0_[1][8] ;
  wire \x_reg_n_0_[1][9] ;
  wire \x_reg_n_0_[6][0] ;
  wire \x_reg_n_0_[6][10] ;
  wire \x_reg_n_0_[6][11] ;
  wire \x_reg_n_0_[6][12] ;
  wire \x_reg_n_0_[6][13] ;
  wire \x_reg_n_0_[6][14] ;
  wire \x_reg_n_0_[6][15] ;
  wire \x_reg_n_0_[6][16] ;
  wire \x_reg_n_0_[6][17] ;
  wire \x_reg_n_0_[6][18] ;
  wire \x_reg_n_0_[6][19] ;
  wire \x_reg_n_0_[6][1] ;
  wire \x_reg_n_0_[6][20] ;
  wire \x_reg_n_0_[6][21] ;
  wire \x_reg_n_0_[6][22] ;
  wire \x_reg_n_0_[6][23] ;
  wire \x_reg_n_0_[6][24] ;
  wire \x_reg_n_0_[6][25] ;
  wire \x_reg_n_0_[6][26] ;
  wire \x_reg_n_0_[6][27] ;
  wire \x_reg_n_0_[6][28] ;
  wire \x_reg_n_0_[6][29] ;
  wire \x_reg_n_0_[6][2] ;
  wire \x_reg_n_0_[6][30] ;
  wire \x_reg_n_0_[6][3] ;
  wire \x_reg_n_0_[6][4] ;
  wire \x_reg_n_0_[6][5] ;
  wire \x_reg_n_0_[6][6] ;
  wire \x_reg_n_0_[6][7] ;
  wire \x_reg_n_0_[6][8] ;
  wire \x_reg_n_0_[6][9] ;
  wire \y[1][11]_i_10_n_0 ;
  wire \y[1][11]_i_11_n_0 ;
  wire \y[1][11]_i_12_n_0 ;
  wire \y[1][11]_i_13_n_0 ;
  wire \y[1][11]_i_14_n_0 ;
  wire \y[1][11]_i_15_n_0 ;
  wire \y[1][11]_i_16_n_0 ;
  wire \y[1][11]_i_17_n_0 ;
  wire \y[1][11]_i_18_n_0 ;
  wire \y[1][11]_i_19_n_0 ;
  wire \y[1][11]_i_20_n_0 ;
  wire \y[1][11]_i_21_n_0 ;
  wire \y[1][11]_i_2_n_0 ;
  wire \y[1][11]_i_3_n_0 ;
  wire \y[1][11]_i_4_n_0 ;
  wire \y[1][11]_i_5_n_0 ;
  wire \y[1][11]_i_6_n_0 ;
  wire \y[1][11]_i_7_n_0 ;
  wire \y[1][11]_i_8_n_0 ;
  wire \y[1][11]_i_9_n_0 ;
  wire \y[1][15]_i_10_n_0 ;
  wire \y[1][15]_i_11_n_0 ;
  wire \y[1][15]_i_12_n_0 ;
  wire \y[1][15]_i_13_n_0 ;
  wire \y[1][15]_i_14_n_0 ;
  wire \y[1][15]_i_15_n_0 ;
  wire \y[1][15]_i_16_n_0 ;
  wire \y[1][15]_i_17_n_0 ;
  wire \y[1][15]_i_18_n_0 ;
  wire \y[1][15]_i_19_n_0 ;
  wire \y[1][15]_i_20_n_0 ;
  wire \y[1][15]_i_21_n_0 ;
  wire \y[1][15]_i_2_n_0 ;
  wire \y[1][15]_i_3_n_0 ;
  wire \y[1][15]_i_4_n_0 ;
  wire \y[1][15]_i_5_n_0 ;
  wire \y[1][15]_i_6_n_0 ;
  wire \y[1][15]_i_7_n_0 ;
  wire \y[1][15]_i_8_n_0 ;
  wire \y[1][15]_i_9_n_0 ;
  wire \y[1][19]_i_10_n_0 ;
  wire \y[1][19]_i_11_n_0 ;
  wire \y[1][19]_i_12_n_0 ;
  wire \y[1][19]_i_13_n_0 ;
  wire \y[1][19]_i_14_n_0 ;
  wire \y[1][19]_i_15_n_0 ;
  wire \y[1][19]_i_16_n_0 ;
  wire \y[1][19]_i_17_n_0 ;
  wire \y[1][19]_i_18_n_0 ;
  wire \y[1][19]_i_19_n_0 ;
  wire \y[1][19]_i_20_n_0 ;
  wire \y[1][19]_i_21_n_0 ;
  wire \y[1][19]_i_2_n_0 ;
  wire \y[1][19]_i_3_n_0 ;
  wire \y[1][19]_i_4_n_0 ;
  wire \y[1][19]_i_5_n_0 ;
  wire \y[1][19]_i_6_n_0 ;
  wire \y[1][19]_i_7_n_0 ;
  wire \y[1][19]_i_8_n_0 ;
  wire \y[1][19]_i_9_n_0 ;
  wire \y[1][23]_i_10_n_0 ;
  wire \y[1][23]_i_11_n_0 ;
  wire \y[1][23]_i_12_n_0 ;
  wire \y[1][23]_i_13_n_0 ;
  wire \y[1][23]_i_14_n_0 ;
  wire \y[1][23]_i_15_n_0 ;
  wire \y[1][23]_i_16_n_0 ;
  wire \y[1][23]_i_17_n_0 ;
  wire \y[1][23]_i_18_n_0 ;
  wire \y[1][23]_i_19_n_0 ;
  wire \y[1][23]_i_20_n_0 ;
  wire \y[1][23]_i_2_n_0 ;
  wire \y[1][23]_i_3_n_0 ;
  wire \y[1][23]_i_4_n_0 ;
  wire \y[1][23]_i_5_n_0 ;
  wire \y[1][23]_i_6_n_0 ;
  wire \y[1][23]_i_7_n_0 ;
  wire \y[1][23]_i_8_n_0 ;
  wire \y[1][23]_i_9_n_0 ;
  wire \y[1][27]_i_10_n_0 ;
  wire \y[1][27]_i_11_n_0 ;
  wire \y[1][27]_i_12_n_0 ;
  wire \y[1][27]_i_13_n_0 ;
  wire \y[1][27]_i_14_n_0 ;
  wire \y[1][27]_i_15_n_0 ;
  wire \y[1][27]_i_16_n_0 ;
  wire \y[1][27]_i_17_n_0 ;
  wire \y[1][27]_i_18_n_0 ;
  wire \y[1][27]_i_2_n_0 ;
  wire \y[1][27]_i_3_n_0 ;
  wire \y[1][27]_i_4_n_0 ;
  wire \y[1][27]_i_5_n_0 ;
  wire \y[1][27]_i_6_n_0 ;
  wire \y[1][27]_i_7_n_0 ;
  wire \y[1][27]_i_8_n_0 ;
  wire \y[1][27]_i_9_n_0 ;
  wire \y[1][31]_i_10_n_0 ;
  wire \y[1][31]_i_11_n_0 ;
  wire \y[1][31]_i_12_n_0 ;
  wire \y[1][31]_i_13_n_0 ;
  wire \y[1][31]_i_2_n_0 ;
  wire \y[1][31]_i_3_n_0 ;
  wire \y[1][31]_i_4_n_0 ;
  wire \y[1][31]_i_5_n_0 ;
  wire \y[1][31]_i_6_n_0 ;
  wire \y[1][31]_i_7_n_0 ;
  wire \y[1][31]_i_8_n_0 ;
  wire \y[1][31]_i_9_n_0 ;
  wire \y[1][3]_i_10_n_0 ;
  wire \y[1][3]_i_11_n_0 ;
  wire \y[1][3]_i_12_n_0 ;
  wire \y[1][3]_i_13_n_0 ;
  wire \y[1][3]_i_14_n_0 ;
  wire \y[1][3]_i_2_n_0 ;
  wire \y[1][3]_i_3_n_0 ;
  wire \y[1][3]_i_4_n_0 ;
  wire \y[1][3]_i_5_n_0 ;
  wire \y[1][3]_i_6_n_0 ;
  wire \y[1][3]_i_7_n_0 ;
  wire \y[1][3]_i_8_n_0 ;
  wire \y[1][3]_i_9_n_0 ;
  wire \y[1][7]_i_10_n_0 ;
  wire \y[1][7]_i_11_n_0 ;
  wire \y[1][7]_i_12_n_0 ;
  wire \y[1][7]_i_13_n_0 ;
  wire \y[1][7]_i_14_n_0 ;
  wire \y[1][7]_i_15_n_0 ;
  wire \y[1][7]_i_16_n_0 ;
  wire \y[1][7]_i_17_n_0 ;
  wire \y[1][7]_i_18_n_0 ;
  wire \y[1][7]_i_19_n_0 ;
  wire \y[1][7]_i_20_n_0 ;
  wire \y[1][7]_i_21_n_0 ;
  wire \y[1][7]_i_2_n_0 ;
  wire \y[1][7]_i_3_n_0 ;
  wire \y[1][7]_i_4_n_0 ;
  wire \y[1][7]_i_5_n_0 ;
  wire \y[1][7]_i_6_n_0 ;
  wire \y[1][7]_i_7_n_0 ;
  wire \y[1][7]_i_8_n_0 ;
  wire \y[1][7]_i_9_n_0 ;
  wire \y[3][11]_i_10_n_0 ;
  wire \y[3][11]_i_11_n_0 ;
  wire \y[3][11]_i_12_n_0 ;
  wire \y[3][11]_i_13_n_0 ;
  wire \y[3][11]_i_14_n_0 ;
  wire \y[3][11]_i_15_n_0 ;
  wire \y[3][11]_i_16_n_0 ;
  wire \y[3][11]_i_17_n_0 ;
  wire \y[3][11]_i_2_n_0 ;
  wire \y[3][11]_i_3_n_0 ;
  wire \y[3][11]_i_4_n_0 ;
  wire \y[3][11]_i_5_n_0 ;
  wire \y[3][11]_i_6_n_0 ;
  wire \y[3][11]_i_7_n_0 ;
  wire \y[3][11]_i_8_n_0 ;
  wire \y[3][11]_i_9_n_0 ;
  wire \y[3][15]_i_10_n_0 ;
  wire \y[3][15]_i_11_n_0 ;
  wire \y[3][15]_i_12_n_0 ;
  wire \y[3][15]_i_13_n_0 ;
  wire \y[3][15]_i_14_n_0 ;
  wire \y[3][15]_i_15_n_0 ;
  wire \y[3][15]_i_16_n_0 ;
  wire \y[3][15]_i_17_n_0 ;
  wire \y[3][15]_i_20_n_0 ;
  wire \y[3][15]_i_21_n_0 ;
  wire \y[3][15]_i_22_n_0 ;
  wire \y[3][15]_i_23_n_0 ;
  wire \y[3][15]_i_24_n_0 ;
  wire \y[3][15]_i_25_n_0 ;
  wire \y[3][15]_i_26_n_0 ;
  wire \y[3][15]_i_27_n_0 ;
  wire \y[3][15]_i_28_n_0 ;
  wire \y[3][15]_i_29_n_0 ;
  wire \y[3][15]_i_2_n_0 ;
  wire \y[3][15]_i_30_n_0 ;
  wire \y[3][15]_i_31_n_0 ;
  wire \y[3][15]_i_32_n_0 ;
  wire \y[3][15]_i_33_n_0 ;
  wire \y[3][15]_i_3_n_0 ;
  wire \y[3][15]_i_4_n_0 ;
  wire \y[3][15]_i_5_n_0 ;
  wire \y[3][15]_i_6_n_0 ;
  wire \y[3][15]_i_7_n_0 ;
  wire \y[3][15]_i_8_n_0 ;
  wire \y[3][15]_i_9_n_0 ;
  wire \y[3][19]_i_10_n_0 ;
  wire \y[3][19]_i_11_n_0 ;
  wire \y[3][19]_i_12_n_0 ;
  wire \y[3][19]_i_13_n_0 ;
  wire \y[3][19]_i_14_n_0 ;
  wire \y[3][19]_i_15_n_0 ;
  wire \y[3][19]_i_16_n_0 ;
  wire \y[3][19]_i_17_n_0 ;
  wire \y[3][19]_i_20_n_0 ;
  wire \y[3][19]_i_21_n_0 ;
  wire \y[3][19]_i_22_n_0 ;
  wire \y[3][19]_i_23_n_0 ;
  wire \y[3][19]_i_24_n_0 ;
  wire \y[3][19]_i_25_n_0 ;
  wire \y[3][19]_i_26_n_0 ;
  wire \y[3][19]_i_27_n_0 ;
  wire \y[3][19]_i_28_n_0 ;
  wire \y[3][19]_i_29_n_0 ;
  wire \y[3][19]_i_2_n_0 ;
  wire \y[3][19]_i_30_n_0 ;
  wire \y[3][19]_i_31_n_0 ;
  wire \y[3][19]_i_32_n_0 ;
  wire \y[3][19]_i_33_n_0 ;
  wire \y[3][19]_i_34_n_0 ;
  wire \y[3][19]_i_35_n_0 ;
  wire \y[3][19]_i_3_n_0 ;
  wire \y[3][19]_i_4_n_0 ;
  wire \y[3][19]_i_5_n_0 ;
  wire \y[3][19]_i_6_n_0 ;
  wire \y[3][19]_i_7_n_0 ;
  wire \y[3][19]_i_8_n_0 ;
  wire \y[3][19]_i_9_n_0 ;
  wire \y[3][23]_i_10_n_0 ;
  wire \y[3][23]_i_11_n_0 ;
  wire \y[3][23]_i_12_n_0 ;
  wire \y[3][23]_i_13_n_0 ;
  wire \y[3][23]_i_14_n_0 ;
  wire \y[3][23]_i_15_n_0 ;
  wire \y[3][23]_i_16_n_0 ;
  wire \y[3][23]_i_17_n_0 ;
  wire \y[3][23]_i_20_n_0 ;
  wire \y[3][23]_i_21_n_0 ;
  wire \y[3][23]_i_22_n_0 ;
  wire \y[3][23]_i_23_n_0 ;
  wire \y[3][23]_i_24_n_0 ;
  wire \y[3][23]_i_25_n_0 ;
  wire \y[3][23]_i_26_n_0 ;
  wire \y[3][23]_i_27_n_0 ;
  wire \y[3][23]_i_28_n_0 ;
  wire \y[3][23]_i_29_n_0 ;
  wire \y[3][23]_i_2_n_0 ;
  wire \y[3][23]_i_30_n_0 ;
  wire \y[3][23]_i_31_n_0 ;
  wire \y[3][23]_i_32_n_0 ;
  wire \y[3][23]_i_33_n_0 ;
  wire \y[3][23]_i_34_n_0 ;
  wire \y[3][23]_i_35_n_0 ;
  wire \y[3][23]_i_3_n_0 ;
  wire \y[3][23]_i_4_n_0 ;
  wire \y[3][23]_i_5_n_0 ;
  wire \y[3][23]_i_6_n_0 ;
  wire \y[3][23]_i_7_n_0 ;
  wire \y[3][23]_i_8_n_0 ;
  wire \y[3][23]_i_9_n_0 ;
  wire \y[3][27]_i_11_n_0 ;
  wire \y[3][27]_i_12_n_0 ;
  wire \y[3][27]_i_13_n_0 ;
  wire \y[3][27]_i_14_n_0 ;
  wire \y[3][27]_i_15_n_0 ;
  wire \y[3][27]_i_17_n_0 ;
  wire \y[3][27]_i_18_n_0 ;
  wire \y[3][27]_i_19_n_0 ;
  wire \y[3][27]_i_20_n_0 ;
  wire \y[3][27]_i_21_n_0 ;
  wire \y[3][27]_i_22_n_0 ;
  wire \y[3][27]_i_23_n_0 ;
  wire \y[3][27]_i_24_n_0 ;
  wire \y[3][27]_i_25_n_0 ;
  wire \y[3][27]_i_26_n_0 ;
  wire \y[3][27]_i_27_n_0 ;
  wire \y[3][27]_i_28_n_0 ;
  wire \y[3][27]_i_29_n_0 ;
  wire \y[3][27]_i_2_n_0 ;
  wire \y[3][27]_i_30_n_0 ;
  wire \y[3][27]_i_31_n_0 ;
  wire \y[3][27]_i_32_n_0 ;
  wire \y[3][27]_i_33_n_0 ;
  wire \y[3][27]_i_34_n_0 ;
  wire \y[3][27]_i_35_n_0 ;
  wire \y[3][27]_i_3_n_0 ;
  wire \y[3][27]_i_4_n_0 ;
  wire \y[3][27]_i_5_n_0 ;
  wire \y[3][27]_i_6_n_0 ;
  wire \y[3][27]_i_7_n_0 ;
  wire \y[3][27]_i_8_n_0 ;
  wire \y[3][27]_i_9_n_0 ;
  wire \y[3][31]_i_10_n_0 ;
  wire \y[3][31]_i_11_n_0 ;
  wire \y[3][31]_i_12_n_0 ;
  wire \y[3][31]_i_14_n_0 ;
  wire \y[3][31]_i_15_n_0 ;
  wire \y[3][31]_i_18_n_0 ;
  wire \y[3][31]_i_19_n_0 ;
  wire \y[3][31]_i_20_n_0 ;
  wire \y[3][31]_i_22_n_0 ;
  wire \y[3][31]_i_23_n_0 ;
  wire \y[3][31]_i_24_n_0 ;
  wire \y[3][31]_i_25_n_0 ;
  wire \y[3][31]_i_26_n_0 ;
  wire \y[3][31]_i_27_n_0 ;
  wire \y[3][31]_i_28_n_0 ;
  wire \y[3][31]_i_29_n_0 ;
  wire \y[3][31]_i_2_n_0 ;
  wire \y[3][31]_i_30_n_0 ;
  wire \y[3][31]_i_31_n_0 ;
  wire \y[3][31]_i_32_n_0 ;
  wire \y[3][31]_i_33_n_0 ;
  wire \y[3][31]_i_34_n_0 ;
  wire \y[3][31]_i_3_n_0 ;
  wire \y[3][31]_i_4_n_0 ;
  wire \y[3][31]_i_5_n_0 ;
  wire \y[3][31]_i_6_n_0 ;
  wire \y[3][31]_i_7_n_0 ;
  wire \y[3][31]_i_8_n_0 ;
  wire \y[3][31]_i_9_n_0 ;
  wire \y[3][3]_i_10_n_0 ;
  wire \y[3][3]_i_11_n_0 ;
  wire \y[3][3]_i_12_n_0 ;
  wire \y[3][3]_i_13_n_0 ;
  wire \y[3][3]_i_14_n_0 ;
  wire \y[3][3]_i_2_n_0 ;
  wire \y[3][3]_i_3_n_0 ;
  wire \y[3][3]_i_4_n_0 ;
  wire \y[3][3]_i_5_n_0 ;
  wire \y[3][3]_i_6_n_0 ;
  wire \y[3][3]_i_7_n_0 ;
  wire \y[3][3]_i_8_n_0 ;
  wire \y[3][3]_i_9_n_0 ;
  wire \y[3][7]_i_10_n_0 ;
  wire \y[3][7]_i_11_n_0 ;
  wire \y[3][7]_i_14_n_0 ;
  wire \y[3][7]_i_15_n_0 ;
  wire \y[3][7]_i_17_n_0 ;
  wire \y[3][7]_i_19_n_0 ;
  wire \y[3][7]_i_20_n_0 ;
  wire \y[3][7]_i_21_n_0 ;
  wire \y[3][7]_i_22_n_0 ;
  wire \y[3][7]_i_23_n_0 ;
  wire \y[3][7]_i_24_n_0 ;
  wire \y[3][7]_i_25_n_0 ;
  wire \y[3][7]_i_26_n_0 ;
  wire \y[3][7]_i_27_n_0 ;
  wire \y[3][7]_i_28_n_0 ;
  wire \y[3][7]_i_29_n_0 ;
  wire \y[3][7]_i_2_n_0 ;
  wire \y[3][7]_i_30_n_0 ;
  wire \y[3][7]_i_31_n_0 ;
  wire \y[3][7]_i_32_n_0 ;
  wire \y[3][7]_i_33_n_0 ;
  wire \y[3][7]_i_34_n_0 ;
  wire \y[3][7]_i_35_n_0 ;
  wire \y[3][7]_i_36_n_0 ;
  wire \y[3][7]_i_37_n_0 ;
  wire \y[3][7]_i_38_n_0 ;
  wire \y[3][7]_i_39_n_0 ;
  wire \y[3][7]_i_3_n_0 ;
  wire \y[3][7]_i_40_n_0 ;
  wire \y[3][7]_i_41_n_0 ;
  wire \y[3][7]_i_42_n_0 ;
  wire \y[3][7]_i_43_n_0 ;
  wire \y[3][7]_i_44_n_0 ;
  wire \y[3][7]_i_45_n_0 ;
  wire \y[3][7]_i_46_n_0 ;
  wire \y[3][7]_i_47_n_0 ;
  wire \y[3][7]_i_48_n_0 ;
  wire \y[3][7]_i_49_n_0 ;
  wire \y[3][7]_i_4_n_0 ;
  wire \y[3][7]_i_50_n_0 ;
  wire \y[3][7]_i_51_n_0 ;
  wire \y[3][7]_i_52_n_0 ;
  wire \y[3][7]_i_53_n_0 ;
  wire \y[3][7]_i_54_n_0 ;
  wire \y[3][7]_i_55_n_0 ;
  wire \y[3][7]_i_56_n_0 ;
  wire \y[3][7]_i_57_n_0 ;
  wire \y[3][7]_i_5_n_0 ;
  wire \y[3][7]_i_6_n_0 ;
  wire \y[3][7]_i_7_n_0 ;
  wire \y[3][7]_i_8_n_0 ;
  wire \y[3][7]_i_9_n_0 ;
  wire \y[5][11]_i_10_n_0 ;
  wire \y[5][11]_i_11_n_0 ;
  wire \y[5][11]_i_13_n_0 ;
  wire \y[5][11]_i_14_n_0 ;
  wire \y[5][11]_i_15_n_0 ;
  wire \y[5][11]_i_16_n_0 ;
  wire \y[5][11]_i_17_n_0 ;
  wire \y[5][11]_i_18_n_0 ;
  wire \y[5][11]_i_19_n_0 ;
  wire \y[5][11]_i_20_n_0 ;
  wire \y[5][11]_i_21_n_0 ;
  wire \y[5][11]_i_22_n_0 ;
  wire \y[5][11]_i_25_n_0 ;
  wire \y[5][11]_i_26_n_0 ;
  wire \y[5][11]_i_27_n_0 ;
  wire \y[5][11]_i_28_n_0 ;
  wire \y[5][11]_i_29_n_0 ;
  wire \y[5][11]_i_2_n_0 ;
  wire \y[5][11]_i_30_n_0 ;
  wire \y[5][11]_i_31_n_0 ;
  wire \y[5][11]_i_32_n_0 ;
  wire \y[5][11]_i_33_n_0 ;
  wire \y[5][11]_i_34_n_0 ;
  wire \y[5][11]_i_35_n_0 ;
  wire \y[5][11]_i_36_n_0 ;
  wire \y[5][11]_i_37_n_0 ;
  wire \y[5][11]_i_38_n_0 ;
  wire \y[5][11]_i_39_n_0 ;
  wire \y[5][11]_i_3_n_0 ;
  wire \y[5][11]_i_4_n_0 ;
  wire \y[5][11]_i_5_n_0 ;
  wire \y[5][11]_i_6_n_0 ;
  wire \y[5][11]_i_7_n_0 ;
  wire \y[5][11]_i_8_n_0 ;
  wire \y[5][11]_i_9_n_0 ;
  wire \y[5][15]_i_10_n_0 ;
  wire \y[5][15]_i_11_n_0 ;
  wire \y[5][15]_i_13_n_0 ;
  wire \y[5][15]_i_14_n_0 ;
  wire \y[5][15]_i_15_n_0 ;
  wire \y[5][15]_i_16_n_0 ;
  wire \y[5][15]_i_17_n_0 ;
  wire \y[5][15]_i_18_n_0 ;
  wire \y[5][15]_i_19_n_0 ;
  wire \y[5][15]_i_20_n_0 ;
  wire \y[5][15]_i_21_n_0 ;
  wire \y[5][15]_i_22_n_0 ;
  wire \y[5][15]_i_25_n_0 ;
  wire \y[5][15]_i_26_n_0 ;
  wire \y[5][15]_i_27_n_0 ;
  wire \y[5][15]_i_28_n_0 ;
  wire \y[5][15]_i_29_n_0 ;
  wire \y[5][15]_i_2_n_0 ;
  wire \y[5][15]_i_30_n_0 ;
  wire \y[5][15]_i_31_n_0 ;
  wire \y[5][15]_i_32_n_0 ;
  wire \y[5][15]_i_33_n_0 ;
  wire \y[5][15]_i_34_n_0 ;
  wire \y[5][15]_i_35_n_0 ;
  wire \y[5][15]_i_36_n_0 ;
  wire \y[5][15]_i_37_n_0 ;
  wire \y[5][15]_i_38_n_0 ;
  wire \y[5][15]_i_39_n_0 ;
  wire \y[5][15]_i_3_n_0 ;
  wire \y[5][15]_i_40_n_0 ;
  wire \y[5][15]_i_41_n_0 ;
  wire \y[5][15]_i_42_n_0 ;
  wire \y[5][15]_i_43_n_0 ;
  wire \y[5][15]_i_44_n_0 ;
  wire \y[5][15]_i_45_n_0 ;
  wire \y[5][15]_i_46_n_0 ;
  wire \y[5][15]_i_47_n_0 ;
  wire \y[5][15]_i_4_n_0 ;
  wire \y[5][15]_i_5_n_0 ;
  wire \y[5][15]_i_6_n_0 ;
  wire \y[5][15]_i_7_n_0 ;
  wire \y[5][15]_i_8_n_0 ;
  wire \y[5][15]_i_9_n_0 ;
  wire \y[5][19]_i_10_n_0 ;
  wire \y[5][19]_i_11_n_0 ;
  wire \y[5][19]_i_13_n_0 ;
  wire \y[5][19]_i_14_n_0 ;
  wire \y[5][19]_i_15_n_0 ;
  wire \y[5][19]_i_16_n_0 ;
  wire \y[5][19]_i_17_n_0 ;
  wire \y[5][19]_i_18_n_0 ;
  wire \y[5][19]_i_19_n_0 ;
  wire \y[5][19]_i_20_n_0 ;
  wire \y[5][19]_i_21_n_0 ;
  wire \y[5][19]_i_22_n_0 ;
  wire \y[5][19]_i_25_n_0 ;
  wire \y[5][19]_i_26_n_0 ;
  wire \y[5][19]_i_27_n_0 ;
  wire \y[5][19]_i_28_n_0 ;
  wire \y[5][19]_i_29_n_0 ;
  wire \y[5][19]_i_2_n_0 ;
  wire \y[5][19]_i_30_n_0 ;
  wire \y[5][19]_i_31_n_0 ;
  wire \y[5][19]_i_32_n_0 ;
  wire \y[5][19]_i_33_n_0 ;
  wire \y[5][19]_i_34_n_0 ;
  wire \y[5][19]_i_35_n_0 ;
  wire \y[5][19]_i_36_n_0 ;
  wire \y[5][19]_i_37_n_0 ;
  wire \y[5][19]_i_38_n_0 ;
  wire \y[5][19]_i_39_n_0 ;
  wire \y[5][19]_i_3_n_0 ;
  wire \y[5][19]_i_40_n_0 ;
  wire \y[5][19]_i_41_n_0 ;
  wire \y[5][19]_i_42_n_0 ;
  wire \y[5][19]_i_43_n_0 ;
  wire \y[5][19]_i_44_n_0 ;
  wire \y[5][19]_i_45_n_0 ;
  wire \y[5][19]_i_46_n_0 ;
  wire \y[5][19]_i_47_n_0 ;
  wire \y[5][19]_i_48_n_0 ;
  wire \y[5][19]_i_4_n_0 ;
  wire \y[5][19]_i_5_n_0 ;
  wire \y[5][19]_i_6_n_0 ;
  wire \y[5][19]_i_7_n_0 ;
  wire \y[5][19]_i_8_n_0 ;
  wire \y[5][19]_i_9_n_0 ;
  wire \y[5][23]_i_10_n_0 ;
  wire \y[5][23]_i_12_n_0 ;
  wire \y[5][23]_i_13_n_0 ;
  wire \y[5][23]_i_14_n_0 ;
  wire \y[5][23]_i_15_n_0 ;
  wire \y[5][23]_i_16_n_0 ;
  wire \y[5][23]_i_17_n_0 ;
  wire \y[5][23]_i_18_n_0 ;
  wire \y[5][23]_i_19_n_0 ;
  wire \y[5][23]_i_20_n_0 ;
  wire \y[5][23]_i_21_n_0 ;
  wire \y[5][23]_i_22_n_0 ;
  wire \y[5][23]_i_23_n_0 ;
  wire \y[5][23]_i_24_n_0 ;
  wire \y[5][23]_i_25_n_0 ;
  wire \y[5][23]_i_26_n_0 ;
  wire \y[5][23]_i_29_n_0 ;
  wire \y[5][23]_i_2_n_0 ;
  wire \y[5][23]_i_30_n_0 ;
  wire \y[5][23]_i_31_n_0 ;
  wire \y[5][23]_i_32_n_0 ;
  wire \y[5][23]_i_33_n_0 ;
  wire \y[5][23]_i_34_n_0 ;
  wire \y[5][23]_i_35_n_0 ;
  wire \y[5][23]_i_36_n_0 ;
  wire \y[5][23]_i_37_n_0 ;
  wire \y[5][23]_i_38_n_0 ;
  wire \y[5][23]_i_39_n_0 ;
  wire \y[5][23]_i_3_n_0 ;
  wire \y[5][23]_i_40_n_0 ;
  wire \y[5][23]_i_41_n_0 ;
  wire \y[5][23]_i_42_n_0 ;
  wire \y[5][23]_i_43_n_0 ;
  wire \y[5][23]_i_44_n_0 ;
  wire \y[5][23]_i_45_n_0 ;
  wire \y[5][23]_i_46_n_0 ;
  wire \y[5][23]_i_47_n_0 ;
  wire \y[5][23]_i_48_n_0 ;
  wire \y[5][23]_i_49_n_0 ;
  wire \y[5][23]_i_4_n_0 ;
  wire \y[5][23]_i_50_n_0 ;
  wire \y[5][23]_i_51_n_0 ;
  wire \y[5][23]_i_52_n_0 ;
  wire \y[5][23]_i_5_n_0 ;
  wire \y[5][23]_i_6_n_0 ;
  wire \y[5][23]_i_7_n_0 ;
  wire \y[5][23]_i_8_n_0 ;
  wire \y[5][23]_i_9_n_0 ;
  wire \y[5][27]_i_11_n_0 ;
  wire \y[5][27]_i_12_n_0 ;
  wire \y[5][27]_i_13_n_0 ;
  wire \y[5][27]_i_14_n_0 ;
  wire \y[5][27]_i_15_n_0 ;
  wire \y[5][27]_i_16_n_0 ;
  wire \y[5][27]_i_17_n_0 ;
  wire \y[5][27]_i_18_n_0 ;
  wire \y[5][27]_i_19_n_0 ;
  wire \y[5][27]_i_21_n_0 ;
  wire \y[5][27]_i_23_n_0 ;
  wire \y[5][27]_i_24_n_0 ;
  wire \y[5][27]_i_25_n_0 ;
  wire \y[5][27]_i_26_n_0 ;
  wire \y[5][27]_i_27_n_0 ;
  wire \y[5][27]_i_28_n_0 ;
  wire \y[5][27]_i_29_n_0 ;
  wire \y[5][27]_i_2_n_0 ;
  wire \y[5][27]_i_30_n_0 ;
  wire \y[5][27]_i_31_n_0 ;
  wire \y[5][27]_i_32_n_0 ;
  wire \y[5][27]_i_33_n_0 ;
  wire \y[5][27]_i_34_n_0 ;
  wire \y[5][27]_i_35_n_0 ;
  wire \y[5][27]_i_36_n_0 ;
  wire \y[5][27]_i_37_n_0 ;
  wire \y[5][27]_i_38_n_0 ;
  wire \y[5][27]_i_39_n_0 ;
  wire \y[5][27]_i_3_n_0 ;
  wire \y[5][27]_i_40_n_0 ;
  wire \y[5][27]_i_41_n_0 ;
  wire \y[5][27]_i_42_n_0 ;
  wire \y[5][27]_i_43_n_0 ;
  wire \y[5][27]_i_44_n_0 ;
  wire \y[5][27]_i_45_n_0 ;
  wire \y[5][27]_i_46_n_0 ;
  wire \y[5][27]_i_4_n_0 ;
  wire \y[5][27]_i_5_n_0 ;
  wire \y[5][27]_i_6_n_0 ;
  wire \y[5][27]_i_7_n_0 ;
  wire \y[5][27]_i_8_n_0 ;
  wire \y[5][27]_i_9_n_0 ;
  wire \y[5][31]_i_11_n_0 ;
  wire \y[5][31]_i_12_n_0 ;
  wire \y[5][31]_i_13_n_0 ;
  wire \y[5][31]_i_14_n_0 ;
  wire \y[5][31]_i_15_n_0 ;
  wire \y[5][31]_i_16_n_0 ;
  wire \y[5][31]_i_17_n_0 ;
  wire \y[5][31]_i_18_n_0 ;
  wire \y[5][31]_i_19_n_0 ;
  wire \y[5][31]_i_1_n_0 ;
  wire \y[5][31]_i_20_n_0 ;
  wire \y[5][31]_i_21_n_0 ;
  wire \y[5][31]_i_22_n_0 ;
  wire \y[5][31]_i_23_n_0 ;
  wire \y[5][31]_i_24_n_0 ;
  wire \y[5][31]_i_25_n_0 ;
  wire \y[5][31]_i_28_n_0 ;
  wire \y[5][31]_i_30_n_0 ;
  wire \y[5][31]_i_31_n_0 ;
  wire \y[5][31]_i_32_n_0 ;
  wire \y[5][31]_i_34_n_0 ;
  wire \y[5][31]_i_35_n_0 ;
  wire \y[5][31]_i_36_n_0 ;
  wire \y[5][31]_i_38_n_0 ;
  wire \y[5][31]_i_40_n_0 ;
  wire \y[5][31]_i_41_n_0 ;
  wire \y[5][31]_i_42_n_0 ;
  wire \y[5][31]_i_43_n_0 ;
  wire \y[5][31]_i_44_n_0 ;
  wire \y[5][31]_i_45_n_0 ;
  wire \y[5][31]_i_46_n_0 ;
  wire \y[5][31]_i_47_n_0 ;
  wire \y[5][31]_i_48_n_0 ;
  wire \y[5][31]_i_49_n_0 ;
  wire \y[5][31]_i_4_n_0 ;
  wire \y[5][31]_i_50_n_0 ;
  wire \y[5][31]_i_51_n_0 ;
  wire \y[5][31]_i_52_n_0 ;
  wire \y[5][31]_i_53_n_0 ;
  wire \y[5][31]_i_54_n_0 ;
  wire \y[5][31]_i_55_n_0 ;
  wire \y[5][31]_i_56_n_0 ;
  wire \y[5][31]_i_57_n_0 ;
  wire \y[5][31]_i_58_n_0 ;
  wire \y[5][31]_i_59_n_0 ;
  wire \y[5][31]_i_5_n_0 ;
  wire \y[5][31]_i_60_n_0 ;
  wire \y[5][31]_i_61_n_0 ;
  wire \y[5][31]_i_62_n_0 ;
  wire \y[5][31]_i_63_n_0 ;
  wire \y[5][31]_i_64_n_0 ;
  wire \y[5][31]_i_65_n_0 ;
  wire \y[5][31]_i_66_n_0 ;
  wire \y[5][31]_i_67_n_0 ;
  wire \y[5][31]_i_68_n_0 ;
  wire \y[5][31]_i_69_n_0 ;
  wire \y[5][31]_i_6_n_0 ;
  wire \y[5][31]_i_70_n_0 ;
  wire \y[5][31]_i_71_n_0 ;
  wire \y[5][31]_i_72_n_0 ;
  wire \y[5][31]_i_73_n_0 ;
  wire \y[5][31]_i_74_n_0 ;
  wire \y[5][31]_i_75_n_0 ;
  wire \y[5][31]_i_76_n_0 ;
  wire \y[5][31]_i_77_n_0 ;
  wire \y[5][31]_i_78_n_0 ;
  wire \y[5][31]_i_79_n_0 ;
  wire \y[5][31]_i_7_n_0 ;
  wire \y[5][31]_i_80_n_0 ;
  wire \y[5][31]_i_81_n_0 ;
  wire \y[5][31]_i_82_n_0 ;
  wire \y[5][31]_i_8_n_0 ;
  wire \y[5][31]_i_9_n_0 ;
  wire \y[5][3]_i_10_n_0 ;
  wire \y[5][3]_i_2_n_0 ;
  wire \y[5][3]_i_3_n_0 ;
  wire \y[5][3]_i_4_n_0 ;
  wire \y[5][3]_i_5_n_0 ;
  wire \y[5][3]_i_6_n_0 ;
  wire \y[5][3]_i_7_n_0 ;
  wire \y[5][3]_i_8_n_0 ;
  wire \y[5][3]_i_9_n_0 ;
  wire \y[5][7]_i_10_n_0 ;
  wire \y[5][7]_i_11_n_0 ;
  wire \y[5][7]_i_13_n_0 ;
  wire \y[5][7]_i_14_n_0 ;
  wire \y[5][7]_i_15_n_0 ;
  wire \y[5][7]_i_16_n_0 ;
  wire \y[5][7]_i_17_n_0 ;
  wire \y[5][7]_i_18_n_0 ;
  wire \y[5][7]_i_19_n_0 ;
  wire \y[5][7]_i_20_n_0 ;
  wire \y[5][7]_i_21_n_0 ;
  wire \y[5][7]_i_2_n_0 ;
  wire \y[5][7]_i_3_n_0 ;
  wire \y[5][7]_i_4_n_0 ;
  wire \y[5][7]_i_5_n_0 ;
  wire \y[5][7]_i_6_n_0 ;
  wire \y[5][7]_i_7_n_0 ;
  wire \y[5][7]_i_8_n_0 ;
  wire \y[5][7]_i_9_n_0 ;
  wire \y[6][0]_i_1_n_0 ;
  wire \y[6][10]_i_1_n_0 ;
  wire \y[6][10]_i_2_n_0 ;
  wire \y[6][11]_i_1_n_0 ;
  wire \y[6][11]_i_2_n_0 ;
  wire \y[6][12]_i_1_n_0 ;
  wire \y[6][12]_i_3_n_0 ;
  wire \y[6][12]_i_4_n_0 ;
  wire \y[6][12]_i_5_n_0 ;
  wire \y[6][12]_i_6_n_0 ;
  wire \y[6][12]_i_7_n_0 ;
  wire \y[6][13]_i_1_n_0 ;
  wire \y[6][13]_i_2_n_0 ;
  wire \y[6][14]_i_1_n_0 ;
  wire \y[6][14]_i_2_n_0 ;
  wire \y[6][15]_i_1_n_0 ;
  wire \y[6][15]_i_2_n_0 ;
  wire \y[6][16]_i_1_n_0 ;
  wire \y[6][16]_i_3_n_0 ;
  wire \y[6][16]_i_4_n_0 ;
  wire \y[6][16]_i_5_n_0 ;
  wire \y[6][16]_i_6_n_0 ;
  wire \y[6][16]_i_7_n_0 ;
  wire \y[6][17]_i_1_n_0 ;
  wire \y[6][17]_i_2_n_0 ;
  wire \y[6][18]_i_1_n_0 ;
  wire \y[6][18]_i_2_n_0 ;
  wire \y[6][19]_i_1_n_0 ;
  wire \y[6][19]_i_2_n_0 ;
  wire \y[6][1]_i_1_n_0 ;
  wire \y[6][1]_i_2_n_0 ;
  wire \y[6][20]_i_1_n_0 ;
  wire \y[6][20]_i_3_n_0 ;
  wire \y[6][20]_i_4_n_0 ;
  wire \y[6][20]_i_5_n_0 ;
  wire \y[6][20]_i_6_n_0 ;
  wire \y[6][20]_i_7_n_0 ;
  wire \y[6][21]_i_1_n_0 ;
  wire \y[6][21]_i_2_n_0 ;
  wire \y[6][22]_i_1_n_0 ;
  wire \y[6][22]_i_2_n_0 ;
  wire \y[6][23]_i_1_n_0 ;
  wire \y[6][23]_i_2_n_0 ;
  wire \y[6][24]_i_1_n_0 ;
  wire \y[6][24]_i_3_n_0 ;
  wire \y[6][24]_i_4_n_0 ;
  wire \y[6][24]_i_5_n_0 ;
  wire \y[6][24]_i_6_n_0 ;
  wire \y[6][24]_i_7_n_0 ;
  wire \y[6][25]_i_1_n_0 ;
  wire \y[6][25]_i_2_n_0 ;
  wire \y[6][26]_i_1_n_0 ;
  wire \y[6][26]_i_2_n_0 ;
  wire \y[6][27]_i_1_n_0 ;
  wire \y[6][27]_i_2_n_0 ;
  wire \y[6][28]_i_1_n_0 ;
  wire \y[6][28]_i_3_n_0 ;
  wire \y[6][28]_i_4_n_0 ;
  wire \y[6][28]_i_5_n_0 ;
  wire \y[6][28]_i_6_n_0 ;
  wire \y[6][28]_i_7_n_0 ;
  wire \y[6][29]_i_1_n_0 ;
  wire \y[6][29]_i_2_n_0 ;
  wire \y[6][2]_i_1_n_0 ;
  wire \y[6][2]_i_2_n_0 ;
  wire \y[6][30]_i_1_n_0 ;
  wire \y[6][30]_i_2_n_0 ;
  wire \y[6][31]_i_10_n_0 ;
  wire \y[6][31]_i_11_n_0 ;
  wire \y[6][31]_i_12_n_0 ;
  wire \y[6][31]_i_13_n_0 ;
  wire \y[6][31]_i_14_n_0 ;
  wire \y[6][31]_i_15_n_0 ;
  wire \y[6][31]_i_16_n_0 ;
  wire \y[6][31]_i_17_n_0 ;
  wire \y[6][31]_i_18_n_0 ;
  wire \y[6][31]_i_19_n_0 ;
  wire \y[6][31]_i_1_n_0 ;
  wire \y[6][31]_i_21_n_0 ;
  wire \y[6][31]_i_22_n_0 ;
  wire \y[6][31]_i_23_n_0 ;
  wire \y[6][31]_i_24_n_0 ;
  wire \y[6][31]_i_25_n_0 ;
  wire \y[6][31]_i_26_n_0 ;
  wire \y[6][31]_i_27_n_0 ;
  wire \y[6][31]_i_28_n_0 ;
  wire \y[6][31]_i_33_n_0 ;
  wire \y[6][31]_i_34_n_0 ;
  wire \y[6][31]_i_35_n_0 ;
  wire \y[6][31]_i_37_n_0 ;
  wire \y[6][31]_i_38_n_0 ;
  wire \y[6][31]_i_39_n_0 ;
  wire \y[6][31]_i_40_n_0 ;
  wire \y[6][31]_i_41_n_0 ;
  wire \y[6][31]_i_42_n_0 ;
  wire \y[6][31]_i_43_n_0 ;
  wire \y[6][31]_i_44_n_0 ;
  wire \y[6][31]_i_49_n_0 ;
  wire \y[6][31]_i_50_n_0 ;
  wire \y[6][31]_i_51_n_0 ;
  wire \y[6][31]_i_52_n_0 ;
  wire \y[6][31]_i_53_n_0 ;
  wire \y[6][31]_i_54_n_0 ;
  wire \y[6][31]_i_55_n_0 ;
  wire \y[6][31]_i_56_n_0 ;
  wire \y[6][31]_i_57_n_0 ;
  wire \y[6][31]_i_58_n_0 ;
  wire \y[6][31]_i_59_n_0 ;
  wire \y[6][31]_i_5_n_0 ;
  wire \y[6][31]_i_60_n_0 ;
  wire \y[6][31]_i_65_n_0 ;
  wire \y[6][31]_i_66_n_0 ;
  wire \y[6][31]_i_67_n_0 ;
  wire \y[6][31]_i_68_n_0 ;
  wire \y[6][31]_i_6_n_0 ;
  wire \y[6][31]_i_72_n_0 ;
  wire \y[6][31]_i_73_n_0 ;
  wire \y[6][31]_i_74_n_0 ;
  wire \y[6][31]_i_75_n_0 ;
  wire \y[6][31]_i_7_n_0 ;
  wire \y[6][31]_i_9_n_0 ;
  wire \y[6][3]_i_1_n_0 ;
  wire \y[6][3]_i_2_n_0 ;
  wire \y[6][4]_i_1_n_0 ;
  wire \y[6][4]_i_3_n_0 ;
  wire \y[6][4]_i_4_n_0 ;
  wire \y[6][4]_i_5_n_0 ;
  wire \y[6][4]_i_6_n_0 ;
  wire \y[6][4]_i_7_n_0 ;
  wire \y[6][4]_i_8_n_0 ;
  wire \y[6][5]_i_1_n_0 ;
  wire \y[6][5]_i_2_n_0 ;
  wire \y[6][6]_i_1_n_0 ;
  wire \y[6][6]_i_2_n_0 ;
  wire \y[6][7]_i_1_n_0 ;
  wire \y[6][7]_i_2_n_0 ;
  wire \y[6][8]_i_1_n_0 ;
  wire \y[6][8]_i_3_n_0 ;
  wire \y[6][8]_i_4_n_0 ;
  wire \y[6][8]_i_5_n_0 ;
  wire \y[6][8]_i_6_n_0 ;
  wire \y[6][8]_i_7_n_0 ;
  wire \y[6][9]_i_1_n_0 ;
  wire \y[6][9]_i_2_n_0 ;
  wire [31:0]y_in;
  wire [31:0]y_in_IBUF;
  wire [31:0]\y_reg[1] ;
  wire \y_reg[1][11]_i_1_n_0 ;
  wire \y_reg[1][11]_i_1_n_1 ;
  wire \y_reg[1][11]_i_1_n_2 ;
  wire \y_reg[1][11]_i_1_n_3 ;
  wire \y_reg[1][15]_i_1_n_0 ;
  wire \y_reg[1][15]_i_1_n_1 ;
  wire \y_reg[1][15]_i_1_n_2 ;
  wire \y_reg[1][15]_i_1_n_3 ;
  wire \y_reg[1][19]_i_1_n_0 ;
  wire \y_reg[1][19]_i_1_n_1 ;
  wire \y_reg[1][19]_i_1_n_2 ;
  wire \y_reg[1][19]_i_1_n_3 ;
  wire \y_reg[1][23]_i_1_n_0 ;
  wire \y_reg[1][23]_i_1_n_1 ;
  wire \y_reg[1][23]_i_1_n_2 ;
  wire \y_reg[1][23]_i_1_n_3 ;
  wire \y_reg[1][27]_i_1_n_0 ;
  wire \y_reg[1][27]_i_1_n_1 ;
  wire \y_reg[1][27]_i_1_n_2 ;
  wire \y_reg[1][27]_i_1_n_3 ;
  wire \y_reg[1][31]_i_1_n_1 ;
  wire \y_reg[1][31]_i_1_n_2 ;
  wire \y_reg[1][31]_i_1_n_3 ;
  wire \y_reg[1][31]_rep__0_n_0 ;
  wire \y_reg[1][31]_rep_n_0 ;
  wire \y_reg[1][3]_i_1_n_0 ;
  wire \y_reg[1][3]_i_1_n_1 ;
  wire \y_reg[1][3]_i_1_n_2 ;
  wire \y_reg[1][3]_i_1_n_3 ;
  wire \y_reg[1][7]_i_1_n_0 ;
  wire \y_reg[1][7]_i_1_n_1 ;
  wire \y_reg[1][7]_i_1_n_2 ;
  wire \y_reg[1][7]_i_1_n_3 ;
  wire [31:0]\y_reg[3] ;
  wire \y_reg[3][11]_i_1_n_0 ;
  wire \y_reg[3][11]_i_1_n_1 ;
  wire \y_reg[3][11]_i_1_n_2 ;
  wire \y_reg[3][11]_i_1_n_3 ;
  wire \y_reg[3][15]_i_18_n_0 ;
  wire \y_reg[3][15]_i_18_n_1 ;
  wire \y_reg[3][15]_i_18_n_2 ;
  wire \y_reg[3][15]_i_18_n_3 ;
  wire \y_reg[3][15]_i_18_n_4 ;
  wire \y_reg[3][15]_i_18_n_5 ;
  wire \y_reg[3][15]_i_18_n_6 ;
  wire \y_reg[3][15]_i_18_n_7 ;
  wire \y_reg[3][15]_i_19_n_0 ;
  wire \y_reg[3][15]_i_19_n_1 ;
  wire \y_reg[3][15]_i_19_n_2 ;
  wire \y_reg[3][15]_i_19_n_3 ;
  wire \y_reg[3][15]_i_1_n_0 ;
  wire \y_reg[3][15]_i_1_n_1 ;
  wire \y_reg[3][15]_i_1_n_2 ;
  wire \y_reg[3][15]_i_1_n_3 ;
  wire \y_reg[3][19]_i_18_n_0 ;
  wire \y_reg[3][19]_i_18_n_1 ;
  wire \y_reg[3][19]_i_18_n_2 ;
  wire \y_reg[3][19]_i_18_n_3 ;
  wire \y_reg[3][19]_i_18_n_4 ;
  wire \y_reg[3][19]_i_18_n_5 ;
  wire \y_reg[3][19]_i_18_n_6 ;
  wire \y_reg[3][19]_i_18_n_7 ;
  wire \y_reg[3][19]_i_19_n_0 ;
  wire \y_reg[3][19]_i_19_n_1 ;
  wire \y_reg[3][19]_i_19_n_2 ;
  wire \y_reg[3][19]_i_19_n_3 ;
  wire \y_reg[3][19]_i_1_n_0 ;
  wire \y_reg[3][19]_i_1_n_1 ;
  wire \y_reg[3][19]_i_1_n_2 ;
  wire \y_reg[3][19]_i_1_n_3 ;
  wire \y_reg[3][23]_i_18_n_0 ;
  wire \y_reg[3][23]_i_18_n_1 ;
  wire \y_reg[3][23]_i_18_n_2 ;
  wire \y_reg[3][23]_i_18_n_3 ;
  wire \y_reg[3][23]_i_18_n_4 ;
  wire \y_reg[3][23]_i_18_n_5 ;
  wire \y_reg[3][23]_i_18_n_6 ;
  wire \y_reg[3][23]_i_18_n_7 ;
  wire \y_reg[3][23]_i_19_n_0 ;
  wire \y_reg[3][23]_i_19_n_1 ;
  wire \y_reg[3][23]_i_19_n_2 ;
  wire \y_reg[3][23]_i_19_n_3 ;
  wire \y_reg[3][23]_i_1_n_0 ;
  wire \y_reg[3][23]_i_1_n_1 ;
  wire \y_reg[3][23]_i_1_n_2 ;
  wire \y_reg[3][23]_i_1_n_3 ;
  wire \y_reg[3][27]_i_10_n_0 ;
  wire \y_reg[3][27]_i_10_n_1 ;
  wire \y_reg[3][27]_i_10_n_2 ;
  wire \y_reg[3][27]_i_10_n_3 ;
  wire \y_reg[3][27]_i_16_n_0 ;
  wire \y_reg[3][27]_i_16_n_1 ;
  wire \y_reg[3][27]_i_16_n_2 ;
  wire \y_reg[3][27]_i_16_n_3 ;
  wire \y_reg[3][27]_i_1_n_0 ;
  wire \y_reg[3][27]_i_1_n_1 ;
  wire \y_reg[3][27]_i_1_n_2 ;
  wire \y_reg[3][27]_i_1_n_3 ;
  wire \y_reg[3][31]_i_13_n_0 ;
  wire \y_reg[3][31]_i_13_n_1 ;
  wire \y_reg[3][31]_i_13_n_2 ;
  wire \y_reg[3][31]_i_13_n_3 ;
  wire \y_reg[3][31]_i_13_n_4 ;
  wire \y_reg[3][31]_i_13_n_5 ;
  wire \y_reg[3][31]_i_13_n_6 ;
  wire \y_reg[3][31]_i_13_n_7 ;
  wire \y_reg[3][31]_i_16_n_1 ;
  wire \y_reg[3][31]_i_16_n_3 ;
  wire \y_reg[3][31]_i_17_n_2 ;
  wire \y_reg[3][31]_i_17_n_3 ;
  wire \y_reg[3][31]_i_17_n_5 ;
  wire \y_reg[3][31]_i_17_n_6 ;
  wire \y_reg[3][31]_i_17_n_7 ;
  wire \y_reg[3][31]_i_1_n_1 ;
  wire \y_reg[3][31]_i_1_n_2 ;
  wire \y_reg[3][31]_i_1_n_3 ;
  wire \y_reg[3][31]_i_21_n_0 ;
  wire \y_reg[3][31]_i_21_n_1 ;
  wire \y_reg[3][31]_i_21_n_2 ;
  wire \y_reg[3][31]_i_21_n_3 ;
  wire \y_reg[3][31]_i_21_n_4 ;
  wire \y_reg[3][31]_i_21_n_5 ;
  wire \y_reg[3][31]_i_21_n_6 ;
  wire \y_reg[3][31]_i_21_n_7 ;
  wire \y_reg[3][3]_i_1_n_0 ;
  wire \y_reg[3][3]_i_1_n_1 ;
  wire \y_reg[3][3]_i_1_n_2 ;
  wire \y_reg[3][3]_i_1_n_3 ;
  wire \y_reg[3][7]_i_12_n_0 ;
  wire \y_reg[3][7]_i_12_n_1 ;
  wire \y_reg[3][7]_i_12_n_2 ;
  wire \y_reg[3][7]_i_12_n_3 ;
  wire \y_reg[3][7]_i_12_n_4 ;
  wire \y_reg[3][7]_i_12_n_5 ;
  wire \y_reg[3][7]_i_12_n_6 ;
  wire \y_reg[3][7]_i_12_n_7 ;
  wire \y_reg[3][7]_i_13_n_0 ;
  wire \y_reg[3][7]_i_13_n_1 ;
  wire \y_reg[3][7]_i_13_n_2 ;
  wire \y_reg[3][7]_i_13_n_3 ;
  wire \y_reg[3][7]_i_16_n_0 ;
  wire \y_reg[3][7]_i_16_n_1 ;
  wire \y_reg[3][7]_i_16_n_2 ;
  wire \y_reg[3][7]_i_16_n_3 ;
  wire \y_reg[3][7]_i_16_n_4 ;
  wire \y_reg[3][7]_i_16_n_5 ;
  wire \y_reg[3][7]_i_16_n_6 ;
  wire \y_reg[3][7]_i_16_n_7 ;
  wire \y_reg[3][7]_i_18_n_0 ;
  wire \y_reg[3][7]_i_18_n_1 ;
  wire \y_reg[3][7]_i_18_n_2 ;
  wire \y_reg[3][7]_i_18_n_3 ;
  wire \y_reg[3][7]_i_1_n_0 ;
  wire \y_reg[3][7]_i_1_n_1 ;
  wire \y_reg[3][7]_i_1_n_2 ;
  wire \y_reg[3][7]_i_1_n_3 ;
  wire [31:0]\y_reg[5] ;
  wire \y_reg[5][11]_i_12_n_0 ;
  wire \y_reg[5][11]_i_12_n_1 ;
  wire \y_reg[5][11]_i_12_n_2 ;
  wire \y_reg[5][11]_i_12_n_3 ;
  wire \y_reg[5][11]_i_12_n_4 ;
  wire \y_reg[5][11]_i_12_n_5 ;
  wire \y_reg[5][11]_i_12_n_6 ;
  wire \y_reg[5][11]_i_12_n_7 ;
  wire \y_reg[5][11]_i_1_n_0 ;
  wire \y_reg[5][11]_i_1_n_1 ;
  wire \y_reg[5][11]_i_1_n_2 ;
  wire \y_reg[5][11]_i_1_n_3 ;
  wire \y_reg[5][11]_i_1_n_4 ;
  wire \y_reg[5][11]_i_1_n_5 ;
  wire \y_reg[5][11]_i_1_n_6 ;
  wire \y_reg[5][11]_i_1_n_7 ;
  wire \y_reg[5][11]_i_23_n_0 ;
  wire \y_reg[5][11]_i_23_n_1 ;
  wire \y_reg[5][11]_i_23_n_2 ;
  wire \y_reg[5][11]_i_23_n_3 ;
  wire \y_reg[5][11]_i_23_n_4 ;
  wire \y_reg[5][11]_i_23_n_5 ;
  wire \y_reg[5][11]_i_23_n_6 ;
  wire \y_reg[5][11]_i_23_n_7 ;
  wire \y_reg[5][11]_i_24_n_0 ;
  wire \y_reg[5][11]_i_24_n_1 ;
  wire \y_reg[5][11]_i_24_n_2 ;
  wire \y_reg[5][11]_i_24_n_3 ;
  wire \y_reg[5][11]_i_24_n_4 ;
  wire \y_reg[5][11]_i_24_n_5 ;
  wire \y_reg[5][11]_i_24_n_6 ;
  wire \y_reg[5][11]_i_24_n_7 ;
  wire \y_reg[5][15]_i_12_n_0 ;
  wire \y_reg[5][15]_i_12_n_1 ;
  wire \y_reg[5][15]_i_12_n_2 ;
  wire \y_reg[5][15]_i_12_n_3 ;
  wire \y_reg[5][15]_i_12_n_4 ;
  wire \y_reg[5][15]_i_12_n_5 ;
  wire \y_reg[5][15]_i_12_n_6 ;
  wire \y_reg[5][15]_i_12_n_7 ;
  wire \y_reg[5][15]_i_1_n_0 ;
  wire \y_reg[5][15]_i_1_n_1 ;
  wire \y_reg[5][15]_i_1_n_2 ;
  wire \y_reg[5][15]_i_1_n_3 ;
  wire \y_reg[5][15]_i_1_n_4 ;
  wire \y_reg[5][15]_i_1_n_5 ;
  wire \y_reg[5][15]_i_1_n_6 ;
  wire \y_reg[5][15]_i_1_n_7 ;
  wire \y_reg[5][15]_i_23_n_0 ;
  wire \y_reg[5][15]_i_23_n_1 ;
  wire \y_reg[5][15]_i_23_n_2 ;
  wire \y_reg[5][15]_i_23_n_3 ;
  wire \y_reg[5][15]_i_23_n_4 ;
  wire \y_reg[5][15]_i_23_n_5 ;
  wire \y_reg[5][15]_i_23_n_6 ;
  wire \y_reg[5][15]_i_23_n_7 ;
  wire \y_reg[5][15]_i_24_n_0 ;
  wire \y_reg[5][15]_i_24_n_1 ;
  wire \y_reg[5][15]_i_24_n_2 ;
  wire \y_reg[5][15]_i_24_n_3 ;
  wire \y_reg[5][15]_i_24_n_4 ;
  wire \y_reg[5][15]_i_24_n_5 ;
  wire \y_reg[5][15]_i_24_n_6 ;
  wire \y_reg[5][15]_i_24_n_7 ;
  wire \y_reg[5][19]_i_12_n_0 ;
  wire \y_reg[5][19]_i_12_n_1 ;
  wire \y_reg[5][19]_i_12_n_2 ;
  wire \y_reg[5][19]_i_12_n_3 ;
  wire \y_reg[5][19]_i_12_n_4 ;
  wire \y_reg[5][19]_i_12_n_5 ;
  wire \y_reg[5][19]_i_12_n_6 ;
  wire \y_reg[5][19]_i_12_n_7 ;
  wire \y_reg[5][19]_i_1_n_0 ;
  wire \y_reg[5][19]_i_1_n_1 ;
  wire \y_reg[5][19]_i_1_n_2 ;
  wire \y_reg[5][19]_i_1_n_3 ;
  wire \y_reg[5][19]_i_1_n_4 ;
  wire \y_reg[5][19]_i_1_n_5 ;
  wire \y_reg[5][19]_i_1_n_6 ;
  wire \y_reg[5][19]_i_1_n_7 ;
  wire \y_reg[5][19]_i_23_n_0 ;
  wire \y_reg[5][19]_i_23_n_1 ;
  wire \y_reg[5][19]_i_23_n_2 ;
  wire \y_reg[5][19]_i_23_n_3 ;
  wire \y_reg[5][19]_i_23_n_4 ;
  wire \y_reg[5][19]_i_23_n_5 ;
  wire \y_reg[5][19]_i_23_n_6 ;
  wire \y_reg[5][19]_i_23_n_7 ;
  wire \y_reg[5][19]_i_24_n_0 ;
  wire \y_reg[5][19]_i_24_n_1 ;
  wire \y_reg[5][19]_i_24_n_2 ;
  wire \y_reg[5][19]_i_24_n_3 ;
  wire \y_reg[5][19]_i_24_n_4 ;
  wire \y_reg[5][19]_i_24_n_5 ;
  wire \y_reg[5][19]_i_24_n_6 ;
  wire \y_reg[5][19]_i_24_n_7 ;
  wire \y_reg[5][23]_i_11_n_0 ;
  wire \y_reg[5][23]_i_11_n_1 ;
  wire \y_reg[5][23]_i_11_n_2 ;
  wire \y_reg[5][23]_i_11_n_3 ;
  wire \y_reg[5][23]_i_11_n_4 ;
  wire \y_reg[5][23]_i_11_n_5 ;
  wire \y_reg[5][23]_i_11_n_6 ;
  wire \y_reg[5][23]_i_11_n_7 ;
  wire \y_reg[5][23]_i_1_n_0 ;
  wire \y_reg[5][23]_i_1_n_1 ;
  wire \y_reg[5][23]_i_1_n_2 ;
  wire \y_reg[5][23]_i_1_n_3 ;
  wire \y_reg[5][23]_i_1_n_4 ;
  wire \y_reg[5][23]_i_1_n_5 ;
  wire \y_reg[5][23]_i_1_n_6 ;
  wire \y_reg[5][23]_i_1_n_7 ;
  wire \y_reg[5][23]_i_27_n_0 ;
  wire \y_reg[5][23]_i_27_n_1 ;
  wire \y_reg[5][23]_i_27_n_2 ;
  wire \y_reg[5][23]_i_27_n_3 ;
  wire \y_reg[5][23]_i_27_n_4 ;
  wire \y_reg[5][23]_i_27_n_5 ;
  wire \y_reg[5][23]_i_27_n_6 ;
  wire \y_reg[5][23]_i_27_n_7 ;
  wire \y_reg[5][23]_i_28_n_0 ;
  wire \y_reg[5][23]_i_28_n_1 ;
  wire \y_reg[5][23]_i_28_n_2 ;
  wire \y_reg[5][23]_i_28_n_3 ;
  wire \y_reg[5][23]_i_28_n_4 ;
  wire \y_reg[5][23]_i_28_n_5 ;
  wire \y_reg[5][23]_i_28_n_6 ;
  wire \y_reg[5][23]_i_28_n_7 ;
  wire \y_reg[5][27]_i_10_n_0 ;
  wire \y_reg[5][27]_i_10_n_1 ;
  wire \y_reg[5][27]_i_10_n_2 ;
  wire \y_reg[5][27]_i_10_n_3 ;
  wire \y_reg[5][27]_i_10_n_4 ;
  wire \y_reg[5][27]_i_10_n_5 ;
  wire \y_reg[5][27]_i_10_n_6 ;
  wire \y_reg[5][27]_i_10_n_7 ;
  wire \y_reg[5][27]_i_1_n_0 ;
  wire \y_reg[5][27]_i_1_n_1 ;
  wire \y_reg[5][27]_i_1_n_2 ;
  wire \y_reg[5][27]_i_1_n_3 ;
  wire \y_reg[5][27]_i_1_n_4 ;
  wire \y_reg[5][27]_i_1_n_5 ;
  wire \y_reg[5][27]_i_1_n_6 ;
  wire \y_reg[5][27]_i_1_n_7 ;
  wire \y_reg[5][27]_i_20_n_0 ;
  wire \y_reg[5][27]_i_20_n_1 ;
  wire \y_reg[5][27]_i_20_n_2 ;
  wire \y_reg[5][27]_i_20_n_3 ;
  wire \y_reg[5][27]_i_20_n_4 ;
  wire \y_reg[5][27]_i_20_n_5 ;
  wire \y_reg[5][27]_i_20_n_6 ;
  wire \y_reg[5][27]_i_20_n_7 ;
  wire \y_reg[5][27]_i_22_n_0 ;
  wire \y_reg[5][27]_i_22_n_1 ;
  wire \y_reg[5][27]_i_22_n_2 ;
  wire \y_reg[5][27]_i_22_n_3 ;
  wire \y_reg[5][27]_i_22_n_4 ;
  wire \y_reg[5][27]_i_22_n_5 ;
  wire \y_reg[5][27]_i_22_n_6 ;
  wire \y_reg[5][27]_i_22_n_7 ;
  wire \y_reg[5][31]_i_10_n_0 ;
  wire \y_reg[5][31]_i_10_n_1 ;
  wire \y_reg[5][31]_i_10_n_2 ;
  wire \y_reg[5][31]_i_10_n_3 ;
  wire \y_reg[5][31]_i_10_n_4 ;
  wire \y_reg[5][31]_i_10_n_5 ;
  wire \y_reg[5][31]_i_10_n_6 ;
  wire \y_reg[5][31]_i_10_n_7 ;
  wire \y_reg[5][31]_i_26_n_0 ;
  wire \y_reg[5][31]_i_26_n_2 ;
  wire \y_reg[5][31]_i_26_n_3 ;
  wire \y_reg[5][31]_i_26_n_5 ;
  wire \y_reg[5][31]_i_26_n_6 ;
  wire \y_reg[5][31]_i_26_n_7 ;
  wire \y_reg[5][31]_i_27_n_0 ;
  wire \y_reg[5][31]_i_27_n_1 ;
  wire \y_reg[5][31]_i_27_n_2 ;
  wire \y_reg[5][31]_i_27_n_3 ;
  wire \y_reg[5][31]_i_27_n_4 ;
  wire \y_reg[5][31]_i_27_n_5 ;
  wire \y_reg[5][31]_i_27_n_6 ;
  wire \y_reg[5][31]_i_27_n_7 ;
  wire \y_reg[5][31]_i_29_n_0 ;
  wire \y_reg[5][31]_i_29_n_1 ;
  wire \y_reg[5][31]_i_29_n_2 ;
  wire \y_reg[5][31]_i_29_n_3 ;
  wire \y_reg[5][31]_i_29_n_4 ;
  wire \y_reg[5][31]_i_29_n_5 ;
  wire \y_reg[5][31]_i_29_n_6 ;
  wire \y_reg[5][31]_i_29_n_7 ;
  wire \y_reg[5][31]_i_2_n_1 ;
  wire \y_reg[5][31]_i_2_n_2 ;
  wire \y_reg[5][31]_i_2_n_3 ;
  wire \y_reg[5][31]_i_2_n_4 ;
  wire \y_reg[5][31]_i_2_n_5 ;
  wire \y_reg[5][31]_i_2_n_6 ;
  wire \y_reg[5][31]_i_2_n_7 ;
  wire \y_reg[5][31]_i_33_n_2 ;
  wire \y_reg[5][31]_i_33_n_3 ;
  wire \y_reg[5][31]_i_33_n_5 ;
  wire \y_reg[5][31]_i_33_n_6 ;
  wire \y_reg[5][31]_i_33_n_7 ;
  wire \y_reg[5][31]_i_37_n_0 ;
  wire \y_reg[5][31]_i_37_n_1 ;
  wire \y_reg[5][31]_i_37_n_2 ;
  wire \y_reg[5][31]_i_37_n_3 ;
  wire \y_reg[5][31]_i_37_n_4 ;
  wire \y_reg[5][31]_i_37_n_5 ;
  wire \y_reg[5][31]_i_37_n_6 ;
  wire \y_reg[5][31]_i_37_n_7 ;
  wire \y_reg[5][31]_i_39_n_0 ;
  wire \y_reg[5][31]_i_39_n_1 ;
  wire \y_reg[5][31]_i_39_n_2 ;
  wire \y_reg[5][31]_i_39_n_3 ;
  wire \y_reg[5][31]_i_39_n_4 ;
  wire \y_reg[5][31]_i_39_n_5 ;
  wire \y_reg[5][31]_i_39_n_6 ;
  wire \y_reg[5][31]_i_39_n_7 ;
  wire \y_reg[5][31]_i_3_n_1 ;
  wire \y_reg[5][31]_i_3_n_2 ;
  wire \y_reg[5][31]_i_3_n_3 ;
  wire \y_reg[5][31]_i_3_n_4 ;
  wire \y_reg[5][31]_i_3_n_5 ;
  wire \y_reg[5][31]_i_3_n_6 ;
  wire \y_reg[5][31]_i_3_n_7 ;
  wire \y_reg[5][3]_i_1_n_0 ;
  wire \y_reg[5][3]_i_1_n_1 ;
  wire \y_reg[5][3]_i_1_n_2 ;
  wire \y_reg[5][3]_i_1_n_3 ;
  wire \y_reg[5][3]_i_1_n_4 ;
  wire \y_reg[5][3]_i_1_n_5 ;
  wire \y_reg[5][3]_i_1_n_6 ;
  wire \y_reg[5][3]_i_1_n_7 ;
  wire \y_reg[5][7]_i_12_n_0 ;
  wire \y_reg[5][7]_i_12_n_1 ;
  wire \y_reg[5][7]_i_12_n_2 ;
  wire \y_reg[5][7]_i_12_n_3 ;
  wire \y_reg[5][7]_i_12_n_4 ;
  wire \y_reg[5][7]_i_12_n_5 ;
  wire \y_reg[5][7]_i_12_n_6 ;
  wire \y_reg[5][7]_i_12_n_7 ;
  wire \y_reg[5][7]_i_1_n_0 ;
  wire \y_reg[5][7]_i_1_n_1 ;
  wire \y_reg[5][7]_i_1_n_2 ;
  wire \y_reg[5][7]_i_1_n_3 ;
  wire \y_reg[5][7]_i_1_n_4 ;
  wire \y_reg[5][7]_i_1_n_5 ;
  wire \y_reg[5][7]_i_1_n_6 ;
  wire \y_reg[5][7]_i_1_n_7 ;
  wire \y_reg[6][12]_i_2_n_0 ;
  wire \y_reg[6][12]_i_2_n_1 ;
  wire \y_reg[6][12]_i_2_n_2 ;
  wire \y_reg[6][12]_i_2_n_3 ;
  wire \y_reg[6][12]_i_2_n_4 ;
  wire \y_reg[6][12]_i_2_n_5 ;
  wire \y_reg[6][12]_i_2_n_6 ;
  wire \y_reg[6][12]_i_2_n_7 ;
  wire \y_reg[6][16]_i_2_n_0 ;
  wire \y_reg[6][16]_i_2_n_1 ;
  wire \y_reg[6][16]_i_2_n_2 ;
  wire \y_reg[6][16]_i_2_n_3 ;
  wire \y_reg[6][16]_i_2_n_4 ;
  wire \y_reg[6][16]_i_2_n_5 ;
  wire \y_reg[6][16]_i_2_n_6 ;
  wire \y_reg[6][16]_i_2_n_7 ;
  wire \y_reg[6][20]_i_2_n_0 ;
  wire \y_reg[6][20]_i_2_n_1 ;
  wire \y_reg[6][20]_i_2_n_2 ;
  wire \y_reg[6][20]_i_2_n_3 ;
  wire \y_reg[6][20]_i_2_n_4 ;
  wire \y_reg[6][20]_i_2_n_5 ;
  wire \y_reg[6][20]_i_2_n_6 ;
  wire \y_reg[6][20]_i_2_n_7 ;
  wire \y_reg[6][24]_i_2_n_0 ;
  wire \y_reg[6][24]_i_2_n_1 ;
  wire \y_reg[6][24]_i_2_n_2 ;
  wire \y_reg[6][24]_i_2_n_3 ;
  wire \y_reg[6][24]_i_2_n_4 ;
  wire \y_reg[6][24]_i_2_n_5 ;
  wire \y_reg[6][24]_i_2_n_6 ;
  wire \y_reg[6][24]_i_2_n_7 ;
  wire \y_reg[6][28]_i_2_n_0 ;
  wire \y_reg[6][28]_i_2_n_1 ;
  wire \y_reg[6][28]_i_2_n_2 ;
  wire \y_reg[6][28]_i_2_n_3 ;
  wire \y_reg[6][28]_i_2_n_4 ;
  wire \y_reg[6][28]_i_2_n_5 ;
  wire \y_reg[6][28]_i_2_n_6 ;
  wire \y_reg[6][28]_i_2_n_7 ;
  wire \y_reg[6][31]_i_20_n_0 ;
  wire \y_reg[6][31]_i_20_n_1 ;
  wire \y_reg[6][31]_i_20_n_2 ;
  wire \y_reg[6][31]_i_20_n_3 ;
  wire \y_reg[6][31]_i_2_n_2 ;
  wire \y_reg[6][31]_i_2_n_3 ;
  wire \y_reg[6][31]_i_2_n_5 ;
  wire \y_reg[6][31]_i_2_n_6 ;
  wire \y_reg[6][31]_i_2_n_7 ;
  wire \y_reg[6][31]_i_36_n_0 ;
  wire \y_reg[6][31]_i_36_n_1 ;
  wire \y_reg[6][31]_i_36_n_2 ;
  wire \y_reg[6][31]_i_36_n_3 ;
  wire \y_reg[6][31]_i_3_n_1 ;
  wire \y_reg[6][31]_i_3_n_2 ;
  wire \y_reg[6][31]_i_3_n_3 ;
  wire \y_reg[6][31]_i_4_n_2 ;
  wire \y_reg[6][31]_i_4_n_3 ;
  wire \y_reg[6][31]_i_4_n_5 ;
  wire \y_reg[6][31]_i_4_n_6 ;
  wire \y_reg[6][31]_i_4_n_7 ;
  wire \y_reg[6][31]_i_8_n_0 ;
  wire \y_reg[6][31]_i_8_n_1 ;
  wire \y_reg[6][31]_i_8_n_2 ;
  wire \y_reg[6][31]_i_8_n_3 ;
  wire \y_reg[6][4]_i_2_n_0 ;
  wire \y_reg[6][4]_i_2_n_1 ;
  wire \y_reg[6][4]_i_2_n_2 ;
  wire \y_reg[6][4]_i_2_n_3 ;
  wire \y_reg[6][4]_i_2_n_4 ;
  wire \y_reg[6][4]_i_2_n_5 ;
  wire \y_reg[6][4]_i_2_n_6 ;
  wire \y_reg[6][4]_i_2_n_7 ;
  wire \y_reg[6][8]_i_2_n_0 ;
  wire \y_reg[6][8]_i_2_n_1 ;
  wire \y_reg[6][8]_i_2_n_2 ;
  wire \y_reg[6][8]_i_2_n_3 ;
  wire \y_reg[6][8]_i_2_n_4 ;
  wire \y_reg[6][8]_i_2_n_5 ;
  wire \y_reg[6][8]_i_2_n_6 ;
  wire \y_reg[6][8]_i_2_n_7 ;
  wire \y_reg_n_0_[6][0] ;
  wire \y_reg_n_0_[6][10] ;
  wire \y_reg_n_0_[6][11] ;
  wire \y_reg_n_0_[6][12] ;
  wire \y_reg_n_0_[6][13] ;
  wire \y_reg_n_0_[6][14] ;
  wire \y_reg_n_0_[6][15] ;
  wire \y_reg_n_0_[6][16] ;
  wire \y_reg_n_0_[6][17] ;
  wire \y_reg_n_0_[6][18] ;
  wire \y_reg_n_0_[6][19] ;
  wire \y_reg_n_0_[6][1] ;
  wire \y_reg_n_0_[6][20] ;
  wire \y_reg_n_0_[6][21] ;
  wire \y_reg_n_0_[6][22] ;
  wire \y_reg_n_0_[6][23] ;
  wire \y_reg_n_0_[6][24] ;
  wire \y_reg_n_0_[6][25] ;
  wire \y_reg_n_0_[6][26] ;
  wire \y_reg_n_0_[6][27] ;
  wire \y_reg_n_0_[6][28] ;
  wire \y_reg_n_0_[6][29] ;
  wire \y_reg_n_0_[6][2] ;
  wire \y_reg_n_0_[6][30] ;
  wire \y_reg_n_0_[6][3] ;
  wire \y_reg_n_0_[6][4] ;
  wire \y_reg_n_0_[6][5] ;
  wire \y_reg_n_0_[6][6] ;
  wire \y_reg_n_0_[6][7] ;
  wire \y_reg_n_0_[6][8] ;
  wire \y_reg_n_0_[6][9] ;
  wire \z[0][11]_i_2_n_0 ;
  wire \z[0][11]_i_3_n_0 ;
  wire \z[0][11]_i_4_n_0 ;
  wire \z[0][11]_i_5_n_0 ;
  wire \z[0][11]_i_6_n_0 ;
  wire \z[0][15]_i_2_n_0 ;
  wire \z[0][15]_i_3_n_0 ;
  wire \z[0][15]_i_4_n_0 ;
  wire \z[0][15]_i_5_n_0 ;
  wire \z[0][7]_i_100_n_0 ;
  wire \z[0][7]_i_101_n_0 ;
  wire \z[0][7]_i_103_n_0 ;
  wire \z[0][7]_i_104_n_0 ;
  wire \z[0][7]_i_105_n_0 ;
  wire \z[0][7]_i_106_n_0 ;
  wire \z[0][7]_i_107_n_0 ;
  wire \z[0][7]_i_108_n_0 ;
  wire \z[0][7]_i_109_n_0 ;
  wire \z[0][7]_i_10_n_0 ;
  wire \z[0][7]_i_110_n_0 ;
  wire \z[0][7]_i_111_n_0 ;
  wire \z[0][7]_i_112_n_0 ;
  wire \z[0][7]_i_113_n_0 ;
  wire \z[0][7]_i_114_n_0 ;
  wire \z[0][7]_i_115_n_0 ;
  wire \z[0][7]_i_116_n_0 ;
  wire \z[0][7]_i_117_n_0 ;
  wire \z[0][7]_i_118_n_0 ;
  wire \z[0][7]_i_120_n_0 ;
  wire \z[0][7]_i_121_n_0 ;
  wire \z[0][7]_i_122_n_0 ;
  wire \z[0][7]_i_123_n_0 ;
  wire \z[0][7]_i_124_n_0 ;
  wire \z[0][7]_i_125_n_0 ;
  wire \z[0][7]_i_126_n_0 ;
  wire \z[0][7]_i_127_n_0 ;
  wire \z[0][7]_i_128_n_0 ;
  wire \z[0][7]_i_129_n_0 ;
  wire \z[0][7]_i_130_n_0 ;
  wire \z[0][7]_i_131_n_0 ;
  wire \z[0][7]_i_134_n_0 ;
  wire \z[0][7]_i_135_n_0 ;
  wire \z[0][7]_i_136_n_0 ;
  wire \z[0][7]_i_137_n_0 ;
  wire \z[0][7]_i_139_n_0 ;
  wire \z[0][7]_i_140_n_0 ;
  wire \z[0][7]_i_141_n_0 ;
  wire \z[0][7]_i_142_n_0 ;
  wire \z[0][7]_i_143_n_0 ;
  wire \z[0][7]_i_144_n_0 ;
  wire \z[0][7]_i_145_n_0 ;
  wire \z[0][7]_i_146_n_0 ;
  wire \z[0][7]_i_147_n_0 ;
  wire \z[0][7]_i_148_n_0 ;
  wire \z[0][7]_i_149_n_0 ;
  wire \z[0][7]_i_14_n_0 ;
  wire \z[0][7]_i_150_n_0 ;
  wire \z[0][7]_i_152_n_0 ;
  wire \z[0][7]_i_153_n_0 ;
  wire \z[0][7]_i_154_n_0 ;
  wire \z[0][7]_i_155_n_0 ;
  wire \z[0][7]_i_156_n_0 ;
  wire \z[0][7]_i_157_n_0 ;
  wire \z[0][7]_i_158_n_0 ;
  wire \z[0][7]_i_159_n_0 ;
  wire \z[0][7]_i_15_n_0 ;
  wire \z[0][7]_i_161_n_0 ;
  wire \z[0][7]_i_162_n_0 ;
  wire \z[0][7]_i_163_n_0 ;
  wire \z[0][7]_i_165_n_0 ;
  wire \z[0][7]_i_166_n_0 ;
  wire \z[0][7]_i_167_n_0 ;
  wire \z[0][7]_i_168_n_0 ;
  wire \z[0][7]_i_169_n_0 ;
  wire \z[0][7]_i_16_n_0 ;
  wire \z[0][7]_i_170_n_0 ;
  wire \z[0][7]_i_171_n_0 ;
  wire \z[0][7]_i_173_n_0 ;
  wire \z[0][7]_i_174_n_0 ;
  wire \z[0][7]_i_175_n_0 ;
  wire \z[0][7]_i_176_n_0 ;
  wire \z[0][7]_i_179_n_0 ;
  wire \z[0][7]_i_17_n_0 ;
  wire \z[0][7]_i_180_n_0 ;
  wire \z[0][7]_i_181_n_0 ;
  wire \z[0][7]_i_182_n_0 ;
  wire \z[0][7]_i_183_n_0 ;
  wire \z[0][7]_i_184_n_0 ;
  wire \z[0][7]_i_185_n_0 ;
  wire \z[0][7]_i_186_n_0 ;
  wire \z[0][7]_i_187_n_0 ;
  wire \z[0][7]_i_188_n_0 ;
  wire \z[0][7]_i_189_n_0 ;
  wire \z[0][7]_i_18_n_0 ;
  wire \z[0][7]_i_190_n_0 ;
  wire \z[0][7]_i_191_n_0 ;
  wire \z[0][7]_i_192_n_0 ;
  wire \z[0][7]_i_193_n_0 ;
  wire \z[0][7]_i_194_n_0 ;
  wire \z[0][7]_i_197_n_0 ;
  wire \z[0][7]_i_198_n_0 ;
  wire \z[0][7]_i_199_n_0 ;
  wire \z[0][7]_i_19_n_0 ;
  wire \z[0][7]_i_200_n_0 ;
  wire \z[0][7]_i_201_n_0 ;
  wire \z[0][7]_i_202_n_0 ;
  wire \z[0][7]_i_203_n_0 ;
  wire \z[0][7]_i_204_n_0 ;
  wire \z[0][7]_i_205_n_0 ;
  wire \z[0][7]_i_206_n_0 ;
  wire \z[0][7]_i_207_n_0 ;
  wire \z[0][7]_i_208_n_0 ;
  wire \z[0][7]_i_209_n_0 ;
  wire \z[0][7]_i_20_n_0 ;
  wire \z[0][7]_i_210_n_0 ;
  wire \z[0][7]_i_211_n_0 ;
  wire \z[0][7]_i_212_n_0 ;
  wire \z[0][7]_i_213_n_0 ;
  wire \z[0][7]_i_214_n_0 ;
  wire \z[0][7]_i_215_n_0 ;
  wire \z[0][7]_i_216_n_0 ;
  wire \z[0][7]_i_217_n_0 ;
  wire \z[0][7]_i_218_n_0 ;
  wire \z[0][7]_i_219_n_0 ;
  wire \z[0][7]_i_21_n_0 ;
  wire \z[0][7]_i_220_n_0 ;
  wire \z[0][7]_i_221_n_0 ;
  wire \z[0][7]_i_222_n_0 ;
  wire \z[0][7]_i_223_n_0 ;
  wire \z[0][7]_i_224_n_0 ;
  wire \z[0][7]_i_225_n_0 ;
  wire \z[0][7]_i_226_n_0 ;
  wire \z[0][7]_i_227_n_0 ;
  wire \z[0][7]_i_23_n_0 ;
  wire \z[0][7]_i_24_n_0 ;
  wire \z[0][7]_i_25_n_0 ;
  wire \z[0][7]_i_26_n_0 ;
  wire \z[0][7]_i_28_n_0 ;
  wire \z[0][7]_i_29_n_0 ;
  wire \z[0][7]_i_30_n_0 ;
  wire \z[0][7]_i_31_n_0 ;
  wire \z[0][7]_i_32_n_0 ;
  wire \z[0][7]_i_33_n_0 ;
  wire \z[0][7]_i_34_n_0 ;
  wire \z[0][7]_i_35_n_0 ;
  wire \z[0][7]_i_38_n_0 ;
  wire \z[0][7]_i_39_n_0 ;
  wire \z[0][7]_i_3_n_0 ;
  wire \z[0][7]_i_40_n_0 ;
  wire \z[0][7]_i_42_n_0 ;
  wire \z[0][7]_i_43_n_0 ;
  wire \z[0][7]_i_44_n_0 ;
  wire \z[0][7]_i_45_n_0 ;
  wire \z[0][7]_i_46_n_0 ;
  wire \z[0][7]_i_47_n_0 ;
  wire \z[0][7]_i_48_n_0 ;
  wire \z[0][7]_i_49_n_0 ;
  wire \z[0][7]_i_4_n_0 ;
  wire \z[0][7]_i_50_n_0 ;
  wire \z[0][7]_i_51_n_0 ;
  wire \z[0][7]_i_52_n_0 ;
  wire \z[0][7]_i_55_n_0 ;
  wire \z[0][7]_i_56_n_0 ;
  wire \z[0][7]_i_57_n_0 ;
  wire \z[0][7]_i_58_n_0 ;
  wire \z[0][7]_i_5_n_0 ;
  wire \z[0][7]_i_60_n_0 ;
  wire \z[0][7]_i_61_n_0 ;
  wire \z[0][7]_i_62_n_0 ;
  wire \z[0][7]_i_63_n_0 ;
  wire \z[0][7]_i_64_n_0 ;
  wire \z[0][7]_i_65_n_0 ;
  wire \z[0][7]_i_66_n_0 ;
  wire \z[0][7]_i_67_n_0 ;
  wire \z[0][7]_i_68_n_0 ;
  wire \z[0][7]_i_69_n_0 ;
  wire \z[0][7]_i_6_n_0 ;
  wire \z[0][7]_i_70_n_0 ;
  wire \z[0][7]_i_71_n_0 ;
  wire \z[0][7]_i_73_n_0 ;
  wire \z[0][7]_i_74_n_0 ;
  wire \z[0][7]_i_75_n_0 ;
  wire \z[0][7]_i_76_n_0 ;
  wire \z[0][7]_i_77_n_0 ;
  wire \z[0][7]_i_78_n_0 ;
  wire \z[0][7]_i_79_n_0 ;
  wire \z[0][7]_i_7_n_0 ;
  wire \z[0][7]_i_80_n_0 ;
  wire \z[0][7]_i_81_n_0 ;
  wire \z[0][7]_i_82_n_0 ;
  wire \z[0][7]_i_83_n_0 ;
  wire \z[0][7]_i_84_n_0 ;
  wire \z[0][7]_i_86_n_0 ;
  wire \z[0][7]_i_87_n_0 ;
  wire \z[0][7]_i_88_n_0 ;
  wire \z[0][7]_i_8_n_0 ;
  wire \z[0][7]_i_90_n_0 ;
  wire \z[0][7]_i_91_n_0 ;
  wire \z[0][7]_i_92_n_0 ;
  wire \z[0][7]_i_93_n_0 ;
  wire \z[0][7]_i_94_n_0 ;
  wire \z[0][7]_i_95_n_0 ;
  wire \z[0][7]_i_96_n_0 ;
  wire \z[0][7]_i_98_n_0 ;
  wire \z[0][7]_i_99_n_0 ;
  wire \z[0][7]_i_9_n_0 ;
  wire \z[1][12]_i_2_n_0 ;
  wire \z[1][12]_i_3_n_0 ;
  wire \z[1][12]_i_4_n_0 ;
  wire \z[1][12]_i_5_n_0 ;
  wire \z[1][12]_i_6_n_0 ;
  wire \z[1][15]_i_2_n_0 ;
  wire \z[1][15]_i_3_n_0 ;
  wire \z[1][15]_i_4_n_0 ;
  wire \z[1][4]_i_2_n_0 ;
  wire \z[1][4]_i_3_n_0 ;
  wire \z[1][4]_i_4_n_0 ;
  wire \z[1][4]_i_5_n_0 ;
  wire \z[1][4]_i_6_n_0 ;
  wire \z[1][8]_i_2_n_0 ;
  wire \z[1][8]_i_3_n_0 ;
  wire \z[1][8]_i_4_n_0 ;
  wire \z[1][8]_i_5_n_0 ;
  wire \z[2][11]_i_2_n_0 ;
  wire \z[2][11]_i_3_n_0 ;
  wire \z[2][11]_i_4_n_0 ;
  wire \z[2][11]_i_5_n_0 ;
  wire \z[2][11]_i_6_n_0 ;
  wire \z[2][15]_i_2_n_0 ;
  wire \z[2][15]_i_3_n_0 ;
  wire \z[2][15]_i_4_n_0 ;
  wire \z[2][15]_i_5_n_0 ;
  wire \z[2][3]_i_2_n_0 ;
  wire \z[2][3]_i_3_n_0 ;
  wire \z[2][3]_i_4_n_0 ;
  wire \z[2][7]_i_2_n_0 ;
  wire \z[2][7]_i_3_n_0 ;
  wire \z[2][7]_i_4_n_0 ;
  wire \z[2][7]_i_5_n_0 ;
  wire \z[2][7]_i_6_n_0 ;
  wire \z[3][10]_i_2_n_0 ;
  wire \z[3][10]_i_3_n_0 ;
  wire \z[3][10]_i_4_n_0 ;
  wire \z[3][10]_i_5_n_0 ;
  wire \z[3][14]_i_2_n_0 ;
  wire \z[3][14]_i_3_n_0 ;
  wire \z[3][14]_i_4_n_0 ;
  wire \z[3][14]_i_5_n_0 ;
  wire \z[3][14]_i_6_n_0 ;
  wire \z[3][15]_i_2_n_0 ;
  wire \z[3][6]_i_2_n_0 ;
  wire \z[3][6]_i_3_n_0 ;
  wire \z[3][6]_i_4_n_0 ;
  wire \z[3][6]_i_5_n_0 ;
  wire \z[4][10]_i_2_n_0 ;
  wire \z[4][10]_i_3_n_0 ;
  wire \z[4][10]_i_4_n_0 ;
  wire \z[4][10]_i_5_n_0 ;
  wire \z[4][14]_i_2_n_0 ;
  wire \z[4][14]_i_3_n_0 ;
  wire \z[4][14]_i_4_n_0 ;
  wire \z[4][14]_i_5_n_0 ;
  wire \z[4][14]_i_6_n_0 ;
  wire \z[4][15]_i_2_n_0 ;
  wire \z[4][6]_i_2_n_0 ;
  wire \z[4][6]_i_3_n_0 ;
  wire \z[4][6]_i_4_n_0 ;
  wire \z[4][6]_i_5_n_0 ;
  wire \z[4][6]_i_6_n_0 ;
  wire \z[5][11]_i_3_n_0 ;
  wire \z[5][11]_i_4_n_0 ;
  wire \z[5][11]_i_5_n_0 ;
  wire \z[5][11]_i_6_n_0 ;
  wire \z[5][15]_i_2_n_0 ;
  wire \z[5][15]_i_3_n_0 ;
  wire \z[5][15]_i_4_n_0 ;
  wire \z[5][15]_i_5_n_0 ;
  wire \z[5][15]_i_6_n_0 ;
  wire \z[5][5]_i_2_n_0 ;
  wire \z[6][11]_i_1_n_0 ;
  wire \z[6][13]_i_1_n_0 ;
  wire \z[6][14]_i_1_n_0 ;
  wire \z[6][15]_i_1_n_0 ;
  wire \z[6][8]_i_1_n_0 ;
  wire \z[6][9]_i_1_n_0 ;
  wire [15:7]\z_reg[0] ;
  wire \z_reg[0][11]_i_1_n_0 ;
  wire \z_reg[0][11]_i_1_n_1 ;
  wire \z_reg[0][11]_i_1_n_2 ;
  wire \z_reg[0][11]_i_1_n_3 ;
  wire \z_reg[0][15]_i_1_n_1 ;
  wire \z_reg[0][15]_i_1_n_2 ;
  wire \z_reg[0][15]_i_1_n_3 ;
  wire \z_reg[0][7]_i_102_n_0 ;
  wire \z_reg[0][7]_i_102_n_1 ;
  wire \z_reg[0][7]_i_102_n_2 ;
  wire \z_reg[0][7]_i_102_n_3 ;
  wire \z_reg[0][7]_i_119_n_0 ;
  wire \z_reg[0][7]_i_119_n_1 ;
  wire \z_reg[0][7]_i_119_n_2 ;
  wire \z_reg[0][7]_i_119_n_3 ;
  wire \z_reg[0][7]_i_119_n_4 ;
  wire \z_reg[0][7]_i_119_n_5 ;
  wire \z_reg[0][7]_i_119_n_6 ;
  wire \z_reg[0][7]_i_119_n_7 ;
  wire \z_reg[0][7]_i_11_n_1 ;
  wire \z_reg[0][7]_i_11_n_2 ;
  wire \z_reg[0][7]_i_11_n_3 ;
  wire \z_reg[0][7]_i_12_n_1 ;
  wire \z_reg[0][7]_i_12_n_2 ;
  wire \z_reg[0][7]_i_12_n_3 ;
  wire \z_reg[0][7]_i_132_n_0 ;
  wire \z_reg[0][7]_i_132_n_1 ;
  wire \z_reg[0][7]_i_132_n_2 ;
  wire \z_reg[0][7]_i_132_n_3 ;
  wire \z_reg[0][7]_i_132_n_4 ;
  wire \z_reg[0][7]_i_132_n_5 ;
  wire \z_reg[0][7]_i_132_n_6 ;
  wire \z_reg[0][7]_i_132_n_7 ;
  wire \z_reg[0][7]_i_133_n_0 ;
  wire \z_reg[0][7]_i_133_n_1 ;
  wire \z_reg[0][7]_i_133_n_2 ;
  wire \z_reg[0][7]_i_133_n_3 ;
  wire \z_reg[0][7]_i_133_n_4 ;
  wire \z_reg[0][7]_i_133_n_5 ;
  wire \z_reg[0][7]_i_133_n_6 ;
  wire \z_reg[0][7]_i_133_n_7 ;
  wire \z_reg[0][7]_i_138_n_0 ;
  wire \z_reg[0][7]_i_138_n_1 ;
  wire \z_reg[0][7]_i_138_n_2 ;
  wire \z_reg[0][7]_i_138_n_3 ;
  wire \z_reg[0][7]_i_138_n_4 ;
  wire \z_reg[0][7]_i_138_n_5 ;
  wire \z_reg[0][7]_i_138_n_6 ;
  wire \z_reg[0][7]_i_138_n_7 ;
  wire \z_reg[0][7]_i_13_n_0 ;
  wire \z_reg[0][7]_i_13_n_1 ;
  wire \z_reg[0][7]_i_13_n_2 ;
  wire \z_reg[0][7]_i_13_n_3 ;
  wire \z_reg[0][7]_i_151_n_0 ;
  wire \z_reg[0][7]_i_151_n_1 ;
  wire \z_reg[0][7]_i_151_n_2 ;
  wire \z_reg[0][7]_i_151_n_3 ;
  wire \z_reg[0][7]_i_160_n_0 ;
  wire \z_reg[0][7]_i_160_n_1 ;
  wire \z_reg[0][7]_i_160_n_2 ;
  wire \z_reg[0][7]_i_160_n_3 ;
  wire \z_reg[0][7]_i_160_n_4 ;
  wire \z_reg[0][7]_i_160_n_5 ;
  wire \z_reg[0][7]_i_160_n_6 ;
  wire \z_reg[0][7]_i_160_n_7 ;
  wire \z_reg[0][7]_i_164_n_0 ;
  wire \z_reg[0][7]_i_164_n_1 ;
  wire \z_reg[0][7]_i_164_n_2 ;
  wire \z_reg[0][7]_i_164_n_3 ;
  wire \z_reg[0][7]_i_172_n_0 ;
  wire \z_reg[0][7]_i_172_n_1 ;
  wire \z_reg[0][7]_i_172_n_2 ;
  wire \z_reg[0][7]_i_172_n_3 ;
  wire \z_reg[0][7]_i_172_n_4 ;
  wire \z_reg[0][7]_i_172_n_5 ;
  wire \z_reg[0][7]_i_172_n_6 ;
  wire \z_reg[0][7]_i_172_n_7 ;
  wire \z_reg[0][7]_i_177_n_0 ;
  wire \z_reg[0][7]_i_177_n_1 ;
  wire \z_reg[0][7]_i_177_n_2 ;
  wire \z_reg[0][7]_i_177_n_3 ;
  wire \z_reg[0][7]_i_178_n_0 ;
  wire \z_reg[0][7]_i_178_n_1 ;
  wire \z_reg[0][7]_i_178_n_2 ;
  wire \z_reg[0][7]_i_178_n_3 ;
  wire \z_reg[0][7]_i_178_n_4 ;
  wire \z_reg[0][7]_i_178_n_5 ;
  wire \z_reg[0][7]_i_178_n_6 ;
  wire \z_reg[0][7]_i_178_n_7 ;
  wire \z_reg[0][7]_i_195_n_0 ;
  wire \z_reg[0][7]_i_195_n_1 ;
  wire \z_reg[0][7]_i_195_n_2 ;
  wire \z_reg[0][7]_i_195_n_3 ;
  wire \z_reg[0][7]_i_196_n_0 ;
  wire \z_reg[0][7]_i_196_n_1 ;
  wire \z_reg[0][7]_i_196_n_2 ;
  wire \z_reg[0][7]_i_196_n_3 ;
  wire \z_reg[0][7]_i_196_n_4 ;
  wire \z_reg[0][7]_i_196_n_5 ;
  wire \z_reg[0][7]_i_196_n_6 ;
  wire \z_reg[0][7]_i_196_n_7 ;
  wire \z_reg[0][7]_i_1_n_0 ;
  wire \z_reg[0][7]_i_1_n_1 ;
  wire \z_reg[0][7]_i_1_n_2 ;
  wire \z_reg[0][7]_i_1_n_3 ;
  wire \z_reg[0][7]_i_22_n_0 ;
  wire \z_reg[0][7]_i_22_n_1 ;
  wire \z_reg[0][7]_i_22_n_2 ;
  wire \z_reg[0][7]_i_22_n_3 ;
  wire \z_reg[0][7]_i_27_n_0 ;
  wire \z_reg[0][7]_i_27_n_1 ;
  wire \z_reg[0][7]_i_27_n_2 ;
  wire \z_reg[0][7]_i_27_n_3 ;
  wire \z_reg[0][7]_i_2_n_0 ;
  wire \z_reg[0][7]_i_2_n_1 ;
  wire \z_reg[0][7]_i_2_n_2 ;
  wire \z_reg[0][7]_i_2_n_3 ;
  wire \z_reg[0][7]_i_36_n_2 ;
  wire \z_reg[0][7]_i_36_n_3 ;
  wire \z_reg[0][7]_i_36_n_5 ;
  wire \z_reg[0][7]_i_36_n_6 ;
  wire \z_reg[0][7]_i_36_n_7 ;
  wire \z_reg[0][7]_i_37_n_2 ;
  wire \z_reg[0][7]_i_37_n_3 ;
  wire \z_reg[0][7]_i_37_n_5 ;
  wire \z_reg[0][7]_i_37_n_6 ;
  wire \z_reg[0][7]_i_37_n_7 ;
  wire \z_reg[0][7]_i_41_n_0 ;
  wire \z_reg[0][7]_i_41_n_1 ;
  wire \z_reg[0][7]_i_41_n_2 ;
  wire \z_reg[0][7]_i_41_n_3 ;
  wire \z_reg[0][7]_i_41_n_4 ;
  wire \z_reg[0][7]_i_41_n_5 ;
  wire \z_reg[0][7]_i_41_n_6 ;
  wire \z_reg[0][7]_i_41_n_7 ;
  wire \z_reg[0][7]_i_53_n_0 ;
  wire \z_reg[0][7]_i_53_n_1 ;
  wire \z_reg[0][7]_i_53_n_2 ;
  wire \z_reg[0][7]_i_53_n_3 ;
  wire \z_reg[0][7]_i_53_n_4 ;
  wire \z_reg[0][7]_i_53_n_5 ;
  wire \z_reg[0][7]_i_53_n_6 ;
  wire \z_reg[0][7]_i_53_n_7 ;
  wire \z_reg[0][7]_i_54_n_0 ;
  wire \z_reg[0][7]_i_54_n_1 ;
  wire \z_reg[0][7]_i_54_n_2 ;
  wire \z_reg[0][7]_i_54_n_3 ;
  wire \z_reg[0][7]_i_59_n_0 ;
  wire \z_reg[0][7]_i_59_n_1 ;
  wire \z_reg[0][7]_i_59_n_2 ;
  wire \z_reg[0][7]_i_59_n_3 ;
  wire \z_reg[0][7]_i_72_n_0 ;
  wire \z_reg[0][7]_i_72_n_1 ;
  wire \z_reg[0][7]_i_72_n_2 ;
  wire \z_reg[0][7]_i_72_n_3 ;
  wire \z_reg[0][7]_i_72_n_4 ;
  wire \z_reg[0][7]_i_72_n_5 ;
  wire \z_reg[0][7]_i_72_n_6 ;
  wire \z_reg[0][7]_i_72_n_7 ;
  wire \z_reg[0][7]_i_85_n_0 ;
  wire \z_reg[0][7]_i_85_n_1 ;
  wire \z_reg[0][7]_i_85_n_2 ;
  wire \z_reg[0][7]_i_85_n_3 ;
  wire \z_reg[0][7]_i_85_n_4 ;
  wire \z_reg[0][7]_i_85_n_5 ;
  wire \z_reg[0][7]_i_85_n_6 ;
  wire \z_reg[0][7]_i_85_n_7 ;
  wire \z_reg[0][7]_i_89_n_0 ;
  wire \z_reg[0][7]_i_89_n_1 ;
  wire \z_reg[0][7]_i_89_n_2 ;
  wire \z_reg[0][7]_i_89_n_3 ;
  wire \z_reg[0][7]_i_89_n_4 ;
  wire \z_reg[0][7]_i_89_n_5 ;
  wire \z_reg[0][7]_i_89_n_6 ;
  wire \z_reg[0][7]_i_89_n_7 ;
  wire \z_reg[0][7]_i_97_n_0 ;
  wire \z_reg[0][7]_i_97_n_1 ;
  wire \z_reg[0][7]_i_97_n_2 ;
  wire \z_reg[0][7]_i_97_n_3 ;
  wire \z_reg[0][7]_i_97_n_4 ;
  wire \z_reg[0][7]_i_97_n_5 ;
  wire \z_reg[0][7]_i_97_n_6 ;
  wire \z_reg[0][7]_i_97_n_7 ;
  wire [15:0]\z_reg[1] ;
  wire \z_reg[1][12]_i_1_n_0 ;
  wire \z_reg[1][12]_i_1_n_1 ;
  wire \z_reg[1][12]_i_1_n_2 ;
  wire \z_reg[1][12]_i_1_n_3 ;
  wire \z_reg[1][15]_i_1_n_2 ;
  wire \z_reg[1][15]_i_1_n_3 ;
  wire \z_reg[1][4]_i_1_n_0 ;
  wire \z_reg[1][4]_i_1_n_1 ;
  wire \z_reg[1][4]_i_1_n_2 ;
  wire \z_reg[1][4]_i_1_n_3 ;
  wire \z_reg[1][8]_i_1_n_0 ;
  wire \z_reg[1][8]_i_1_n_1 ;
  wire \z_reg[1][8]_i_1_n_2 ;
  wire \z_reg[1][8]_i_1_n_3 ;
  wire [15:0]\z_reg[2] ;
  wire \z_reg[2][11]_i_1_n_0 ;
  wire \z_reg[2][11]_i_1_n_1 ;
  wire \z_reg[2][11]_i_1_n_2 ;
  wire \z_reg[2][11]_i_1_n_3 ;
  wire \z_reg[2][15]_i_1_n_1 ;
  wire \z_reg[2][15]_i_1_n_2 ;
  wire \z_reg[2][15]_i_1_n_3 ;
  wire \z_reg[2][3]_i_1_n_0 ;
  wire \z_reg[2][3]_i_1_n_1 ;
  wire \z_reg[2][3]_i_1_n_2 ;
  wire \z_reg[2][3]_i_1_n_3 ;
  wire \z_reg[2][7]_i_1_n_0 ;
  wire \z_reg[2][7]_i_1_n_1 ;
  wire \z_reg[2][7]_i_1_n_2 ;
  wire \z_reg[2][7]_i_1_n_3 ;
  wire [15:0]\z_reg[3] ;
  wire \z_reg[3][10]_i_1_n_0 ;
  wire \z_reg[3][10]_i_1_n_1 ;
  wire \z_reg[3][10]_i_1_n_2 ;
  wire \z_reg[3][10]_i_1_n_3 ;
  wire \z_reg[3][14]_i_1_n_0 ;
  wire \z_reg[3][14]_i_1_n_1 ;
  wire \z_reg[3][14]_i_1_n_2 ;
  wire \z_reg[3][14]_i_1_n_3 ;
  wire \z_reg[3][6]_i_1_n_0 ;
  wire \z_reg[3][6]_i_1_n_1 ;
  wire \z_reg[3][6]_i_1_n_2 ;
  wire \z_reg[3][6]_i_1_n_3 ;
  wire [15:0]\z_reg[4] ;
  wire \z_reg[4][10]_i_1_n_0 ;
  wire \z_reg[4][10]_i_1_n_1 ;
  wire \z_reg[4][10]_i_1_n_2 ;
  wire \z_reg[4][10]_i_1_n_3 ;
  wire \z_reg[4][14]_i_1_n_0 ;
  wire \z_reg[4][14]_i_1_n_1 ;
  wire \z_reg[4][14]_i_1_n_2 ;
  wire \z_reg[4][14]_i_1_n_3 ;
  wire \z_reg[4][6]_i_1_n_0 ;
  wire \z_reg[4][6]_i_1_n_1 ;
  wire \z_reg[4][6]_i_1_n_2 ;
  wire \z_reg[4][6]_i_1_n_3 ;
  wire [15:3]\z_reg[5] ;
  wire \z_reg[5][11]_i_1_n_0 ;
  wire \z_reg[5][11]_i_1_n_1 ;
  wire \z_reg[5][11]_i_1_n_2 ;
  wire \z_reg[5][11]_i_1_n_3 ;
  wire \z_reg[5][15]_i_1_n_1 ;
  wire \z_reg[5][15]_i_1_n_2 ;
  wire \z_reg[5][15]_i_1_n_3 ;
  wire \z_reg[5][5]_i_1_n_0 ;
  wire \z_reg[5][5]_i_1_n_1 ;
  wire \z_reg[5][5]_i_1_n_2 ;
  wire \z_reg[5][5]_i_1_n_3 ;
  wire [15:8]\z_reg[6] ;
  wire [3:3]\NLW_x_reg[0][31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[1][31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[3][31]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_x_reg[3][31]_i_23_CO_UNCONNECTED ;
  wire [3:2]\NLW_x_reg[3][31]_i_23_O_UNCONNECTED ;
  wire [3:2]\NLW_x_reg[3][31]_i_24_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[3][31]_i_24_O_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[5][31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[5][31]_i_2_CO_UNCONNECTED ;
  wire [2:2]\NLW_x_reg[5][31]_i_26_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[5][31]_i_26_O_UNCONNECTED ;
  wire [3:2]\NLW_x_reg[5][31]_i_33_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_reg[5][31]_i_33_O_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[1][31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[3][31]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_y_reg[3][31]_i_16_CO_UNCONNECTED ;
  wire [3:2]\NLW_y_reg[3][31]_i_16_O_UNCONNECTED ;
  wire [3:2]\NLW_y_reg[3][31]_i_17_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[3][31]_i_17_O_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[5][31]_i_2_CO_UNCONNECTED ;
  wire [2:2]\NLW_y_reg[5][31]_i_26_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[5][31]_i_26_O_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[5][31]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_y_reg[5][31]_i_33_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[5][31]_i_33_O_UNCONNECTED ;
  wire [3:2]\NLW_y_reg[6][31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[6][31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_y_reg[6][31]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_y_reg[6][31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_y_reg[6][31]_i_36_O_UNCONNECTED ;
  wire [3:2]\NLW_y_reg[6][31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg[6][31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_y_reg[6][31]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_z_reg[0][15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_z_reg[0][7]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_z_reg[0][7]_i_11_O_UNCONNECTED ;
  wire [3:3]\NLW_z_reg[0][7]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_z_reg[0][7]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_z_reg[0][7]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_z_reg[0][7]_i_27_O_UNCONNECTED ;
  wire [3:2]\NLW_z_reg[0][7]_i_36_CO_UNCONNECTED ;
  wire [3:3]\NLW_z_reg[0][7]_i_36_O_UNCONNECTED ;
  wire [3:2]\NLW_z_reg[0][7]_i_37_CO_UNCONNECTED ;
  wire [3:3]\NLW_z_reg[0][7]_i_37_O_UNCONNECTED ;
  wire [3:0]\NLW_z_reg[0][7]_i_59_O_UNCONNECTED ;
  wire [3:2]\NLW_z_reg[1][15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_z_reg[1][15]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_z_reg[2][15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_z_reg[3][15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_z_reg[3][15]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_z_reg[4][15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_z_reg[4][15]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_z_reg[4][6]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_z_reg[5][15]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_z_reg[5][5]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_z_reg[5][6]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_z_reg[5][6]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_R2P_time_synth.sdf",,,,"tool_control");
end
  OBUF \angle_OBUF[0]_inst 
       (.I(angle_OBUF[0]),
        .O(angle[0]));
  OBUF \angle_OBUF[1]_inst 
       (.I(angle_OBUF[1]),
        .O(angle[1]));
  OBUF \angle_OBUF[2]_inst 
       (.I(angle_OBUF[2]),
        .O(angle[2]));
  OBUF \angle_OBUF[3]_inst 
       (.I(angle_OBUF[3]),
        .O(angle[3]));
  OBUF \angle_OBUF[4]_inst 
       (.I(angle_OBUF[4]),
        .O(angle[4]));
  OBUF \angle_OBUF[5]_inst 
       (.I(angle_OBUF[5]),
        .O(angle[5]));
  OBUF \angle_OBUF[6]_inst 
       (.I(angle_OBUF[6]),
        .O(angle[6]));
  OBUF \angle_OBUF[7]_inst 
       (.I(angle_OBUF[7]),
        .O(angle[7]));
  OBUF \angle_OBUF[8]_inst 
       (.I(angle_OBUF[8]),
        .O(angle[8]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [7]),
        .Q(angle_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [8]),
        .Q(angle_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [9]),
        .Q(angle_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [10]),
        .Q(angle_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [11]),
        .Q(angle_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [12]),
        .Q(angle_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [13]),
        .Q(angle_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [14]),
        .Q(angle_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[0] [15]),
        .Q(angle_OBUF[8]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h1)) 
    flag_i_1
       (.I0(flag_reg_n_0),
        .I1(in_valid_IBUF),
        .O(flag));
  LUT1 #(
    .INIT(2'h1)) 
    flag_i_2
       (.I0(rst_n_IBUF),
        .O(flag_i_2_n_0));
  (* ORIG_CELL_NAME = "flag_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(flag),
        .Q(flag_reg_n_0));
  (* ORIG_CELL_NAME = "flag_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    flag_reg_rep
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(flag_rep_i_1_n_0),
        .Q(flag_reg_rep_n_0));
  (* ORIG_CELL_NAME = "flag_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    flag_reg_rep__0
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(flag_rep__0_i_1_n_0),
        .Q(flag_reg_rep__0_n_0));
  (* ORIG_CELL_NAME = "flag_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    flag_reg_rep__1
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(flag_rep__1_i_1_n_0),
        .Q(flag_reg_rep__1_n_0));
  (* ORIG_CELL_NAME = "flag_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    flag_reg_rep__2
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(flag_rep__2_i_1_n_0),
        .Q(flag_reg_rep__2_n_0));
  (* ORIG_CELL_NAME = "flag_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    flag_reg_rep__3
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(flag_rep__3_i_1_n_0),
        .Q(flag_reg_rep__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    flag_rep__0_i_1
       (.I0(flag_reg_n_0),
        .I1(in_valid_IBUF),
        .O(flag_rep__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    flag_rep__1_i_1
       (.I0(flag_reg_n_0),
        .I1(in_valid_IBUF),
        .O(flag_rep__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    flag_rep__2_i_1
       (.I0(flag_reg_n_0),
        .I1(in_valid_IBUF),
        .O(flag_rep__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    flag_rep__3_i_1
       (.I0(flag_reg_n_0),
        .I1(in_valid_IBUF),
        .O(flag_rep__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    flag_rep_i_1
       (.I0(flag_reg_n_0),
        .I1(in_valid_IBUF),
        .O(flag_rep_i_1_n_0));
  IBUF in_valid_IBUF_inst
       (.I(in_valid),
        .O(in_valid_IBUF));
  OBUF out_valid_OBUF_inst
       (.I(out_valid_OBUF),
        .O(out_valid));
  FDCE #(
    .INIT(1'b0)) 
    out_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(\out_valid_temp_reg[0]__0 ),
        .Q(out_valid_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \out_valid_temp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(\out_valid_temp_reg[1]__0 ),
        .Q(\out_valid_temp_reg[0]__0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_valid_temp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(\out_valid_temp_reg[2]__0 ),
        .Q(\out_valid_temp_reg[1]__0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_valid_temp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(\out_valid_temp_reg[3]__0 ),
        .Q(\out_valid_temp_reg[2]__0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_valid_temp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(\out_valid_temp_reg[4]__0 ),
        .Q(\out_valid_temp_reg[3]__0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_valid_temp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(\out_valid_temp_reg[5]__0 ),
        .Q(\out_valid_temp_reg[4]__0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_valid_temp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(\out_valid_temp_reg[6]__0 ),
        .Q(\out_valid_temp_reg[5]__0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_valid_temp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(flag_i_2_n_0),
        .D(in_valid_IBUF),
        .Q(\out_valid_temp_reg[6]__0 ));
  OBUF \radius_OBUF[0]_inst 
       (.I(radius_OBUF[0]),
        .O(radius[0]));
  OBUF \radius_OBUF[10]_inst 
       (.I(radius_OBUF[10]),
        .O(radius[10]));
  OBUF \radius_OBUF[11]_inst 
       (.I(radius_OBUF[11]),
        .O(radius[11]));
  OBUF \radius_OBUF[12]_inst 
       (.I(radius_OBUF[12]),
        .O(radius[12]));
  OBUF \radius_OBUF[13]_inst 
       (.I(radius_OBUF[13]),
        .O(radius[13]));
  OBUF \radius_OBUF[14]_inst 
       (.I(radius_OBUF[14]),
        .O(radius[14]));
  OBUF \radius_OBUF[15]_inst 
       (.I(radius_OBUF[15]),
        .O(radius[15]));
  OBUF \radius_OBUF[16]_inst 
       (.I(radius_OBUF[16]),
        .O(radius[16]));
  OBUF \radius_OBUF[17]_inst 
       (.I(radius_OBUF[17]),
        .O(radius[17]));
  OBUF \radius_OBUF[18]_inst 
       (.I(radius_OBUF[18]),
        .O(radius[18]));
  OBUF \radius_OBUF[19]_inst 
       (.I(radius_OBUF[19]),
        .O(radius[19]));
  OBUF \radius_OBUF[1]_inst 
       (.I(radius_OBUF[1]),
        .O(radius[1]));
  OBUF \radius_OBUF[20]_inst 
       (.I(radius_OBUF[20]),
        .O(radius[20]));
  OBUF \radius_OBUF[21]_inst 
       (.I(radius_OBUF[21]),
        .O(radius[21]));
  OBUF \radius_OBUF[22]_inst 
       (.I(radius_OBUF[22]),
        .O(radius[22]));
  OBUF \radius_OBUF[23]_inst 
       (.I(radius_OBUF[23]),
        .O(radius[23]));
  OBUF \radius_OBUF[24]_inst 
       (.I(radius_OBUF[24]),
        .O(radius[24]));
  OBUF \radius_OBUF[25]_inst 
       (.I(radius_OBUF[25]),
        .O(radius[25]));
  OBUF \radius_OBUF[26]_inst 
       (.I(radius_OBUF[26]),
        .O(radius[26]));
  OBUF \radius_OBUF[27]_inst 
       (.I(radius_OBUF[27]),
        .O(radius[27]));
  OBUF \radius_OBUF[28]_inst 
       (.I(radius_OBUF[28]),
        .O(radius[28]));
  OBUF \radius_OBUF[29]_inst 
       (.I(radius_OBUF[29]),
        .O(radius[29]));
  OBUF \radius_OBUF[2]_inst 
       (.I(radius_OBUF[2]),
        .O(radius[2]));
  OBUF \radius_OBUF[30]_inst 
       (.I(radius_OBUF[30]),
        .O(radius[30]));
  OBUF \radius_OBUF[31]_inst 
       (.I(radius_OBUF[31]),
        .O(radius[31]));
  OBUF \radius_OBUF[3]_inst 
       (.I(radius_OBUF[3]),
        .O(radius[3]));
  OBUF \radius_OBUF[4]_inst 
       (.I(radius_OBUF[4]),
        .O(radius[4]));
  OBUF \radius_OBUF[5]_inst 
       (.I(radius_OBUF[5]),
        .O(radius[5]));
  OBUF \radius_OBUF[6]_inst 
       (.I(radius_OBUF[6]),
        .O(radius[6]));
  OBUF \radius_OBUF[7]_inst 
       (.I(radius_OBUF[7]),
        .O(radius[7]));
  OBUF \radius_OBUF[8]_inst 
       (.I(radius_OBUF[8]),
        .O(radius[8]));
  OBUF \radius_OBUF[9]_inst 
       (.I(radius_OBUF[9]),
        .O(radius[9]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [0]),
        .Q(radius_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [10]),
        .Q(radius_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [11]),
        .Q(radius_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [12]),
        .Q(radius_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [13]),
        .Q(radius_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [14]),
        .Q(radius_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [15]),
        .Q(radius_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [16]),
        .Q(radius_OBUF[16]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [17]),
        .Q(radius_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [18]),
        .Q(radius_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [19]),
        .Q(radius_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [1]),
        .Q(radius_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [20]),
        .Q(radius_OBUF[20]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [21]),
        .Q(radius_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [22]),
        .Q(radius_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [23]),
        .Q(radius_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [24]),
        .Q(radius_OBUF[24]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [25]),
        .Q(radius_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [26]),
        .Q(radius_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [27]),
        .Q(radius_OBUF[27]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [28]),
        .Q(radius_OBUF[28]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [29]),
        .Q(radius_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [2]),
        .Q(radius_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [30]),
        .Q(radius_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [31]),
        .Q(radius_OBUF[31]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [3]),
        .Q(radius_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [4]),
        .Q(radius_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [5]),
        .Q(radius_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [6]),
        .Q(radius_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [7]),
        .Q(radius_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [8]),
        .Q(radius_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \radius_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_valid_temp_reg[0]__0 ),
        .CLR(flag_i_2_n_0),
        .D(\x_reg[0] [9]),
        .Q(radius_OBUF[9]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][11]_i_2 
       (.I0(\x_reg_n_0_[1][11] ),
        .I1(\y_reg[1] [17]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][11]_i_3 
       (.I0(\x_reg_n_0_[1][10] ),
        .I1(\y_reg[1] [16]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][11]_i_4 
       (.I0(\x_reg_n_0_[1][9] ),
        .I1(\y_reg[1] [15]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][11]_i_5 
       (.I0(\x_reg_n_0_[1][8] ),
        .I1(\y_reg[1] [14]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][15]_i_2 
       (.I0(\x_reg_n_0_[1][15] ),
        .I1(\y_reg[1] [21]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][15]_i_3 
       (.I0(\x_reg_n_0_[1][14] ),
        .I1(\y_reg[1] [20]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][15]_i_4 
       (.I0(\x_reg_n_0_[1][13] ),
        .I1(\y_reg[1] [19]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][15]_i_5 
       (.I0(\x_reg_n_0_[1][12] ),
        .I1(\y_reg[1] [18]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][19]_i_2 
       (.I0(\x_reg_n_0_[1][19] ),
        .I1(\y_reg[1] [25]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][19]_i_3 
       (.I0(\x_reg_n_0_[1][18] ),
        .I1(\y_reg[1] [24]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][19]_i_4 
       (.I0(\x_reg_n_0_[1][17] ),
        .I1(\y_reg[1] [23]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][19]_i_5 
       (.I0(\x_reg_n_0_[1][16] ),
        .I1(\y_reg[1] [22]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][23]_i_2 
       (.I0(\x_reg_n_0_[1][23] ),
        .I1(\y_reg[1] [29]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][23]_i_3 
       (.I0(\x_reg_n_0_[1][22] ),
        .I1(\y_reg[1] [28]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][23]_i_4 
       (.I0(\x_reg_n_0_[1][21] ),
        .I1(\y_reg[1] [27]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][23]_i_5 
       (.I0(\x_reg_n_0_[1][20] ),
        .I1(\y_reg[1] [26]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][27]_i_2 
       (.I0(\x_reg_n_0_[1][24] ),
        .I1(\y_reg[1] [30]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][3]_i_2 
       (.I0(\x_reg_n_0_[1][3] ),
        .I1(\y_reg[1] [9]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][3]_i_3 
       (.I0(\x_reg_n_0_[1][2] ),
        .I1(\y_reg[1] [8]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][3]_i_4 
       (.I0(\x_reg_n_0_[1][1] ),
        .I1(\y_reg[1] [7]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][3]_i_5 
       (.I0(\x_reg_n_0_[1][0] ),
        .I1(\y_reg[1] [6]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][7]_i_2 
       (.I0(\x_reg_n_0_[1][7] ),
        .I1(\y_reg[1] [13]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][7]_i_3 
       (.I0(\x_reg_n_0_[1][6] ),
        .I1(\y_reg[1] [12]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][7]_i_4 
       (.I0(\x_reg_n_0_[1][5] ),
        .I1(\y_reg[1] [11]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[0][7]_i_5 
       (.I0(\x_reg_n_0_[1][4] ),
        .I1(\y_reg[1] [10]),
        .I2(\y_reg[1][31]_rep__0_n_0 ),
        .O(\x[0][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][11]_i_10 
       (.I0(\x_reg_n_0_[1][10] ),
        .I1(\x_reg[3] [10]),
        .I2(\x[1][15]_i_21_n_0 ),
        .I3(\x_reg[3] [19]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\x_reg_n_0_[1][21] ),
        .O(\x[1][11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hABFB0BABA2F202A2)) 
    \x[1][11]_i_11 
       (.I0(\x[1][11]_i_18_n_0 ),
        .I1(\x_reg_n_0_[1][20] ),
        .I2(flag_reg_rep__0_n_0),
        .I3(\x_reg[3] [18]),
        .I4(\x_reg[3] [9]),
        .I5(\x_reg_n_0_[1][9] ),
        .O(\x[1][11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][11]_i_12 
       (.I0(\x_reg_n_0_[1][9] ),
        .I1(\x_reg[3] [9]),
        .I2(\x[1][11]_i_18_n_0 ),
        .I3(\x_reg[3] [18]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\x_reg_n_0_[1][20] ),
        .O(\x[1][11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAEBF8CAE2A3B082A)) 
    \x[1][11]_i_13 
       (.I0(\x[1][11]_i_19_n_0 ),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg[3] [17]),
        .I3(\x_reg_n_0_[1][19] ),
        .I4(\x_reg_n_0_[1][8] ),
        .I5(\x_reg[3] [8]),
        .O(\x[1][11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5A5AA5A53CC33CC3)) 
    \x[1][11]_i_14 
       (.I0(\x_reg[3] [8]),
        .I1(\x_reg_n_0_[1][8] ),
        .I2(\x[1][11]_i_19_n_0 ),
        .I3(\x_reg_n_0_[1][19] ),
        .I4(\x_reg[3] [17]),
        .I5(flag_reg_rep__0_n_0),
        .O(\x[1][11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAEBF8CAE2A3B082A)) 
    \x[1][11]_i_15 
       (.I0(\x[1][11]_i_20_n_0 ),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg[3] [16]),
        .I3(\x_reg_n_0_[1][18] ),
        .I4(\x_reg_n_0_[1][7] ),
        .I5(\x_reg[3] [7]),
        .O(\x[1][11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5A5AA5A53CC33CC3)) 
    \x[1][11]_i_16 
       (.I0(\x_reg[3] [7]),
        .I1(\x_reg_n_0_[1][7] ),
        .I2(\x[1][11]_i_20_n_0 ),
        .I3(\x_reg_n_0_[1][18] ),
        .I4(\x_reg[3] [16]),
        .I5(flag_reg_rep__0_n_0),
        .O(\x[1][11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAEBF8CAE2A3B082A)) 
    \x[1][11]_i_17 
       (.I0(\x[1][11]_i_21_n_0 ),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg[3] [15]),
        .I3(\x_reg_n_0_[1][17] ),
        .I4(\x_reg_n_0_[1][6] ),
        .I5(\x_reg[3] [6]),
        .O(\x[1][11]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][11]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [14]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [13]),
        .O(\x[1][11]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][11]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [13]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [12]),
        .O(\x[1][11]_i_19_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][11]_i_2 
       (.I0(\x[1][11]_i_10_n_0 ),
        .I1(\x[1][11]_i_11_n_0 ),
        .O(\x[1][11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][11]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [12]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [11]),
        .O(\x[1][11]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][11]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [11]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [10]),
        .O(\x[1][11]_i_21_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][11]_i_3 
       (.I0(\x[1][11]_i_12_n_0 ),
        .I1(\x[1][11]_i_13_n_0 ),
        .O(\x[1][11]_i_3_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][11]_i_4 
       (.I0(\x[1][11]_i_14_n_0 ),
        .I1(\x[1][11]_i_15_n_0 ),
        .O(\x[1][11]_i_4_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][11]_i_5 
       (.I0(\x[1][11]_i_16_n_0 ),
        .I1(\x[1][11]_i_17_n_0 ),
        .O(\x[1][11]_i_5_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][11]_i_6 
       (.I0(\x[1][15]_i_16_n_0 ),
        .I1(\x[1][15]_i_17_n_0 ),
        .I2(\x[1][11]_i_2_n_0 ),
        .O(\x[1][11]_i_6_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][11]_i_7 
       (.I0(\x[1][11]_i_10_n_0 ),
        .I1(\x[1][11]_i_11_n_0 ),
        .I2(\x[1][11]_i_3_n_0 ),
        .O(\x[1][11]_i_7_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][11]_i_8 
       (.I0(\x[1][11]_i_12_n_0 ),
        .I1(\x[1][11]_i_13_n_0 ),
        .I2(\x[1][11]_i_4_n_0 ),
        .O(\x[1][11]_i_8_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][11]_i_9 
       (.I0(\x[1][11]_i_14_n_0 ),
        .I1(\x[1][11]_i_15_n_0 ),
        .I2(\x[1][11]_i_5_n_0 ),
        .O(\x[1][11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][15]_i_10 
       (.I0(\x_reg_n_0_[1][14] ),
        .I1(\x_reg[3] [14]),
        .I2(\x[1][19]_i_21_n_0 ),
        .I3(\x_reg[3] [23]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\x_reg_n_0_[1][25] ),
        .O(\x[1][15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][15]_i_11 
       (.I0(\x_reg[3] [13]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg_n_0_[1][13] ),
        .I3(\x_reg_n_0_[1][24] ),
        .I4(\x_reg[3] [22]),
        .I5(\x[1][15]_i_18_n_0 ),
        .O(\x[1][15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][15]_i_12 
       (.I0(\x_reg_n_0_[1][13] ),
        .I1(\x_reg[3] [13]),
        .I2(\x[1][15]_i_18_n_0 ),
        .I3(\x_reg[3] [22]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\x_reg_n_0_[1][24] ),
        .O(\x[1][15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][15]_i_13 
       (.I0(\x_reg[3] [12]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg_n_0_[1][12] ),
        .I3(\x_reg_n_0_[1][23] ),
        .I4(\x_reg[3] [21]),
        .I5(\x[1][15]_i_19_n_0 ),
        .O(\x[1][15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5F053F3F5F050303)) 
    \x[1][15]_i_14 
       (.I0(\x_reg[3] [11]),
        .I1(\x_reg_n_0_[1][11] ),
        .I2(\x[1][15]_i_20_n_0 ),
        .I3(\x_reg[3] [20]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\x_reg_n_0_[1][22] ),
        .O(\x[1][15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCCA533A5335ACC5A)) 
    \x[1][15]_i_15 
       (.I0(\x_reg_n_0_[1][12] ),
        .I1(\x_reg[3] [12]),
        .I2(\x_reg_n_0_[1][23] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [21]),
        .I5(\x[1][15]_i_19_n_0 ),
        .O(\x[1][15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h50335000F5FFF533)) 
    \x[1][15]_i_16 
       (.I0(\x_reg[3] [10]),
        .I1(\x_reg_n_0_[1][10] ),
        .I2(\x_reg[3] [19]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg_n_0_[1][21] ),
        .I5(\x[1][15]_i_21_n_0 ),
        .O(\x[1][15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCCA533A5335ACC5A)) 
    \x[1][15]_i_17 
       (.I0(\x_reg_n_0_[1][11] ),
        .I1(\x_reg[3] [11]),
        .I2(\x_reg_n_0_[1][22] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [20]),
        .I5(\x[1][15]_i_20_n_0 ),
        .O(\x[1][15]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][15]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [18]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [17]),
        .O(\x[1][15]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][15]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [17]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [16]),
        .O(\x[1][15]_i_19_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][15]_i_2 
       (.I0(\x[1][15]_i_10_n_0 ),
        .I1(\x[1][15]_i_11_n_0 ),
        .O(\x[1][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][15]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [16]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [15]),
        .O(\x[1][15]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][15]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [15]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [14]),
        .O(\x[1][15]_i_21_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][15]_i_3 
       (.I0(\x[1][15]_i_12_n_0 ),
        .I1(\x[1][15]_i_13_n_0 ),
        .O(\x[1][15]_i_3_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \x[1][15]_i_4 
       (.I0(\x[1][15]_i_14_n_0 ),
        .I1(\x[1][15]_i_15_n_0 ),
        .O(\x[1][15]_i_4_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \x[1][15]_i_5 
       (.I0(\x[1][15]_i_16_n_0 ),
        .I1(\x[1][15]_i_17_n_0 ),
        .O(\x[1][15]_i_5_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][15]_i_6 
       (.I0(\x[1][19]_i_16_n_0 ),
        .I1(\x[1][19]_i_17_n_0 ),
        .I2(\x[1][15]_i_2_n_0 ),
        .O(\x[1][15]_i_6_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][15]_i_7 
       (.I0(\x[1][15]_i_10_n_0 ),
        .I1(\x[1][15]_i_11_n_0 ),
        .I2(\x[1][15]_i_3_n_0 ),
        .O(\x[1][15]_i_7_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][15]_i_8 
       (.I0(\x[1][15]_i_12_n_0 ),
        .I1(\x[1][15]_i_13_n_0 ),
        .I2(\x[1][15]_i_4_n_0 ),
        .O(\x[1][15]_i_8_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][15]_i_9 
       (.I0(\x[1][15]_i_14_n_0 ),
        .I1(\x[1][15]_i_15_n_0 ),
        .I2(\x[1][15]_i_5_n_0 ),
        .O(\x[1][15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][19]_i_10 
       (.I0(\x_reg_n_0_[1][18] ),
        .I1(\x_reg[3] [18]),
        .I2(\x[1][23]_i_22_n_0 ),
        .I3(\x_reg[3] [27]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg_n_0_[1][29] ),
        .O(\x[1][19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][19]_i_11 
       (.I0(\x_reg[3] [17]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg_n_0_[1][17] ),
        .I3(\x_reg_n_0_[1][28] ),
        .I4(\x_reg[3] [26]),
        .I5(\x[1][19]_i_18_n_0 ),
        .O(\x[1][19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][19]_i_12 
       (.I0(\x_reg_n_0_[1][17] ),
        .I1(\x_reg[3] [17]),
        .I2(\x[1][19]_i_18_n_0 ),
        .I3(\x_reg[3] [26]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg_n_0_[1][28] ),
        .O(\x[1][19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][19]_i_13 
       (.I0(\x_reg[3] [16]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg_n_0_[1][16] ),
        .I3(\x_reg_n_0_[1][27] ),
        .I4(\x_reg[3] [25]),
        .I5(\x[1][19]_i_19_n_0 ),
        .O(\x[1][19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][19]_i_14 
       (.I0(\x_reg_n_0_[1][16] ),
        .I1(\x_reg[3] [16]),
        .I2(\x[1][19]_i_19_n_0 ),
        .I3(\x_reg[3] [25]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg_n_0_[1][27] ),
        .O(\x[1][19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][19]_i_15 
       (.I0(\x_reg[3] [15]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg_n_0_[1][15] ),
        .I3(\x_reg_n_0_[1][26] ),
        .I4(\x_reg[3] [24]),
        .I5(\x[1][19]_i_20_n_0 ),
        .O(\x[1][19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][19]_i_16 
       (.I0(\x_reg_n_0_[1][15] ),
        .I1(\x_reg[3] [15]),
        .I2(\x[1][19]_i_20_n_0 ),
        .I3(\x_reg[3] [24]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg_n_0_[1][26] ),
        .O(\x[1][19]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][19]_i_17 
       (.I0(\x_reg[3] [14]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg_n_0_[1][14] ),
        .I3(\x_reg_n_0_[1][25] ),
        .I4(\x_reg[3] [23]),
        .I5(\x[1][19]_i_21_n_0 ),
        .O(\x[1][19]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][19]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [22]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [21]),
        .O(\x[1][19]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][19]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [21]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [20]),
        .O(\x[1][19]_i_19_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][19]_i_2 
       (.I0(\x[1][19]_i_10_n_0 ),
        .I1(\x[1][19]_i_11_n_0 ),
        .O(\x[1][19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][19]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [20]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [19]),
        .O(\x[1][19]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][19]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [19]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [18]),
        .O(\x[1][19]_i_21_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][19]_i_3 
       (.I0(\x[1][19]_i_12_n_0 ),
        .I1(\x[1][19]_i_13_n_0 ),
        .O(\x[1][19]_i_3_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][19]_i_4 
       (.I0(\x[1][19]_i_14_n_0 ),
        .I1(\x[1][19]_i_15_n_0 ),
        .O(\x[1][19]_i_4_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][19]_i_5 
       (.I0(\x[1][19]_i_16_n_0 ),
        .I1(\x[1][19]_i_17_n_0 ),
        .O(\x[1][19]_i_5_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][19]_i_6 
       (.I0(\x[1][23]_i_14_n_0 ),
        .I1(\x[1][23]_i_15_n_0 ),
        .I2(\x[1][19]_i_2_n_0 ),
        .O(\x[1][19]_i_6_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][19]_i_7 
       (.I0(\x[1][19]_i_10_n_0 ),
        .I1(\x[1][19]_i_11_n_0 ),
        .I2(\x[1][19]_i_3_n_0 ),
        .O(\x[1][19]_i_7_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][19]_i_8 
       (.I0(\x[1][19]_i_12_n_0 ),
        .I1(\x[1][19]_i_13_n_0 ),
        .I2(\x[1][19]_i_4_n_0 ),
        .O(\x[1][19]_i_8_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][19]_i_9 
       (.I0(\x[1][19]_i_14_n_0 ),
        .I1(\x[1][19]_i_15_n_0 ),
        .I2(\x[1][19]_i_5_n_0 ),
        .O(\x[1][19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC3553C553CAA)) 
    \x[1][23]_i_10 
       (.I0(B0),
        .I1(\x_reg[3] [31]),
        .I2(\y_reg[3] [26]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\y_reg[1] [27]),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\x[1][23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFBB220A0ABB22)) 
    \x[1][23]_i_11 
       (.I0(\x[1][23]_i_19_n_0 ),
        .I1(B0),
        .I2(\x_reg[3] [30]),
        .I3(\x_reg_n_0_[1][21] ),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [21]),
        .O(\x[1][23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CC35A5AA5A5)) 
    \x[1][23]_i_12 
       (.I0(\x_reg_n_0_[1][20] ),
        .I1(\x_reg[3] [20]),
        .I2(\x[1][23]_i_20_n_0 ),
        .I3(\x_reg[3] [29]),
        .I4(B0),
        .I5(flag_reg_rep_n_0),
        .O(\x[1][23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][23]_i_13 
       (.I0(\x_reg[3] [19]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg_n_0_[1][19] ),
        .I3(\x_reg_n_0_[1][30] ),
        .I4(\x_reg[3] [28]),
        .I5(\x[1][23]_i_21_n_0 ),
        .O(\x[1][23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][23]_i_14 
       (.I0(\x_reg_n_0_[1][19] ),
        .I1(\x_reg[3] [19]),
        .I2(\x[1][23]_i_21_n_0 ),
        .I3(\x_reg[3] [28]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg_n_0_[1][30] ),
        .O(\x[1][23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][23]_i_15 
       (.I0(\x_reg[3] [18]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg_n_0_[1][18] ),
        .I3(\x_reg_n_0_[1][29] ),
        .I4(\x_reg[3] [27]),
        .I5(\x[1][23]_i_22_n_0 ),
        .O(\x[1][23]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][23]_i_16 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [27]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [26]),
        .O(\x[1][23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[1][23]_i_17 
       (.I0(\x_reg[3] [20]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg_n_0_[1][20] ),
        .I3(B0),
        .I4(\x_reg[3] [29]),
        .I5(\x[1][23]_i_20_n_0 ),
        .O(\x[1][23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A6699A5A56699)) 
    \x[1][23]_i_18 
       (.I0(\x[1][23]_i_19_n_0 ),
        .I1(B0),
        .I2(\x_reg[3] [30]),
        .I3(\x_reg_n_0_[1][21] ),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [21]),
        .O(\x[1][23]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][23]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [26]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [25]),
        .O(\x[1][23]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \x[1][23]_i_2 
       (.I0(\x_reg_n_0_[1][22] ),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg[3] [22]),
        .I3(\x[1][23]_i_10_n_0 ),
        .I4(\x[1][23]_i_11_n_0 ),
        .O(\x[1][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][23]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [25]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [24]),
        .O(\x[1][23]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][23]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [24]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [23]),
        .O(\x[1][23]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][23]_i_22 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [23]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [22]),
        .O(\x[1][23]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h56A6A959)) 
    \x[1][23]_i_3 
       (.I0(\x[1][23]_i_11_n_0 ),
        .I1(\x_reg_n_0_[1][22] ),
        .I2(flag_reg_rep__0_n_0),
        .I3(\x_reg[3] [22]),
        .I4(\x[1][23]_i_10_n_0 ),
        .O(\x[1][23]_i_3_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][23]_i_4 
       (.I0(\x[1][23]_i_12_n_0 ),
        .I1(\x[1][23]_i_13_n_0 ),
        .O(\x[1][23]_i_4_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][23]_i_5 
       (.I0(\x[1][23]_i_14_n_0 ),
        .I1(\x[1][23]_i_15_n_0 ),
        .O(\x[1][23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \x[1][23]_i_6 
       (.I0(\x[1][23]_i_2_n_0 ),
        .I1(\x[1][27]_i_17_n_0 ),
        .I2(B0),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [31]),
        .I5(\x[1][23]_i_16_n_0 ),
        .O(\x[1][23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \x[1][23]_i_7 
       (.I0(\x[1][23]_i_3_n_0 ),
        .I1(\x[1][23]_i_17_n_0 ),
        .I2(\x[1][23]_i_18_n_0 ),
        .O(\x[1][23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][23]_i_8 
       (.I0(\x[1][23]_i_4_n_0 ),
        .I1(\x[1][23]_i_17_n_0 ),
        .I2(\x[1][23]_i_18_n_0 ),
        .O(\x[1][23]_i_8_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][23]_i_9 
       (.I0(\x[1][23]_i_12_n_0 ),
        .I1(\x[1][23]_i_13_n_0 ),
        .I2(\x[1][23]_i_5_n_0 ),
        .O(\x[1][23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h3055300003000355)) 
    \x[1][27]_i_10 
       (.I0(\x_reg_n_0_[1][25] ),
        .I1(\x_reg[3] [25]),
        .I2(\y_reg[3] [29]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\y_reg[1] [30]),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\x[1][27]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[1][27]_i_11 
       (.I0(\y_reg[3] [31]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[1] [31]),
        .O(\x[1][27]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[1][27]_i_12 
       (.I0(\y_reg[3] [30]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[1] [31]),
        .O(\x[1][27]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \x[1][27]_i_13 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[1] [29]),
        .I4(\y_reg[3] [28]),
        .O(\x[1][27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC3553C553CAA)) 
    \x[1][27]_i_14 
       (.I0(\x_reg_n_0_[1][25] ),
        .I1(\x_reg[3] [25]),
        .I2(\y_reg[3] [29]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\y_reg[1] [30]),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\x[1][27]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h35C53ACA)) 
    \x[1][27]_i_15 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [27]),
        .I4(\y_reg[1] [28]),
        .O(\x[1][27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3AA553C3C55AA)) 
    \x[1][27]_i_16 
       (.I0(\x_reg_n_0_[1][24] ),
        .I1(\x_reg[3] [24]),
        .I2(\y_reg[3] [28]),
        .I3(\y_reg[1] [29]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\x[1][27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCC33A5A533CC5A5A)) 
    \x[1][27]_i_17 
       (.I0(\x_reg_n_0_[1][23] ),
        .I1(\x_reg[3] [23]),
        .I2(\y_reg[1] [28]),
        .I3(\y_reg[3] [27]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\x[1][27]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \x[1][27]_i_18 
       (.I0(\y_reg[3] [31]),
        .I1(flag_reg_rep_n_0),
        .I2(\y_reg[3] [30]),
        .O(\x[1][27]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \x[1][27]_i_19 
       (.I0(\x_reg_n_0_[1][27] ),
        .I1(\x_reg[3] [27]),
        .I2(flag_reg_rep_n_0),
        .O(\x[1][27]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h1441141414414141)) 
    \x[1][27]_i_2 
       (.I0(\x[1][27]_i_10_n_0 ),
        .I1(\x[1][27]_i_11_n_0 ),
        .I2(\x[1][27]_i_12_n_0 ),
        .I3(\x_reg[3] [26]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x_reg_n_0_[1][26] ),
        .O(\x[1][27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hC3AA3CAA)) 
    \x[1][27]_i_20 
       (.I0(\x_reg_n_0_[1][26] ),
        .I1(\x_reg[3] [26]),
        .I2(\y_reg[3] [30]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [31]),
        .O(\x[1][27]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][27]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [30]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [29]),
        .O(\x[1][27]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \x[1][27]_i_3 
       (.I0(\x[1][27]_i_13_n_0 ),
        .I1(\x_reg[3] [24]),
        .I2(flag_reg_rep_n_0),
        .I3(\x_reg_n_0_[1][24] ),
        .I4(\x[1][27]_i_14_n_0 ),
        .O(\x[1][27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \x[1][27]_i_4 
       (.I0(\x[1][27]_i_15_n_0 ),
        .I1(\x_reg[3] [23]),
        .I2(flag_reg_rep_n_0),
        .I3(\x_reg_n_0_[1][23] ),
        .I4(\x[1][27]_i_16_n_0 ),
        .O(\x[1][27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF56A6)) 
    \x[1][27]_i_5 
       (.I0(\x[1][27]_i_11_n_0 ),
        .I1(\y_reg[1] [27]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [26]),
        .I4(\x[1][31]_i_10_n_0 ),
        .I5(\x[1][27]_i_17_n_0 ),
        .O(\x[1][27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFD5D540402A2)) 
    \x[1][27]_i_6 
       (.I0(\x[1][27]_i_10_n_0 ),
        .I1(\x_reg_n_0_[1][26] ),
        .I2(flag_reg_rep_n_0),
        .I3(\x_reg[3] [26]),
        .I4(\x[1][27]_i_18_n_0 ),
        .I5(\x[1][27]_i_19_n_0 ),
        .O(\x[1][27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \x[1][27]_i_7 
       (.I0(\x[1][27]_i_3_n_0 ),
        .I1(\x[1][27]_i_20_n_0 ),
        .I2(\x_reg_n_0_[1][25] ),
        .I3(flag_reg_rep_n_0),
        .I4(\x_reg[3] [25]),
        .I5(\x[1][27]_i_21_n_0 ),
        .O(\x[1][27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \x[1][27]_i_8 
       (.I0(\x[1][27]_i_4_n_0 ),
        .I1(\x[1][27]_i_14_n_0 ),
        .I2(\x_reg_n_0_[1][24] ),
        .I3(flag_reg_rep_n_0),
        .I4(\x_reg[3] [24]),
        .I5(\x[1][27]_i_13_n_0 ),
        .O(\x[1][27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \x[1][27]_i_9 
       (.I0(\x[1][27]_i_5_n_0 ),
        .I1(\x[1][27]_i_16_n_0 ),
        .I2(\x_reg_n_0_[1][23] ),
        .I3(flag_reg_rep_n_0),
        .I4(\x_reg[3] [23]),
        .I5(\x[1][27]_i_15_n_0 ),
        .O(\x[1][27]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[1][31]_i_10 
       (.I0(\x_reg[3] [31]),
        .I1(flag_reg_rep__1_n_0),
        .I2(B0),
        .O(\x[1][31]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x[1][31]_i_11 
       (.I0(\x_reg[3] [29]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg_n_0_[1][29] ),
        .O(\x[1][31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \x[1][31]_i_12 
       (.I0(\x_reg_n_0_[1][28] ),
        .I1(\x_reg[3] [28]),
        .I2(flag_reg_rep_n_0),
        .O(\x[1][31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h000CAA0C)) 
    \x[1][31]_i_2 
       (.I0(\x_reg[3] [28]),
        .I1(\x_reg_n_0_[1][28] ),
        .I2(\x_reg_n_0_[1][29] ),
        .I3(flag_reg_rep_n_0),
        .I4(\x_reg[3] [29]),
        .O(\x[1][31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    \x[1][31]_i_3 
       (.I0(\x_reg[3] [27]),
        .I1(\x_reg_n_0_[1][27] ),
        .I2(flag_reg_rep_n_0),
        .I3(\x_reg[3] [28]),
        .I4(\x_reg_n_0_[1][28] ),
        .O(\x[1][31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0027)) 
    \x[1][31]_i_4 
       (.I0(flag_reg_rep_n_0),
        .I1(\x_reg[3] [27]),
        .I2(\x_reg_n_0_[1][27] ),
        .I3(\x[1][31]_i_9_n_0 ),
        .O(\x[1][31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA59A9A9A95)) 
    \x[1][31]_i_5 
       (.I0(\x[1][31]_i_10_n_0 ),
        .I1(\x_reg[3] [29]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\x_reg_n_0_[1][29] ),
        .I4(\x_reg_n_0_[1][30] ),
        .I5(\x_reg[3] [30]),
        .O(\x[1][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CC33A5A5)) 
    \x[1][31]_i_6 
       (.I0(\x_reg_n_0_[1][28] ),
        .I1(\x_reg[3] [28]),
        .I2(\x_reg_n_0_[1][30] ),
        .I3(\x_reg[3] [30]),
        .I4(flag_reg_rep_n_0),
        .I5(\x[1][31]_i_11_n_0 ),
        .O(\x[1][31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFA050303FA05)) 
    \x[1][31]_i_7 
       (.I0(\x_reg_n_0_[1][27] ),
        .I1(\x_reg[3] [27]),
        .I2(\x[1][31]_i_12_n_0 ),
        .I3(\x_reg_n_0_[1][29] ),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [29]),
        .O(\x[1][31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCF0665ACC5A66)) 
    \x[1][31]_i_8 
       (.I0(\x[1][31]_i_9_n_0 ),
        .I1(\x_reg_n_0_[1][28] ),
        .I2(\x_reg[3] [28]),
        .I3(flag_reg_rep_n_0),
        .I4(\x_reg_n_0_[1][27] ),
        .I5(\x_reg[3] [27]),
        .O(\x[1][31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h30550355)) 
    \x[1][31]_i_9 
       (.I0(\x_reg_n_0_[1][26] ),
        .I1(\x_reg[3] [26]),
        .I2(\y_reg[3] [30]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [31]),
        .O(\x[1][31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF1D3F11DD0C1D00)) 
    \x[1][3]_i_10 
       (.I0(\x_reg_n_0_[1][12] ),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg[3] [10]),
        .I3(\x[1][3]_i_14_n_0 ),
        .I4(\x_reg[3] [1]),
        .I5(\x_reg_n_0_[1][1] ),
        .O(\x[1][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C5AA5C3C35AA5)) 
    \x[1][3]_i_11 
       (.I0(\x_reg_n_0_[1][2] ),
        .I1(\x_reg[3] [2]),
        .I2(\x[1][7]_i_21_n_0 ),
        .I3(\x_reg_n_0_[1][13] ),
        .I4(flag_reg_rep__0_n_0),
        .I5(\x_reg[3] [11]),
        .O(\x[1][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \x[1][3]_i_12 
       (.I0(\x_reg_n_0_[1][1] ),
        .I1(\x_reg[3] [1]),
        .I2(\x[1][3]_i_14_n_0 ),
        .I3(\x_reg[3] [10]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\x_reg_n_0_[1][12] ),
        .O(\x[1][3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][3]_i_13 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [5]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [4]),
        .O(\x[1][3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][3]_i_14 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [6]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [5]),
        .O(\x[1][3]_i_14_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][3]_i_2 
       (.I0(\x[1][3]_i_10_n_0 ),
        .I1(\x[1][3]_i_11_n_0 ),
        .O(\x[1][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB830880000000000)) 
    \x[1][3]_i_3 
       (.I0(\x_reg[3] [0]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg_n_0_[1][0] ),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[1] [31]),
        .I5(\x[1][3]_i_12_n_0 ),
        .O(\x[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h656AA5AA6A6AAAAA)) 
    \x[1][3]_i_4 
       (.I0(\x[1][3]_i_12_n_0 ),
        .I1(\x_reg[3] [0]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\x_reg_n_0_[1][0] ),
        .I4(\y_reg[3] [31]),
        .I5(\y_reg[1] [31]),
        .O(\x[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC3553C553CAA)) 
    \x[1][3]_i_5 
       (.I0(\x_reg_n_0_[1][11] ),
        .I1(\x_reg[3] [9]),
        .I2(\y_reg[3] [4]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\y_reg[1] [5]),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\x[1][3]_i_5_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][3]_i_6 
       (.I0(\x[1][7]_i_16_n_0 ),
        .I1(\x[1][7]_i_17_n_0 ),
        .I2(\x[1][3]_i_2_n_0 ),
        .O(\x[1][3]_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][3]_i_7 
       (.I0(\x[1][3]_i_10_n_0 ),
        .I1(\x[1][3]_i_11_n_0 ),
        .I2(\x[1][3]_i_3_n_0 ),
        .O(\x[1][3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55559A95)) 
    \x[1][3]_i_8 
       (.I0(\x[1][3]_i_4_n_0 ),
        .I1(\x_reg[3] [9]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\x_reg_n_0_[1][11] ),
        .I4(\x[1][3]_i_13_n_0 ),
        .O(\x[1][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9A956A65959A656A)) 
    \x[1][3]_i_9 
       (.I0(\x[1][3]_i_5_n_0 ),
        .I1(\x_reg[3] [0]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\x_reg_n_0_[1][0] ),
        .I4(\y_reg[3] [31]),
        .I5(\y_reg[1] [31]),
        .O(\x[1][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5A5AA5A53CC33CC3)) 
    \x[1][7]_i_10 
       (.I0(\x_reg[3] [6]),
        .I1(\x_reg_n_0_[1][6] ),
        .I2(\x[1][11]_i_21_n_0 ),
        .I3(\x_reg_n_0_[1][17] ),
        .I4(\x_reg[3] [15]),
        .I5(flag_reg_rep__0_n_0),
        .O(\x[1][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAEBF8CAE2A3B082A)) 
    \x[1][7]_i_11 
       (.I0(\x[1][7]_i_18_n_0 ),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg[3] [14]),
        .I3(\x_reg_n_0_[1][16] ),
        .I4(\x_reg_n_0_[1][5] ),
        .I5(\x_reg[3] [5]),
        .O(\x[1][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA5C35AC3A53C5A3C)) 
    \x[1][7]_i_12 
       (.I0(\x_reg[3] [5]),
        .I1(\x_reg_n_0_[1][5] ),
        .I2(\x[1][7]_i_18_n_0 ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [14]),
        .I5(\x_reg_n_0_[1][16] ),
        .O(\x[1][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00E2C0EE22F3E2FF)) 
    \x[1][7]_i_13 
       (.I0(\x_reg_n_0_[1][15] ),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg[3] [13]),
        .I3(\x[1][7]_i_19_n_0 ),
        .I4(\x_reg[3] [4]),
        .I5(\x_reg_n_0_[1][4] ),
        .O(\x[1][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00D888FA50DDD8FF)) 
    \x[1][7]_i_14 
       (.I0(flag_reg_rep__0_n_0),
        .I1(\x_reg[3] [12]),
        .I2(\x_reg_n_0_[1][14] ),
        .I3(\x[1][7]_i_20_n_0 ),
        .I4(\x_reg[3] [3]),
        .I5(\x_reg_n_0_[1][3] ),
        .O(\x[1][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hC33CA5A5C33C5A5A)) 
    \x[1][7]_i_15 
       (.I0(\x_reg_n_0_[1][4] ),
        .I1(\x_reg[3] [4]),
        .I2(\x[1][7]_i_19_n_0 ),
        .I3(\x_reg[3] [13]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\x_reg_n_0_[1][15] ),
        .O(\x[1][7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF1D3F11DD0C1D00)) 
    \x[1][7]_i_16 
       (.I0(\x_reg_n_0_[1][13] ),
        .I1(flag_reg_rep__0_n_0),
        .I2(\x_reg[3] [11]),
        .I3(\x[1][7]_i_21_n_0 ),
        .I4(\x_reg[3] [2]),
        .I5(\x_reg_n_0_[1][2] ),
        .O(\x[1][7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h35C53ACACA3AC535)) 
    \x[1][7]_i_17 
       (.I0(\x_reg_n_0_[1][3] ),
        .I1(\x_reg[3] [3]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\x_reg[3] [12]),
        .I4(\x_reg_n_0_[1][14] ),
        .I5(\x[1][7]_i_20_n_0 ),
        .O(\x[1][7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][7]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [10]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [9]),
        .O(\x[1][7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][7]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [9]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [8]),
        .O(\x[1][7]_i_19_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][7]_i_2 
       (.I0(\x[1][7]_i_10_n_0 ),
        .I1(\x[1][7]_i_11_n_0 ),
        .O(\x[1][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][7]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [8]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [7]),
        .O(\x[1][7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \x[1][7]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\y_reg[1] [7]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [6]),
        .O(\x[1][7]_i_21_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \x[1][7]_i_3 
       (.I0(\x[1][7]_i_12_n_0 ),
        .I1(\x[1][7]_i_13_n_0 ),
        .O(\x[1][7]_i_3_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \x[1][7]_i_4 
       (.I0(\x[1][7]_i_14_n_0 ),
        .I1(\x[1][7]_i_15_n_0 ),
        .O(\x[1][7]_i_4_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x[1][7]_i_5 
       (.I0(\x[1][7]_i_16_n_0 ),
        .I1(\x[1][7]_i_17_n_0 ),
        .O(\x[1][7]_i_5_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][7]_i_6 
       (.I0(\x[1][11]_i_16_n_0 ),
        .I1(\x[1][11]_i_17_n_0 ),
        .I2(\x[1][7]_i_2_n_0 ),
        .O(\x[1][7]_i_6_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][7]_i_7 
       (.I0(\x[1][7]_i_10_n_0 ),
        .I1(\x[1][7]_i_11_n_0 ),
        .I2(\x[1][7]_i_3_n_0 ),
        .O(\x[1][7]_i_7_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][7]_i_8 
       (.I0(\x[1][7]_i_12_n_0 ),
        .I1(\x[1][7]_i_13_n_0 ),
        .I2(\x[1][7]_i_4_n_0 ),
        .O(\x[1][7]_i_8_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[1][7]_i_9 
       (.I0(\x[1][7]_i_14_n_0 ),
        .I1(\x[1][7]_i_15_n_0 ),
        .I2(\x[1][7]_i_5_n_0 ),
        .O(\x[1][7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][11]_i_10 
       (.I0(\x_reg[3][15]_i_18_n_6 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[10]),
        .O(\x[3][11]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][11]_i_11 
       (.I0(\x_reg[3][15]_i_18_n_7 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[9]),
        .O(\x[3][11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][11]_i_12 
       (.I0(\x_reg[3][7]_i_13_n_4 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[8]),
        .O(\x[3][11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][11]_i_13 
       (.I0(\x_reg[3][7]_i_13_n_5 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[7]),
        .O(\x[3][11]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][11]_i_14 
       (.I0(\x_reg[5] [16]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [18]),
        .O(\x[3][11]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][11]_i_15 
       (.I0(\x_reg[5] [15]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [17]),
        .O(\x[3][11]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][11]_i_16 
       (.I0(\x_reg[5] [14]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [16]),
        .O(\x[3][11]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][11]_i_17 
       (.I0(\x_reg[5] [13]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [15]),
        .O(\x[3][11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][11]_i_2 
       (.I0(\x_reg[5] [10]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [10]),
        .I3(\x_reg[3] [17]),
        .I4(\x_reg[5] [15]),
        .I5(\x[3][11]_i_10_n_0 ),
        .O(\x[3][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][11]_i_3 
       (.I0(\x_reg[5] [9]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [9]),
        .I3(\x_reg[3] [16]),
        .I4(\x_reg[5] [14]),
        .I5(\x[3][11]_i_11_n_0 ),
        .O(\x[3][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][11]_i_4 
       (.I0(\x_reg[5] [8]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [8]),
        .I3(\x_reg[3] [15]),
        .I4(\x_reg[5] [13]),
        .I5(\x[3][11]_i_12_n_0 ),
        .O(\x[3][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][11]_i_5 
       (.I0(\x_reg[5] [7]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [7]),
        .I3(\x_reg[3] [14]),
        .I4(\x_reg[5] [12]),
        .I5(\x[3][11]_i_13_n_0 ),
        .O(\x[3][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][11]_i_6 
       (.I0(\x[3][11]_i_2_n_0 ),
        .I1(\x[3][11]_i_14_n_0 ),
        .I2(\x[3][15]_i_13_n_0 ),
        .I3(\x_reg[5] [11]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [11]),
        .O(\x[3][11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][11]_i_7 
       (.I0(\x[3][11]_i_3_n_0 ),
        .I1(\x[3][11]_i_15_n_0 ),
        .I2(\x[3][11]_i_10_n_0 ),
        .I3(\x_reg[5] [10]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [10]),
        .O(\x[3][11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][11]_i_8 
       (.I0(\x[3][11]_i_4_n_0 ),
        .I1(\x[3][11]_i_16_n_0 ),
        .I2(\x[3][11]_i_11_n_0 ),
        .I3(\x_reg[5] [9]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [9]),
        .O(\x[3][11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][11]_i_9 
       (.I0(\x[3][11]_i_5_n_0 ),
        .I1(\x[3][11]_i_17_n_0 ),
        .I2(\x[3][11]_i_12_n_0 ),
        .I3(\x_reg[5] [8]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [8]),
        .O(\x[3][11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][15]_i_10 
       (.I0(\x_reg[3][19]_i_18_n_6 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[14]),
        .O(\x[3][15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][15]_i_11 
       (.I0(\x_reg[3][19]_i_18_n_7 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[13]),
        .O(\x[3][15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][15]_i_12 
       (.I0(\x_reg[3][15]_i_18_n_4 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[12]),
        .O(\x[3][15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][15]_i_13 
       (.I0(\x_reg[3][15]_i_18_n_5 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[11]),
        .O(\x[3][15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][15]_i_14 
       (.I0(\x_reg[5] [20]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [22]),
        .O(\x[3][15]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][15]_i_15 
       (.I0(\x_reg[5] [19]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [21]),
        .O(\x[3][15]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][15]_i_16 
       (.I0(\x_reg[5] [18]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [20]),
        .O(\x[3][15]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][15]_i_17 
       (.I0(\x_reg[5] [17]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [19]),
        .O(\x[3][15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][15]_i_2 
       (.I0(\x_reg[5] [14]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [14]),
        .I3(\x_reg[3] [21]),
        .I4(\x_reg[5] [19]),
        .I5(\x[3][15]_i_10_n_0 ),
        .O(\x[3][15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][15]_i_20 
       (.I0(stage2_y_taylor[12]),
        .O(\x[3][15]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][15]_i_21 
       (.I0(stage2_y_taylor[11]),
        .O(\x[3][15]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][15]_i_22 
       (.I0(stage2_y_taylor[10]),
        .O(\x[3][15]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][15]_i_23 
       (.I0(stage2_y_taylor[9]),
        .O(\x[3][15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00C00ACACAFACFFF)) 
    \x[3][15]_i_24 
       (.I0(\y_reg[3] [13]),
        .I1(\y_reg[5] [12]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[5] [19]),
        .I4(\y_reg[3] [22]),
        .I5(\x[3][19]_i_35_n_0 ),
        .O(\x[3][15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \x[3][15]_i_25 
       (.I0(\y_reg[3] [12]),
        .I1(\y_reg[5] [11]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [21]),
        .I4(\y_reg[5] [18]),
        .I5(\x[3][15]_i_32_n_0 ),
        .O(\x[3][15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00B888FC30BBB8FF)) 
    \x[3][15]_i_26 
       (.I0(\y_reg[5] [10]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [11]),
        .I3(\x[3][7]_i_49_n_0 ),
        .I4(\y_reg[5] [19]),
        .I5(\y_reg[3] [22]),
        .O(\x[3][15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00B830BB88FCB8FF)) 
    \x[3][15]_i_27 
       (.I0(\y_reg[5] [9]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [10]),
        .I3(\x[3][7]_i_50_n_0 ),
        .I4(\y_reg[3] [21]),
        .I5(\y_reg[5] [18]),
        .O(\x[3][15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][15]_i_28 
       (.I0(\x[3][15]_i_24_n_0 ),
        .I1(\x[3][19]_i_34_n_0 ),
        .I2(\x[3][15]_i_32_n_0 ),
        .I3(\y_reg[3] [14]),
        .I4(\y_reg[5] [13]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][15]_i_29 
       (.I0(\x[3][15]_i_25_n_0 ),
        .I1(\x[3][19]_i_35_n_0 ),
        .I2(\x[3][15]_i_33_n_0 ),
        .I3(\y_reg[3] [13]),
        .I4(\y_reg[5] [12]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][15]_i_3 
       (.I0(\x_reg[5] [13]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [13]),
        .I3(\x_reg[3] [20]),
        .I4(\x_reg[5] [18]),
        .I5(\x[3][15]_i_11_n_0 ),
        .O(\x[3][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][15]_i_30 
       (.I0(\x[3][15]_i_26_n_0 ),
        .I1(\x[3][15]_i_32_n_0 ),
        .I2(\x[3][7]_i_53_n_0 ),
        .I3(\y_reg[3] [12]),
        .I4(\y_reg[5] [11]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][15]_i_31 
       (.I0(\x[3][15]_i_27_n_0 ),
        .I1(\x[3][15]_i_33_n_0 ),
        .I2(\x[3][7]_i_49_n_0 ),
        .I3(\y_reg[5] [10]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[3] [11]),
        .O(\x[3][15]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \x[3][15]_i_32 
       (.I0(\y_reg[3] [23]),
        .I1(\y_reg[5] [20]),
        .I2(flag_reg_rep__3_n_0),
        .O(\x[3][15]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \x[3][15]_i_33 
       (.I0(\y_reg[3] [22]),
        .I1(\y_reg[5] [19]),
        .I2(flag_reg_rep__3_n_0),
        .O(\x[3][15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][15]_i_4 
       (.I0(\x_reg[5] [12]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [12]),
        .I3(\x_reg[3] [19]),
        .I4(\x_reg[5] [17]),
        .I5(\x[3][15]_i_12_n_0 ),
        .O(\x[3][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][15]_i_5 
       (.I0(\x_reg[5] [11]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [11]),
        .I3(\x_reg[3] [18]),
        .I4(\x_reg[5] [16]),
        .I5(\x[3][15]_i_13_n_0 ),
        .O(\x[3][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][15]_i_6 
       (.I0(\x[3][15]_i_2_n_0 ),
        .I1(\x[3][15]_i_14_n_0 ),
        .I2(\x[3][19]_i_13_n_0 ),
        .I3(\x_reg[5] [15]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [15]),
        .O(\x[3][15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][15]_i_7 
       (.I0(\x[3][15]_i_3_n_0 ),
        .I1(\x[3][15]_i_15_n_0 ),
        .I2(\x[3][15]_i_10_n_0 ),
        .I3(\x_reg[5] [14]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [14]),
        .O(\x[3][15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][15]_i_8 
       (.I0(\x[3][15]_i_4_n_0 ),
        .I1(\x[3][15]_i_16_n_0 ),
        .I2(\x[3][15]_i_11_n_0 ),
        .I3(\x_reg[5] [13]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [13]),
        .O(\x[3][15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][15]_i_9 
       (.I0(\x[3][15]_i_5_n_0 ),
        .I1(\x[3][15]_i_17_n_0 ),
        .I2(\x[3][15]_i_12_n_0 ),
        .I3(\x_reg[5] [12]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [12]),
        .O(\x[3][15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][19]_i_10 
       (.I0(\x_reg[3][23]_i_18_n_6 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[18]),
        .O(\x[3][19]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][19]_i_11 
       (.I0(\x_reg[3][23]_i_18_n_7 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[17]),
        .O(\x[3][19]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][19]_i_12 
       (.I0(\x_reg[3][19]_i_18_n_4 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[16]),
        .O(\x[3][19]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][19]_i_13 
       (.I0(\x_reg[3][19]_i_18_n_5 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[15]),
        .O(\x[3][19]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][19]_i_14 
       (.I0(\x_reg[5] [24]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [26]),
        .O(\x[3][19]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][19]_i_15 
       (.I0(\x_reg[5] [23]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [25]),
        .O(\x[3][19]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][19]_i_16 
       (.I0(\x_reg[5] [22]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [24]),
        .O(\x[3][19]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][19]_i_17 
       (.I0(\x_reg[3] [23]),
        .I1(\x_reg[5] [21]),
        .I2(flag_reg_rep_n_0),
        .O(\x[3][19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][19]_i_2 
       (.I0(\x_reg[5] [18]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [18]),
        .I3(\x_reg[3] [25]),
        .I4(\x_reg[5] [23]),
        .I5(\x[3][19]_i_10_n_0 ),
        .O(\x[3][19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][19]_i_20 
       (.I0(stage2_y_taylor[16]),
        .O(\x[3][19]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][19]_i_21 
       (.I0(stage2_y_taylor[15]),
        .O(\x[3][19]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][19]_i_22 
       (.I0(stage2_y_taylor[14]),
        .O(\x[3][19]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][19]_i_23 
       (.I0(stage2_y_taylor[13]),
        .O(\x[3][19]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \x[3][19]_i_24 
       (.I0(\y_reg[3] [17]),
        .I1(\y_reg[5] [16]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [26]),
        .I4(\y_reg[5] [23]),
        .I5(\x[3][23]_i_34_n_0 ),
        .O(\x[3][19]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \x[3][19]_i_25 
       (.I0(\y_reg[3] [16]),
        .I1(\y_reg[5] [15]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [25]),
        .I4(\y_reg[5] [22]),
        .I5(\x[3][19]_i_32_n_0 ),
        .O(\x[3][19]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \x[3][19]_i_26 
       (.I0(\y_reg[3] [15]),
        .I1(\y_reg[5] [14]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [24]),
        .I4(\y_reg[5] [21]),
        .I5(\x[3][19]_i_33_n_0 ),
        .O(\x[3][19]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00C00ACACAFACFFF)) 
    \x[3][19]_i_27 
       (.I0(\y_reg[3] [14]),
        .I1(\y_reg[5] [13]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[5] [20]),
        .I4(\y_reg[3] [23]),
        .I5(\x[3][19]_i_34_n_0 ),
        .O(\x[3][19]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][19]_i_28 
       (.I0(\x[3][19]_i_24_n_0 ),
        .I1(\x[3][23]_i_33_n_0 ),
        .I2(\x[3][19]_i_32_n_0 ),
        .I3(\y_reg[3] [18]),
        .I4(\y_reg[5] [17]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][19]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][19]_i_29 
       (.I0(\x[3][19]_i_25_n_0 ),
        .I1(\x[3][23]_i_34_n_0 ),
        .I2(\x[3][19]_i_33_n_0 ),
        .I3(\y_reg[3] [17]),
        .I4(\y_reg[5] [16]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][19]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][19]_i_3 
       (.I0(\x_reg[5] [17]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [17]),
        .I3(\x_reg[3] [24]),
        .I4(\x_reg[5] [22]),
        .I5(\x[3][19]_i_11_n_0 ),
        .O(\x[3][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][19]_i_30 
       (.I0(\x[3][19]_i_26_n_0 ),
        .I1(\x[3][19]_i_32_n_0 ),
        .I2(\x[3][19]_i_34_n_0 ),
        .I3(\y_reg[3] [16]),
        .I4(\y_reg[5] [15]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][19]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][19]_i_31 
       (.I0(\x[3][19]_i_27_n_0 ),
        .I1(\x[3][19]_i_33_n_0 ),
        .I2(\x[3][19]_i_35_n_0 ),
        .I3(\y_reg[3] [15]),
        .I4(\y_reg[5] [14]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][19]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[3][19]_i_32 
       (.I0(\y_reg[5] [24]),
        .I1(\y_reg[3] [27]),
        .I2(flag_reg_rep__3_n_0),
        .O(\x[3][19]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[3][19]_i_33 
       (.I0(\y_reg[5] [23]),
        .I1(\y_reg[3] [26]),
        .I2(flag_reg_rep__3_n_0),
        .O(\x[3][19]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[3][19]_i_34 
       (.I0(\y_reg[5] [22]),
        .I1(\y_reg[3] [25]),
        .I2(flag_reg_rep__3_n_0),
        .O(\x[3][19]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][19]_i_35 
       (.I0(\y_reg[5] [21]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [24]),
        .O(\x[3][19]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \x[3][19]_i_4 
       (.I0(\x_reg[5] [16]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [16]),
        .I3(\x_reg[5] [21]),
        .I4(\x_reg[3] [23]),
        .I5(\x[3][19]_i_12_n_0 ),
        .O(\x[3][19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][19]_i_5 
       (.I0(\x_reg[5] [15]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [15]),
        .I3(\x_reg[3] [22]),
        .I4(\x_reg[5] [20]),
        .I5(\x[3][19]_i_13_n_0 ),
        .O(\x[3][19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][19]_i_6 
       (.I0(\x[3][19]_i_2_n_0 ),
        .I1(\x[3][19]_i_14_n_0 ),
        .I2(\x[3][23]_i_13_n_0 ),
        .I3(\x_reg[5] [19]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [19]),
        .O(\x[3][19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][19]_i_7 
       (.I0(\x[3][19]_i_3_n_0 ),
        .I1(\x[3][19]_i_15_n_0 ),
        .I2(\x[3][19]_i_10_n_0 ),
        .I3(\x_reg[5] [18]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [18]),
        .O(\x[3][19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][19]_i_8 
       (.I0(\x[3][19]_i_4_n_0 ),
        .I1(\x[3][19]_i_16_n_0 ),
        .I2(\x[3][19]_i_11_n_0 ),
        .I3(\x_reg[5] [17]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [17]),
        .O(\x[3][19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][19]_i_9 
       (.I0(\x[3][19]_i_5_n_0 ),
        .I1(\x[3][19]_i_17_n_0 ),
        .I2(\x[3][19]_i_12_n_0 ),
        .I3(\x_reg[5] [16]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [16]),
        .O(\x[3][19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][23]_i_10 
       (.I0(\x_reg[3][31]_i_25_n_6 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[22]),
        .O(\x[3][23]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][23]_i_11 
       (.I0(\x_reg[3][31]_i_25_n_7 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[21]),
        .O(\x[3][23]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][23]_i_12 
       (.I0(\x_reg[3][23]_i_18_n_4 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[20]),
        .O(\x[3][23]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][23]_i_13 
       (.I0(\x_reg[3][23]_i_18_n_5 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[19]),
        .O(\x[3][23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][23]_i_14 
       (.I0(\x_reg[3] [30]),
        .I1(\x_reg[5] [28]),
        .I2(flag_reg_rep__1_n_0),
        .O(\x[3][23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][23]_i_15 
       (.I0(\x_reg[5] [27]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [29]),
        .O(\x[3][23]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][23]_i_16 
       (.I0(\x_reg[5] [26]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [28]),
        .O(\x[3][23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][23]_i_17 
       (.I0(\x_reg[5] [25]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [27]),
        .O(\x[3][23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][23]_i_2 
       (.I0(\x_reg[5] [22]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [22]),
        .I3(\x_reg[3] [29]),
        .I4(\x_reg[5] [27]),
        .I5(\x[3][23]_i_10_n_0 ),
        .O(\x[3][23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][23]_i_20 
       (.I0(stage2_y_taylor[20]),
        .O(\x[3][23]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][23]_i_21 
       (.I0(stage2_y_taylor[19]),
        .O(\x[3][23]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][23]_i_22 
       (.I0(stage2_y_taylor[18]),
        .O(\x[3][23]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][23]_i_23 
       (.I0(stage2_y_taylor[17]),
        .O(\x[3][23]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hCA00FAC0CF0AFFCA)) 
    \x[3][23]_i_24 
       (.I0(\y_reg[3] [21]),
        .I1(\y_reg[5] [20]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y[3][27]_i_15_n_0 ),
        .I4(\y_reg[5] [27]),
        .I5(\y_reg[3] [30]),
        .O(\x[3][23]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \x[3][23]_i_25 
       (.I0(\y_reg[3] [20]),
        .I1(\y_reg[5] [19]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\y_reg[3] [29]),
        .I4(\y_reg[5] [26]),
        .I5(\x[3][31]_i_58_n_0 ),
        .O(\x[3][23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00C00ACACAFACFFF)) 
    \x[3][23]_i_26 
       (.I0(\y_reg[3] [19]),
        .I1(\y_reg[5] [18]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[5] [25]),
        .I4(\y_reg[3] [28]),
        .I5(\x[3][23]_i_32_n_0 ),
        .O(\x[3][23]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \x[3][23]_i_27 
       (.I0(\y_reg[3] [18]),
        .I1(\y_reg[5] [17]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [27]),
        .I4(\y_reg[5] [24]),
        .I5(\x[3][23]_i_33_n_0 ),
        .O(\x[3][23]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9696696996699669)) 
    \x[3][23]_i_28 
       (.I0(\x[3][23]_i_24_n_0 ),
        .I1(\y[3][27]_i_14_n_0 ),
        .I2(\x[3][31]_i_58_n_0 ),
        .I3(\y_reg[3] [22]),
        .I4(\y_reg[5] [21]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][23]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h9696696996699669)) 
    \x[3][23]_i_29 
       (.I0(\x[3][23]_i_25_n_0 ),
        .I1(\x[3][23]_i_32_n_0 ),
        .I2(\y[3][27]_i_15_n_0 ),
        .I3(\y_reg[3] [21]),
        .I4(\y_reg[5] [20]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][23]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][23]_i_3 
       (.I0(\x_reg[5] [21]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [21]),
        .I3(\x_reg[3] [28]),
        .I4(\x_reg[5] [26]),
        .I5(\x[3][23]_i_11_n_0 ),
        .O(\x[3][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][23]_i_30 
       (.I0(\x[3][23]_i_26_n_0 ),
        .I1(\x[3][31]_i_58_n_0 ),
        .I2(\x[3][23]_i_33_n_0 ),
        .I3(\y_reg[3] [20]),
        .I4(\y_reg[5] [19]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][23]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][23]_i_31 
       (.I0(\x[3][23]_i_27_n_0 ),
        .I1(\x[3][23]_i_32_n_0 ),
        .I2(\x[3][23]_i_34_n_0 ),
        .I3(\y_reg[3] [19]),
        .I4(\y_reg[5] [18]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][23]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \x[3][23]_i_32 
       (.I0(\y_reg[3] [30]),
        .I1(\y_reg[5] [27]),
        .I2(flag_reg_rep__3_n_0),
        .O(\x[3][23]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[3][23]_i_33 
       (.I0(\y_reg[5] [26]),
        .I1(\y_reg[3] [29]),
        .I2(flag_reg_rep__3_n_0),
        .O(\x[3][23]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \x[3][23]_i_34 
       (.I0(\y_reg[3] [28]),
        .I1(\y_reg[5] [25]),
        .I2(flag_reg_rep__3_n_0),
        .O(\x[3][23]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][23]_i_4 
       (.I0(\x_reg[5] [20]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [20]),
        .I3(\x_reg[3] [27]),
        .I4(\x_reg[5] [25]),
        .I5(\x[3][23]_i_12_n_0 ),
        .O(\x[3][23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][23]_i_5 
       (.I0(\x_reg[5] [19]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [19]),
        .I3(\x_reg[3] [26]),
        .I4(\x_reg[5] [24]),
        .I5(\x[3][23]_i_13_n_0 ),
        .O(\x[3][23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][23]_i_6 
       (.I0(\x[3][23]_i_2_n_0 ),
        .I1(\x[3][23]_i_14_n_0 ),
        .I2(\x[3][27]_i_13_n_0 ),
        .I3(\x_reg[5] [23]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x_reg[3] [23]),
        .O(\x[3][23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][23]_i_7 
       (.I0(\x[3][23]_i_3_n_0 ),
        .I1(\x[3][23]_i_15_n_0 ),
        .I2(\x[3][23]_i_10_n_0 ),
        .I3(\x_reg[5] [22]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x_reg[3] [22]),
        .O(\x[3][23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][23]_i_8 
       (.I0(\x[3][23]_i_4_n_0 ),
        .I1(\x[3][23]_i_16_n_0 ),
        .I2(\x[3][23]_i_11_n_0 ),
        .I3(\x_reg[5] [21]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x_reg[3] [21]),
        .O(\x[3][23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][23]_i_9 
       (.I0(\x[3][23]_i_5_n_0 ),
        .I1(\x[3][23]_i_17_n_0 ),
        .I2(\x[3][23]_i_12_n_0 ),
        .I3(\x_reg[5] [20]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x_reg[3] [20]),
        .O(\x[3][23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][27]_i_10 
       (.I0(\x_reg[3][31]_i_13_n_6 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[26]),
        .O(\x[3][27]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][27]_i_11 
       (.I0(\x_reg[5] [26]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [26]),
        .O(stage2_x));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][27]_i_12 
       (.I0(\x_reg[3][31]_i_25_n_4 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[24]),
        .O(\x[3][27]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][27]_i_13 
       (.I0(\x_reg[3][31]_i_25_n_5 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[23]),
        .O(\x[3][27]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][27]_i_14 
       (.I0(\x_reg[3][31]_i_13_n_7 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[25]),
        .O(\x[3][27]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][27]_i_15 
       (.I0(\x_reg[3] [31]),
        .I1(\x_reg[5] [30]),
        .I2(flag_reg_rep__2_n_0),
        .O(\x[3][27]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][27]_i_16 
       (.I0(\x_reg[5] [29]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [31]),
        .O(\x[3][27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00C0CA00AA00A)) 
    \x[3][27]_i_2 
       (.I0(\x_reg[3] [26]),
        .I1(\x_reg[5] [26]),
        .I2(\x[3][27]_i_10_n_0 ),
        .I3(\x_reg[3] [31]),
        .I4(\x_reg[5] [31]),
        .I5(flag_reg_rep__1_n_0),
        .O(\x[3][27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    \x[3][27]_i_3 
       (.I0(\x_reg[3][31]_i_13_n_6 ),
        .I1(\x[3][31]_i_14_n_0 ),
        .I2(stage2_y_taylor[26]),
        .I3(\x[3][31]_i_16_n_0 ),
        .I4(stage2_x),
        .O(\x[3][27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][27]_i_4 
       (.I0(\x_reg[5] [24]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [24]),
        .I3(\x_reg[3] [31]),
        .I4(\x_reg[5] [29]),
        .I5(\x[3][27]_i_12_n_0 ),
        .O(\x[3][27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \x[3][27]_i_5 
       (.I0(\x_reg[5] [23]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [23]),
        .I3(\x_reg[5] [28]),
        .I4(\x_reg[3] [30]),
        .I5(\x[3][27]_i_13_n_0 ),
        .O(\x[3][27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[3][27]_i_6 
       (.I0(\x[3][27]_i_2_n_0 ),
        .I1(\x[3][31]_i_17_n_0 ),
        .I2(\x[3][31]_i_16_n_0 ),
        .I3(stage2_y_taylor[26]),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\x_reg[3][31]_i_13_n_6 ),
        .O(\x[3][27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5656566A6A6A566A)) 
    \x[3][27]_i_7 
       (.I0(\x[3][27]_i_3_n_0 ),
        .I1(\x[3][27]_i_14_n_0 ),
        .I2(\x[3][27]_i_15_n_0 ),
        .I3(\x_reg[3] [25]),
        .I4(flag_reg_rep__2_n_0),
        .I5(\x_reg[5] [25]),
        .O(\x[3][27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][27]_i_8 
       (.I0(\x[3][27]_i_4_n_0 ),
        .I1(\x[3][27]_i_15_n_0 ),
        .I2(\x[3][27]_i_14_n_0 ),
        .I3(\x_reg[5] [25]),
        .I4(flag_reg_rep__2_n_0),
        .I5(\x_reg[3] [25]),
        .O(\x[3][27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][27]_i_9 
       (.I0(\x[3][27]_i_5_n_0 ),
        .I1(\x[3][27]_i_16_n_0 ),
        .I2(\x[3][27]_i_12_n_0 ),
        .I3(\x_reg[5] [24]),
        .I4(flag_reg_rep__2_n_0),
        .I5(\x_reg[3] [24]),
        .O(\x[3][27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \x[3][31]_i_10 
       (.I0(\x_reg[3] [29]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [29]),
        .I3(stage2_y_taylor[29]),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\x_reg[3][31]_i_24_n_7 ),
        .O(\x[3][31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][31]_i_11 
       (.I0(\x_reg[3][31]_i_13_n_5 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[27]),
        .O(\x[3][31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \x[3][31]_i_12 
       (.I0(\x_reg[3] [28]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [28]),
        .I3(stage2_y_taylor[28]),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\x_reg[3][31]_i_13_n_4 ),
        .O(\x[3][31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][31]_i_14 
       (.I0(\y_reg[5] [31]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\y_reg[3] [31]),
        .O(\x[3][31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \x[3][31]_i_16 
       (.I0(\x_reg[3] [31]),
        .I1(\x_reg[5] [31]),
        .I2(flag_reg_rep__2_n_0),
        .O(\x[3][31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \x[3][31]_i_17 
       (.I0(\x_reg[3] [27]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [27]),
        .I3(stage2_y_taylor[27]),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\x_reg[3][31]_i_13_n_5 ),
        .O(\x[3][31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \x[3][31]_i_18 
       (.I0(\x_reg[3] [29]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [29]),
        .I3(stage2_y_taylor[29]),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\x_reg[3][31]_i_24_n_7 ),
        .O(\x[3][31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2727D827D8D8D827)) 
    \x[3][31]_i_19 
       (.I0(flag_reg_rep__3_n_0),
        .I1(\x_reg[5] [31]),
        .I2(\x_reg[3] [31]),
        .I3(\x_reg[3][31]_i_23_n_1 ),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\x_reg[3][31]_i_24_n_5 ),
        .O(\x[3][31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \x[3][31]_i_2 
       (.I0(\x[3][31]_i_9_n_0 ),
        .I1(\x_reg[5] [28]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\x_reg[3] [28]),
        .I4(\x[3][31]_i_10_n_0 ),
        .O(\x[3][31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h757F4540)) 
    \x[3][31]_i_20 
       (.I0(\x_reg[3][31]_i_24_n_6 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\x_reg[3][31]_i_23_n_1 ),
        .O(\x[3][31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h2727D827D8D8D827)) 
    \x[3][31]_i_21 
       (.I0(flag_reg_rep__3_n_0),
        .I1(\x_reg[5] [30]),
        .I2(\x_reg[3] [30]),
        .I3(\x_reg[3][31]_i_23_n_1 ),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\x_reg[3][31]_i_24_n_6 ),
        .O(\x[3][31]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][31]_i_22 
       (.I0(\x_reg[3][31]_i_24_n_7 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[29]),
        .O(\x[3][31]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_26 
       (.I0(stage2_y_taylor[28]),
        .O(\x[3][31]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_27 
       (.I0(stage2_y_taylor[27]),
        .O(\x[3][31]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_28 
       (.I0(stage2_y_taylor[26]),
        .O(\x[3][31]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_29 
       (.I0(stage2_y_taylor[25]),
        .O(\x[3][31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \x[3][31]_i_3 
       (.I0(\x[3][31]_i_11_n_0 ),
        .I1(\x_reg[5] [27]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\x_reg[3] [27]),
        .I4(\x[3][31]_i_12_n_0 ),
        .O(\x[3][31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][31]_i_31 
       (.I0(\y_reg[3] [30]),
        .I1(\y_reg[5] [29]),
        .I2(flag_reg_rep__1_n_0),
        .O(\x[3][31]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][31]_i_32 
       (.I0(\y_reg[3] [29]),
        .I1(\y_reg[5] [28]),
        .I2(flag_reg_rep__1_n_0),
        .O(\x[3][31]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][31]_i_33 
       (.I0(\y_reg[3] [28]),
        .I1(\y_reg[5] [27]),
        .I2(flag_reg_rep__1_n_0),
        .O(\x[3][31]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][31]_i_34 
       (.I0(\y_reg[3] [27]),
        .I1(\y_reg[5] [26]),
        .I2(flag_reg_rep__1_n_0),
        .O(\x[3][31]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \x[3][31]_i_35 
       (.I0(\y_reg[5] [28]),
        .I1(\y_reg[3] [29]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[5] [29]),
        .I4(\y_reg[3] [30]),
        .O(\x[3][31]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \x[3][31]_i_36 
       (.I0(\y_reg[5] [27]),
        .I1(\y_reg[3] [28]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[5] [28]),
        .I4(\y_reg[3] [29]),
        .O(\x[3][31]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \x[3][31]_i_37 
       (.I0(\y_reg[5] [26]),
        .I1(\y_reg[3] [27]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[5] [27]),
        .I4(\y_reg[3] [28]),
        .O(\x[3][31]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \x[3][31]_i_38 
       (.I0(\y_reg[5] [25]),
        .I1(\y_reg[3] [26]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[5] [26]),
        .I4(\y_reg[3] [27]),
        .O(\x[3][31]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \x[3][31]_i_39 
       (.I0(\y_reg[3] [31]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[5] [30]),
        .O(\x[3][31]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[3][31]_i_4 
       (.I0(\x_reg[3][31]_i_13_n_6 ),
        .I1(\x[3][31]_i_14_n_0 ),
        .I2(stage2_y_taylor[26]),
        .I3(\x[3][31]_i_16_n_0 ),
        .I4(\x[3][31]_i_17_n_0 ),
        .O(\x[3][31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][31]_i_40 
       (.I0(\y_reg[5] [30]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[3] [31]),
        .O(\x[3][31]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \x[3][31]_i_41 
       (.I0(\y_reg[5] [30]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[5] [31]),
        .O(\x[3][31]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hAAC355C3)) 
    \x[3][31]_i_42 
       (.I0(\y_reg[5] [29]),
        .I1(\y_reg[3] [30]),
        .I2(\y_reg[3] [31]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\y_reg[5] [30]),
        .O(\x[3][31]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_43 
       (.I0(stage2_y_taylor[29]),
        .O(\x[3][31]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_44 
       (.I0(stage2_y_taylor[24]),
        .O(\x[3][31]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_45 
       (.I0(stage2_y_taylor[23]),
        .O(\x[3][31]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_46 
       (.I0(stage2_y_taylor[22]),
        .O(\x[3][31]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][31]_i_47 
       (.I0(stage2_y_taylor[21]),
        .O(\x[3][31]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][31]_i_48 
       (.I0(\y_reg[3] [26]),
        .I1(\y_reg[5] [25]),
        .I2(flag_reg_rep__2_n_0),
        .O(\x[3][31]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hDD00F0F000DD0F0F)) 
    \x[3][31]_i_49 
       (.I0(\y_reg[5] [29]),
        .I1(\x[3][31]_i_14_n_0 ),
        .I2(\y_reg[3] [24]),
        .I3(\y_reg[5] [23]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y[3][27]_i_14_n_0 ),
        .O(\x[3][31]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hCC6CC66699C99CCC)) 
    \x[3][31]_i_5 
       (.I0(\x[3][31]_i_18_n_0 ),
        .I1(\x[3][31]_i_19_n_0 ),
        .I2(flag_reg_rep__1_n_0),
        .I3(\x_reg[5] [30]),
        .I4(\x_reg[3] [30]),
        .I5(\x[3][31]_i_20_n_0 ),
        .O(\x[3][31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \x[3][31]_i_50 
       (.I0(\y_reg[5] [29]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[5] [22]),
        .O(\x[3][31]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h99F066F0)) 
    \x[3][31]_i_51 
       (.I0(\y_reg[5] [29]),
        .I1(\y_reg[5] [31]),
        .I2(\y_reg[3] [23]),
        .I3(flag_reg_rep__3_n_0),
        .I4(\y_reg[5] [22]),
        .O(\x[3][31]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h220ABBAFDDF54450)) 
    \x[3][31]_i_52 
       (.I0(\x[3][31]_i_56_n_0 ),
        .I1(\y_reg[5] [24]),
        .I2(\y_reg[3] [25]),
        .I3(flag_reg_rep__3_n_0),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\x[3][31]_i_48_n_0 ),
        .O(\x[3][31]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h9996696666699699)) 
    \x[3][31]_i_53 
       (.I0(\x[3][31]_i_49_n_0 ),
        .I1(\x[3][31]_i_14_n_0 ),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [25]),
        .I4(\y_reg[5] [24]),
        .I5(\x[3][31]_i_56_n_0 ),
        .O(\x[3][31]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h96999999)) 
    \x[3][31]_i_54 
       (.I0(\x[3][31]_i_50_n_0 ),
        .I1(\x[3][31]_i_57_n_0 ),
        .I2(\y_reg[5] [31]),
        .I3(\y_reg[5] [29]),
        .I4(flag_reg_rep__3_n_0),
        .O(\x[3][31]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h59599A59599A9A9A)) 
    \x[3][31]_i_55 
       (.I0(\x[3][31]_i_51_n_0 ),
        .I1(\x[3][31]_i_58_n_0 ),
        .I2(\y[3][27]_i_14_n_0 ),
        .I3(flag_reg_rep__3_n_0),
        .I4(\y_reg[5] [21]),
        .I5(\y_reg[3] [22]),
        .O(\x[3][31]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00C00ACA)) 
    \x[3][31]_i_56 
       (.I0(\y_reg[3] [31]),
        .I1(\y_reg[5] [30]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\y_reg[5] [23]),
        .I4(\y_reg[3] [24]),
        .O(\x[3][31]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h35C53ACA)) 
    \x[3][31]_i_57 
       (.I0(\y_reg[3] [31]),
        .I1(\y_reg[5] [30]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\y_reg[5] [23]),
        .I4(\y_reg[3] [24]),
        .O(\x[3][31]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \x[3][31]_i_58 
       (.I0(\y_reg[3] [31]),
        .I1(\y_reg[5] [28]),
        .I2(flag_reg_rep__2_n_0),
        .O(\x[3][31]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \x[3][31]_i_6 
       (.I0(\x[3][31]_i_2_n_0 ),
        .I1(\x[3][31]_i_21_n_0 ),
        .I2(\x_reg[3] [29]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg[5] [29]),
        .I5(\x[3][31]_i_22_n_0 ),
        .O(\x[3][31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \x[3][31]_i_7 
       (.I0(\x[3][31]_i_3_n_0 ),
        .I1(\x[3][31]_i_10_n_0 ),
        .I2(\x_reg[3] [28]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg[5] [28]),
        .I5(\x[3][31]_i_9_n_0 ),
        .O(\x[3][31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \x[3][31]_i_8 
       (.I0(\x[3][31]_i_4_n_0 ),
        .I1(\x[3][31]_i_12_n_0 ),
        .I2(\x_reg[3] [27]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg[5] [27]),
        .I5(\x[3][31]_i_11_n_0 ),
        .O(\x[3][31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][31]_i_9 
       (.I0(\x_reg[3][31]_i_13_n_4 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[28]),
        .O(\x[3][31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][3]_i_10 
       (.I0(\x_reg[3][7]_i_16_n_6 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[2]),
        .O(\x[3][3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][3]_i_11 
       (.I0(\x_reg[3][7]_i_16_n_7 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[1]),
        .O(\x[3][3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][3]_i_12 
       (.I0(\x_reg[3][7]_i_16_n_5 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[3]),
        .O(\x[3][3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][3]_i_13 
       (.I0(\x_reg[5] [7]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [9]),
        .O(\x[3][3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][3]_i_14 
       (.I0(\x_reg[5] [6]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\x_reg[3] [8]),
        .O(\x[3][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][3]_i_2 
       (.I0(\x_reg[5] [2]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [2]),
        .I3(\x_reg[3] [9]),
        .I4(\x_reg[5] [7]),
        .I5(\x[3][3]_i_10_n_0 ),
        .O(\x[3][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \x[3][3]_i_3 
       (.I0(\x_reg[5] [1]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\x_reg[3] [1]),
        .I3(\x_reg[3] [8]),
        .I4(\x_reg[5] [6]),
        .I5(\x[3][3]_i_11_n_0 ),
        .O(\x[3][3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hABEF)) 
    \x[3][3]_i_4 
       (.I0(stage2_y_taylor[0]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\x_reg[3] [7]),
        .I3(\x_reg[5] [5]),
        .O(\x[3][3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \x[3][3]_i_5 
       (.I0(stage2_y_taylor[0]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\x_reg[3] [7]),
        .I3(\x_reg[5] [5]),
        .O(\x[3][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9696696996699669)) 
    \x[3][3]_i_6 
       (.I0(\x[3][3]_i_2_n_0 ),
        .I1(\x[3][7]_i_19_n_0 ),
        .I2(\x[3][3]_i_12_n_0 ),
        .I3(\x_reg[3] [3]),
        .I4(\x_reg[5] [3]),
        .I5(flag_reg_rep__2_n_0),
        .O(\x[3][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][3]_i_7 
       (.I0(\x[3][3]_i_3_n_0 ),
        .I1(\x[3][3]_i_13_n_0 ),
        .I2(\x[3][3]_i_10_n_0 ),
        .I3(\x_reg[5] [2]),
        .I4(flag_reg_rep__2_n_0),
        .I5(\x_reg[3] [2]),
        .O(\x[3][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \x[3][3]_i_8 
       (.I0(\x[3][3]_i_4_n_0 ),
        .I1(\x_reg[5] [1]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\x_reg[3] [1]),
        .I4(\x[3][3]_i_14_n_0 ),
        .I5(\x[3][3]_i_11_n_0 ),
        .O(\x[3][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA5A5C33C5A5AC33C)) 
    \x[3][3]_i_9 
       (.I0(\x_reg[5] [5]),
        .I1(\x_reg[3] [7]),
        .I2(stage2_y_taylor[0]),
        .I3(\x_reg[3] [0]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\x_reg[5] [0]),
        .O(\x[3][3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][7]_i_10 
       (.I0(\x_reg[3][7]_i_13_n_6 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[6]),
        .O(\x[3][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][7]_i_11 
       (.I0(\x_reg[5] [10]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [12]),
        .O(\x[3][7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][7]_i_14 
       (.I0(\x_reg[5] [5]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [5]),
        .O(\x[3][7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][7]_i_15 
       (.I0(\x_reg[3] [11]),
        .I1(\x_reg[5] [9]),
        .I2(flag_reg_rep__2_n_0),
        .O(\x[3][7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][7]_i_17 
       (.I0(\x_reg[3] [4]),
        .I1(\x_reg[5] [4]),
        .I2(flag_reg_rep__2_n_0),
        .O(\x[3][7]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[3][7]_i_19 
       (.I0(\x_reg[5] [8]),
        .I1(\x_reg[3] [10]),
        .I2(flag_reg_rep__2_n_0),
        .O(\x[3][7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFF1D3F11DD0C1D00)) 
    \x[3][7]_i_2 
       (.I0(\x_reg[3] [13]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[5] [11]),
        .I3(\x[3][7]_i_10_n_0 ),
        .I4(\x_reg[5] [6]),
        .I5(\x_reg[3] [6]),
        .O(\x[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \x[3][7]_i_20 
       (.I0(\x_reg[3] [3]),
        .I1(\x_reg[5] [3]),
        .I2(flag_reg_rep__2_n_0),
        .O(\x[3][7]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][7]_i_21 
       (.I0(\x_reg[5] [12]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [14]),
        .O(\x[3][7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \x[3][7]_i_22 
       (.I0(\x_reg[5] [11]),
        .I1(flag_reg_rep_n_0),
        .I2(\x_reg[3] [13]),
        .O(\x[3][7]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][7]_i_23 
       (.I0(\x_reg[3][7]_i_13_n_7 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[5]),
        .O(\x[3][7]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \x[3][7]_i_24 
       (.I0(\x_reg[3][7]_i_16_n_4 ),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\y_reg[3] [31]),
        .I4(stage2_y_taylor[4]),
        .O(\x[3][7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \x[3][7]_i_25 
       (.I0(\y_reg[3] [18]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [15]),
        .I3(\x[3][7]_i_49_n_0 ),
        .I4(\y_reg[3] [9]),
        .I5(\y_reg[5] [8]),
        .O(\x[3][7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \x[3][7]_i_26 
       (.I0(\y_reg[3] [17]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [14]),
        .I3(\x[3][7]_i_50_n_0 ),
        .I4(\y_reg[3] [8]),
        .I5(\y_reg[5] [7]),
        .O(\x[3][7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF113F0CDD001D)) 
    \x[3][7]_i_27 
       (.I0(\y_reg[3] [16]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [13]),
        .I3(\x[3][7]_i_51_n_0 ),
        .I4(\y_reg[5] [6]),
        .I5(\y_reg[3] [7]),
        .O(\x[3][7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \x[3][7]_i_28 
       (.I0(\y_reg[3] [6]),
        .I1(\y_reg[5] [5]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [15]),
        .I4(\y_reg[5] [12]),
        .I5(\x[3][7]_i_52_n_0 ),
        .O(\x[3][7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][7]_i_29 
       (.I0(\x[3][7]_i_25_n_0 ),
        .I1(\x[3][7]_i_53_n_0 ),
        .I2(\x[3][7]_i_50_n_0 ),
        .I3(\y_reg[5] [9]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[3] [10]),
        .O(\x[3][7]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hA808FEAE)) 
    \x[3][7]_i_3 
       (.I0(\x[3][7]_i_11_n_0 ),
        .I1(stage2_y_taylor[5]),
        .I2(\x[3][31]_i_14_n_0 ),
        .I3(\x_reg[3][7]_i_13_n_7 ),
        .I4(\x[3][7]_i_14_n_0 ),
        .O(\x[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][7]_i_30 
       (.I0(\x[3][7]_i_26_n_0 ),
        .I1(\x[3][7]_i_51_n_0 ),
        .I2(\x[3][7]_i_49_n_0 ),
        .I3(\y_reg[3] [9]),
        .I4(\y_reg[5] [8]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][7]_i_31 
       (.I0(\x[3][7]_i_27_n_0 ),
        .I1(\x[3][7]_i_52_n_0 ),
        .I2(\x[3][7]_i_50_n_0 ),
        .I3(\y_reg[3] [8]),
        .I4(\y_reg[5] [7]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][7]_i_32 
       (.I0(\x[3][7]_i_28_n_0 ),
        .I1(\x[3][7]_i_51_n_0 ),
        .I2(\x[3][7]_i_54_n_0 ),
        .I3(\y_reg[5] [6]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[3] [7]),
        .O(\x[3][7]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_33 
       (.I0(stage2_y_taylor[8]),
        .O(\x[3][7]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_34 
       (.I0(stage2_y_taylor[7]),
        .O(\x[3][7]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_35 
       (.I0(stage2_y_taylor[6]),
        .O(\x[3][7]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_36 
       (.I0(stage2_y_taylor[5]),
        .O(\x[3][7]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_37 
       (.I0(stage2_y_taylor[0]),
        .O(\x[3][7]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_38 
       (.I0(stage2_y_taylor[4]),
        .O(\x[3][7]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_39 
       (.I0(stage2_y_taylor[3]),
        .O(\x[3][7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hA808FEAE)) 
    \x[3][7]_i_4 
       (.I0(\x[3][7]_i_15_n_0 ),
        .I1(stage2_y_taylor[4]),
        .I2(\x[3][31]_i_14_n_0 ),
        .I3(\x_reg[3][7]_i_16_n_4 ),
        .I4(\x[3][7]_i_17_n_0 ),
        .O(\x[3][7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_40 
       (.I0(stage2_y_taylor[2]),
        .O(\x[3][7]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[3][7]_i_41 
       (.I0(stage2_y_taylor[1]),
        .O(\x[3][7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h57F7075751F10151)) 
    \x[3][7]_i_42 
       (.I0(\x[3][7]_i_55_n_0 ),
        .I1(\y_reg[3] [16]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[5] [13]),
        .I4(\y_reg[5] [4]),
        .I5(\y_reg[3] [5]),
        .O(\x[3][7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF113F0CDD001D)) 
    \x[3][7]_i_43 
       (.I0(\y_reg[3] [13]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [10]),
        .I3(\x[3][7]_i_56_n_0 ),
        .I4(\y_reg[5] [3]),
        .I5(\y_reg[3] [4]),
        .O(\x[3][7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \x[3][7]_i_44 
       (.I0(\y_reg[3] [3]),
        .I1(\y_reg[5] [2]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [12]),
        .I4(\y_reg[5] [9]),
        .I5(\x[3][7]_i_55_n_0 ),
        .O(\x[3][7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][7]_i_45 
       (.I0(\x[3][7]_i_42_n_0 ),
        .I1(\x[3][7]_i_52_n_0 ),
        .I2(\x[3][7]_i_56_n_0 ),
        .I3(\y_reg[3] [6]),
        .I4(\y_reg[5] [5]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669699696)) 
    \x[3][7]_i_46 
       (.I0(\x[3][7]_i_43_n_0 ),
        .I1(\x[3][7]_i_55_n_0 ),
        .I2(\x[3][7]_i_54_n_0 ),
        .I3(\y_reg[5] [4]),
        .I4(\y_reg[3] [5]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669699696)) 
    \x[3][7]_i_47 
       (.I0(\x[3][7]_i_44_n_0 ),
        .I1(\x[3][7]_i_57_n_0 ),
        .I2(\x[3][7]_i_56_n_0 ),
        .I3(\y_reg[5] [3]),
        .I4(\y_reg[3] [4]),
        .I5(flag_reg_rep__3_n_0),
        .O(\x[3][7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    \x[3][7]_i_48 
       (.I0(\y_reg[5] [2]),
        .I1(\y_reg[3] [3]),
        .I2(\x[3][7]_i_55_n_0 ),
        .I3(\y_reg[5] [9]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[3] [12]),
        .O(\x[3][7]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_49 
       (.I0(\y_reg[5] [17]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [20]),
        .O(\x[3][7]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2FF)) 
    \x[3][7]_i_5 
       (.I0(stage2_y_taylor[3]),
        .I1(\x[3][31]_i_14_n_0 ),
        .I2(\x_reg[3][7]_i_16_n_5 ),
        .I3(\x[3][7]_i_19_n_0 ),
        .I4(\x[3][7]_i_20_n_0 ),
        .O(\x[3][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_50 
       (.I0(\y_reg[5] [16]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [19]),
        .O(\x[3][7]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_51 
       (.I0(\y_reg[5] [15]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [18]),
        .O(\x[3][7]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_52 
       (.I0(\y_reg[5] [14]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [17]),
        .O(\x[3][7]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_53 
       (.I0(\y_reg[5] [18]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [21]),
        .O(\x[3][7]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_54 
       (.I0(\y_reg[5] [13]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [16]),
        .O(\x[3][7]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_55 
       (.I0(\y_reg[5] [11]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [14]),
        .O(\x[3][7]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_56 
       (.I0(\y_reg[5] [12]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [15]),
        .O(\x[3][7]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[3][7]_i_57 
       (.I0(\y_reg[5] [10]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [13]),
        .O(\x[3][7]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][7]_i_6 
       (.I0(\x[3][7]_i_2_n_0 ),
        .I1(\x[3][7]_i_21_n_0 ),
        .I2(\x[3][11]_i_13_n_0 ),
        .I3(\x_reg[5] [7]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [7]),
        .O(\x[3][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][7]_i_7 
       (.I0(\x[3][7]_i_3_n_0 ),
        .I1(\x[3][7]_i_10_n_0 ),
        .I2(\x[3][7]_i_22_n_0 ),
        .I3(\x_reg[5] [6]),
        .I4(flag_reg_rep_n_0),
        .I5(\x_reg[3] [6]),
        .O(\x[3][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \x[3][7]_i_8 
       (.I0(\x[3][7]_i_4_n_0 ),
        .I1(\x[3][7]_i_23_n_0 ),
        .I2(\x[3][7]_i_11_n_0 ),
        .I3(\x_reg[5] [5]),
        .I4(flag_reg_rep__2_n_0),
        .I5(\x_reg[3] [5]),
        .O(\x[3][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \x[3][7]_i_9 
       (.I0(\x[3][7]_i_5_n_0 ),
        .I1(\x[3][7]_i_24_n_0 ),
        .I2(\x[3][7]_i_15_n_0 ),
        .I3(\x_reg[3] [4]),
        .I4(\x_reg[5] [4]),
        .I5(flag_reg_rep__2_n_0),
        .O(\x[3][7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][11]_i_10 
       (.I0(\x_reg_n_0_[6][19] ),
        .I1(\x_reg[5][15]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][13] ),
        .O(\x[5][11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][11]_i_11 
       (.I0(\x_reg_n_0_[6][18] ),
        .I1(\x_reg[5][15]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][12] ),
        .O(\x[5][11]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][11]_i_13 
       (.I0(\x_reg_n_0_[6][17] ),
        .I1(\x_reg[5][15]_i_12_n_7 ),
        .I2(\x_reg_n_0_[6][11] ),
        .O(\x[5][11]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][11]_i_14 
       (.I0(\x_reg_n_0_[6][16] ),
        .I1(\x_reg[5][11]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][10] ),
        .O(\x[5][11]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][11]_i_15 
       (.I0(\x_reg[5][15]_i_24_n_5 ),
        .I1(sel),
        .I2(\x_reg[5][15]_i_23_n_6 ),
        .I3(\x_reg_n_0_[6][18] ),
        .I4(\x_reg_n_0_[6][6] ),
        .O(\x[5][11]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][11]_i_16 
       (.I0(\x_reg[5][15]_i_24_n_6 ),
        .I1(sel),
        .I2(\x_reg[5][15]_i_23_n_7 ),
        .I3(\x_reg_n_0_[6][17] ),
        .I4(\x_reg_n_0_[6][5] ),
        .O(\x[5][11]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \x[5][11]_i_17 
       (.I0(\x_reg_n_0_[6][4] ),
        .I1(\x_reg_n_0_[6][16] ),
        .I2(\x_reg[5][15]_i_24_n_7 ),
        .I3(sel),
        .I4(\x_reg[5][11]_i_23_n_4 ),
        .O(\x[5][11]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][11]_i_18 
       (.I0(\x_reg[5][11]_i_24_n_4 ),
        .I1(sel),
        .I2(\x_reg[5][11]_i_23_n_5 ),
        .I3(\x_reg_n_0_[6][15] ),
        .I4(\x_reg_n_0_[6][3] ),
        .O(\x[5][11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][11]_i_19 
       (.I0(\x[5][11]_i_15_n_0 ),
        .I1(\x_reg_n_0_[6][19] ),
        .I2(\x_reg[5][15]_i_24_n_4 ),
        .I3(sel),
        .I4(\x_reg[5][15]_i_23_n_5 ),
        .I5(\x_reg_n_0_[6][7] ),
        .O(\x[5][11]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \x[5][11]_i_2 
       (.I0(\x_reg_n_0_[6][12] ),
        .I1(\x_reg[5][15]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][18] ),
        .I3(\x_reg_n_0_[6][21] ),
        .I4(\x[5][11]_i_10_n_0 ),
        .O(\x[5][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][11]_i_20 
       (.I0(\x[5][11]_i_16_n_0 ),
        .I1(\x_reg_n_0_[6][18] ),
        .I2(\x_reg[5][15]_i_24_n_5 ),
        .I3(sel),
        .I4(\x_reg[5][15]_i_23_n_6 ),
        .I5(\x_reg_n_0_[6][6] ),
        .O(\x[5][11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][11]_i_21 
       (.I0(\x[5][11]_i_17_n_0 ),
        .I1(\x_reg_n_0_[6][17] ),
        .I2(\x_reg[5][15]_i_24_n_6 ),
        .I3(sel),
        .I4(\x_reg[5][15]_i_23_n_7 ),
        .I5(\x_reg_n_0_[6][5] ),
        .O(\x[5][11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][11]_i_22 
       (.I0(\x[5][11]_i_18_n_0 ),
        .I1(\x_reg_n_0_[6][16] ),
        .I2(\x_reg[5][15]_i_24_n_7 ),
        .I3(sel),
        .I4(\x_reg[5][11]_i_23_n_4 ),
        .I5(\x_reg_n_0_[6][4] ),
        .O(\x[5][11]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][11]_i_25 
       (.I0(\x_reg[5][11]_i_24_n_7 ),
        .O(\x[5][11]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][11]_i_26 
       (.I0(\x_reg[5][15]_i_24_n_7 ),
        .O(\x[5][11]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][11]_i_27 
       (.I0(\x_reg[5][11]_i_24_n_4 ),
        .O(\x[5][11]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][11]_i_28 
       (.I0(\x_reg[5][11]_i_24_n_5 ),
        .O(\x[5][11]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][11]_i_29 
       (.I0(\x_reg[5][11]_i_24_n_6 ),
        .O(\x[5][11]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][11]_i_3 
       (.I0(\x_reg_n_0_[6][17] ),
        .I1(\x_reg[5][15]_i_12_n_7 ),
        .I2(\x_reg_n_0_[6][11] ),
        .I3(\x[5][11]_i_11_n_0 ),
        .I4(\x_reg_n_0_[6][20] ),
        .O(\x[5][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \x[5][11]_i_30 
       (.I0(\x[5][15]_i_43_n_0 ),
        .I1(\y_reg_n_0_[6][12] ),
        .I2(\y_reg_n_0_[6][10] ),
        .I3(\y_reg_n_0_[6][8] ),
        .I4(\y_reg_n_0_[6][4] ),
        .I5(\x[5][15]_i_41_n_0 ),
        .O(\x[5][11]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \x[5][11]_i_31 
       (.I0(\y_reg_n_0_[6][9] ),
        .I1(\y_reg_n_0_[6][7] ),
        .I2(\y_reg_n_0_[6][8] ),
        .I3(\y_reg_n_0_[6][10] ),
        .I4(\y_reg_n_0_[6][12] ),
        .I5(\y_reg_n_0_[6][3] ),
        .O(\x[5][11]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6996699696696996)) 
    \x[5][11]_i_32 
       (.I0(\y_reg_n_0_[6][9] ),
        .I1(\y_reg_n_0_[6][7] ),
        .I2(\y_reg_n_0_[6][2] ),
        .I3(\y_reg_n_0_[6][11] ),
        .I4(\y_reg_n_0_[6][1] ),
        .I5(\y_reg_n_0_[6][10] ),
        .O(\x[5][11]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[5][11]_i_33 
       (.I0(\y_reg_n_0_[6][6] ),
        .I1(\y_reg_n_0_[6][8] ),
        .O(\x[5][11]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h559595AA)) 
    \x[5][11]_i_34 
       (.I0(\x[5][11]_i_30_n_0 ),
        .I1(\y_reg_n_0_[6][9] ),
        .I2(\y_reg_n_0_[6][7] ),
        .I3(\x[5][11]_i_38_n_0 ),
        .I4(\y_reg_n_0_[6][3] ),
        .O(\x[5][11]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6559599A599A6559)) 
    \x[5][11]_i_35 
       (.I0(\x[5][11]_i_31_n_0 ),
        .I1(\y_reg_n_0_[6][11] ),
        .I2(\y_reg_n_0_[6][2] ),
        .I3(\x[5][11]_i_39_n_0 ),
        .I4(\y_reg_n_0_[6][9] ),
        .I5(\y_reg_n_0_[6][7] ),
        .O(\x[5][11]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \x[5][11]_i_36 
       (.I0(\x[5][11]_i_32_n_0 ),
        .I1(\y_reg_n_0_[6][8] ),
        .I2(\y_reg_n_0_[6][6] ),
        .O(\x[5][11]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \x[5][11]_i_37 
       (.I0(\y_reg_n_0_[6][8] ),
        .I1(\y_reg_n_0_[6][6] ),
        .I2(\y_reg_n_0_[6][10] ),
        .I3(\y_reg_n_0_[6][1] ),
        .O(\x[5][11]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][11]_i_38 
       (.I0(\y_reg_n_0_[6][8] ),
        .I1(\y_reg_n_0_[6][10] ),
        .I2(\y_reg_n_0_[6][12] ),
        .O(\x[5][11]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x[5][11]_i_39 
       (.I0(\y_reg_n_0_[6][1] ),
        .I1(\y_reg_n_0_[6][10] ),
        .O(\x[5][11]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \x[5][11]_i_4 
       (.I0(\x_reg_n_0_[6][10] ),
        .I1(\x_reg[5][11]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][16] ),
        .I3(\x_reg_n_0_[6][19] ),
        .I4(\x[5][11]_i_13_n_0 ),
        .O(\x[5][11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][11]_i_5 
       (.I0(\x_reg_n_0_[6][15] ),
        .I1(\x_reg[5][11]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][9] ),
        .I3(\x[5][11]_i_14_n_0 ),
        .I4(\x_reg_n_0_[6][18] ),
        .O(\x[5][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][11]_i_6 
       (.I0(\x[5][11]_i_2_n_0 ),
        .I1(\x_reg_n_0_[6][19] ),
        .I2(\x_reg[5][15]_i_12_n_5 ),
        .I3(\x_reg_n_0_[6][13] ),
        .I4(\x_reg_n_0_[6][22] ),
        .I5(\x[5][15]_i_14_n_0 ),
        .O(\x[5][11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][11]_i_7 
       (.I0(\x[5][11]_i_3_n_0 ),
        .I1(\x_reg_n_0_[6][12] ),
        .I2(\x_reg[5][15]_i_12_n_6 ),
        .I3(\x_reg_n_0_[6][18] ),
        .I4(\x_reg_n_0_[6][21] ),
        .I5(\x[5][11]_i_10_n_0 ),
        .O(\x[5][11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][11]_i_8 
       (.I0(\x[5][11]_i_4_n_0 ),
        .I1(\x_reg_n_0_[6][17] ),
        .I2(\x_reg[5][15]_i_12_n_7 ),
        .I3(\x_reg_n_0_[6][11] ),
        .I4(\x_reg_n_0_[6][20] ),
        .I5(\x[5][11]_i_11_n_0 ),
        .O(\x[5][11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][11]_i_9 
       (.I0(\x[5][11]_i_5_n_0 ),
        .I1(\x_reg_n_0_[6][10] ),
        .I2(\x_reg[5][11]_i_12_n_4 ),
        .I3(\x_reg_n_0_[6][16] ),
        .I4(\x_reg_n_0_[6][19] ),
        .I5(\x[5][11]_i_13_n_0 ),
        .O(\x[5][11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][15]_i_10 
       (.I0(\x_reg_n_0_[6][23] ),
        .I1(\x_reg[5][19]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][17] ),
        .O(\x[5][15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][15]_i_11 
       (.I0(\x_reg_n_0_[6][22] ),
        .I1(\x_reg[5][19]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][16] ),
        .O(\x[5][15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][15]_i_13 
       (.I0(\x_reg_n_0_[6][21] ),
        .I1(\x_reg[5][19]_i_12_n_7 ),
        .I2(\x_reg_n_0_[6][15] ),
        .O(\x[5][15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][15]_i_14 
       (.I0(\x_reg_n_0_[6][20] ),
        .I1(\x_reg[5][15]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][14] ),
        .O(\x[5][15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][15]_i_15 
       (.I0(\x_reg[5][19]_i_24_n_5 ),
        .I1(sel),
        .I2(\x_reg[5][19]_i_23_n_6 ),
        .I3(\x_reg_n_0_[6][22] ),
        .I4(\x_reg_n_0_[6][10] ),
        .O(\x[5][15]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][15]_i_16 
       (.I0(\x_reg[5][19]_i_24_n_6 ),
        .I1(sel),
        .I2(\x_reg[5][19]_i_23_n_7 ),
        .I3(\x_reg_n_0_[6][21] ),
        .I4(\x_reg_n_0_[6][9] ),
        .O(\x[5][15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][15]_i_17 
       (.I0(\x_reg[5][19]_i_24_n_7 ),
        .I1(sel),
        .I2(\x_reg[5][15]_i_23_n_4 ),
        .I3(\x_reg_n_0_[6][20] ),
        .I4(\x_reg_n_0_[6][8] ),
        .O(\x[5][15]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][15]_i_18 
       (.I0(\x_reg[5][15]_i_24_n_4 ),
        .I1(sel),
        .I2(\x_reg[5][15]_i_23_n_5 ),
        .I3(\x_reg_n_0_[6][19] ),
        .I4(\x_reg_n_0_[6][7] ),
        .O(\x[5][15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][15]_i_19 
       (.I0(\x[5][15]_i_15_n_0 ),
        .I1(\x_reg_n_0_[6][23] ),
        .I2(\x_reg[5][19]_i_24_n_4 ),
        .I3(sel),
        .I4(\x_reg[5][19]_i_23_n_5 ),
        .I5(\x_reg_n_0_[6][11] ),
        .O(\x[5][15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][15]_i_2 
       (.I0(\x_reg_n_0_[6][22] ),
        .I1(\x_reg[5][19]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][16] ),
        .I3(\x[5][15]_i_10_n_0 ),
        .I4(\x_reg_n_0_[6][25] ),
        .O(\x[5][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][15]_i_20 
       (.I0(\x[5][15]_i_16_n_0 ),
        .I1(\x_reg_n_0_[6][22] ),
        .I2(\x_reg[5][19]_i_24_n_5 ),
        .I3(sel),
        .I4(\x_reg[5][19]_i_23_n_6 ),
        .I5(\x_reg_n_0_[6][10] ),
        .O(\x[5][15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][15]_i_21 
       (.I0(\x[5][15]_i_17_n_0 ),
        .I1(\x_reg_n_0_[6][21] ),
        .I2(\x_reg[5][19]_i_24_n_6 ),
        .I3(sel),
        .I4(\x_reg[5][19]_i_23_n_7 ),
        .I5(\x_reg_n_0_[6][9] ),
        .O(\x[5][15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][15]_i_22 
       (.I0(\x[5][15]_i_18_n_0 ),
        .I1(\x_reg_n_0_[6][20] ),
        .I2(\x_reg[5][19]_i_24_n_7 ),
        .I3(sel),
        .I4(\x_reg[5][15]_i_23_n_4 ),
        .I5(\x_reg_n_0_[6][8] ),
        .O(\x[5][15]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][15]_i_25 
       (.I0(\x_reg[5][19]_i_24_n_7 ),
        .O(\x[5][15]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][15]_i_26 
       (.I0(\x_reg[5][15]_i_24_n_4 ),
        .O(\x[5][15]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][15]_i_27 
       (.I0(\x_reg[5][15]_i_24_n_5 ),
        .O(\x[5][15]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][15]_i_28 
       (.I0(\x_reg[5][15]_i_24_n_6 ),
        .O(\x[5][15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888E8EEE)) 
    \x[5][15]_i_29 
       (.I0(\y_reg_n_0_[6][6] ),
        .I1(\x[5][15]_i_37_n_0 ),
        .I2(\y_reg_n_0_[6][14] ),
        .I3(\y_reg_n_0_[6][10] ),
        .I4(\y_reg_n_0_[6][12] ),
        .I5(\x[5][15]_i_38_n_0 ),
        .O(\x[5][15]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][15]_i_3 
       (.I0(\x_reg_n_0_[6][21] ),
        .I1(\x_reg[5][19]_i_12_n_7 ),
        .I2(\x_reg_n_0_[6][15] ),
        .I3(\x[5][15]_i_11_n_0 ),
        .I4(\x_reg_n_0_[6][24] ),
        .O(\x[5][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888E8EEE)) 
    \x[5][15]_i_30 
       (.I0(\y_reg_n_0_[6][5] ),
        .I1(\x[5][15]_i_39_n_0 ),
        .I2(\y_reg_n_0_[6][9] ),
        .I3(\y_reg_n_0_[6][11] ),
        .I4(\y_reg_n_0_[6][13] ),
        .I5(\x[5][15]_i_40_n_0 ),
        .O(\x[5][15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888E8EEE)) 
    \x[5][15]_i_31 
       (.I0(\y_reg_n_0_[6][4] ),
        .I1(\x[5][15]_i_41_n_0 ),
        .I2(\y_reg_n_0_[6][8] ),
        .I3(\y_reg_n_0_[6][10] ),
        .I4(\y_reg_n_0_[6][12] ),
        .I5(\x[5][15]_i_42_n_0 ),
        .O(\x[5][15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h022AA880A880022A)) 
    \x[5][15]_i_32 
       (.I0(\x[5][15]_i_43_n_0 ),
        .I1(\y_reg_n_0_[6][12] ),
        .I2(\y_reg_n_0_[6][10] ),
        .I3(\y_reg_n_0_[6][8] ),
        .I4(\y_reg_n_0_[6][4] ),
        .I5(\x[5][15]_i_41_n_0 ),
        .O(\x[5][15]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][15]_i_33 
       (.I0(\x[5][15]_i_29_n_0 ),
        .I1(\x[5][19]_i_43_n_0 ),
        .I2(\x[5][15]_i_44_n_0 ),
        .O(\x[5][15]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][15]_i_34 
       (.I0(\x[5][15]_i_30_n_0 ),
        .I1(\x[5][15]_i_38_n_0 ),
        .I2(\x[5][15]_i_45_n_0 ),
        .O(\x[5][15]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][15]_i_35 
       (.I0(\x[5][15]_i_31_n_0 ),
        .I1(\x[5][15]_i_40_n_0 ),
        .I2(\x[5][15]_i_46_n_0 ),
        .O(\x[5][15]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][15]_i_36 
       (.I0(\x[5][15]_i_32_n_0 ),
        .I1(\x[5][15]_i_42_n_0 ),
        .I2(\x[5][15]_i_47_n_0 ),
        .O(\x[5][15]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][15]_i_37 
       (.I0(\y_reg_n_0_[6][11] ),
        .I1(\y_reg_n_0_[6][15] ),
        .I2(\y_reg_n_0_[6][13] ),
        .O(\x[5][15]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h66696999)) 
    \x[5][15]_i_38 
       (.I0(\x[5][19]_i_42_n_0 ),
        .I1(\y_reg_n_0_[6][7] ),
        .I2(\y_reg_n_0_[6][11] ),
        .I3(\y_reg_n_0_[6][15] ),
        .I4(\y_reg_n_0_[6][13] ),
        .O(\x[5][15]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][15]_i_39 
       (.I0(\y_reg_n_0_[6][14] ),
        .I1(\y_reg_n_0_[6][10] ),
        .I2(\y_reg_n_0_[6][12] ),
        .O(\x[5][15]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \x[5][15]_i_4 
       (.I0(\x_reg_n_0_[6][14] ),
        .I1(\x_reg[5][15]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][20] ),
        .I3(\x_reg_n_0_[6][23] ),
        .I4(\x[5][15]_i_13_n_0 ),
        .O(\x[5][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][15]_i_40 
       (.I0(\x[5][15]_i_37_n_0 ),
        .I1(\y_reg_n_0_[6][6] ),
        .I2(\y_reg_n_0_[6][14] ),
        .I3(\y_reg_n_0_[6][10] ),
        .I4(\y_reg_n_0_[6][12] ),
        .O(\x[5][15]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][15]_i_41 
       (.I0(\y_reg_n_0_[6][13] ),
        .I1(\y_reg_n_0_[6][11] ),
        .I2(\y_reg_n_0_[6][9] ),
        .O(\x[5][15]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][15]_i_42 
       (.I0(\x[5][15]_i_39_n_0 ),
        .I1(\y_reg_n_0_[6][5] ),
        .I2(\y_reg_n_0_[6][9] ),
        .I3(\y_reg_n_0_[6][11] ),
        .I4(\y_reg_n_0_[6][13] ),
        .O(\x[5][15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000000009000000)) 
    \x[5][15]_i_43 
       (.I0(\y_reg_n_0_[6][7] ),
        .I1(\y_reg_n_0_[6][9] ),
        .I2(\y_reg_n_0_[6][10] ),
        .I3(\y_reg_n_0_[6][1] ),
        .I4(\y_reg_n_0_[6][2] ),
        .I5(\y_reg_n_0_[6][11] ),
        .O(\x[5][15]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \x[5][15]_i_44 
       (.I0(\y_reg_n_0_[6][13] ),
        .I1(\y_reg_n_0_[6][15] ),
        .I2(\y_reg_n_0_[6][11] ),
        .I3(\x[5][19]_i_42_n_0 ),
        .I4(\y_reg_n_0_[6][7] ),
        .O(\x[5][15]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00E8E8FF)) 
    \x[5][15]_i_45 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\y_reg_n_0_[6][10] ),
        .I2(\y_reg_n_0_[6][14] ),
        .I3(\x[5][15]_i_37_n_0 ),
        .I4(\y_reg_n_0_[6][6] ),
        .O(\x[5][15]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00E8E8FF)) 
    \x[5][15]_i_46 
       (.I0(\y_reg_n_0_[6][13] ),
        .I1(\y_reg_n_0_[6][11] ),
        .I2(\y_reg_n_0_[6][9] ),
        .I3(\x[5][15]_i_39_n_0 ),
        .I4(\y_reg_n_0_[6][5] ),
        .O(\x[5][15]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00E8E8FF)) 
    \x[5][15]_i_47 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\y_reg_n_0_[6][10] ),
        .I2(\y_reg_n_0_[6][8] ),
        .I3(\x[5][15]_i_41_n_0 ),
        .I4(\y_reg_n_0_[6][4] ),
        .O(\x[5][15]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][15]_i_5 
       (.I0(\x_reg_n_0_[6][19] ),
        .I1(\x_reg[5][15]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][13] ),
        .I3(\x[5][15]_i_14_n_0 ),
        .I4(\x_reg_n_0_[6][22] ),
        .O(\x[5][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][15]_i_6 
       (.I0(\x[5][15]_i_2_n_0 ),
        .I1(\x_reg_n_0_[6][23] ),
        .I2(\x_reg[5][19]_i_12_n_5 ),
        .I3(\x_reg_n_0_[6][17] ),
        .I4(\x_reg_n_0_[6][26] ),
        .I5(\x[5][19]_i_14_n_0 ),
        .O(\x[5][15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][15]_i_7 
       (.I0(\x[5][15]_i_3_n_0 ),
        .I1(\x_reg_n_0_[6][22] ),
        .I2(\x_reg[5][19]_i_12_n_6 ),
        .I3(\x_reg_n_0_[6][16] ),
        .I4(\x_reg_n_0_[6][25] ),
        .I5(\x[5][15]_i_10_n_0 ),
        .O(\x[5][15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][15]_i_8 
       (.I0(\x[5][15]_i_4_n_0 ),
        .I1(\x_reg_n_0_[6][21] ),
        .I2(\x_reg[5][19]_i_12_n_7 ),
        .I3(\x_reg_n_0_[6][15] ),
        .I4(\x_reg_n_0_[6][24] ),
        .I5(\x[5][15]_i_11_n_0 ),
        .O(\x[5][15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][15]_i_9 
       (.I0(\x[5][15]_i_5_n_0 ),
        .I1(\x_reg_n_0_[6][14] ),
        .I2(\x_reg[5][15]_i_12_n_4 ),
        .I3(\x_reg_n_0_[6][20] ),
        .I4(\x_reg_n_0_[6][23] ),
        .I5(\x[5][15]_i_13_n_0 ),
        .O(\x[5][15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_10 
       (.I0(\x_reg_n_0_[6][27] ),
        .I1(\x_reg[5][23]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][21] ),
        .O(\x[5][19]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_11 
       (.I0(\x_reg_n_0_[6][26] ),
        .I1(\x_reg[5][23]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][20] ),
        .O(\x[5][19]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_13 
       (.I0(\x_reg_n_0_[6][25] ),
        .I1(\x_reg[5][23]_i_12_n_7 ),
        .I2(\x_reg_n_0_[6][19] ),
        .O(\x[5][19]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_14 
       (.I0(\x_reg_n_0_[6][24] ),
        .I1(\x_reg[5][19]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][18] ),
        .O(\x[5][19]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][19]_i_15 
       (.I0(\x_reg[5][23]_i_29_n_5 ),
        .I1(sel),
        .I2(\x_reg[5][23]_i_28_n_6 ),
        .I3(\x_reg_n_0_[6][26] ),
        .I4(\x_reg_n_0_[6][14] ),
        .O(\x[5][19]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][19]_i_16 
       (.I0(\x_reg[5][23]_i_29_n_6 ),
        .I1(sel),
        .I2(\x_reg[5][23]_i_28_n_7 ),
        .I3(\x_reg_n_0_[6][25] ),
        .I4(\x_reg_n_0_[6][13] ),
        .O(\x[5][19]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][19]_i_17 
       (.I0(\x_reg[5][23]_i_29_n_7 ),
        .I1(sel),
        .I2(\x_reg[5][19]_i_23_n_4 ),
        .I3(\x_reg_n_0_[6][24] ),
        .I4(\x_reg_n_0_[6][12] ),
        .O(\x[5][19]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][19]_i_18 
       (.I0(\x_reg[5][19]_i_24_n_4 ),
        .I1(sel),
        .I2(\x_reg[5][19]_i_23_n_5 ),
        .I3(\x_reg_n_0_[6][23] ),
        .I4(\x_reg_n_0_[6][11] ),
        .O(\x[5][19]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][19]_i_19 
       (.I0(\x[5][19]_i_15_n_0 ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg[5][23]_i_29_n_4 ),
        .I3(sel),
        .I4(\x_reg[5][23]_i_28_n_5 ),
        .I5(\x_reg_n_0_[6][15] ),
        .O(\x[5][19]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \x[5][19]_i_2 
       (.I0(\x_reg_n_0_[6][20] ),
        .I1(\x_reg[5][23]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][26] ),
        .I3(\x_reg_n_0_[6][29] ),
        .I4(\x[5][19]_i_10_n_0 ),
        .O(\x[5][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][19]_i_20 
       (.I0(\x[5][19]_i_16_n_0 ),
        .I1(\x_reg_n_0_[6][26] ),
        .I2(\x_reg[5][23]_i_29_n_5 ),
        .I3(sel),
        .I4(\x_reg[5][23]_i_28_n_6 ),
        .I5(\x_reg_n_0_[6][14] ),
        .O(\x[5][19]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][19]_i_21 
       (.I0(\x[5][19]_i_17_n_0 ),
        .I1(\x_reg_n_0_[6][25] ),
        .I2(\x_reg[5][23]_i_29_n_6 ),
        .I3(sel),
        .I4(\x_reg[5][23]_i_28_n_7 ),
        .I5(\x_reg_n_0_[6][13] ),
        .O(\x[5][19]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][19]_i_22 
       (.I0(\x[5][19]_i_18_n_0 ),
        .I1(\x_reg_n_0_[6][24] ),
        .I2(\x_reg[5][23]_i_29_n_7 ),
        .I3(sel),
        .I4(\x_reg[5][19]_i_23_n_4 ),
        .I5(\x_reg_n_0_[6][12] ),
        .O(\x[5][19]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][19]_i_25 
       (.I0(\x_reg[5][23]_i_29_n_7 ),
        .O(\x[5][19]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][19]_i_26 
       (.I0(\x_reg[5][19]_i_24_n_4 ),
        .O(\x[5][19]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][19]_i_27 
       (.I0(\x_reg[5][19]_i_24_n_5 ),
        .O(\x[5][19]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][19]_i_28 
       (.I0(\x_reg[5][19]_i_24_n_6 ),
        .O(\x[5][19]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h9996966600000000)) 
    \x[5][19]_i_29 
       (.I0(\y_reg_n_0_[6][11] ),
        .I1(\x[5][23]_i_47_n_0 ),
        .I2(\y_reg_n_0_[6][17] ),
        .I3(\y_reg_n_0_[6][19] ),
        .I4(\y_reg_n_0_[6][15] ),
        .I5(\x[5][19]_i_37_n_0 ),
        .O(\x[5][19]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][19]_i_3 
       (.I0(\x_reg_n_0_[6][25] ),
        .I1(\x_reg[5][23]_i_12_n_7 ),
        .I2(\x_reg_n_0_[6][19] ),
        .I3(\x[5][19]_i_11_n_0 ),
        .I4(\x_reg_n_0_[6][28] ),
        .O(\x[5][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \x[5][19]_i_30 
       (.I0(\y_reg_n_0_[6][10] ),
        .I1(\x[5][19]_i_38_n_0 ),
        .I2(\y_reg_n_0_[6][14] ),
        .I3(\y_reg_n_0_[6][16] ),
        .I4(\y_reg_n_0_[6][18] ),
        .I5(\x[5][19]_i_39_n_0 ),
        .O(\x[5][19]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888E8EEE)) 
    \x[5][19]_i_31 
       (.I0(\y_reg_n_0_[6][8] ),
        .I1(\x[5][19]_i_40_n_0 ),
        .I2(\y_reg_n_0_[6][12] ),
        .I3(\y_reg_n_0_[6][16] ),
        .I4(\y_reg_n_0_[6][14] ),
        .I5(\x[5][19]_i_41_n_0 ),
        .O(\x[5][19]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222B2BBB)) 
    \x[5][19]_i_32 
       (.I0(\y_reg_n_0_[6][7] ),
        .I1(\x[5][19]_i_42_n_0 ),
        .I2(\y_reg_n_0_[6][11] ),
        .I3(\y_reg_n_0_[6][15] ),
        .I4(\y_reg_n_0_[6][13] ),
        .I5(\x[5][19]_i_43_n_0 ),
        .O(\x[5][19]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_33 
       (.I0(\x[5][19]_i_29_n_0 ),
        .I1(\x[5][23]_i_48_n_0 ),
        .I2(\x[5][19]_i_44_n_0 ),
        .O(\x[5][19]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_34 
       (.I0(\x[5][19]_i_30_n_0 ),
        .I1(\x[5][19]_i_37_n_0 ),
        .I2(\x[5][19]_i_45_n_0 ),
        .O(\x[5][19]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_35 
       (.I0(\x[5][19]_i_31_n_0 ),
        .I1(\x[5][19]_i_39_n_0 ),
        .I2(\x[5][19]_i_46_n_0 ),
        .O(\x[5][19]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_36 
       (.I0(\x[5][19]_i_32_n_0 ),
        .I1(\x[5][19]_i_41_n_0 ),
        .I2(\x[5][19]_i_47_n_0 ),
        .O(\x[5][19]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \x[5][19]_i_37 
       (.I0(\x[5][19]_i_38_n_0 ),
        .I1(\y_reg_n_0_[6][10] ),
        .I2(\y_reg_n_0_[6][14] ),
        .I3(\y_reg_n_0_[6][16] ),
        .I4(\y_reg_n_0_[6][18] ),
        .O(\x[5][19]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][19]_i_38 
       (.I0(\y_reg_n_0_[6][15] ),
        .I1(\y_reg_n_0_[6][19] ),
        .I2(\y_reg_n_0_[6][17] ),
        .O(\x[5][19]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \x[5][19]_i_39 
       (.I0(\y_reg_n_0_[6][13] ),
        .I1(\y_reg_n_0_[6][15] ),
        .I2(\y_reg_n_0_[6][17] ),
        .I3(\y_reg_n_0_[6][9] ),
        .I4(\x[5][19]_i_48_n_0 ),
        .O(\x[5][19]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \x[5][19]_i_4 
       (.I0(\x_reg_n_0_[6][18] ),
        .I1(\x_reg[5][19]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][24] ),
        .I3(\x_reg_n_0_[6][27] ),
        .I4(\x[5][19]_i_13_n_0 ),
        .O(\x[5][19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][19]_i_40 
       (.I0(\y_reg_n_0_[6][17] ),
        .I1(\y_reg_n_0_[6][15] ),
        .I2(\y_reg_n_0_[6][13] ),
        .O(\x[5][19]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][19]_i_41 
       (.I0(\x[5][19]_i_48_n_0 ),
        .I1(\y_reg_n_0_[6][9] ),
        .I2(\y_reg_n_0_[6][17] ),
        .I3(\y_reg_n_0_[6][15] ),
        .I4(\y_reg_n_0_[6][13] ),
        .O(\x[5][19]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][19]_i_42 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\y_reg_n_0_[6][16] ),
        .I2(\y_reg_n_0_[6][14] ),
        .O(\x[5][19]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][19]_i_43 
       (.I0(\x[5][19]_i_40_n_0 ),
        .I1(\y_reg_n_0_[6][8] ),
        .I2(\y_reg_n_0_[6][12] ),
        .I3(\y_reg_n_0_[6][16] ),
        .I4(\y_reg_n_0_[6][14] ),
        .O(\x[5][19]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \x[5][19]_i_44 
       (.I0(\y_reg_n_0_[6][17] ),
        .I1(\y_reg_n_0_[6][19] ),
        .I2(\y_reg_n_0_[6][15] ),
        .I3(\x[5][23]_i_47_n_0 ),
        .I4(\y_reg_n_0_[6][11] ),
        .O(\x[5][19]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \x[5][19]_i_45 
       (.I0(\y_reg_n_0_[6][15] ),
        .I1(\y_reg_n_0_[6][19] ),
        .I2(\y_reg_n_0_[6][17] ),
        .I3(\x[5][23]_i_47_n_0 ),
        .I4(\y_reg_n_0_[6][11] ),
        .O(\x[5][19]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \x[5][19]_i_46 
       (.I0(\y_reg_n_0_[6][18] ),
        .I1(\y_reg_n_0_[6][16] ),
        .I2(\y_reg_n_0_[6][14] ),
        .I3(\x[5][19]_i_38_n_0 ),
        .I4(\y_reg_n_0_[6][10] ),
        .O(\x[5][19]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00E8E8FF)) 
    \x[5][19]_i_47 
       (.I0(\y_reg_n_0_[6][14] ),
        .I1(\y_reg_n_0_[6][16] ),
        .I2(\y_reg_n_0_[6][12] ),
        .I3(\x[5][19]_i_40_n_0 ),
        .I4(\y_reg_n_0_[6][8] ),
        .O(\x[5][19]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][19]_i_48 
       (.I0(\y_reg_n_0_[6][18] ),
        .I1(\y_reg_n_0_[6][16] ),
        .I2(\y_reg_n_0_[6][14] ),
        .O(\x[5][19]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][19]_i_5 
       (.I0(\x_reg_n_0_[6][23] ),
        .I1(\x_reg[5][19]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][17] ),
        .I3(\x[5][19]_i_14_n_0 ),
        .I4(\x_reg_n_0_[6][26] ),
        .O(\x[5][19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][19]_i_6 
       (.I0(\x[5][19]_i_2_n_0 ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg[5][23]_i_12_n_5 ),
        .I3(\x_reg_n_0_[6][21] ),
        .I4(\x_reg_n_0_[6][30] ),
        .I5(\x[5][23]_i_13_n_0 ),
        .O(\x[5][19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][19]_i_7 
       (.I0(\x[5][19]_i_3_n_0 ),
        .I1(\x_reg_n_0_[6][20] ),
        .I2(\x_reg[5][23]_i_12_n_6 ),
        .I3(\x_reg_n_0_[6][26] ),
        .I4(\x_reg_n_0_[6][29] ),
        .I5(\x[5][19]_i_10_n_0 ),
        .O(\x[5][19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][19]_i_8 
       (.I0(\x[5][19]_i_4_n_0 ),
        .I1(\x_reg_n_0_[6][25] ),
        .I2(\x_reg[5][23]_i_12_n_7 ),
        .I3(\x_reg_n_0_[6][19] ),
        .I4(\x_reg_n_0_[6][28] ),
        .I5(\x[5][19]_i_11_n_0 ),
        .O(\x[5][19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][19]_i_9 
       (.I0(\x[5][19]_i_5_n_0 ),
        .I1(\x_reg_n_0_[6][18] ),
        .I2(\x_reg[5][19]_i_12_n_4 ),
        .I3(\x_reg_n_0_[6][24] ),
        .I4(\x_reg_n_0_[6][27] ),
        .I5(\x[5][19]_i_13_n_0 ),
        .O(\x[5][19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0DD0D00DD00D0DD0)) 
    \x[5][23]_i_10 
       (.I0(\x_reg_n_0_[6][23] ),
        .I1(\x_reg[5][27]_i_10_n_7 ),
        .I2(\x_reg_n_0_[6][30] ),
        .I3(\x[5][23]_i_16_n_0 ),
        .I4(\x_reg_n_0_[6][24] ),
        .I5(\x_reg[5][27]_i_10_n_6 ),
        .O(\x[5][23]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[5][23]_i_11 
       (.I0(p_3_in0),
        .I1(\x_reg_n_0_[6][29] ),
        .O(\x[5][23]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][23]_i_13 
       (.I0(\x_reg_n_0_[6][28] ),
        .I1(\x_reg[5][23]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][22] ),
        .O(\x[5][23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][23]_i_14 
       (.I0(p_3_in0),
        .I1(\x_reg[5][27]_i_10_n_5 ),
        .I2(\x_reg_n_0_[6][25] ),
        .O(\x[5][23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \x[5][23]_i_15 
       (.I0(\x_reg[5][27]_i_10_n_7 ),
        .I1(\x_reg_n_0_[6][23] ),
        .O(\x[5][23]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x[5][23]_i_16 
       (.I0(\x_reg_n_0_[6][29] ),
        .I1(p_3_in0),
        .O(\x[5][23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \x[5][23]_i_17 
       (.I0(\x_reg[5][27]_i_10_n_6 ),
        .I1(\x_reg_n_0_[6][24] ),
        .I2(\x_reg_n_0_[6][29] ),
        .I3(p_3_in0),
        .I4(\x_reg_n_0_[6][30] ),
        .O(\x[5][23]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \x[5][23]_i_18 
       (.I0(\x_reg_n_0_[6][27] ),
        .I1(\x_reg[5][23]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][21] ),
        .O(\x[5][23]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \x[5][23]_i_19 
       (.I0(p_3_in0),
        .I1(\x_reg_n_0_[6][29] ),
        .I2(\x_reg_n_0_[6][23] ),
        .I3(\x_reg[5][27]_i_10_n_7 ),
        .O(\x[5][23]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFBBFBFFBB00B0BB0)) 
    \x[5][23]_i_2 
       (.I0(\x_reg[5][27]_i_10_n_6 ),
        .I1(\x_reg_n_0_[6][24] ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\x_reg[5][27]_i_10_n_5 ),
        .I4(p_3_in0),
        .I5(\x[5][23]_i_10_n_0 ),
        .O(\x[5][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \x[5][23]_i_20 
       (.I0(\x_reg[5][27]_i_20_n_5 ),
        .I1(sel),
        .I2(\x_reg[5][27]_i_22_n_4 ),
        .I3(p_3_in0),
        .I4(\x_reg_n_0_[6][19] ),
        .O(\x[5][23]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][23]_i_21 
       (.I0(\x_reg[5][27]_i_22_n_6 ),
        .I1(sel),
        .I2(\x_reg[5][27]_i_20_n_7 ),
        .I3(\x_reg_n_0_[6][29] ),
        .I4(\x_reg_n_0_[6][17] ),
        .O(\x[5][23]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][23]_i_22 
       (.I0(\x_reg[5][27]_i_22_n_7 ),
        .I1(sel),
        .I2(\x_reg[5][23]_i_28_n_4 ),
        .I3(\x_reg_n_0_[6][28] ),
        .I4(\x_reg_n_0_[6][16] ),
        .O(\x[5][23]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][23]_i_23 
       (.I0(\x_reg[5][23]_i_29_n_4 ),
        .I1(sel),
        .I2(\x_reg[5][23]_i_28_n_5 ),
        .I3(\x_reg_n_0_[6][27] ),
        .I4(\x_reg_n_0_[6][15] ),
        .O(\x[5][23]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h566A5656566A6A6A)) 
    \x[5][23]_i_24 
       (.I0(\x[5][23]_i_20_n_0 ),
        .I1(\x_reg_n_0_[6][18] ),
        .I2(\x_reg_n_0_[6][30] ),
        .I3(\x_reg[5][27]_i_20_n_6 ),
        .I4(sel),
        .I5(\x_reg[5][27]_i_22_n_5 ),
        .O(\x[5][23]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][23]_i_25 
       (.I0(\x[5][23]_i_21_n_0 ),
        .I1(\x_reg_n_0_[6][30] ),
        .I2(\x_reg[5][27]_i_22_n_5 ),
        .I3(sel),
        .I4(\x_reg[5][27]_i_20_n_6 ),
        .I5(\x_reg_n_0_[6][18] ),
        .O(\x[5][23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][23]_i_26 
       (.I0(\x[5][23]_i_22_n_0 ),
        .I1(\x_reg_n_0_[6][29] ),
        .I2(\x_reg[5][27]_i_22_n_6 ),
        .I3(sel),
        .I4(\x_reg[5][27]_i_20_n_7 ),
        .I5(\x_reg_n_0_[6][17] ),
        .O(\x[5][23]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][23]_i_27 
       (.I0(\x[5][23]_i_23_n_0 ),
        .I1(\x_reg_n_0_[6][28] ),
        .I2(\x_reg[5][27]_i_22_n_7 ),
        .I3(sel),
        .I4(\x_reg[5][23]_i_28_n_4 ),
        .I5(\x_reg_n_0_[6][16] ),
        .O(\x[5][23]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9A65659A659A9A65)) 
    \x[5][23]_i_3 
       (.I0(\x[5][23]_i_10_n_0 ),
        .I1(\x_reg[5][27]_i_10_n_6 ),
        .I2(\x_reg_n_0_[6][24] ),
        .I3(\x_reg_n_0_[6][25] ),
        .I4(\x_reg[5][27]_i_10_n_5 ),
        .I5(p_3_in0),
        .O(\x[5][23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][23]_i_30 
       (.I0(\x_reg[5][27]_i_22_n_7 ),
        .O(\x[5][23]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][23]_i_31 
       (.I0(\x_reg[5][23]_i_29_n_4 ),
        .O(\x[5][23]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][23]_i_32 
       (.I0(\x_reg[5][23]_i_29_n_5 ),
        .O(\x[5][23]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][23]_i_33 
       (.I0(\x_reg[5][23]_i_29_n_6 ),
        .O(\x[5][23]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h9996966600000000)) 
    \x[5][23]_i_34 
       (.I0(\y_reg_n_0_[6][15] ),
        .I1(\x[5][27]_i_41_n_0 ),
        .I2(\y_reg_n_0_[6][21] ),
        .I3(\y_reg_n_0_[6][23] ),
        .I4(\y_reg_n_0_[6][19] ),
        .I5(\x[5][23]_i_42_n_0 ),
        .O(\x[5][23]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \x[5][23]_i_35 
       (.I0(\y_reg_n_0_[6][14] ),
        .I1(\x[5][23]_i_43_n_0 ),
        .I2(\y_reg_n_0_[6][18] ),
        .I3(\y_reg_n_0_[6][20] ),
        .I4(\y_reg_n_0_[6][22] ),
        .I5(\x[5][23]_i_44_n_0 ),
        .O(\x[5][23]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888E8EEE)) 
    \x[5][23]_i_36 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\x[5][23]_i_45_n_0 ),
        .I2(\y_reg_n_0_[6][16] ),
        .I3(\y_reg_n_0_[6][20] ),
        .I4(\y_reg_n_0_[6][18] ),
        .I5(\x[5][23]_i_46_n_0 ),
        .O(\x[5][23]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222B2BBB)) 
    \x[5][23]_i_37 
       (.I0(\y_reg_n_0_[6][11] ),
        .I1(\x[5][23]_i_47_n_0 ),
        .I2(\y_reg_n_0_[6][15] ),
        .I3(\y_reg_n_0_[6][19] ),
        .I4(\y_reg_n_0_[6][17] ),
        .I5(\x[5][23]_i_48_n_0 ),
        .O(\x[5][23]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][23]_i_38 
       (.I0(\x[5][23]_i_34_n_0 ),
        .I1(\x[5][27]_i_42_n_0 ),
        .I2(\x[5][23]_i_49_n_0 ),
        .O(\x[5][23]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][23]_i_39 
       (.I0(\x[5][23]_i_35_n_0 ),
        .I1(\x[5][23]_i_42_n_0 ),
        .I2(\x[5][23]_i_50_n_0 ),
        .O(\x[5][23]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h6F0606066F6F6F06)) 
    \x[5][23]_i_4 
       (.I0(\x_reg[5][27]_i_10_n_7 ),
        .I1(\x_reg_n_0_[6][23] ),
        .I2(\x[5][23]_i_11_n_0 ),
        .I3(\x_reg_n_0_[6][28] ),
        .I4(\x_reg[5][23]_i_12_n_4 ),
        .I5(\x_reg_n_0_[6][22] ),
        .O(\x[5][23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][23]_i_40 
       (.I0(\x[5][23]_i_36_n_0 ),
        .I1(\x[5][23]_i_44_n_0 ),
        .I2(\x[5][23]_i_51_n_0 ),
        .O(\x[5][23]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][23]_i_41 
       (.I0(\x[5][23]_i_37_n_0 ),
        .I1(\x[5][23]_i_46_n_0 ),
        .I2(\x[5][23]_i_52_n_0 ),
        .O(\x[5][23]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \x[5][23]_i_42 
       (.I0(\x[5][23]_i_43_n_0 ),
        .I1(\y_reg_n_0_[6][14] ),
        .I2(\y_reg_n_0_[6][18] ),
        .I3(\y_reg_n_0_[6][20] ),
        .I4(\y_reg_n_0_[6][22] ),
        .O(\x[5][23]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][23]_i_43 
       (.I0(\y_reg_n_0_[6][19] ),
        .I1(\y_reg_n_0_[6][23] ),
        .I2(\y_reg_n_0_[6][21] ),
        .O(\x[5][23]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \x[5][23]_i_44 
       (.I0(\y_reg_n_0_[6][21] ),
        .I1(\y_reg_n_0_[6][19] ),
        .I2(\y_reg_n_0_[6][17] ),
        .I3(\y_reg_n_0_[6][13] ),
        .I4(\x[5][23]_i_53_n_0 ),
        .O(\x[5][23]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][23]_i_45 
       (.I0(\y_reg_n_0_[6][21] ),
        .I1(\y_reg_n_0_[6][19] ),
        .I2(\y_reg_n_0_[6][17] ),
        .O(\x[5][23]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][23]_i_46 
       (.I0(\x[5][23]_i_53_n_0 ),
        .I1(\y_reg_n_0_[6][13] ),
        .I2(\y_reg_n_0_[6][17] ),
        .I3(\y_reg_n_0_[6][19] ),
        .I4(\y_reg_n_0_[6][21] ),
        .O(\x[5][23]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][23]_i_47 
       (.I0(\y_reg_n_0_[6][16] ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg_n_0_[6][18] ),
        .O(\x[5][23]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][23]_i_48 
       (.I0(\x[5][23]_i_45_n_0 ),
        .I1(\y_reg_n_0_[6][12] ),
        .I2(\y_reg_n_0_[6][16] ),
        .I3(\y_reg_n_0_[6][20] ),
        .I4(\y_reg_n_0_[6][18] ),
        .O(\x[5][23]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \x[5][23]_i_49 
       (.I0(\y_reg_n_0_[6][21] ),
        .I1(\y_reg_n_0_[6][23] ),
        .I2(\y_reg_n_0_[6][19] ),
        .I3(\x[5][27]_i_41_n_0 ),
        .I4(\y_reg_n_0_[6][15] ),
        .O(\x[5][23]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][23]_i_5 
       (.I0(\x_reg_n_0_[6][27] ),
        .I1(\x_reg[5][23]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\x[5][23]_i_13_n_0 ),
        .I4(\x_reg_n_0_[6][30] ),
        .O(\x[5][23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \x[5][23]_i_50 
       (.I0(\y_reg_n_0_[6][19] ),
        .I1(\y_reg_n_0_[6][23] ),
        .I2(\y_reg_n_0_[6][21] ),
        .I3(\x[5][27]_i_41_n_0 ),
        .I4(\y_reg_n_0_[6][15] ),
        .O(\x[5][23]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \x[5][23]_i_51 
       (.I0(\y_reg_n_0_[6][22] ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg_n_0_[6][18] ),
        .I3(\x[5][23]_i_43_n_0 ),
        .I4(\y_reg_n_0_[6][14] ),
        .O(\x[5][23]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00E8E8FF)) 
    \x[5][23]_i_52 
       (.I0(\y_reg_n_0_[6][18] ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg_n_0_[6][16] ),
        .I3(\x[5][23]_i_45_n_0 ),
        .I4(\y_reg_n_0_[6][12] ),
        .O(\x[5][23]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][23]_i_53 
       (.I0(\y_reg_n_0_[6][22] ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg_n_0_[6][18] ),
        .O(\x[5][23]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][23]_i_6 
       (.I0(\x[5][23]_i_2_n_0 ),
        .I1(\x_reg[5][27]_i_10_n_5 ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(p_3_in0),
        .I4(\x_reg_n_0_[6][26] ),
        .I5(\x_reg[5][27]_i_10_n_4 ),
        .O(\x[5][23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA96A95A995A95695)) 
    \x[5][23]_i_7 
       (.I0(\x[5][23]_i_14_n_0 ),
        .I1(\x[5][23]_i_15_n_0 ),
        .I2(\x_reg[5][27]_i_10_n_6 ),
        .I3(\x_reg_n_0_[6][24] ),
        .I4(\x[5][23]_i_16_n_0 ),
        .I5(\x_reg_n_0_[6][30] ),
        .O(\x[5][23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9699)) 
    \x[5][23]_i_8 
       (.I0(\x[5][23]_i_4_n_0 ),
        .I1(\x[5][23]_i_17_n_0 ),
        .I2(\x_reg[5][27]_i_10_n_7 ),
        .I3(\x_reg_n_0_[6][23] ),
        .O(\x[5][23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    \x[5][23]_i_9 
       (.I0(\x_reg_n_0_[6][30] ),
        .I1(\x[5][23]_i_18_n_0 ),
        .I2(\x[5][23]_i_19_n_0 ),
        .I3(\x_reg_n_0_[6][28] ),
        .I4(\x_reg[5][23]_i_12_n_4 ),
        .I5(\x_reg_n_0_[6][22] ),
        .O(\x[5][23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][27]_i_11 
       (.I0(\x_reg[5][31]_i_36_n_7 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_38_n_6 ),
        .I3(\x_reg_n_0_[6][21] ),
        .I4(\x[5][27]_i_19_n_0 ),
        .O(\x[5][27]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][27]_i_12 
       (.I0(\x_reg[5][27]_i_20_n_4 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_38_n_7 ),
        .I3(\x_reg_n_0_[6][20] ),
        .I4(\x[5][27]_i_21_n_0 ),
        .O(\x[5][27]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000B8FF)) 
    \x[5][27]_i_13 
       (.I0(\x_reg[5][27]_i_20_n_5 ),
        .I1(sel),
        .I2(\x_reg[5][27]_i_22_n_4 ),
        .I3(p_3_in0),
        .I4(\x[5][27]_i_23_n_0 ),
        .O(\x[5][27]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h202A8A80)) 
    \x[5][27]_i_14 
       (.I0(\x_reg_n_0_[6][19] ),
        .I1(\x_reg[5][27]_i_20_n_5 ),
        .I2(sel),
        .I3(\x_reg[5][27]_i_22_n_4 ),
        .I4(p_3_in0),
        .O(\x[5][27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][27]_i_15 
       (.I0(\x[5][27]_i_11_n_0 ),
        .I1(\x[5][31]_i_40_n_0 ),
        .I2(\x_reg_n_0_[6][22] ),
        .I3(\x_reg[5][31]_i_38_n_5 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_36_n_6 ),
        .O(\x[5][27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][27]_i_16 
       (.I0(\x[5][27]_i_12_n_0 ),
        .I1(\x[5][27]_i_19_n_0 ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\x_reg[5][31]_i_38_n_6 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_36_n_7 ),
        .O(\x[5][27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][27]_i_17 
       (.I0(\x[5][27]_i_13_n_0 ),
        .I1(\x[5][27]_i_21_n_0 ),
        .I2(\x_reg_n_0_[6][20] ),
        .I3(\x_reg[5][31]_i_38_n_7 ),
        .I4(sel),
        .I5(\x_reg[5][27]_i_20_n_4 ),
        .O(\x[5][27]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6666669696966696)) 
    \x[5][27]_i_18 
       (.I0(\x[5][27]_i_14_n_0 ),
        .I1(\x[5][27]_i_23_n_0 ),
        .I2(p_3_in0),
        .I3(\x_reg[5][27]_i_22_n_4 ),
        .I4(sel),
        .I5(\x_reg[5][27]_i_20_n_5 ),
        .O(\x[5][27]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][27]_i_19 
       (.I0(\x_reg_n_0_[6][22] ),
        .I1(\x_reg[5][31]_i_38_n_5 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_36_n_6 ),
        .O(\x[5][27]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0BB0)) 
    \x[5][27]_i_2 
       (.I0(\x_reg[5][31]_i_9_n_6 ),
        .I1(\x_reg_n_0_[6][28] ),
        .I2(\x_reg[5][31]_i_9_n_5 ),
        .I3(\x_reg_n_0_[6][29] ),
        .O(\x[5][27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][27]_i_21 
       (.I0(\x_reg_n_0_[6][21] ),
        .I1(\x_reg[5][31]_i_38_n_6 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_36_n_7 ),
        .O(\x[5][27]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][27]_i_23 
       (.I0(\x_reg_n_0_[6][20] ),
        .I1(\x_reg[5][31]_i_38_n_7 ),
        .I2(sel),
        .I3(\x_reg[5][27]_i_20_n_4 ),
        .O(\x[5][27]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][27]_i_24 
       (.I0(\x_reg[5][31]_i_38_n_7 ),
        .O(\x[5][27]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][27]_i_25 
       (.I0(\x_reg[5][27]_i_22_n_4 ),
        .O(\x[5][27]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][27]_i_26 
       (.I0(\x_reg[5][27]_i_22_n_5 ),
        .O(\x[5][27]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][27]_i_27 
       (.I0(\x_reg[5][27]_i_22_n_6 ),
        .O(\x[5][27]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9996966600000000)) 
    \x[5][27]_i_28 
       (.I0(\y_reg_n_0_[6][19] ),
        .I1(\x[5][31]_i_75_n_0 ),
        .I2(\y_reg_n_0_[6][25] ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y_reg_n_0_[6][23] ),
        .I5(\x[5][27]_i_36_n_0 ),
        .O(\x[5][27]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \x[5][27]_i_29 
       (.I0(\y_reg_n_0_[6][18] ),
        .I1(\x[5][27]_i_37_n_0 ),
        .I2(\y_reg_n_0_[6][22] ),
        .I3(\y_reg_n_0_[6][24] ),
        .I4(\y_reg_n_0_[6][26] ),
        .I5(\x[5][27]_i_38_n_0 ),
        .O(\x[5][27]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h0BB0)) 
    \x[5][27]_i_3 
       (.I0(\x_reg[5][31]_i_9_n_7 ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg[5][31]_i_9_n_6 ),
        .I3(\x_reg_n_0_[6][28] ),
        .O(\x[5][27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888E8EEE)) 
    \x[5][27]_i_30 
       (.I0(\y_reg_n_0_[6][16] ),
        .I1(\x[5][27]_i_39_n_0 ),
        .I2(\y_reg_n_0_[6][20] ),
        .I3(\y_reg_n_0_[6][24] ),
        .I4(\y_reg_n_0_[6][22] ),
        .I5(\x[5][27]_i_40_n_0 ),
        .O(\x[5][27]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222B2BBB)) 
    \x[5][27]_i_31 
       (.I0(\y_reg_n_0_[6][15] ),
        .I1(\x[5][27]_i_41_n_0 ),
        .I2(\y_reg_n_0_[6][19] ),
        .I3(\y_reg_n_0_[6][23] ),
        .I4(\y_reg_n_0_[6][21] ),
        .I5(\x[5][27]_i_42_n_0 ),
        .O(\x[5][27]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][27]_i_32 
       (.I0(\x[5][27]_i_28_n_0 ),
        .I1(\x[5][31]_i_76_n_0 ),
        .I2(\x[5][27]_i_43_n_0 ),
        .O(\x[5][27]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][27]_i_33 
       (.I0(\x[5][27]_i_29_n_0 ),
        .I1(\x[5][27]_i_36_n_0 ),
        .I2(\x[5][27]_i_44_n_0 ),
        .O(\x[5][27]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][27]_i_34 
       (.I0(\x[5][27]_i_30_n_0 ),
        .I1(\x[5][27]_i_38_n_0 ),
        .I2(\x[5][27]_i_45_n_0 ),
        .O(\x[5][27]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][27]_i_35 
       (.I0(\x[5][27]_i_31_n_0 ),
        .I1(\x[5][27]_i_40_n_0 ),
        .I2(\x[5][27]_i_46_n_0 ),
        .O(\x[5][27]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \x[5][27]_i_36 
       (.I0(\x[5][27]_i_37_n_0 ),
        .I1(\y_reg_n_0_[6][18] ),
        .I2(\y_reg_n_0_[6][22] ),
        .I3(\y_reg_n_0_[6][24] ),
        .I4(\y_reg_n_0_[6][26] ),
        .O(\x[5][27]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][27]_i_37 
       (.I0(\y_reg_n_0_[6][23] ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg_n_0_[6][25] ),
        .O(\x[5][27]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \x[5][27]_i_38 
       (.I0(\y_reg_n_0_[6][25] ),
        .I1(\y_reg_n_0_[6][23] ),
        .I2(\y_reg_n_0_[6][21] ),
        .I3(\y_reg_n_0_[6][17] ),
        .I4(\x[5][27]_i_47_n_0 ),
        .O(\x[5][27]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][27]_i_39 
       (.I0(\y_reg_n_0_[6][25] ),
        .I1(\y_reg_n_0_[6][23] ),
        .I2(\y_reg_n_0_[6][21] ),
        .O(\x[5][27]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h0BB0)) 
    \x[5][27]_i_4 
       (.I0(\x_reg[5][27]_i_10_n_4 ),
        .I1(\x_reg_n_0_[6][26] ),
        .I2(\x_reg[5][31]_i_9_n_7 ),
        .I3(\x_reg_n_0_[6][27] ),
        .O(\x[5][27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][27]_i_40 
       (.I0(\x[5][27]_i_47_n_0 ),
        .I1(\y_reg_n_0_[6][17] ),
        .I2(\y_reg_n_0_[6][21] ),
        .I3(\y_reg_n_0_[6][23] ),
        .I4(\y_reg_n_0_[6][25] ),
        .O(\x[5][27]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][27]_i_41 
       (.I0(\y_reg_n_0_[6][20] ),
        .I1(\y_reg_n_0_[6][24] ),
        .I2(\y_reg_n_0_[6][22] ),
        .O(\x[5][27]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][27]_i_42 
       (.I0(\x[5][27]_i_39_n_0 ),
        .I1(\y_reg_n_0_[6][16] ),
        .I2(\y_reg_n_0_[6][20] ),
        .I3(\y_reg_n_0_[6][24] ),
        .I4(\y_reg_n_0_[6][22] ),
        .O(\x[5][27]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \x[5][27]_i_43 
       (.I0(\y_reg_n_0_[6][25] ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg_n_0_[6][23] ),
        .I3(\x[5][31]_i_75_n_0 ),
        .I4(\y_reg_n_0_[6][19] ),
        .O(\x[5][27]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \x[5][27]_i_44 
       (.I0(\y_reg_n_0_[6][23] ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg_n_0_[6][25] ),
        .I3(\x[5][31]_i_75_n_0 ),
        .I4(\y_reg_n_0_[6][19] ),
        .O(\x[5][27]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \x[5][27]_i_45 
       (.I0(\y_reg_n_0_[6][26] ),
        .I1(\y_reg_n_0_[6][24] ),
        .I2(\y_reg_n_0_[6][22] ),
        .I3(\x[5][27]_i_37_n_0 ),
        .I4(\y_reg_n_0_[6][18] ),
        .O(\x[5][27]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00E8E8FF)) 
    \x[5][27]_i_46 
       (.I0(\y_reg_n_0_[6][22] ),
        .I1(\y_reg_n_0_[6][24] ),
        .I2(\y_reg_n_0_[6][20] ),
        .I3(\x[5][27]_i_39_n_0 ),
        .I4(\y_reg_n_0_[6][16] ),
        .O(\x[5][27]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][27]_i_47 
       (.I0(\y_reg_n_0_[6][26] ),
        .I1(\y_reg_n_0_[6][24] ),
        .I2(\y_reg_n_0_[6][22] ),
        .O(\x[5][27]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h06660006)) 
    \x[5][27]_i_5 
       (.I0(\x_reg[5][27]_i_10_n_4 ),
        .I1(\x_reg_n_0_[6][26] ),
        .I2(p_3_in0),
        .I3(\x_reg_n_0_[6][25] ),
        .I4(\x_reg[5][27]_i_10_n_5 ),
        .O(\x[5][27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \x[5][27]_i_6 
       (.I0(\x_reg[5][31]_i_9_n_5 ),
        .I1(\x_reg_n_0_[6][29] ),
        .I2(\x_reg[5][31]_i_9_n_4 ),
        .I3(\x_reg_n_0_[6][30] ),
        .I4(\x[5][27]_i_2_n_0 ),
        .O(\x[5][27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \x[5][27]_i_7 
       (.I0(\x_reg[5][31]_i_9_n_6 ),
        .I1(\x_reg_n_0_[6][28] ),
        .I2(\x_reg[5][31]_i_9_n_5 ),
        .I3(\x_reg_n_0_[6][29] ),
        .I4(\x[5][27]_i_3_n_0 ),
        .O(\x[5][27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \x[5][27]_i_8 
       (.I0(\x_reg[5][31]_i_9_n_7 ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg[5][31]_i_9_n_6 ),
        .I3(\x_reg_n_0_[6][28] ),
        .I4(\x[5][27]_i_4_n_0 ),
        .O(\x[5][27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \x[5][27]_i_9 
       (.I0(\x_reg[5][27]_i_10_n_4 ),
        .I1(\x_reg_n_0_[6][26] ),
        .I2(\x_reg[5][31]_i_9_n_7 ),
        .I3(\x_reg_n_0_[6][27] ),
        .I4(\x[5][27]_i_5_n_0 ),
        .O(\x[5][27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][31]_i_10 
       (.I0(\x_reg[5][31]_i_25_n_4 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_26_n_7 ),
        .I3(\x_reg_n_0_[6][28] ),
        .I4(\x[5][31]_i_27_n_0 ),
        .O(\x[5][31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][31]_i_11 
       (.I0(\x_reg[5][31]_i_25_n_5 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_28_n_4 ),
        .I3(\x_reg_n_0_[6][27] ),
        .I4(\x[5][31]_i_29_n_0 ),
        .O(\x[5][31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][31]_i_12 
       (.I0(\x_reg[5][31]_i_25_n_6 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_28_n_5 ),
        .I3(\x_reg_n_0_[6][26] ),
        .I4(\x[5][31]_i_30_n_0 ),
        .O(\x[5][31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9C9C9CC6C6C69CC6)) 
    \x[5][31]_i_13 
       (.I0(\x[5][31]_i_31_n_0 ),
        .I1(\x[5][31]_i_32_n_0 ),
        .I2(\x_reg_n_0_[6][30] ),
        .I3(\x_reg[5][31]_i_26_n_5 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_33_n_6 ),
        .O(\x[5][31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][31]_i_14 
       (.I0(\x[5][31]_i_10_n_0 ),
        .I1(\x[5][31]_i_34_n_0 ),
        .I2(\x_reg_n_0_[6][29] ),
        .I3(\x_reg[5][31]_i_26_n_6 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_33_n_7 ),
        .O(\x[5][31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][31]_i_15 
       (.I0(\x[5][31]_i_11_n_0 ),
        .I1(\x[5][31]_i_27_n_0 ),
        .I2(\x_reg_n_0_[6][28] ),
        .I3(\x_reg[5][31]_i_26_n_7 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_25_n_4 ),
        .O(\x[5][31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][31]_i_16 
       (.I0(\x[5][31]_i_12_n_0 ),
        .I1(\x[5][31]_i_29_n_0 ),
        .I2(\x_reg_n_0_[6][27] ),
        .I3(\x_reg[5][31]_i_28_n_4 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_25_n_5 ),
        .O(\x[5][31]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][31]_i_17 
       (.I0(\x_reg[5][31]_i_25_n_7 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_28_n_6 ),
        .I3(\x_reg_n_0_[6][25] ),
        .I4(\x[5][31]_i_35_n_0 ),
        .O(\x[5][31]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][31]_i_18 
       (.I0(\x_reg[5][31]_i_36_n_4 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_28_n_7 ),
        .I3(\x_reg_n_0_[6][24] ),
        .I4(\x[5][31]_i_37_n_0 ),
        .O(\x[5][31]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][31]_i_19 
       (.I0(\x_reg[5][31]_i_36_n_5 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_38_n_4 ),
        .I3(\x_reg_n_0_[6][23] ),
        .I4(\x[5][31]_i_39_n_0 ),
        .O(\x[5][31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \x[5][31]_i_20 
       (.I0(\x_reg[5][31]_i_36_n_6 ),
        .I1(sel),
        .I2(\x_reg[5][31]_i_38_n_5 ),
        .I3(\x_reg_n_0_[6][22] ),
        .I4(\x[5][31]_i_40_n_0 ),
        .O(\x[5][31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][31]_i_21 
       (.I0(\x[5][31]_i_17_n_0 ),
        .I1(\x[5][31]_i_30_n_0 ),
        .I2(\x_reg_n_0_[6][26] ),
        .I3(\x_reg[5][31]_i_28_n_5 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_25_n_6 ),
        .O(\x[5][31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][31]_i_22 
       (.I0(\x[5][31]_i_18_n_0 ),
        .I1(\x[5][31]_i_35_n_0 ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\x_reg[5][31]_i_28_n_6 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_25_n_7 ),
        .O(\x[5][31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][31]_i_23 
       (.I0(\x[5][31]_i_19_n_0 ),
        .I1(\x[5][31]_i_37_n_0 ),
        .I2(\x_reg_n_0_[6][24] ),
        .I3(\x_reg[5][31]_i_28_n_7 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_36_n_4 ),
        .O(\x[5][31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \x[5][31]_i_24 
       (.I0(\x[5][31]_i_20_n_0 ),
        .I1(\x[5][31]_i_39_n_0 ),
        .I2(\x_reg_n_0_[6][23] ),
        .I3(\x_reg[5][31]_i_38_n_4 ),
        .I4(sel),
        .I5(\x_reg[5][31]_i_36_n_5 ),
        .O(\x[5][31]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][31]_i_27 
       (.I0(\x_reg_n_0_[6][29] ),
        .I1(\x_reg[5][31]_i_26_n_6 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_33_n_7 ),
        .O(\x[5][31]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][31]_i_29 
       (.I0(\x_reg_n_0_[6][28] ),
        .I1(\x_reg[5][31]_i_26_n_7 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_25_n_4 ),
        .O(\x[5][31]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hEE8E)) 
    \x[5][31]_i_3 
       (.I0(p_3_in0),
        .I1(\x_reg[5][31]_i_2_n_7 ),
        .I2(\x_reg_n_0_[6][30] ),
        .I3(\x_reg[5][31]_i_9_n_4 ),
        .O(\x[5][31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][31]_i_30 
       (.I0(\x_reg_n_0_[6][27] ),
        .I1(\x_reg[5][31]_i_28_n_4 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_25_n_5 ),
        .O(\x[5][31]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \x[5][31]_i_31 
       (.I0(\x_reg_n_0_[6][29] ),
        .I1(\x_reg[5][31]_i_26_n_6 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_33_n_7 ),
        .O(\x[5][31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h65A9)) 
    \x[5][31]_i_32 
       (.I0(p_3_in0),
        .I1(sel),
        .I2(\x_reg[5][31]_i_26_n_0 ),
        .I3(\x_reg[5][31]_i_33_n_5 ),
        .O(\x[5][31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][31]_i_34 
       (.I0(\x_reg_n_0_[6][30] ),
        .I1(\x_reg[5][31]_i_26_n_5 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_33_n_6 ),
        .O(\x[5][31]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][31]_i_35 
       (.I0(\x_reg_n_0_[6][26] ),
        .I1(\x_reg[5][31]_i_28_n_5 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_25_n_6 ),
        .O(\x[5][31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][31]_i_37 
       (.I0(\x_reg_n_0_[6][25] ),
        .I1(\x_reg[5][31]_i_28_n_6 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_25_n_7 ),
        .O(\x[5][31]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][31]_i_39 
       (.I0(\x_reg_n_0_[6][24] ),
        .I1(\x_reg[5][31]_i_28_n_7 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_36_n_4 ),
        .O(\x[5][31]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h0BB0)) 
    \x[5][31]_i_4 
       (.I0(\x_reg[5][31]_i_9_n_5 ),
        .I1(\x_reg_n_0_[6][29] ),
        .I2(\x_reg[5][31]_i_9_n_4 ),
        .I3(\x_reg_n_0_[6][30] ),
        .O(\x[5][31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \x[5][31]_i_40 
       (.I0(\x_reg_n_0_[6][23] ),
        .I1(\x_reg[5][31]_i_38_n_4 ),
        .I2(sel),
        .I3(\x_reg[5][31]_i_36_n_5 ),
        .O(\x[5][31]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_41 
       (.I0(\x_reg[5][31]_i_26_n_7 ),
        .O(\x[5][31]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_42 
       (.I0(\x_reg[5][31]_i_28_n_4 ),
        .O(\x[5][31]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_43 
       (.I0(\x_reg[5][31]_i_28_n_5 ),
        .O(\x[5][31]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_44 
       (.I0(\x_reg[5][31]_i_28_n_6 ),
        .O(\x[5][31]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[5][31]_i_45 
       (.I0(\y_reg_n_0_[6][30] ),
        .I1(sel),
        .O(\x[5][31]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[5][31]_i_46 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(\y_reg_n_0_[6][30] ),
        .O(\x[5][31]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[5][31]_i_47 
       (.I0(\y_reg_n_0_[6][28] ),
        .I1(\y_reg_n_0_[6][29] ),
        .O(\x[5][31]_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_48 
       (.I0(\y_reg_n_0_[6][27] ),
        .O(\x[5][31]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h60006660)) 
    \x[5][31]_i_49 
       (.I0(\y_reg_n_0_[6][30] ),
        .I1(\y_reg_n_0_[6][25] ),
        .I2(\y_reg_n_0_[6][24] ),
        .I3(sel),
        .I4(\y_reg_n_0_[6][29] ),
        .O(\x[5][31]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[5][31]_i_5 
       (.I0(\x_reg[5][31]_i_2_n_5 ),
        .I1(\x_reg[5][31]_i_2_n_4 ),
        .O(\x[5][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h10717171F7FFFFFF)) 
    \x[5][31]_i_50 
       (.I0(\y_reg_n_0_[6][30] ),
        .I1(\y_reg_n_0_[6][28] ),
        .I2(\y_reg_n_0_[6][23] ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y_reg_n_0_[6][29] ),
        .I5(\x[5][31]_i_69_n_0 ),
        .O(\x[5][31]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[5][31]_i_51 
       (.I0(\y_reg_n_0_[6][27] ),
        .I1(\y_reg_n_0_[6][28] ),
        .O(\x[5][31]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hFBB0044F)) 
    \x[5][31]_i_52 
       (.I0(\y_reg_n_0_[6][25] ),
        .I1(\y_reg_n_0_[6][30] ),
        .I2(sel),
        .I3(\y_reg_n_0_[6][26] ),
        .I4(\y_reg_n_0_[6][27] ),
        .O(\x[5][31]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h69699669)) 
    \x[5][31]_i_53 
       (.I0(\x[5][31]_i_49_n_0 ),
        .I1(\y_reg_n_0_[6][26] ),
        .I2(sel),
        .I3(\y_reg_n_0_[6][30] ),
        .I4(\y_reg_n_0_[6][25] ),
        .O(\x[5][31]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h6A5695A995A96A56)) 
    \x[5][31]_i_54 
       (.I0(\x[5][31]_i_50_n_0 ),
        .I1(\y_reg_n_0_[6][24] ),
        .I2(sel),
        .I3(\y_reg_n_0_[6][29] ),
        .I4(\y_reg_n_0_[6][30] ),
        .I5(\y_reg_n_0_[6][25] ),
        .O(\x[5][31]_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_55 
       (.I0(\x_reg[5][31]_i_26_n_5 ),
        .O(\x[5][31]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_56 
       (.I0(\x_reg[5][31]_i_26_n_6 ),
        .O(\x[5][31]_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_57 
       (.I0(\x_reg[5][31]_i_28_n_7 ),
        .O(\x[5][31]_i_57_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_58 
       (.I0(\x_reg[5][31]_i_38_n_4 ),
        .O(\x[5][31]_i_58_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_59 
       (.I0(\x_reg[5][31]_i_38_n_5 ),
        .O(\x[5][31]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x[5][31]_i_6 
       (.I0(\x_reg[5][31]_i_2_n_6 ),
        .I1(\x_reg[5][31]_i_2_n_5 ),
        .O(\x[5][31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[5][31]_i_60 
       (.I0(\x_reg[5][31]_i_38_n_6 ),
        .O(\x[5][31]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h9666900690060000)) 
    \x[5][31]_i_61 
       (.I0(\y_reg_n_0_[6][23] ),
        .I1(\x[5][31]_i_70_n_0 ),
        .I2(\y_reg_n_0_[6][29] ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(sel),
        .I5(\y_reg_n_0_[6][22] ),
        .O(\x[5][31]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h8EEFEFFF0008088E)) 
    \x[5][31]_i_62 
       (.I0(\x[5][31]_i_71_n_0 ),
        .I1(\y_reg_n_0_[6][21] ),
        .I2(\y_reg_n_0_[6][26] ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y_reg_n_0_[6][30] ),
        .I5(\x[5][31]_i_72_n_0 ),
        .O(\x[5][31]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888E8EEE)) 
    \x[5][31]_i_63 
       (.I0(\y_reg_n_0_[6][20] ),
        .I1(\x[5][31]_i_73_n_0 ),
        .I2(\y_reg_n_0_[6][24] ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y_reg_n_0_[6][26] ),
        .I5(\x[5][31]_i_74_n_0 ),
        .O(\x[5][31]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222B2BBB)) 
    \x[5][31]_i_64 
       (.I0(\y_reg_n_0_[6][19] ),
        .I1(\x[5][31]_i_75_n_0 ),
        .I2(\y_reg_n_0_[6][23] ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y_reg_n_0_[6][25] ),
        .I5(\x[5][31]_i_76_n_0 ),
        .O(\x[5][31]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h6999966696666999)) 
    \x[5][31]_i_65 
       (.I0(\x[5][31]_i_61_n_0 ),
        .I1(\x[5][31]_i_77_n_0 ),
        .I2(\y_reg_n_0_[6][30] ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y[5][23]_i_12_n_0 ),
        .I5(\y_reg_n_0_[6][24] ),
        .O(\x[5][31]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hA99595A9566A6A56)) 
    \x[5][31]_i_66 
       (.I0(\x[5][31]_i_62_n_0 ),
        .I1(\y_reg_n_0_[6][22] ),
        .I2(sel),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y_reg_n_0_[6][29] ),
        .I5(\x[5][31]_i_78_n_0 ),
        .O(\x[5][31]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h9996966666696999)) 
    \x[5][31]_i_67 
       (.I0(\x[5][31]_i_63_n_0 ),
        .I1(\x[5][31]_i_79_n_0 ),
        .I2(\y_reg_n_0_[6][30] ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y_reg_n_0_[6][26] ),
        .I5(\x[5][31]_i_72_n_0 ),
        .O(\x[5][31]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][31]_i_68 
       (.I0(\x[5][31]_i_64_n_0 ),
        .I1(\x[5][31]_i_74_n_0 ),
        .I2(\x[5][31]_i_80_n_0 ),
        .O(\x[5][31]_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][31]_i_69 
       (.I0(\y_reg_n_0_[6][24] ),
        .I1(sel),
        .I2(\y_reg_n_0_[6][29] ),
        .O(\x[5][31]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'hFBB0044F)) 
    \x[5][31]_i_7 
       (.I0(\x_reg[5][31]_i_9_n_4 ),
        .I1(\x_reg_n_0_[6][30] ),
        .I2(\x_reg[5][31]_i_2_n_7 ),
        .I3(p_3_in0),
        .I4(\x_reg[5][31]_i_2_n_6 ),
        .O(\x[5][31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[5][31]_i_70 
       (.I0(\y_reg_n_0_[6][28] ),
        .I1(\y_reg_n_0_[6][30] ),
        .O(\x[5][31]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \x[5][31]_i_71 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg_n_0_[6][25] ),
        .O(\x[5][31]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \x[5][31]_i_72 
       (.I0(sel),
        .I1(\y_reg_n_0_[6][22] ),
        .I2(\y_reg_n_0_[6][29] ),
        .I3(\y_reg_n_0_[6][27] ),
        .O(\x[5][31]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][31]_i_73 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg_n_0_[6][25] ),
        .O(\x[5][31]_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][31]_i_74 
       (.I0(\x[5][31]_i_81_n_0 ),
        .I1(\y_reg_n_0_[6][21] ),
        .I2(\y_reg_n_0_[6][25] ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y_reg_n_0_[6][29] ),
        .O(\x[5][31]_i_74_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][31]_i_75 
       (.I0(\y_reg_n_0_[6][24] ),
        .I1(\y_reg_n_0_[6][28] ),
        .I2(\y_reg_n_0_[6][26] ),
        .O(\x[5][31]_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \x[5][31]_i_76 
       (.I0(\x[5][31]_i_73_n_0 ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg_n_0_[6][24] ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y_reg_n_0_[6][26] ),
        .O(\x[5][31]_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h6F060606)) 
    \x[5][31]_i_77 
       (.I0(\y_reg_n_0_[6][30] ),
        .I1(\y_reg_n_0_[6][28] ),
        .I2(\y_reg_n_0_[6][23] ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y_reg_n_0_[6][29] ),
        .O(\x[5][31]_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \x[5][31]_i_78 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg_n_0_[6][28] ),
        .I3(\y_reg_n_0_[6][30] ),
        .I4(\y_reg_n_0_[6][23] ),
        .O(\x[5][31]_i_78_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \x[5][31]_i_79 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg_n_0_[6][25] ),
        .I3(\y_reg_n_0_[6][21] ),
        .I4(\x[5][31]_i_81_n_0 ),
        .O(\x[5][31]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'h69699669)) 
    \x[5][31]_i_8 
       (.I0(\x[5][31]_i_4_n_0 ),
        .I1(p_3_in0),
        .I2(\x_reg[5][31]_i_2_n_7 ),
        .I3(\x_reg_n_0_[6][30] ),
        .I4(\x_reg[5][31]_i_9_n_4 ),
        .O(\x[5][31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00E8E8FF)) 
    \x[5][31]_i_80 
       (.I0(\y_reg_n_0_[6][26] ),
        .I1(\y_reg_n_0_[6][28] ),
        .I2(\y_reg_n_0_[6][24] ),
        .I3(\x[5][31]_i_73_n_0 ),
        .I4(\y_reg_n_0_[6][20] ),
        .O(\x[5][31]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \x[5][31]_i_81 
       (.I0(\y_reg_n_0_[6][30] ),
        .I1(\y_reg_n_0_[6][28] ),
        .I2(\y_reg_n_0_[6][26] ),
        .O(\x[5][31]_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][3]_i_10 
       (.I0(\x_reg_n_0_[6][11] ),
        .I1(\x_reg[5][7]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][5] ),
        .O(\x[5][3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \x[5][3]_i_2 
       (.I0(\x_reg_n_0_[6][4] ),
        .I1(\x_reg[5][7]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][10] ),
        .I3(\x_reg_n_0_[6][13] ),
        .I4(\x[5][3]_i_10_n_0 ),
        .O(\x[5][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F880F88080F8)) 
    \x[5][3]_i_3 
       (.I0(\x_reg_n_0_[6][11] ),
        .I1(\x_reg_n_0_[6][9] ),
        .I2(\x_reg_n_0_[6][12] ),
        .I3(\x_reg_n_0_[6][10] ),
        .I4(\x_reg[5][7]_i_12_n_6 ),
        .I5(\x_reg_n_0_[6][4] ),
        .O(\x[5][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \x[5][3]_i_4 
       (.I0(\x_reg_n_0_[6][4] ),
        .I1(\x_reg[5][7]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][10] ),
        .I3(\x_reg_n_0_[6][9] ),
        .I4(\x_reg_n_0_[6][11] ),
        .I5(\x_reg_n_0_[6][12] ),
        .O(\x[5][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[5][3]_i_5 
       (.I0(\x_reg_n_0_[6][9] ),
        .I1(\x_reg_n_0_[6][11] ),
        .O(\x[5][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][3]_i_6 
       (.I0(\x[5][3]_i_2_n_0 ),
        .I1(\x_reg_n_0_[6][11] ),
        .I2(\x_reg[5][7]_i_12_n_5 ),
        .I3(\x_reg_n_0_[6][5] ),
        .I4(\x_reg_n_0_[6][14] ),
        .I5(\x[5][7]_i_14_n_0 ),
        .O(\x[5][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][3]_i_7 
       (.I0(\x[5][3]_i_3_n_0 ),
        .I1(\x_reg_n_0_[6][4] ),
        .I2(\x_reg[5][7]_i_12_n_6 ),
        .I3(\x_reg_n_0_[6][10] ),
        .I4(\x_reg_n_0_[6][13] ),
        .I5(\x[5][3]_i_10_n_0 ),
        .O(\x[5][3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \x[5][3]_i_8 
       (.I0(\x[5][3]_i_4_n_0 ),
        .I1(\x_reg_n_0_[6][3] ),
        .I2(\x_reg[5][7]_i_12_n_7 ),
        .O(\x[5][3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \x[5][3]_i_9 
       (.I0(\x_reg[5][7]_i_12_n_7 ),
        .I1(\x_reg_n_0_[6][3] ),
        .I2(\x_reg_n_0_[6][11] ),
        .I3(\x_reg_n_0_[6][9] ),
        .O(\x[5][3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][7]_i_10 
       (.I0(\x_reg_n_0_[6][15] ),
        .I1(\x_reg[5][11]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][9] ),
        .O(\x[5][7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][7]_i_11 
       (.I0(\x_reg_n_0_[6][14] ),
        .I1(\x_reg[5][11]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][8] ),
        .O(\x[5][7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][7]_i_13 
       (.I0(\x_reg_n_0_[6][13] ),
        .I1(\x_reg[5][11]_i_12_n_7 ),
        .I2(\x_reg_n_0_[6][7] ),
        .O(\x[5][7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][7]_i_14 
       (.I0(\x_reg_n_0_[6][12] ),
        .I1(\x_reg[5][7]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][6] ),
        .O(\x[5][7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \x[5][7]_i_15 
       (.I0(\x_reg_n_0_[6][2] ),
        .I1(\x_reg_n_0_[6][14] ),
        .I2(\x_reg[5][11]_i_24_n_5 ),
        .I3(sel),
        .I4(\x_reg[5][11]_i_23_n_6 ),
        .O(\x[5][7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \x[5][7]_i_16 
       (.I0(\x_reg[5][11]_i_24_n_6 ),
        .I1(sel),
        .I2(\x_reg[5][11]_i_23_n_7 ),
        .I3(\x_reg_n_0_[6][13] ),
        .I4(\x_reg_n_0_[6][1] ),
        .O(\x[5][7]_i_16_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x[5][7]_i_17 
       (.I0(\x_reg_n_0_[6][12] ),
        .I1(\x_reg[5][11]_i_24_n_7 ),
        .I2(\x_reg_n_0_[6][0] ),
        .O(\x[5][7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][7]_i_18 
       (.I0(\x[5][7]_i_15_n_0 ),
        .I1(\x_reg_n_0_[6][15] ),
        .I2(\x_reg[5][11]_i_24_n_4 ),
        .I3(sel),
        .I4(\x_reg[5][11]_i_23_n_5 ),
        .I5(\x_reg_n_0_[6][3] ),
        .O(\x[5][7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][7]_i_19 
       (.I0(\x[5][7]_i_16_n_0 ),
        .I1(\x_reg_n_0_[6][14] ),
        .I2(\x_reg[5][11]_i_24_n_5 ),
        .I3(sel),
        .I4(\x_reg[5][11]_i_23_n_6 ),
        .I5(\x_reg_n_0_[6][2] ),
        .O(\x[5][7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \x[5][7]_i_2 
       (.I0(\x_reg_n_0_[6][8] ),
        .I1(\x_reg[5][11]_i_12_n_6 ),
        .I2(\x_reg_n_0_[6][14] ),
        .I3(\x_reg_n_0_[6][17] ),
        .I4(\x[5][7]_i_10_n_0 ),
        .O(\x[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \x[5][7]_i_20 
       (.I0(\x[5][7]_i_17_n_0 ),
        .I1(\x_reg_n_0_[6][13] ),
        .I2(\x_reg[5][11]_i_24_n_6 ),
        .I3(sel),
        .I4(\x_reg[5][11]_i_23_n_7 ),
        .I5(\x_reg_n_0_[6][1] ),
        .O(\x[5][7]_i_20_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[5][7]_i_21 
       (.I0(\x_reg_n_0_[6][12] ),
        .I1(\x_reg[5][11]_i_24_n_7 ),
        .I2(\x_reg_n_0_[6][0] ),
        .O(\x[5][7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][7]_i_3 
       (.I0(\x_reg_n_0_[6][13] ),
        .I1(\x_reg[5][11]_i_12_n_7 ),
        .I2(\x_reg_n_0_[6][7] ),
        .I3(\x[5][7]_i_11_n_0 ),
        .I4(\x_reg_n_0_[6][16] ),
        .O(\x[5][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \x[5][7]_i_4 
       (.I0(\x_reg_n_0_[6][6] ),
        .I1(\x_reg[5][7]_i_12_n_4 ),
        .I2(\x_reg_n_0_[6][12] ),
        .I3(\x_reg_n_0_[6][15] ),
        .I4(\x[5][7]_i_13_n_0 ),
        .O(\x[5][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \x[5][7]_i_5 
       (.I0(\x_reg_n_0_[6][11] ),
        .I1(\x_reg[5][7]_i_12_n_5 ),
        .I2(\x_reg_n_0_[6][5] ),
        .I3(\x[5][7]_i_14_n_0 ),
        .I4(\x_reg_n_0_[6][14] ),
        .O(\x[5][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][7]_i_6 
       (.I0(\x[5][7]_i_2_n_0 ),
        .I1(\x_reg_n_0_[6][15] ),
        .I2(\x_reg[5][11]_i_12_n_5 ),
        .I3(\x_reg_n_0_[6][9] ),
        .I4(\x_reg_n_0_[6][18] ),
        .I5(\x[5][11]_i_14_n_0 ),
        .O(\x[5][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][7]_i_7 
       (.I0(\x[5][7]_i_3_n_0 ),
        .I1(\x_reg_n_0_[6][8] ),
        .I2(\x_reg[5][11]_i_12_n_6 ),
        .I3(\x_reg_n_0_[6][14] ),
        .I4(\x_reg_n_0_[6][17] ),
        .I5(\x[5][7]_i_10_n_0 ),
        .O(\x[5][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \x[5][7]_i_8 
       (.I0(\x[5][7]_i_4_n_0 ),
        .I1(\x_reg_n_0_[6][13] ),
        .I2(\x_reg[5][11]_i_12_n_7 ),
        .I3(\x_reg_n_0_[6][7] ),
        .I4(\x_reg_n_0_[6][16] ),
        .I5(\x[5][7]_i_11_n_0 ),
        .O(\x[5][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \x[5][7]_i_9 
       (.I0(\x[5][7]_i_5_n_0 ),
        .I1(\x_reg_n_0_[6][6] ),
        .I2(\x_reg[5][7]_i_12_n_4 ),
        .I3(\x_reg_n_0_[6][12] ),
        .I4(\x_reg_n_0_[6][15] ),
        .I5(\x[5][7]_i_13_n_0 ),
        .O(\x[5][7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][0]_i_1 
       (.I0(x_in_IBUF[0]),
        .I1(range45),
        .I2(y_in_IBUF[0]),
        .O(\x[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][10]_i_1 
       (.I0(\x_reg[6][12]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[10]),
        .I3(range45),
        .I4(abs_y_in[10]),
        .O(\x[6][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][10]_i_2 
       (.I0(\y_reg[6][12]_i_2_n_6 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[10]),
        .O(abs_y_in[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][11]_i_1 
       (.I0(\x_reg[6][12]_i_2_n_5 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[11]),
        .I3(range45),
        .I4(abs_y_in[11]),
        .O(\x[6][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][11]_i_2 
       (.I0(\y_reg[6][12]_i_2_n_5 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[11]),
        .O(abs_y_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][12]_i_1 
       (.I0(\x_reg[6][12]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[12]),
        .I3(range45),
        .I4(abs_y_in[12]),
        .O(\x[6][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][12]_i_3 
       (.I0(\y_reg[6][12]_i_2_n_4 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[12]),
        .O(abs_y_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][12]_i_4 
       (.I0(x_in_IBUF[12]),
        .O(\x[6][12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][12]_i_5 
       (.I0(x_in_IBUF[11]),
        .O(\x[6][12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][12]_i_6 
       (.I0(x_in_IBUF[10]),
        .O(\x[6][12]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][12]_i_7 
       (.I0(x_in_IBUF[9]),
        .O(\x[6][12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][13]_i_1 
       (.I0(\x_reg[6][16]_i_2_n_7 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[13]),
        .I3(range45),
        .I4(abs_y_in[13]),
        .O(\x[6][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][13]_i_2 
       (.I0(\y_reg[6][16]_i_2_n_7 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[13]),
        .O(abs_y_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][14]_i_1 
       (.I0(\x_reg[6][16]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[14]),
        .I3(range45),
        .I4(abs_y_in[14]),
        .O(\x[6][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][14]_i_2 
       (.I0(\y_reg[6][16]_i_2_n_6 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[14]),
        .O(abs_y_in[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][15]_i_1 
       (.I0(\x_reg[6][16]_i_2_n_5 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[15]),
        .I3(range45),
        .I4(abs_y_in[15]),
        .O(\x[6][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][15]_i_2 
       (.I0(\y_reg[6][16]_i_2_n_5 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[15]),
        .O(abs_y_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][16]_i_1 
       (.I0(\x_reg[6][16]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[16]),
        .I3(range45),
        .I4(abs_y_in[16]),
        .O(\x[6][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][16]_i_3 
       (.I0(\y_reg[6][16]_i_2_n_4 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[16]),
        .O(abs_y_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][16]_i_4 
       (.I0(x_in_IBUF[16]),
        .O(\x[6][16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][16]_i_5 
       (.I0(x_in_IBUF[15]),
        .O(\x[6][16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][16]_i_6 
       (.I0(x_in_IBUF[14]),
        .O(\x[6][16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][16]_i_7 
       (.I0(x_in_IBUF[13]),
        .O(\x[6][16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][17]_i_1 
       (.I0(\x_reg[6][20]_i_2_n_7 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[17]),
        .I3(range45),
        .I4(abs_y_in[17]),
        .O(\x[6][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][17]_i_2 
       (.I0(\y_reg[6][20]_i_2_n_7 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[17]),
        .O(abs_y_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][18]_i_1 
       (.I0(\x_reg[6][20]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[18]),
        .I3(range45),
        .I4(abs_y_in[18]),
        .O(\x[6][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][18]_i_2 
       (.I0(\y_reg[6][20]_i_2_n_6 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[18]),
        .O(abs_y_in[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][19]_i_1 
       (.I0(\x_reg[6][20]_i_2_n_5 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[19]),
        .I3(range45),
        .I4(abs_y_in[19]),
        .O(\x[6][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][19]_i_2 
       (.I0(\y_reg[6][20]_i_2_n_5 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[19]),
        .O(abs_y_in[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][1]_i_1 
       (.I0(\x_reg[6][4]_i_2_n_7 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[1]),
        .I3(range45),
        .I4(abs_y_in[1]),
        .O(\x[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][1]_i_2 
       (.I0(\y_reg[6][4]_i_2_n_7 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[1]),
        .O(abs_y_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][20]_i_1 
       (.I0(\x_reg[6][20]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[20]),
        .I3(range45),
        .I4(abs_y_in[20]),
        .O(\x[6][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][20]_i_3 
       (.I0(\y_reg[6][20]_i_2_n_4 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[20]),
        .O(abs_y_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][20]_i_4 
       (.I0(x_in_IBUF[20]),
        .O(\x[6][20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][20]_i_5 
       (.I0(x_in_IBUF[19]),
        .O(\x[6][20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][20]_i_6 
       (.I0(x_in_IBUF[18]),
        .O(\x[6][20]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][20]_i_7 
       (.I0(x_in_IBUF[17]),
        .O(\x[6][20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][21]_i_1 
       (.I0(\x_reg[6][24]_i_2_n_7 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[21]),
        .I3(range45),
        .I4(abs_y_in[21]),
        .O(\x[6][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][21]_i_2 
       (.I0(\y_reg[6][24]_i_2_n_7 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[21]),
        .O(abs_y_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][22]_i_1 
       (.I0(\x_reg[6][24]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[22]),
        .I3(range45),
        .I4(abs_y_in[22]),
        .O(\x[6][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][22]_i_2 
       (.I0(\y_reg[6][24]_i_2_n_6 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[22]),
        .O(abs_y_in[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][23]_i_1 
       (.I0(\x_reg[6][24]_i_2_n_5 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[23]),
        .I3(range45),
        .I4(abs_y_in[23]),
        .O(\x[6][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][23]_i_2 
       (.I0(\y_reg[6][24]_i_2_n_5 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[23]),
        .O(abs_y_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][24]_i_1 
       (.I0(\x_reg[6][24]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[24]),
        .I3(range45),
        .I4(abs_y_in[24]),
        .O(\x[6][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][24]_i_3 
       (.I0(\y_reg[6][24]_i_2_n_4 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[24]),
        .O(abs_y_in[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][24]_i_4 
       (.I0(x_in_IBUF[24]),
        .O(\x[6][24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][24]_i_5 
       (.I0(x_in_IBUF[23]),
        .O(\x[6][24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][24]_i_6 
       (.I0(x_in_IBUF[22]),
        .O(\x[6][24]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][24]_i_7 
       (.I0(x_in_IBUF[21]),
        .O(\x[6][24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][25]_i_1 
       (.I0(\x_reg[6][28]_i_2_n_7 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[25]),
        .I3(range45),
        .I4(abs_y_in[25]),
        .O(\x[6][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][25]_i_2 
       (.I0(\y_reg[6][28]_i_2_n_7 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[25]),
        .O(abs_y_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][26]_i_1 
       (.I0(\x_reg[6][28]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[26]),
        .I3(range45),
        .I4(abs_y_in[26]),
        .O(\x[6][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][26]_i_2 
       (.I0(\y_reg[6][28]_i_2_n_6 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[26]),
        .O(abs_y_in[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][27]_i_1 
       (.I0(\x_reg[6][28]_i_2_n_5 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[27]),
        .I3(range45),
        .I4(abs_y_in[27]),
        .O(\x[6][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][27]_i_2 
       (.I0(\y_reg[6][28]_i_2_n_5 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[27]),
        .O(abs_y_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][28]_i_1 
       (.I0(\x_reg[6][28]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[28]),
        .I3(range45),
        .I4(abs_y_in[28]),
        .O(\x[6][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][28]_i_3 
       (.I0(\y_reg[6][28]_i_2_n_4 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[28]),
        .O(abs_y_in[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][28]_i_4 
       (.I0(x_in_IBUF[28]),
        .O(\x[6][28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][28]_i_5 
       (.I0(x_in_IBUF[27]),
        .O(\x[6][28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][28]_i_6 
       (.I0(x_in_IBUF[26]),
        .O(\x[6][28]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][28]_i_7 
       (.I0(x_in_IBUF[25]),
        .O(\x[6][28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][29]_i_1 
       (.I0(\y_reg[6][31]_i_4_n_7 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[29]),
        .I3(range45),
        .I4(abs_y_in[29]),
        .O(\x[6][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][29]_i_2 
       (.I0(\y_reg[6][31]_i_2_n_7 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[29]),
        .O(abs_y_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][2]_i_1 
       (.I0(\x_reg[6][4]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[2]),
        .I3(range45),
        .I4(abs_y_in[2]),
        .O(\x[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][2]_i_2 
       (.I0(\y_reg[6][4]_i_2_n_6 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[2]),
        .O(abs_y_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][30]_i_1 
       (.I0(\y_reg[6][31]_i_4_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[30]),
        .I3(range45),
        .I4(abs_y_in[30]),
        .O(\x[6][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][30]_i_2 
       (.I0(\y_reg[6][31]_i_2_n_6 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[30]),
        .O(abs_y_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h8888F000)) 
    \x[6][31]_i_1 
       (.I0(x_in_IBUF[31]),
        .I1(\y_reg[6][31]_i_4_n_5 ),
        .I2(\y_reg[6][31]_i_2_n_5 ),
        .I3(y_in_IBUF[31]),
        .I4(range45),
        .O(\x[6][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][3]_i_1 
       (.I0(\x_reg[6][4]_i_2_n_5 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[3]),
        .I3(range45),
        .I4(abs_y_in[3]),
        .O(\x[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][3]_i_2 
       (.I0(\y_reg[6][4]_i_2_n_5 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[3]),
        .O(abs_y_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][4]_i_1 
       (.I0(\x_reg[6][4]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[4]),
        .I3(range45),
        .I4(abs_y_in[4]),
        .O(\x[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][4]_i_3 
       (.I0(\y_reg[6][4]_i_2_n_4 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[4]),
        .O(abs_y_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][4]_i_4 
       (.I0(x_in_IBUF[0]),
        .O(\x[6][4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][4]_i_5 
       (.I0(x_in_IBUF[4]),
        .O(\x[6][4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][4]_i_6 
       (.I0(x_in_IBUF[3]),
        .O(\x[6][4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][4]_i_7 
       (.I0(x_in_IBUF[2]),
        .O(\x[6][4]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][4]_i_8 
       (.I0(x_in_IBUF[1]),
        .O(\x[6][4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][5]_i_1 
       (.I0(\x_reg[6][8]_i_2_n_7 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[5]),
        .I3(range45),
        .I4(abs_y_in[5]),
        .O(\x[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][5]_i_2 
       (.I0(\y_reg[6][8]_i_2_n_7 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[5]),
        .O(abs_y_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][6]_i_1 
       (.I0(\x_reg[6][8]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[6]),
        .I3(range45),
        .I4(abs_y_in[6]),
        .O(\x[6][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][6]_i_2 
       (.I0(\y_reg[6][8]_i_2_n_6 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[6]),
        .O(abs_y_in[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][7]_i_1 
       (.I0(\x_reg[6][8]_i_2_n_5 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[7]),
        .I3(range45),
        .I4(abs_y_in[7]),
        .O(\x[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][7]_i_2 
       (.I0(\y_reg[6][8]_i_2_n_5 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[7]),
        .O(abs_y_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][8]_i_1 
       (.I0(\x_reg[6][8]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[8]),
        .I3(range45),
        .I4(abs_y_in[8]),
        .O(\x[6][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][8]_i_3 
       (.I0(\y_reg[6][8]_i_2_n_4 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[8]),
        .O(abs_y_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][8]_i_4 
       (.I0(x_in_IBUF[8]),
        .O(\x[6][8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][8]_i_5 
       (.I0(x_in_IBUF[7]),
        .O(\x[6][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][8]_i_6 
       (.I0(x_in_IBUF[6]),
        .O(\x[6][8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x[6][8]_i_7 
       (.I0(x_in_IBUF[5]),
        .O(\x[6][8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x[6][9]_i_1 
       (.I0(\x_reg[6][12]_i_2_n_7 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[9]),
        .I3(range45),
        .I4(abs_y_in[9]),
        .O(\x[6][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x[6][9]_i_2 
       (.I0(\y_reg[6][12]_i_2_n_7 ),
        .I1(y_in_IBUF[31]),
        .I2(y_in_IBUF[9]),
        .O(abs_y_in[9]));
  IBUF \x_in_IBUF[0]_inst 
       (.I(x_in[0]),
        .O(x_in_IBUF[0]));
  IBUF \x_in_IBUF[10]_inst 
       (.I(x_in[10]),
        .O(x_in_IBUF[10]));
  IBUF \x_in_IBUF[11]_inst 
       (.I(x_in[11]),
        .O(x_in_IBUF[11]));
  IBUF \x_in_IBUF[12]_inst 
       (.I(x_in[12]),
        .O(x_in_IBUF[12]));
  IBUF \x_in_IBUF[13]_inst 
       (.I(x_in[13]),
        .O(x_in_IBUF[13]));
  IBUF \x_in_IBUF[14]_inst 
       (.I(x_in[14]),
        .O(x_in_IBUF[14]));
  IBUF \x_in_IBUF[15]_inst 
       (.I(x_in[15]),
        .O(x_in_IBUF[15]));
  IBUF \x_in_IBUF[16]_inst 
       (.I(x_in[16]),
        .O(x_in_IBUF[16]));
  IBUF \x_in_IBUF[17]_inst 
       (.I(x_in[17]),
        .O(x_in_IBUF[17]));
  IBUF \x_in_IBUF[18]_inst 
       (.I(x_in[18]),
        .O(x_in_IBUF[18]));
  IBUF \x_in_IBUF[19]_inst 
       (.I(x_in[19]),
        .O(x_in_IBUF[19]));
  IBUF \x_in_IBUF[1]_inst 
       (.I(x_in[1]),
        .O(x_in_IBUF[1]));
  IBUF \x_in_IBUF[20]_inst 
       (.I(x_in[20]),
        .O(x_in_IBUF[20]));
  IBUF \x_in_IBUF[21]_inst 
       (.I(x_in[21]),
        .O(x_in_IBUF[21]));
  IBUF \x_in_IBUF[22]_inst 
       (.I(x_in[22]),
        .O(x_in_IBUF[22]));
  IBUF \x_in_IBUF[23]_inst 
       (.I(x_in[23]),
        .O(x_in_IBUF[23]));
  IBUF \x_in_IBUF[24]_inst 
       (.I(x_in[24]),
        .O(x_in_IBUF[24]));
  IBUF \x_in_IBUF[25]_inst 
       (.I(x_in[25]),
        .O(x_in_IBUF[25]));
  IBUF \x_in_IBUF[26]_inst 
       (.I(x_in[26]),
        .O(x_in_IBUF[26]));
  IBUF \x_in_IBUF[27]_inst 
       (.I(x_in[27]),
        .O(x_in_IBUF[27]));
  IBUF \x_in_IBUF[28]_inst 
       (.I(x_in[28]),
        .O(x_in_IBUF[28]));
  IBUF \x_in_IBUF[29]_inst 
       (.I(x_in[29]),
        .O(x_in_IBUF[29]));
  IBUF \x_in_IBUF[2]_inst 
       (.I(x_in[2]),
        .O(x_in_IBUF[2]));
  IBUF \x_in_IBUF[30]_inst 
       (.I(x_in[30]),
        .O(x_in_IBUF[30]));
  IBUF \x_in_IBUF[31]_inst 
       (.I(x_in[31]),
        .O(x_in_IBUF[31]));
  IBUF \x_in_IBUF[3]_inst 
       (.I(x_in[3]),
        .O(x_in_IBUF[3]));
  IBUF \x_in_IBUF[4]_inst 
       (.I(x_in[4]),
        .O(x_in_IBUF[4]));
  IBUF \x_in_IBUF[5]_inst 
       (.I(x_in[5]),
        .O(x_in_IBUF[5]));
  IBUF \x_in_IBUF[6]_inst 
       (.I(x_in[6]),
        .O(x_in_IBUF[6]));
  IBUF \x_in_IBUF[7]_inst 
       (.I(x_in[7]),
        .O(x_in_IBUF[7]));
  IBUF \x_in_IBUF[8]_inst 
       (.I(x_in[8]),
        .O(x_in_IBUF[8]));
  IBUF \x_in_IBUF[9]_inst 
       (.I(x_in[9]),
        .O(x_in_IBUF[9]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[0]),
        .Q(\x_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[10]),
        .Q(\x_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[11]),
        .Q(\x_reg[0] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0][11]_i_1 
       (.CI(\x_reg[0][7]_i_1_n_0 ),
        .CO({\x_reg[0][11]_i_1_n_0 ,\x_reg[0][11]_i_1_n_1 ,\x_reg[0][11]_i_1_n_2 ,\x_reg[0][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[1][11] ,\x_reg_n_0_[1][10] ,\x_reg_n_0_[1][9] ,\x_reg_n_0_[1][8] }),
        .O(p_2_out[11:8]),
        .S({\x[0][11]_i_2_n_0 ,\x[0][11]_i_3_n_0 ,\x[0][11]_i_4_n_0 ,\x[0][11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[12]),
        .Q(\x_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[13]),
        .Q(\x_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[14]),
        .Q(\x_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[15]),
        .Q(\x_reg[0] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0][15]_i_1 
       (.CI(\x_reg[0][11]_i_1_n_0 ),
        .CO({\x_reg[0][15]_i_1_n_0 ,\x_reg[0][15]_i_1_n_1 ,\x_reg[0][15]_i_1_n_2 ,\x_reg[0][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[1][15] ,\x_reg_n_0_[1][14] ,\x_reg_n_0_[1][13] ,\x_reg_n_0_[1][12] }),
        .O(p_2_out[15:12]),
        .S({\x[0][15]_i_2_n_0 ,\x[0][15]_i_3_n_0 ,\x[0][15]_i_4_n_0 ,\x[0][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[16]),
        .Q(\x_reg[0] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[17]),
        .Q(\x_reg[0] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[18]),
        .Q(\x_reg[0] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[19]),
        .Q(\x_reg[0] [19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0][19]_i_1 
       (.CI(\x_reg[0][15]_i_1_n_0 ),
        .CO({\x_reg[0][19]_i_1_n_0 ,\x_reg[0][19]_i_1_n_1 ,\x_reg[0][19]_i_1_n_2 ,\x_reg[0][19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[1][19] ,\x_reg_n_0_[1][18] ,\x_reg_n_0_[1][17] ,\x_reg_n_0_[1][16] }),
        .O(p_2_out[19:16]),
        .S({\x[0][19]_i_2_n_0 ,\x[0][19]_i_3_n_0 ,\x[0][19]_i_4_n_0 ,\x[0][19]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[1]),
        .Q(\x_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[20]),
        .Q(\x_reg[0] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[21]),
        .Q(\x_reg[0] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[22]),
        .Q(\x_reg[0] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[23]),
        .Q(\x_reg[0] [23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0][23]_i_1 
       (.CI(\x_reg[0][19]_i_1_n_0 ),
        .CO({\x_reg[0][23]_i_1_n_0 ,\x_reg[0][23]_i_1_n_1 ,\x_reg[0][23]_i_1_n_2 ,\x_reg[0][23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[1][23] ,\x_reg_n_0_[1][22] ,\x_reg_n_0_[1][21] ,\x_reg_n_0_[1][20] }),
        .O(p_2_out[23:20]),
        .S({\x[0][23]_i_2_n_0 ,\x[0][23]_i_3_n_0 ,\x[0][23]_i_4_n_0 ,\x[0][23]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[24]),
        .Q(\x_reg[0] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[25]),
        .Q(\x_reg[0] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[26]),
        .Q(\x_reg[0] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[27]),
        .Q(\x_reg[0] [27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0][27]_i_1 
       (.CI(\x_reg[0][23]_i_1_n_0 ),
        .CO({\x_reg[0][27]_i_1_n_0 ,\x_reg[0][27]_i_1_n_1 ,\x_reg[0][27]_i_1_n_2 ,\x_reg[0][27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[1][27] ,\x_reg_n_0_[1][26] ,\x_reg_n_0_[1][25] ,\x_reg_n_0_[1][24] }),
        .O(p_2_out[27:24]),
        .S({\x_reg_n_0_[1][27] ,\x_reg_n_0_[1][26] ,\x_reg_n_0_[1][25] ,\x[0][27]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[28]),
        .Q(\x_reg[0] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[29]),
        .Q(\x_reg[0] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[2]),
        .Q(\x_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[30]),
        .Q(\x_reg[0] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[31]),
        .Q(\x_reg[0] [31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0][31]_i_1 
       (.CI(\x_reg[0][27]_i_1_n_0 ),
        .CO({\NLW_x_reg[0][31]_i_1_CO_UNCONNECTED [3],\x_reg[0][31]_i_1_n_1 ,\x_reg[0][31]_i_1_n_2 ,\x_reg[0][31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\x_reg_n_0_[1][30] ,\x_reg_n_0_[1][29] ,\x_reg_n_0_[1][28] }),
        .O(p_2_out[31:28]),
        .S({B0,\x_reg_n_0_[1][30] ,\x_reg_n_0_[1][29] ,\x_reg_n_0_[1][28] }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[3]),
        .Q(\x_reg[0] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0][3]_i_1 
       (.CI(1'b0),
        .CO({\x_reg[0][3]_i_1_n_0 ,\x_reg[0][3]_i_1_n_1 ,\x_reg[0][3]_i_1_n_2 ,\x_reg[0][3]_i_1_n_3 }),
        .CYINIT(\y_reg[1][31]_rep__0_n_0 ),
        .DI({\x_reg_n_0_[1][3] ,\x_reg_n_0_[1][2] ,\x_reg_n_0_[1][1] ,\x_reg_n_0_[1][0] }),
        .O(p_2_out[3:0]),
        .S({\x[0][3]_i_2_n_0 ,\x[0][3]_i_3_n_0 ,\x[0][3]_i_4_n_0 ,\x[0][3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[4]),
        .Q(\x_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[5]),
        .Q(\x_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[6]),
        .Q(\x_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[7]),
        .Q(\x_reg[0] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[0][7]_i_1 
       (.CI(\x_reg[0][3]_i_1_n_0 ),
        .CO({\x_reg[0][7]_i_1_n_0 ,\x_reg[0][7]_i_1_n_1 ,\x_reg[0][7]_i_1_n_2 ,\x_reg[0][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[1][7] ,\x_reg_n_0_[1][6] ,\x_reg_n_0_[1][5] ,\x_reg_n_0_[1][4] }),
        .O(p_2_out[7:4]),
        .S({\x[0][7]_i_2_n_0 ,\x[0][7]_i_3_n_0 ,\x[0][7]_i_4_n_0 ,\x[0][7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[8]),
        .Q(\x_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_2_out[9]),
        .Q(\x_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[0]),
        .Q(\x_reg_n_0_[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[10]),
        .Q(\x_reg_n_0_[1][10] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[11]),
        .Q(\x_reg_n_0_[1][11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[1][11]_i_1 
       (.CI(\x_reg[1][7]_i_1_n_0 ),
        .CO({\x_reg[1][11]_i_1_n_0 ,\x_reg[1][11]_i_1_n_1 ,\x_reg[1][11]_i_1_n_2 ,\x_reg[1][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[1][11]_i_2_n_0 ,\x[1][11]_i_3_n_0 ,\x[1][11]_i_4_n_0 ,\x[1][11]_i_5_n_0 }),
        .O(stage3x[11:8]),
        .S({\x[1][11]_i_6_n_0 ,\x[1][11]_i_7_n_0 ,\x[1][11]_i_8_n_0 ,\x[1][11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[12]),
        .Q(\x_reg_n_0_[1][12] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[13]),
        .Q(\x_reg_n_0_[1][13] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[14]),
        .Q(\x_reg_n_0_[1][14] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[15]),
        .Q(\x_reg_n_0_[1][15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[1][15]_i_1 
       (.CI(\x_reg[1][11]_i_1_n_0 ),
        .CO({\x_reg[1][15]_i_1_n_0 ,\x_reg[1][15]_i_1_n_1 ,\x_reg[1][15]_i_1_n_2 ,\x_reg[1][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[1][15]_i_2_n_0 ,\x[1][15]_i_3_n_0 ,\x[1][15]_i_4_n_0 ,\x[1][15]_i_5_n_0 }),
        .O(stage3x[15:12]),
        .S({\x[1][15]_i_6_n_0 ,\x[1][15]_i_7_n_0 ,\x[1][15]_i_8_n_0 ,\x[1][15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[16]),
        .Q(\x_reg_n_0_[1][16] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[17]),
        .Q(\x_reg_n_0_[1][17] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[18]),
        .Q(\x_reg_n_0_[1][18] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[19]),
        .Q(\x_reg_n_0_[1][19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[1][19]_i_1 
       (.CI(\x_reg[1][15]_i_1_n_0 ),
        .CO({\x_reg[1][19]_i_1_n_0 ,\x_reg[1][19]_i_1_n_1 ,\x_reg[1][19]_i_1_n_2 ,\x_reg[1][19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[1][19]_i_2_n_0 ,\x[1][19]_i_3_n_0 ,\x[1][19]_i_4_n_0 ,\x[1][19]_i_5_n_0 }),
        .O(stage3x[19:16]),
        .S({\x[1][19]_i_6_n_0 ,\x[1][19]_i_7_n_0 ,\x[1][19]_i_8_n_0 ,\x[1][19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[1]),
        .Q(\x_reg_n_0_[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[20]),
        .Q(\x_reg_n_0_[1][20] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[21]),
        .Q(\x_reg_n_0_[1][21] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[22]),
        .Q(\x_reg_n_0_[1][22] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[23]),
        .Q(\x_reg_n_0_[1][23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[1][23]_i_1 
       (.CI(\x_reg[1][19]_i_1_n_0 ),
        .CO({\x_reg[1][23]_i_1_n_0 ,\x_reg[1][23]_i_1_n_1 ,\x_reg[1][23]_i_1_n_2 ,\x_reg[1][23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[1][23]_i_2_n_0 ,\x[1][23]_i_3_n_0 ,\x[1][23]_i_4_n_0 ,\x[1][23]_i_5_n_0 }),
        .O(stage3x[23:20]),
        .S({\x[1][23]_i_6_n_0 ,\x[1][23]_i_7_n_0 ,\x[1][23]_i_8_n_0 ,\x[1][23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[24]),
        .Q(\x_reg_n_0_[1][24] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[25]),
        .Q(\x_reg_n_0_[1][25] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[26]),
        .Q(\x_reg_n_0_[1][26] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[27]),
        .Q(\x_reg_n_0_[1][27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[1][27]_i_1 
       (.CI(\x_reg[1][23]_i_1_n_0 ),
        .CO({\x_reg[1][27]_i_1_n_0 ,\x_reg[1][27]_i_1_n_1 ,\x_reg[1][27]_i_1_n_2 ,\x_reg[1][27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[1][27]_i_2_n_0 ,\x[1][27]_i_3_n_0 ,\x[1][27]_i_4_n_0 ,\x[1][27]_i_5_n_0 }),
        .O(stage3x[27:24]),
        .S({\x[1][27]_i_6_n_0 ,\x[1][27]_i_7_n_0 ,\x[1][27]_i_8_n_0 ,\x[1][27]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[28]),
        .Q(\x_reg_n_0_[1][28] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[29]),
        .Q(\x_reg_n_0_[1][29] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[2]),
        .Q(\x_reg_n_0_[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[30]),
        .Q(\x_reg_n_0_[1][30] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[31]),
        .Q(B0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[1][31]_i_1 
       (.CI(\x_reg[1][27]_i_1_n_0 ),
        .CO({\NLW_x_reg[1][31]_i_1_CO_UNCONNECTED [3],\x_reg[1][31]_i_1_n_1 ,\x_reg[1][31]_i_1_n_2 ,\x_reg[1][31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\x[1][31]_i_2_n_0 ,\x[1][31]_i_3_n_0 ,\x[1][31]_i_4_n_0 }),
        .O(stage3x[31:28]),
        .S({\x[1][31]_i_5_n_0 ,\x[1][31]_i_6_n_0 ,\x[1][31]_i_7_n_0 ,\x[1][31]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[3]),
        .Q(\x_reg_n_0_[1][3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[1][3]_i_1 
       (.CI(1'b0),
        .CO({\x_reg[1][3]_i_1_n_0 ,\x_reg[1][3]_i_1_n_1 ,\x_reg[1][3]_i_1_n_2 ,\x_reg[1][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[1][3]_i_2_n_0 ,\x[1][3]_i_3_n_0 ,\x[1][3]_i_4_n_0 ,\x[1][3]_i_5_n_0 }),
        .O(stage3x[3:0]),
        .S({\x[1][3]_i_6_n_0 ,\x[1][3]_i_7_n_0 ,\x[1][3]_i_8_n_0 ,\x[1][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[4]),
        .Q(\x_reg_n_0_[1][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[5]),
        .Q(\x_reg_n_0_[1][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[6]),
        .Q(\x_reg_n_0_[1][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[7]),
        .Q(\x_reg_n_0_[1][7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[1][7]_i_1 
       (.CI(\x_reg[1][3]_i_1_n_0 ),
        .CO({\x_reg[1][7]_i_1_n_0 ,\x_reg[1][7]_i_1_n_1 ,\x_reg[1][7]_i_1_n_2 ,\x_reg[1][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[1][7]_i_2_n_0 ,\x[1][7]_i_3_n_0 ,\x[1][7]_i_4_n_0 ,\x[1][7]_i_5_n_0 }),
        .O(stage3x[7:4]),
        .S({\x[1][7]_i_6_n_0 ,\x[1][7]_i_7_n_0 ,\x[1][7]_i_8_n_0 ,\x[1][7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[8]),
        .Q(\x_reg_n_0_[1][8] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3x[9]),
        .Q(\x_reg_n_0_[1][9] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[0]),
        .Q(\x_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[10]),
        .Q(\x_reg[3] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[11]),
        .Q(\x_reg[3] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][11]_i_1 
       (.CI(\x_reg[3][7]_i_1_n_0 ),
        .CO({\x_reg[3][11]_i_1_n_0 ,\x_reg[3][11]_i_1_n_1 ,\x_reg[3][11]_i_1_n_2 ,\x_reg[3][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][11]_i_2_n_0 ,\x[3][11]_i_3_n_0 ,\x[3][11]_i_4_n_0 ,\x[3][11]_i_5_n_0 }),
        .O(stage2x[11:8]),
        .S({\x[3][11]_i_6_n_0 ,\x[3][11]_i_7_n_0 ,\x[3][11]_i_8_n_0 ,\x[3][11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[12]),
        .Q(\x_reg[3] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[13]),
        .Q(\x_reg[3] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[14]),
        .Q(\x_reg[3] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[15]),
        .Q(\x_reg[3] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][15]_i_1 
       (.CI(\x_reg[3][11]_i_1_n_0 ),
        .CO({\x_reg[3][15]_i_1_n_0 ,\x_reg[3][15]_i_1_n_1 ,\x_reg[3][15]_i_1_n_2 ,\x_reg[3][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][15]_i_2_n_0 ,\x[3][15]_i_3_n_0 ,\x[3][15]_i_4_n_0 ,\x[3][15]_i_5_n_0 }),
        .O(stage2x[15:12]),
        .S({\x[3][15]_i_6_n_0 ,\x[3][15]_i_7_n_0 ,\x[3][15]_i_8_n_0 ,\x[3][15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][15]_i_18 
       (.CI(\x_reg[3][7]_i_13_n_0 ),
        .CO({\x_reg[3][15]_i_18_n_0 ,\x_reg[3][15]_i_18_n_1 ,\x_reg[3][15]_i_18_n_2 ,\x_reg[3][15]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[3][15]_i_18_n_4 ,\x_reg[3][15]_i_18_n_5 ,\x_reg[3][15]_i_18_n_6 ,\x_reg[3][15]_i_18_n_7 }),
        .S({\x[3][15]_i_20_n_0 ,\x[3][15]_i_21_n_0 ,\x[3][15]_i_22_n_0 ,\x[3][15]_i_23_n_0 }));
  CARRY4 \x_reg[3][15]_i_19 
       (.CI(\x_reg[3][7]_i_12_n_0 ),
        .CO({\x_reg[3][15]_i_19_n_0 ,\x_reg[3][15]_i_19_n_1 ,\x_reg[3][15]_i_19_n_2 ,\x_reg[3][15]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][15]_i_24_n_0 ,\x[3][15]_i_25_n_0 ,\x[3][15]_i_26_n_0 ,\x[3][15]_i_27_n_0 }),
        .O(stage2_y_taylor[11:8]),
        .S({\x[3][15]_i_28_n_0 ,\x[3][15]_i_29_n_0 ,\x[3][15]_i_30_n_0 ,\x[3][15]_i_31_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[16]),
        .Q(\x_reg[3] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[17]),
        .Q(\x_reg[3] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[18]),
        .Q(\x_reg[3] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[19]),
        .Q(\x_reg[3] [19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][19]_i_1 
       (.CI(\x_reg[3][15]_i_1_n_0 ),
        .CO({\x_reg[3][19]_i_1_n_0 ,\x_reg[3][19]_i_1_n_1 ,\x_reg[3][19]_i_1_n_2 ,\x_reg[3][19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][19]_i_2_n_0 ,\x[3][19]_i_3_n_0 ,\x[3][19]_i_4_n_0 ,\x[3][19]_i_5_n_0 }),
        .O(stage2x[19:16]),
        .S({\x[3][19]_i_6_n_0 ,\x[3][19]_i_7_n_0 ,\x[3][19]_i_8_n_0 ,\x[3][19]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][19]_i_18 
       (.CI(\x_reg[3][15]_i_18_n_0 ),
        .CO({\x_reg[3][19]_i_18_n_0 ,\x_reg[3][19]_i_18_n_1 ,\x_reg[3][19]_i_18_n_2 ,\x_reg[3][19]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[3][19]_i_18_n_4 ,\x_reg[3][19]_i_18_n_5 ,\x_reg[3][19]_i_18_n_6 ,\x_reg[3][19]_i_18_n_7 }),
        .S({\x[3][19]_i_20_n_0 ,\x[3][19]_i_21_n_0 ,\x[3][19]_i_22_n_0 ,\x[3][19]_i_23_n_0 }));
  CARRY4 \x_reg[3][19]_i_19 
       (.CI(\x_reg[3][15]_i_19_n_0 ),
        .CO({\x_reg[3][19]_i_19_n_0 ,\x_reg[3][19]_i_19_n_1 ,\x_reg[3][19]_i_19_n_2 ,\x_reg[3][19]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][19]_i_24_n_0 ,\x[3][19]_i_25_n_0 ,\x[3][19]_i_26_n_0 ,\x[3][19]_i_27_n_0 }),
        .O(stage2_y_taylor[15:12]),
        .S({\x[3][19]_i_28_n_0 ,\x[3][19]_i_29_n_0 ,\x[3][19]_i_30_n_0 ,\x[3][19]_i_31_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[1]),
        .Q(\x_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[20]),
        .Q(\x_reg[3] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[21]),
        .Q(\x_reg[3] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[22]),
        .Q(\x_reg[3] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[23]),
        .Q(\x_reg[3] [23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][23]_i_1 
       (.CI(\x_reg[3][19]_i_1_n_0 ),
        .CO({\x_reg[3][23]_i_1_n_0 ,\x_reg[3][23]_i_1_n_1 ,\x_reg[3][23]_i_1_n_2 ,\x_reg[3][23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][23]_i_2_n_0 ,\x[3][23]_i_3_n_0 ,\x[3][23]_i_4_n_0 ,\x[3][23]_i_5_n_0 }),
        .O(stage2x[23:20]),
        .S({\x[3][23]_i_6_n_0 ,\x[3][23]_i_7_n_0 ,\x[3][23]_i_8_n_0 ,\x[3][23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][23]_i_18 
       (.CI(\x_reg[3][19]_i_18_n_0 ),
        .CO({\x_reg[3][23]_i_18_n_0 ,\x_reg[3][23]_i_18_n_1 ,\x_reg[3][23]_i_18_n_2 ,\x_reg[3][23]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[3][23]_i_18_n_4 ,\x_reg[3][23]_i_18_n_5 ,\x_reg[3][23]_i_18_n_6 ,\x_reg[3][23]_i_18_n_7 }),
        .S({\x[3][23]_i_20_n_0 ,\x[3][23]_i_21_n_0 ,\x[3][23]_i_22_n_0 ,\x[3][23]_i_23_n_0 }));
  CARRY4 \x_reg[3][23]_i_19 
       (.CI(\x_reg[3][19]_i_19_n_0 ),
        .CO({\x_reg[3][23]_i_19_n_0 ,\x_reg[3][23]_i_19_n_1 ,\x_reg[3][23]_i_19_n_2 ,\x_reg[3][23]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][23]_i_24_n_0 ,\x[3][23]_i_25_n_0 ,\x[3][23]_i_26_n_0 ,\x[3][23]_i_27_n_0 }),
        .O(stage2_y_taylor[19:16]),
        .S({\x[3][23]_i_28_n_0 ,\x[3][23]_i_29_n_0 ,\x[3][23]_i_30_n_0 ,\x[3][23]_i_31_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[24]),
        .Q(\x_reg[3] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[25]),
        .Q(\x_reg[3] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[26]),
        .Q(\x_reg[3] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[27]),
        .Q(\x_reg[3] [27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][27]_i_1 
       (.CI(\x_reg[3][23]_i_1_n_0 ),
        .CO({\x_reg[3][27]_i_1_n_0 ,\x_reg[3][27]_i_1_n_1 ,\x_reg[3][27]_i_1_n_2 ,\x_reg[3][27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][27]_i_2_n_0 ,\x[3][27]_i_3_n_0 ,\x[3][27]_i_4_n_0 ,\x[3][27]_i_5_n_0 }),
        .O(stage2x[27:24]),
        .S({\x[3][27]_i_6_n_0 ,\x[3][27]_i_7_n_0 ,\x[3][27]_i_8_n_0 ,\x[3][27]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[28]),
        .Q(\x_reg[3] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[29]),
        .Q(\x_reg[3] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[2]),
        .Q(\x_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[30]),
        .Q(\x_reg[3] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[31]),
        .Q(\x_reg[3] [31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][31]_i_1 
       (.CI(\x_reg[3][27]_i_1_n_0 ),
        .CO({\NLW_x_reg[3][31]_i_1_CO_UNCONNECTED [3],\x_reg[3][31]_i_1_n_1 ,\x_reg[3][31]_i_1_n_2 ,\x_reg[3][31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\x[3][31]_i_2_n_0 ,\x[3][31]_i_3_n_0 ,\x[3][31]_i_4_n_0 }),
        .O(stage2x[31:28]),
        .S({\x[3][31]_i_5_n_0 ,\x[3][31]_i_6_n_0 ,\x[3][31]_i_7_n_0 ,\x[3][31]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][31]_i_13 
       (.CI(\x_reg[3][31]_i_25_n_0 ),
        .CO({\x_reg[3][31]_i_13_n_0 ,\x_reg[3][31]_i_13_n_1 ,\x_reg[3][31]_i_13_n_2 ,\x_reg[3][31]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[3][31]_i_13_n_4 ,\x_reg[3][31]_i_13_n_5 ,\x_reg[3][31]_i_13_n_6 ,\x_reg[3][31]_i_13_n_7 }),
        .S({\x[3][31]_i_26_n_0 ,\x[3][31]_i_27_n_0 ,\x[3][31]_i_28_n_0 ,\x[3][31]_i_29_n_0 }));
  CARRY4 \x_reg[3][31]_i_15 
       (.CI(\x_reg[3][31]_i_30_n_0 ),
        .CO({\x_reg[3][31]_i_15_n_0 ,\x_reg[3][31]_i_15_n_1 ,\x_reg[3][31]_i_15_n_2 ,\x_reg[3][31]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][31]_i_31_n_0 ,\x[3][31]_i_32_n_0 ,\x[3][31]_i_33_n_0 ,\x[3][31]_i_34_n_0 }),
        .O(stage2_y_taylor[27:24]),
        .S({\x[3][31]_i_35_n_0 ,\x[3][31]_i_36_n_0 ,\x[3][31]_i_37_n_0 ,\x[3][31]_i_38_n_0 }));
  CARRY4 \x_reg[3][31]_i_23 
       (.CI(\x_reg[3][31]_i_15_n_0 ),
        .CO({\NLW_x_reg[3][31]_i_23_CO_UNCONNECTED [3],\x_reg[3][31]_i_23_n_1 ,\NLW_x_reg[3][31]_i_23_CO_UNCONNECTED [1],\x_reg[3][31]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\x[3][31]_i_39_n_0 ,\x[3][31]_i_40_n_0 }),
        .O({\NLW_x_reg[3][31]_i_23_O_UNCONNECTED [3:2],stage2_y_taylor[29:28]}),
        .S({1'b0,1'b1,\x[3][31]_i_41_n_0 ,\x[3][31]_i_42_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][31]_i_24 
       (.CI(\x_reg[3][31]_i_13_n_0 ),
        .CO({\NLW_x_reg[3][31]_i_24_CO_UNCONNECTED [3:2],\x_reg[3][31]_i_24_n_2 ,\x_reg[3][31]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_reg[3][31]_i_24_O_UNCONNECTED [3],\x_reg[3][31]_i_24_n_5 ,\x_reg[3][31]_i_24_n_6 ,\x_reg[3][31]_i_24_n_7 }),
        .S({1'b0,\x_reg[3][31]_i_23_n_1 ,\x_reg[3][31]_i_23_n_1 ,\x[3][31]_i_43_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][31]_i_25 
       (.CI(\x_reg[3][23]_i_18_n_0 ),
        .CO({\x_reg[3][31]_i_25_n_0 ,\x_reg[3][31]_i_25_n_1 ,\x_reg[3][31]_i_25_n_2 ,\x_reg[3][31]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[3][31]_i_25_n_4 ,\x_reg[3][31]_i_25_n_5 ,\x_reg[3][31]_i_25_n_6 ,\x_reg[3][31]_i_25_n_7 }),
        .S({\x[3][31]_i_44_n_0 ,\x[3][31]_i_45_n_0 ,\x[3][31]_i_46_n_0 ,\x[3][31]_i_47_n_0 }));
  CARRY4 \x_reg[3][31]_i_30 
       (.CI(\x_reg[3][23]_i_19_n_0 ),
        .CO({\x_reg[3][31]_i_30_n_0 ,\x_reg[3][31]_i_30_n_1 ,\x_reg[3][31]_i_30_n_2 ,\x_reg[3][31]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][31]_i_48_n_0 ,\x[3][31]_i_49_n_0 ,\x[3][31]_i_50_n_0 ,\x[3][31]_i_51_n_0 }),
        .O(stage2_y_taylor[23:20]),
        .S({\x[3][31]_i_52_n_0 ,\x[3][31]_i_53_n_0 ,\x[3][31]_i_54_n_0 ,\x[3][31]_i_55_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[3]),
        .Q(\x_reg[3] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][3]_i_1 
       (.CI(1'b0),
        .CO({\x_reg[3][3]_i_1_n_0 ,\x_reg[3][3]_i_1_n_1 ,\x_reg[3][3]_i_1_n_2 ,\x_reg[3][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][3]_i_2_n_0 ,\x[3][3]_i_3_n_0 ,\x[3][3]_i_4_n_0 ,\x[3][3]_i_5_n_0 }),
        .O(stage2x[3:0]),
        .S({\x[3][3]_i_6_n_0 ,\x[3][3]_i_7_n_0 ,\x[3][3]_i_8_n_0 ,\x[3][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[4]),
        .Q(\x_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[5]),
        .Q(\x_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[6]),
        .Q(\x_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[7]),
        .Q(\x_reg[3] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][7]_i_1 
       (.CI(\x_reg[3][3]_i_1_n_0 ),
        .CO({\x_reg[3][7]_i_1_n_0 ,\x_reg[3][7]_i_1_n_1 ,\x_reg[3][7]_i_1_n_2 ,\x_reg[3][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][7]_i_2_n_0 ,\x[3][7]_i_3_n_0 ,\x[3][7]_i_4_n_0 ,\x[3][7]_i_5_n_0 }),
        .O(stage2x[7:4]),
        .S({\x[3][7]_i_6_n_0 ,\x[3][7]_i_7_n_0 ,\x[3][7]_i_8_n_0 ,\x[3][7]_i_9_n_0 }));
  CARRY4 \x_reg[3][7]_i_12 
       (.CI(\x_reg[3][7]_i_18_n_0 ),
        .CO({\x_reg[3][7]_i_12_n_0 ,\x_reg[3][7]_i_12_n_1 ,\x_reg[3][7]_i_12_n_2 ,\x_reg[3][7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[3][7]_i_25_n_0 ,\x[3][7]_i_26_n_0 ,\x[3][7]_i_27_n_0 ,\x[3][7]_i_28_n_0 }),
        .O(stage2_y_taylor[7:4]),
        .S({\x[3][7]_i_29_n_0 ,\x[3][7]_i_30_n_0 ,\x[3][7]_i_31_n_0 ,\x[3][7]_i_32_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][7]_i_13 
       (.CI(\x_reg[3][7]_i_16_n_0 ),
        .CO({\x_reg[3][7]_i_13_n_0 ,\x_reg[3][7]_i_13_n_1 ,\x_reg[3][7]_i_13_n_2 ,\x_reg[3][7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[3][7]_i_13_n_4 ,\x_reg[3][7]_i_13_n_5 ,\x_reg[3][7]_i_13_n_6 ,\x_reg[3][7]_i_13_n_7 }),
        .S({\x[3][7]_i_33_n_0 ,\x[3][7]_i_34_n_0 ,\x[3][7]_i_35_n_0 ,\x[3][7]_i_36_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[3][7]_i_16 
       (.CI(1'b0),
        .CO({\x_reg[3][7]_i_16_n_0 ,\x_reg[3][7]_i_16_n_1 ,\x_reg[3][7]_i_16_n_2 ,\x_reg[3][7]_i_16_n_3 }),
        .CYINIT(\x[3][7]_i_37_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[3][7]_i_16_n_4 ,\x_reg[3][7]_i_16_n_5 ,\x_reg[3][7]_i_16_n_6 ,\x_reg[3][7]_i_16_n_7 }),
        .S({\x[3][7]_i_38_n_0 ,\x[3][7]_i_39_n_0 ,\x[3][7]_i_40_n_0 ,\x[3][7]_i_41_n_0 }));
  CARRY4 \x_reg[3][7]_i_18 
       (.CI(1'b0),
        .CO({\x_reg[3][7]_i_18_n_0 ,\x_reg[3][7]_i_18_n_1 ,\x_reg[3][7]_i_18_n_2 ,\x_reg[3][7]_i_18_n_3 }),
        .CYINIT(1'b1),
        .DI({\x[3][7]_i_42_n_0 ,\x[3][7]_i_43_n_0 ,\x[3][7]_i_44_n_0 ,1'b1}),
        .O(stage2_y_taylor[3:0]),
        .S({\x[3][7]_i_45_n_0 ,\x[3][7]_i_46_n_0 ,\x[3][7]_i_47_n_0 ,\x[3][7]_i_48_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[8]),
        .Q(\x_reg[3] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2x[9]),
        .Q(\x_reg[3] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[0]),
        .Q(\x_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[10]),
        .Q(\x_reg[5] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[11]),
        .Q(\x_reg[5] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][11]_i_1 
       (.CI(\x_reg[5][7]_i_1_n_0 ),
        .CO({\x_reg[5][11]_i_1_n_0 ,\x_reg[5][11]_i_1_n_1 ,\x_reg[5][11]_i_1_n_2 ,\x_reg[5][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][11]_i_2_n_0 ,\x[5][11]_i_3_n_0 ,\x[5][11]_i_4_n_0 ,\x[5][11]_i_5_n_0 }),
        .O(p_0_in1_in[11:8]),
        .S({\x[5][11]_i_6_n_0 ,\x[5][11]_i_7_n_0 ,\x[5][11]_i_8_n_0 ,\x[5][11]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][11]_i_12 
       (.CI(\x_reg[5][7]_i_12_n_0 ),
        .CO({\x_reg[5][11]_i_12_n_0 ,\x_reg[5][11]_i_12_n_1 ,\x_reg[5][11]_i_12_n_2 ,\x_reg[5][11]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][11]_i_15_n_0 ,\x[5][11]_i_16_n_0 ,\x[5][11]_i_17_n_0 ,\x[5][11]_i_18_n_0 }),
        .O({\x_reg[5][11]_i_12_n_4 ,\x_reg[5][11]_i_12_n_5 ,\x_reg[5][11]_i_12_n_6 ,\x_reg[5][11]_i_12_n_7 }),
        .S({\x[5][11]_i_19_n_0 ,\x[5][11]_i_20_n_0 ,\x[5][11]_i_21_n_0 ,\x[5][11]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][11]_i_23 
       (.CI(1'b0),
        .CO({\x_reg[5][11]_i_23_n_0 ,\x_reg[5][11]_i_23_n_1 ,\x_reg[5][11]_i_23_n_2 ,\x_reg[5][11]_i_23_n_3 }),
        .CYINIT(\x[5][11]_i_25_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[5][11]_i_23_n_4 ,\x_reg[5][11]_i_23_n_5 ,\x_reg[5][11]_i_23_n_6 ,\x_reg[5][11]_i_23_n_7 }),
        .S({\x[5][11]_i_26_n_0 ,\x[5][11]_i_27_n_0 ,\x[5][11]_i_28_n_0 ,\x[5][11]_i_29_n_0 }));
  CARRY4 \x_reg[5][11]_i_24 
       (.CI(1'b0),
        .CO({\x_reg[5][11]_i_24_n_0 ,\x_reg[5][11]_i_24_n_1 ,\x_reg[5][11]_i_24_n_2 ,\x_reg[5][11]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][11]_i_30_n_0 ,\x[5][11]_i_31_n_0 ,\x[5][11]_i_32_n_0 ,\x[5][11]_i_33_n_0 }),
        .O({\x_reg[5][11]_i_24_n_4 ,\x_reg[5][11]_i_24_n_5 ,\x_reg[5][11]_i_24_n_6 ,\x_reg[5][11]_i_24_n_7 }),
        .S({\x[5][11]_i_34_n_0 ,\x[5][11]_i_35_n_0 ,\x[5][11]_i_36_n_0 ,\x[5][11]_i_37_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[12]),
        .Q(\x_reg[5] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[13]),
        .Q(\x_reg[5] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[14]),
        .Q(\x_reg[5] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[15]),
        .Q(\x_reg[5] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][15]_i_1 
       (.CI(\x_reg[5][11]_i_1_n_0 ),
        .CO({\x_reg[5][15]_i_1_n_0 ,\x_reg[5][15]_i_1_n_1 ,\x_reg[5][15]_i_1_n_2 ,\x_reg[5][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][15]_i_2_n_0 ,\x[5][15]_i_3_n_0 ,\x[5][15]_i_4_n_0 ,\x[5][15]_i_5_n_0 }),
        .O(p_0_in1_in[15:12]),
        .S({\x[5][15]_i_6_n_0 ,\x[5][15]_i_7_n_0 ,\x[5][15]_i_8_n_0 ,\x[5][15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][15]_i_12 
       (.CI(\x_reg[5][11]_i_12_n_0 ),
        .CO({\x_reg[5][15]_i_12_n_0 ,\x_reg[5][15]_i_12_n_1 ,\x_reg[5][15]_i_12_n_2 ,\x_reg[5][15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][15]_i_15_n_0 ,\x[5][15]_i_16_n_0 ,\x[5][15]_i_17_n_0 ,\x[5][15]_i_18_n_0 }),
        .O({\x_reg[5][15]_i_12_n_4 ,\x_reg[5][15]_i_12_n_5 ,\x_reg[5][15]_i_12_n_6 ,\x_reg[5][15]_i_12_n_7 }),
        .S({\x[5][15]_i_19_n_0 ,\x[5][15]_i_20_n_0 ,\x[5][15]_i_21_n_0 ,\x[5][15]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][15]_i_23 
       (.CI(\x_reg[5][11]_i_23_n_0 ),
        .CO({\x_reg[5][15]_i_23_n_0 ,\x_reg[5][15]_i_23_n_1 ,\x_reg[5][15]_i_23_n_2 ,\x_reg[5][15]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[5][15]_i_23_n_4 ,\x_reg[5][15]_i_23_n_5 ,\x_reg[5][15]_i_23_n_6 ,\x_reg[5][15]_i_23_n_7 }),
        .S({\x[5][15]_i_25_n_0 ,\x[5][15]_i_26_n_0 ,\x[5][15]_i_27_n_0 ,\x[5][15]_i_28_n_0 }));
  CARRY4 \x_reg[5][15]_i_24 
       (.CI(\x_reg[5][11]_i_24_n_0 ),
        .CO({\x_reg[5][15]_i_24_n_0 ,\x_reg[5][15]_i_24_n_1 ,\x_reg[5][15]_i_24_n_2 ,\x_reg[5][15]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][15]_i_29_n_0 ,\x[5][15]_i_30_n_0 ,\x[5][15]_i_31_n_0 ,\x[5][15]_i_32_n_0 }),
        .O({\x_reg[5][15]_i_24_n_4 ,\x_reg[5][15]_i_24_n_5 ,\x_reg[5][15]_i_24_n_6 ,\x_reg[5][15]_i_24_n_7 }),
        .S({\x[5][15]_i_33_n_0 ,\x[5][15]_i_34_n_0 ,\x[5][15]_i_35_n_0 ,\x[5][15]_i_36_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[16]),
        .Q(\x_reg[5] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[17]),
        .Q(\x_reg[5] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[18]),
        .Q(\x_reg[5] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[19]),
        .Q(\x_reg[5] [19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][19]_i_1 
       (.CI(\x_reg[5][15]_i_1_n_0 ),
        .CO({\x_reg[5][19]_i_1_n_0 ,\x_reg[5][19]_i_1_n_1 ,\x_reg[5][19]_i_1_n_2 ,\x_reg[5][19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][19]_i_2_n_0 ,\x[5][19]_i_3_n_0 ,\x[5][19]_i_4_n_0 ,\x[5][19]_i_5_n_0 }),
        .O(p_0_in1_in[19:16]),
        .S({\x[5][19]_i_6_n_0 ,\x[5][19]_i_7_n_0 ,\x[5][19]_i_8_n_0 ,\x[5][19]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][19]_i_12 
       (.CI(\x_reg[5][15]_i_12_n_0 ),
        .CO({\x_reg[5][19]_i_12_n_0 ,\x_reg[5][19]_i_12_n_1 ,\x_reg[5][19]_i_12_n_2 ,\x_reg[5][19]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][19]_i_15_n_0 ,\x[5][19]_i_16_n_0 ,\x[5][19]_i_17_n_0 ,\x[5][19]_i_18_n_0 }),
        .O({\x_reg[5][19]_i_12_n_4 ,\x_reg[5][19]_i_12_n_5 ,\x_reg[5][19]_i_12_n_6 ,\x_reg[5][19]_i_12_n_7 }),
        .S({\x[5][19]_i_19_n_0 ,\x[5][19]_i_20_n_0 ,\x[5][19]_i_21_n_0 ,\x[5][19]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][19]_i_23 
       (.CI(\x_reg[5][15]_i_23_n_0 ),
        .CO({\x_reg[5][19]_i_23_n_0 ,\x_reg[5][19]_i_23_n_1 ,\x_reg[5][19]_i_23_n_2 ,\x_reg[5][19]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[5][19]_i_23_n_4 ,\x_reg[5][19]_i_23_n_5 ,\x_reg[5][19]_i_23_n_6 ,\x_reg[5][19]_i_23_n_7 }),
        .S({\x[5][19]_i_25_n_0 ,\x[5][19]_i_26_n_0 ,\x[5][19]_i_27_n_0 ,\x[5][19]_i_28_n_0 }));
  CARRY4 \x_reg[5][19]_i_24 
       (.CI(\x_reg[5][15]_i_24_n_0 ),
        .CO({\x_reg[5][19]_i_24_n_0 ,\x_reg[5][19]_i_24_n_1 ,\x_reg[5][19]_i_24_n_2 ,\x_reg[5][19]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][19]_i_29_n_0 ,\x[5][19]_i_30_n_0 ,\x[5][19]_i_31_n_0 ,\x[5][19]_i_32_n_0 }),
        .O({\x_reg[5][19]_i_24_n_4 ,\x_reg[5][19]_i_24_n_5 ,\x_reg[5][19]_i_24_n_6 ,\x_reg[5][19]_i_24_n_7 }),
        .S({\x[5][19]_i_33_n_0 ,\x[5][19]_i_34_n_0 ,\x[5][19]_i_35_n_0 ,\x[5][19]_i_36_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[1]),
        .Q(\x_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[20]),
        .Q(\x_reg[5] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[21]),
        .Q(\x_reg[5] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[22]),
        .Q(\x_reg[5] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[23]),
        .Q(\x_reg[5] [23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][23]_i_1 
       (.CI(\x_reg[5][19]_i_1_n_0 ),
        .CO({\x_reg[5][23]_i_1_n_0 ,\x_reg[5][23]_i_1_n_1 ,\x_reg[5][23]_i_1_n_2 ,\x_reg[5][23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][23]_i_2_n_0 ,\x[5][23]_i_3_n_0 ,\x[5][23]_i_4_n_0 ,\x[5][23]_i_5_n_0 }),
        .O(p_0_in1_in[23:20]),
        .S({\x[5][23]_i_6_n_0 ,\x[5][23]_i_7_n_0 ,\x[5][23]_i_8_n_0 ,\x[5][23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][23]_i_12 
       (.CI(\x_reg[5][19]_i_12_n_0 ),
        .CO({\x_reg[5][23]_i_12_n_0 ,\x_reg[5][23]_i_12_n_1 ,\x_reg[5][23]_i_12_n_2 ,\x_reg[5][23]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][23]_i_20_n_0 ,\x[5][23]_i_21_n_0 ,\x[5][23]_i_22_n_0 ,\x[5][23]_i_23_n_0 }),
        .O({\x_reg[5][23]_i_12_n_4 ,\x_reg[5][23]_i_12_n_5 ,\x_reg[5][23]_i_12_n_6 ,\x_reg[5][23]_i_12_n_7 }),
        .S({\x[5][23]_i_24_n_0 ,\x[5][23]_i_25_n_0 ,\x[5][23]_i_26_n_0 ,\x[5][23]_i_27_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][23]_i_28 
       (.CI(\x_reg[5][19]_i_23_n_0 ),
        .CO({\x_reg[5][23]_i_28_n_0 ,\x_reg[5][23]_i_28_n_1 ,\x_reg[5][23]_i_28_n_2 ,\x_reg[5][23]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[5][23]_i_28_n_4 ,\x_reg[5][23]_i_28_n_5 ,\x_reg[5][23]_i_28_n_6 ,\x_reg[5][23]_i_28_n_7 }),
        .S({\x[5][23]_i_30_n_0 ,\x[5][23]_i_31_n_0 ,\x[5][23]_i_32_n_0 ,\x[5][23]_i_33_n_0 }));
  CARRY4 \x_reg[5][23]_i_29 
       (.CI(\x_reg[5][19]_i_24_n_0 ),
        .CO({\x_reg[5][23]_i_29_n_0 ,\x_reg[5][23]_i_29_n_1 ,\x_reg[5][23]_i_29_n_2 ,\x_reg[5][23]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][23]_i_34_n_0 ,\x[5][23]_i_35_n_0 ,\x[5][23]_i_36_n_0 ,\x[5][23]_i_37_n_0 }),
        .O({\x_reg[5][23]_i_29_n_4 ,\x_reg[5][23]_i_29_n_5 ,\x_reg[5][23]_i_29_n_6 ,\x_reg[5][23]_i_29_n_7 }),
        .S({\x[5][23]_i_38_n_0 ,\x[5][23]_i_39_n_0 ,\x[5][23]_i_40_n_0 ,\x[5][23]_i_41_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[24]),
        .Q(\x_reg[5] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[25]),
        .Q(\x_reg[5] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[26]),
        .Q(\x_reg[5] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[27]),
        .Q(\x_reg[5] [27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][27]_i_1 
       (.CI(\x_reg[5][23]_i_1_n_0 ),
        .CO({\x_reg[5][27]_i_1_n_0 ,\x_reg[5][27]_i_1_n_1 ,\x_reg[5][27]_i_1_n_2 ,\x_reg[5][27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][27]_i_2_n_0 ,\x[5][27]_i_3_n_0 ,\x[5][27]_i_4_n_0 ,\x[5][27]_i_5_n_0 }),
        .O(p_0_in1_in[27:24]),
        .S({\x[5][27]_i_6_n_0 ,\x[5][27]_i_7_n_0 ,\x[5][27]_i_8_n_0 ,\x[5][27]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][27]_i_10 
       (.CI(\x_reg[5][23]_i_12_n_0 ),
        .CO({\x_reg[5][27]_i_10_n_0 ,\x_reg[5][27]_i_10_n_1 ,\x_reg[5][27]_i_10_n_2 ,\x_reg[5][27]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][27]_i_11_n_0 ,\x[5][27]_i_12_n_0 ,\x[5][27]_i_13_n_0 ,\x[5][27]_i_14_n_0 }),
        .O({\x_reg[5][27]_i_10_n_4 ,\x_reg[5][27]_i_10_n_5 ,\x_reg[5][27]_i_10_n_6 ,\x_reg[5][27]_i_10_n_7 }),
        .S({\x[5][27]_i_15_n_0 ,\x[5][27]_i_16_n_0 ,\x[5][27]_i_17_n_0 ,\x[5][27]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][27]_i_20 
       (.CI(\x_reg[5][23]_i_28_n_0 ),
        .CO({\x_reg[5][27]_i_20_n_0 ,\x_reg[5][27]_i_20_n_1 ,\x_reg[5][27]_i_20_n_2 ,\x_reg[5][27]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[5][27]_i_20_n_4 ,\x_reg[5][27]_i_20_n_5 ,\x_reg[5][27]_i_20_n_6 ,\x_reg[5][27]_i_20_n_7 }),
        .S({\x[5][27]_i_24_n_0 ,\x[5][27]_i_25_n_0 ,\x[5][27]_i_26_n_0 ,\x[5][27]_i_27_n_0 }));
  CARRY4 \x_reg[5][27]_i_22 
       (.CI(\x_reg[5][23]_i_29_n_0 ),
        .CO({\x_reg[5][27]_i_22_n_0 ,\x_reg[5][27]_i_22_n_1 ,\x_reg[5][27]_i_22_n_2 ,\x_reg[5][27]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][27]_i_28_n_0 ,\x[5][27]_i_29_n_0 ,\x[5][27]_i_30_n_0 ,\x[5][27]_i_31_n_0 }),
        .O({\x_reg[5][27]_i_22_n_4 ,\x_reg[5][27]_i_22_n_5 ,\x_reg[5][27]_i_22_n_6 ,\x_reg[5][27]_i_22_n_7 }),
        .S({\x[5][27]_i_32_n_0 ,\x[5][27]_i_33_n_0 ,\x[5][27]_i_34_n_0 ,\x[5][27]_i_35_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[28]),
        .Q(\x_reg[5] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[29]),
        .Q(\x_reg[5] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[2]),
        .Q(\x_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[30]),
        .Q(\x_reg[5] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[31]),
        .Q(\x_reg[5] [31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][31]_i_1 
       (.CI(\x_reg[5][27]_i_1_n_0 ),
        .CO({\NLW_x_reg[5][31]_i_1_CO_UNCONNECTED [3],\x_reg[5][31]_i_1_n_1 ,\x_reg[5][31]_i_1_n_2 ,\x_reg[5][31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\x_reg[5][31]_i_2_n_6 ,\x[5][31]_i_3_n_0 ,\x[5][31]_i_4_n_0 }),
        .O(p_0_in1_in[31:28]),
        .S({\x[5][31]_i_5_n_0 ,\x[5][31]_i_6_n_0 ,\x[5][31]_i_7_n_0 ,\x[5][31]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][31]_i_2 
       (.CI(\x_reg[5][31]_i_9_n_0 ),
        .CO({\NLW_x_reg[5][31]_i_2_CO_UNCONNECTED [3],\x_reg[5][31]_i_2_n_1 ,\x_reg[5][31]_i_2_n_2 ,\x_reg[5][31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\x[5][31]_i_10_n_0 ,\x[5][31]_i_11_n_0 ,\x[5][31]_i_12_n_0 }),
        .O({\x_reg[5][31]_i_2_n_4 ,\x_reg[5][31]_i_2_n_5 ,\x_reg[5][31]_i_2_n_6 ,\x_reg[5][31]_i_2_n_7 }),
        .S({\x[5][31]_i_13_n_0 ,\x[5][31]_i_14_n_0 ,\x[5][31]_i_15_n_0 ,\x[5][31]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][31]_i_25 
       (.CI(\x_reg[5][31]_i_36_n_0 ),
        .CO({\x_reg[5][31]_i_25_n_0 ,\x_reg[5][31]_i_25_n_1 ,\x_reg[5][31]_i_25_n_2 ,\x_reg[5][31]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[5][31]_i_25_n_4 ,\x_reg[5][31]_i_25_n_5 ,\x_reg[5][31]_i_25_n_6 ,\x_reg[5][31]_i_25_n_7 }),
        .S({\x[5][31]_i_41_n_0 ,\x[5][31]_i_42_n_0 ,\x[5][31]_i_43_n_0 ,\x[5][31]_i_44_n_0 }));
  CARRY4 \x_reg[5][31]_i_26 
       (.CI(\x_reg[5][31]_i_28_n_0 ),
        .CO({\x_reg[5][31]_i_26_n_0 ,\NLW_x_reg[5][31]_i_26_CO_UNCONNECTED [2],\x_reg[5][31]_i_26_n_2 ,\x_reg[5][31]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\y_reg_n_0_[6][30] ,\y_reg_n_0_[6][29] ,\y_reg_n_0_[6][28] }),
        .O({\NLW_x_reg[5][31]_i_26_O_UNCONNECTED [3],\x_reg[5][31]_i_26_n_5 ,\x_reg[5][31]_i_26_n_6 ,\x_reg[5][31]_i_26_n_7 }),
        .S({1'b1,\x[5][31]_i_45_n_0 ,\x[5][31]_i_46_n_0 ,\x[5][31]_i_47_n_0 }));
  CARRY4 \x_reg[5][31]_i_28 
       (.CI(\x_reg[5][31]_i_38_n_0 ),
        .CO({\x_reg[5][31]_i_28_n_0 ,\x_reg[5][31]_i_28_n_1 ,\x_reg[5][31]_i_28_n_2 ,\x_reg[5][31]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\y_reg_n_0_[6][27] ,\x[5][31]_i_48_n_0 ,\x[5][31]_i_49_n_0 ,\x[5][31]_i_50_n_0 }),
        .O({\x_reg[5][31]_i_28_n_4 ,\x_reg[5][31]_i_28_n_5 ,\x_reg[5][31]_i_28_n_6 ,\x_reg[5][31]_i_28_n_7 }),
        .S({\x[5][31]_i_51_n_0 ,\x[5][31]_i_52_n_0 ,\x[5][31]_i_53_n_0 ,\x[5][31]_i_54_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][31]_i_33 
       (.CI(\x_reg[5][31]_i_25_n_0 ),
        .CO({\NLW_x_reg[5][31]_i_33_CO_UNCONNECTED [3:2],\x_reg[5][31]_i_33_n_2 ,\x_reg[5][31]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_reg[5][31]_i_33_O_UNCONNECTED [3],\x_reg[5][31]_i_33_n_5 ,\x_reg[5][31]_i_33_n_6 ,\x_reg[5][31]_i_33_n_7 }),
        .S({1'b0,\x_reg[5][31]_i_26_n_0 ,\x[5][31]_i_55_n_0 ,\x[5][31]_i_56_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][31]_i_36 
       (.CI(\x_reg[5][27]_i_20_n_0 ),
        .CO({\x_reg[5][31]_i_36_n_0 ,\x_reg[5][31]_i_36_n_1 ,\x_reg[5][31]_i_36_n_2 ,\x_reg[5][31]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[5][31]_i_36_n_4 ,\x_reg[5][31]_i_36_n_5 ,\x_reg[5][31]_i_36_n_6 ,\x_reg[5][31]_i_36_n_7 }),
        .S({\x[5][31]_i_57_n_0 ,\x[5][31]_i_58_n_0 ,\x[5][31]_i_59_n_0 ,\x[5][31]_i_60_n_0 }));
  CARRY4 \x_reg[5][31]_i_38 
       (.CI(\x_reg[5][27]_i_22_n_0 ),
        .CO({\x_reg[5][31]_i_38_n_0 ,\x_reg[5][31]_i_38_n_1 ,\x_reg[5][31]_i_38_n_2 ,\x_reg[5][31]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][31]_i_61_n_0 ,\x[5][31]_i_62_n_0 ,\x[5][31]_i_63_n_0 ,\x[5][31]_i_64_n_0 }),
        .O({\x_reg[5][31]_i_38_n_4 ,\x_reg[5][31]_i_38_n_5 ,\x_reg[5][31]_i_38_n_6 ,\x_reg[5][31]_i_38_n_7 }),
        .S({\x[5][31]_i_65_n_0 ,\x[5][31]_i_66_n_0 ,\x[5][31]_i_67_n_0 ,\x[5][31]_i_68_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][31]_i_9 
       (.CI(\x_reg[5][27]_i_10_n_0 ),
        .CO({\x_reg[5][31]_i_9_n_0 ,\x_reg[5][31]_i_9_n_1 ,\x_reg[5][31]_i_9_n_2 ,\x_reg[5][31]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][31]_i_17_n_0 ,\x[5][31]_i_18_n_0 ,\x[5][31]_i_19_n_0 ,\x[5][31]_i_20_n_0 }),
        .O({\x_reg[5][31]_i_9_n_4 ,\x_reg[5][31]_i_9_n_5 ,\x_reg[5][31]_i_9_n_6 ,\x_reg[5][31]_i_9_n_7 }),
        .S({\x[5][31]_i_21_n_0 ,\x[5][31]_i_22_n_0 ,\x[5][31]_i_23_n_0 ,\x[5][31]_i_24_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[3]),
        .Q(\x_reg[5] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][3]_i_1 
       (.CI(1'b0),
        .CO({\x_reg[5][3]_i_1_n_0 ,\x_reg[5][3]_i_1_n_1 ,\x_reg[5][3]_i_1_n_2 ,\x_reg[5][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][3]_i_2_n_0 ,\x[5][3]_i_3_n_0 ,\x[5][3]_i_4_n_0 ,\x[5][3]_i_5_n_0 }),
        .O(p_0_in1_in[3:0]),
        .S({\x[5][3]_i_6_n_0 ,\x[5][3]_i_7_n_0 ,\x[5][3]_i_8_n_0 ,\x[5][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[4]),
        .Q(\x_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[5]),
        .Q(\x_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[6]),
        .Q(\x_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[7]),
        .Q(\x_reg[5] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][7]_i_1 
       (.CI(\x_reg[5][3]_i_1_n_0 ),
        .CO({\x_reg[5][7]_i_1_n_0 ,\x_reg[5][7]_i_1_n_1 ,\x_reg[5][7]_i_1_n_2 ,\x_reg[5][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][7]_i_2_n_0 ,\x[5][7]_i_3_n_0 ,\x[5][7]_i_4_n_0 ,\x[5][7]_i_5_n_0 }),
        .O(p_0_in1_in[7:4]),
        .S({\x[5][7]_i_6_n_0 ,\x[5][7]_i_7_n_0 ,\x[5][7]_i_8_n_0 ,\x[5][7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[5][7]_i_12 
       (.CI(1'b0),
        .CO({\x_reg[5][7]_i_12_n_0 ,\x_reg[5][7]_i_12_n_1 ,\x_reg[5][7]_i_12_n_2 ,\x_reg[5][7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[5][7]_i_15_n_0 ,\x[5][7]_i_16_n_0 ,\x[5][7]_i_17_n_0 ,1'b0}),
        .O({\x_reg[5][7]_i_12_n_4 ,\x_reg[5][7]_i_12_n_5 ,\x_reg[5][7]_i_12_n_6 ,\x_reg[5][7]_i_12_n_7 }),
        .S({\x[5][7]_i_18_n_0 ,\x[5][7]_i_19_n_0 ,\x[5][7]_i_20_n_0 ,\x[5][7]_i_21_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[8]),
        .Q(\x_reg[5] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_0_in1_in[9]),
        .Q(\x_reg[5] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][0]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][10]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][10] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][11]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][11] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][12]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[6][12]_i_2 
       (.CI(\x_reg[6][8]_i_2_n_0 ),
        .CO({\x_reg[6][12]_i_2_n_0 ,\x_reg[6][12]_i_2_n_1 ,\x_reg[6][12]_i_2_n_2 ,\x_reg[6][12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[6][12]_i_2_n_4 ,\x_reg[6][12]_i_2_n_5 ,\x_reg[6][12]_i_2_n_6 ,\x_reg[6][12]_i_2_n_7 }),
        .S({\x[6][12]_i_4_n_0 ,\x[6][12]_i_5_n_0 ,\x[6][12]_i_6_n_0 ,\x[6][12]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][13]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][13] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][14]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][14] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][15]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][15] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][16] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][16]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[6][16]_i_2 
       (.CI(\x_reg[6][12]_i_2_n_0 ),
        .CO({\x_reg[6][16]_i_2_n_0 ,\x_reg[6][16]_i_2_n_1 ,\x_reg[6][16]_i_2_n_2 ,\x_reg[6][16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[6][16]_i_2_n_4 ,\x_reg[6][16]_i_2_n_5 ,\x_reg[6][16]_i_2_n_6 ,\x_reg[6][16]_i_2_n_7 }),
        .S({\x[6][16]_i_4_n_0 ,\x[6][16]_i_5_n_0 ,\x[6][16]_i_6_n_0 ,\x[6][16]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][17] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][17]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][17] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][18] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][18]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][18] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][19] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][19]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][19] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][1]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][20] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][20]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[6][20]_i_2 
       (.CI(\x_reg[6][16]_i_2_n_0 ),
        .CO({\x_reg[6][20]_i_2_n_0 ,\x_reg[6][20]_i_2_n_1 ,\x_reg[6][20]_i_2_n_2 ,\x_reg[6][20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[6][20]_i_2_n_4 ,\x_reg[6][20]_i_2_n_5 ,\x_reg[6][20]_i_2_n_6 ,\x_reg[6][20]_i_2_n_7 }),
        .S({\x[6][20]_i_4_n_0 ,\x[6][20]_i_5_n_0 ,\x[6][20]_i_6_n_0 ,\x[6][20]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][21] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][21]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][21] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][22] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][22]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][22] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][23] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][23]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][23] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][24] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][24]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[6][24]_i_2 
       (.CI(\x_reg[6][20]_i_2_n_0 ),
        .CO({\x_reg[6][24]_i_2_n_0 ,\x_reg[6][24]_i_2_n_1 ,\x_reg[6][24]_i_2_n_2 ,\x_reg[6][24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[6][24]_i_2_n_4 ,\x_reg[6][24]_i_2_n_5 ,\x_reg[6][24]_i_2_n_6 ,\x_reg[6][24]_i_2_n_7 }),
        .S({\x[6][24]_i_4_n_0 ,\x[6][24]_i_5_n_0 ,\x[6][24]_i_6_n_0 ,\x[6][24]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][25] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][25]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][25] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][26] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][26]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][26] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][27] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][27]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][27] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][28] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][28]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[6][28]_i_2 
       (.CI(\x_reg[6][24]_i_2_n_0 ),
        .CO({\x_reg[6][28]_i_2_n_0 ,\x_reg[6][28]_i_2_n_1 ,\x_reg[6][28]_i_2_n_2 ,\x_reg[6][28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[6][28]_i_2_n_4 ,\x_reg[6][28]_i_2_n_5 ,\x_reg[6][28]_i_2_n_6 ,\x_reg[6][28]_i_2_n_7 }),
        .S({\x[6][28]_i_4_n_0 ,\x[6][28]_i_5_n_0 ,\x[6][28]_i_6_n_0 ,\x[6][28]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][29] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][29]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][29] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][2]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][30] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][30]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][30] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][31] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][31]_i_1_n_0 ),
        .Q(p_3_in0));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][3]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][4]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[6][4]_i_2 
       (.CI(1'b0),
        .CO({\x_reg[6][4]_i_2_n_0 ,\x_reg[6][4]_i_2_n_1 ,\x_reg[6][4]_i_2_n_2 ,\x_reg[6][4]_i_2_n_3 }),
        .CYINIT(\x[6][4]_i_4_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[6][4]_i_2_n_4 ,\x_reg[6][4]_i_2_n_5 ,\x_reg[6][4]_i_2_n_6 ,\x_reg[6][4]_i_2_n_7 }),
        .S({\x[6][4]_i_5_n_0 ,\x[6][4]_i_6_n_0 ,\x[6][4]_i_7_n_0 ,\x[6][4]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][5]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][6]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][7]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][8]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_reg[6][8]_i_2 
       (.CI(\x_reg[6][4]_i_2_n_0 ),
        .CO({\x_reg[6][8]_i_2_n_0 ,\x_reg[6][8]_i_2_n_1 ,\x_reg[6][8]_i_2_n_2 ,\x_reg[6][8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_reg[6][8]_i_2_n_4 ,\x_reg[6][8]_i_2_n_5 ,\x_reg[6][8]_i_2_n_6 ,\x_reg[6][8]_i_2_n_7 }),
        .S({\x[6][8]_i_4_n_0 ,\x[6][8]_i_5_n_0 ,\x[6][8]_i_6_n_0 ,\x[6][8]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\x[6][9]_i_1_n_0 ),
        .Q(\x_reg_n_0_[6][9] ));
  LUT6 #(
    .INIT(64'hA55AC3C3A55A3C3C)) 
    \y[1][11]_i_10 
       (.I0(\y_reg[3] [10]),
        .I1(\y_reg[1] [10]),
        .I2(\y[1][15]_i_21_n_0 ),
        .I3(\y_reg[3] [19]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [21]),
        .O(\y[1][11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[1][11]_i_11 
       (.I0(\y_reg[1] [20]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\y_reg[3] [18]),
        .I3(\y[1][11]_i_18_n_0 ),
        .I4(\y_reg[1] [9]),
        .I5(\y_reg[3] [9]),
        .O(\y[1][11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA55AC3C3A55A3C3C)) 
    \y[1][11]_i_12 
       (.I0(\y_reg[3] [9]),
        .I1(\y_reg[1] [9]),
        .I2(\y[1][11]_i_18_n_0 ),
        .I3(\y_reg[3] [18]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [20]),
        .O(\y[1][11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[1][11]_i_13 
       (.I0(\y_reg[1] [19]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\y_reg[3] [17]),
        .I3(\y[1][11]_i_19_n_0 ),
        .I4(\y_reg[1] [8]),
        .I5(\y_reg[3] [8]),
        .O(\y[1][11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA55AC3C3A55A3C3C)) 
    \y[1][11]_i_14 
       (.I0(\y_reg[3] [8]),
        .I1(\y_reg[1] [8]),
        .I2(\y[1][11]_i_19_n_0 ),
        .I3(\y_reg[3] [17]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [19]),
        .O(\y[1][11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[1][11]_i_15 
       (.I0(\y_reg[1] [18]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\y_reg[3] [16]),
        .I3(\y[1][11]_i_20_n_0 ),
        .I4(\y_reg[1] [7]),
        .I5(\y_reg[3] [7]),
        .O(\y[1][11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA55AC3C3A55A3C3C)) 
    \y[1][11]_i_16 
       (.I0(\y_reg[3] [7]),
        .I1(\y_reg[1] [7]),
        .I2(\y[1][11]_i_20_n_0 ),
        .I3(\y_reg[3] [16]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [18]),
        .O(\y[1][11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[1][11]_i_17 
       (.I0(\y_reg[1] [17]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\y_reg[3] [15]),
        .I3(\y[1][11]_i_21_n_0 ),
        .I4(\y_reg[1] [6]),
        .I5(\y_reg[3] [6]),
        .O(\y[1][11]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][11]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][14] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [13]),
        .O(\y[1][11]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][11]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][13] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [12]),
        .O(\y[1][11]_i_19_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y[1][11]_i_2 
       (.I0(\y[1][11]_i_10_n_0 ),
        .I1(\y[1][11]_i_11_n_0 ),
        .O(\y[1][11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][11]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][12] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [11]),
        .O(\y[1][11]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][11]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][11] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [10]),
        .O(\y[1][11]_i_21_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y[1][11]_i_3 
       (.I0(\y[1][11]_i_12_n_0 ),
        .I1(\y[1][11]_i_13_n_0 ),
        .O(\y[1][11]_i_3_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y[1][11]_i_4 
       (.I0(\y[1][11]_i_14_n_0 ),
        .I1(\y[1][11]_i_15_n_0 ),
        .O(\y[1][11]_i_4_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y[1][11]_i_5 
       (.I0(\y[1][11]_i_16_n_0 ),
        .I1(\y[1][11]_i_17_n_0 ),
        .O(\y[1][11]_i_5_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][11]_i_6 
       (.I0(\y[1][15]_i_16_n_0 ),
        .I1(\y[1][15]_i_17_n_0 ),
        .I2(\y[1][11]_i_2_n_0 ),
        .O(\y[1][11]_i_6_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][11]_i_7 
       (.I0(\y[1][11]_i_10_n_0 ),
        .I1(\y[1][11]_i_11_n_0 ),
        .I2(\y[1][11]_i_3_n_0 ),
        .O(\y[1][11]_i_7_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][11]_i_8 
       (.I0(\y[1][11]_i_12_n_0 ),
        .I1(\y[1][11]_i_13_n_0 ),
        .I2(\y[1][11]_i_4_n_0 ),
        .O(\y[1][11]_i_8_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][11]_i_9 
       (.I0(\y[1][11]_i_14_n_0 ),
        .I1(\y[1][11]_i_15_n_0 ),
        .I2(\y[1][11]_i_5_n_0 ),
        .O(\y[1][11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][15]_i_10 
       (.I0(\y_reg[3] [13]),
        .I1(\y_reg[1] [13]),
        .I2(\y[1][15]_i_18_n_0 ),
        .I3(\y_reg[1] [24]),
        .I4(\y_reg[3] [22]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h35C53ACACA3AC535)) 
    \y[1][15]_i_11 
       (.I0(\y_reg[1] [14]),
        .I1(\y_reg[3] [14]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\y_reg[3] [23]),
        .I4(\y_reg[1] [25]),
        .I5(\y[1][19]_i_21_n_0 ),
        .O(\y[1][15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][15]_i_12 
       (.I0(\y_reg[3] [12]),
        .I1(\y_reg[1] [12]),
        .I2(\y[1][15]_i_19_n_0 ),
        .I3(\y_reg[1] [23]),
        .I4(\y_reg[3] [21]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h35C53ACACA3AC535)) 
    \y[1][15]_i_13 
       (.I0(\y_reg[1] [13]),
        .I1(\y_reg[3] [13]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\y_reg[3] [22]),
        .I4(\y_reg[1] [24]),
        .I5(\y[1][15]_i_18_n_0 ),
        .O(\y[1][15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][15]_i_14 
       (.I0(\y_reg[3] [11]),
        .I1(\y_reg[1] [11]),
        .I2(\y[1][15]_i_20_n_0 ),
        .I3(\y_reg[1] [22]),
        .I4(\y_reg[3] [20]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h35C53ACACA3AC535)) 
    \y[1][15]_i_15 
       (.I0(\y_reg[1] [12]),
        .I1(\y_reg[3] [12]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\y_reg[3] [21]),
        .I4(\y_reg[1] [23]),
        .I5(\y[1][15]_i_19_n_0 ),
        .O(\y[1][15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF330F5F5F3305050)) 
    \y[1][15]_i_16 
       (.I0(\y_reg[1] [10]),
        .I1(\y_reg[3] [10]),
        .I2(\y[1][15]_i_21_n_0 ),
        .I3(\y_reg[3] [19]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [21]),
        .O(\y[1][15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h35C53ACACA3AC535)) 
    \y[1][15]_i_17 
       (.I0(\y_reg[1] [11]),
        .I1(\y_reg[3] [11]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\y_reg[3] [20]),
        .I4(\y_reg[1] [22]),
        .I5(\y[1][15]_i_20_n_0 ),
        .O(\y[1][15]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][15]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][18] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [17]),
        .O(\y[1][15]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][15]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][17] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [16]),
        .O(\y[1][15]_i_19_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][15]_i_2 
       (.I0(\y[1][15]_i_10_n_0 ),
        .I1(\y[1][15]_i_11_n_0 ),
        .O(\y[1][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][15]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][16] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [15]),
        .O(\y[1][15]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][15]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][15] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [14]),
        .O(\y[1][15]_i_21_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][15]_i_3 
       (.I0(\y[1][15]_i_12_n_0 ),
        .I1(\y[1][15]_i_13_n_0 ),
        .O(\y[1][15]_i_3_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][15]_i_4 
       (.I0(\y[1][15]_i_14_n_0 ),
        .I1(\y[1][15]_i_15_n_0 ),
        .O(\y[1][15]_i_4_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][15]_i_5 
       (.I0(\y[1][15]_i_16_n_0 ),
        .I1(\y[1][15]_i_17_n_0 ),
        .O(\y[1][15]_i_5_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][15]_i_6 
       (.I0(\y[1][19]_i_16_n_0 ),
        .I1(\y[1][19]_i_17_n_0 ),
        .I2(\y[1][15]_i_2_n_0 ),
        .O(\y[1][15]_i_6_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][15]_i_7 
       (.I0(\y[1][15]_i_10_n_0 ),
        .I1(\y[1][15]_i_11_n_0 ),
        .I2(\y[1][15]_i_3_n_0 ),
        .O(\y[1][15]_i_7_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][15]_i_8 
       (.I0(\y[1][15]_i_12_n_0 ),
        .I1(\y[1][15]_i_13_n_0 ),
        .I2(\y[1][15]_i_4_n_0 ),
        .O(\y[1][15]_i_8_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][15]_i_9 
       (.I0(\y[1][15]_i_14_n_0 ),
        .I1(\y[1][15]_i_15_n_0 ),
        .I2(\y[1][15]_i_5_n_0 ),
        .O(\y[1][15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][19]_i_10 
       (.I0(\y_reg[3] [17]),
        .I1(\y_reg[1] [17]),
        .I2(\y[1][19]_i_18_n_0 ),
        .I3(\y_reg[1] [28]),
        .I4(\y_reg[3] [26]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3CC33CC35A5AA5A5)) 
    \y[1][19]_i_11 
       (.I0(\y_reg[1] [18]),
        .I1(\y_reg[3] [18]),
        .I2(\y[1][23]_i_20_n_0 ),
        .I3(\y_reg[3] [27]),
        .I4(\y_reg[1] [29]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][19]_i_12 
       (.I0(\y_reg[3] [16]),
        .I1(\y_reg[1] [16]),
        .I2(\y[1][19]_i_19_n_0 ),
        .I3(\y_reg[1] [27]),
        .I4(\y_reg[3] [25]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h35C53ACACA3AC535)) 
    \y[1][19]_i_13 
       (.I0(\y_reg[1] [17]),
        .I1(\y_reg[3] [17]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\y_reg[3] [26]),
        .I4(\y_reg[1] [28]),
        .I5(\y[1][19]_i_18_n_0 ),
        .O(\y[1][19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][19]_i_14 
       (.I0(\y_reg[3] [15]),
        .I1(\y_reg[1] [15]),
        .I2(\y[1][19]_i_20_n_0 ),
        .I3(\y_reg[1] [26]),
        .I4(\y_reg[3] [24]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h35C53ACACA3AC535)) 
    \y[1][19]_i_15 
       (.I0(\y_reg[1] [16]),
        .I1(\y_reg[3] [16]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\y_reg[3] [25]),
        .I4(\y_reg[1] [27]),
        .I5(\y[1][19]_i_19_n_0 ),
        .O(\y[1][19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][19]_i_16 
       (.I0(\y_reg[3] [14]),
        .I1(\y_reg[1] [14]),
        .I2(\y[1][19]_i_21_n_0 ),
        .I3(\y_reg[1] [25]),
        .I4(\y_reg[3] [23]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][19]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h35C53ACACA3AC535)) 
    \y[1][19]_i_17 
       (.I0(\y_reg[1] [15]),
        .I1(\y_reg[3] [15]),
        .I2(flag_reg_rep__0_n_0),
        .I3(\y_reg[3] [24]),
        .I4(\y_reg[1] [26]),
        .I5(\y[1][19]_i_20_n_0 ),
        .O(\y[1][19]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][19]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][22] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [21]),
        .O(\y[1][19]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][19]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][21] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [20]),
        .O(\y[1][19]_i_19_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][19]_i_2 
       (.I0(\y[1][19]_i_10_n_0 ),
        .I1(\y[1][19]_i_11_n_0 ),
        .O(\y[1][19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][19]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][20] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [19]),
        .O(\y[1][19]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][19]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][19] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [18]),
        .O(\y[1][19]_i_21_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][19]_i_3 
       (.I0(\y[1][19]_i_12_n_0 ),
        .I1(\y[1][19]_i_13_n_0 ),
        .O(\y[1][19]_i_3_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][19]_i_4 
       (.I0(\y[1][19]_i_14_n_0 ),
        .I1(\y[1][19]_i_15_n_0 ),
        .O(\y[1][19]_i_4_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][19]_i_5 
       (.I0(\y[1][19]_i_16_n_0 ),
        .I1(\y[1][19]_i_17_n_0 ),
        .O(\y[1][19]_i_5_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][19]_i_6 
       (.I0(\y[1][23]_i_13_n_0 ),
        .I1(\y[1][23]_i_14_n_0 ),
        .I2(\y[1][19]_i_2_n_0 ),
        .O(\y[1][19]_i_6_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][19]_i_7 
       (.I0(\y[1][19]_i_10_n_0 ),
        .I1(\y[1][19]_i_11_n_0 ),
        .I2(\y[1][19]_i_3_n_0 ),
        .O(\y[1][19]_i_7_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][19]_i_8 
       (.I0(\y[1][19]_i_12_n_0 ),
        .I1(\y[1][19]_i_13_n_0 ),
        .I2(\y[1][19]_i_4_n_0 ),
        .O(\y[1][19]_i_8_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][19]_i_9 
       (.I0(\y[1][19]_i_14_n_0 ),
        .I1(\y[1][19]_i_15_n_0 ),
        .I2(\y[1][19]_i_5_n_0 ),
        .O(\y[1][19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000ACC0ACCAFFFAF)) 
    \y[1][23]_i_10 
       (.I0(\y_reg[1] [21]),
        .I1(\y_reg[3] [21]),
        .I2(\y_reg[1] [31]),
        .I3(flag_reg_rep__0_n_0),
        .I4(\y_reg[3] [30]),
        .I5(\y[1][23]_i_17_n_0 ),
        .O(\y[1][23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF550F3F3F5503030)) 
    \y[1][23]_i_11 
       (.I0(\y_reg[3] [19]),
        .I1(\y_reg[1] [19]),
        .I2(\y[1][23]_i_18_n_0 ),
        .I3(\y_reg[3] [28]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [30]),
        .O(\y[1][23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3C3CC3C35AA55AA5)) 
    \y[1][23]_i_12 
       (.I0(\y_reg[1] [20]),
        .I1(\y_reg[3] [20]),
        .I2(\y[1][23]_i_19_n_0 ),
        .I3(\y_reg[1] [31]),
        .I4(\y_reg[3] [29]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF550F550F3F33030)) 
    \y[1][23]_i_13 
       (.I0(\y_reg[3] [18]),
        .I1(\y_reg[1] [18]),
        .I2(\y[1][23]_i_20_n_0 ),
        .I3(\y_reg[3] [27]),
        .I4(\y_reg[1] [29]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y[1][23]_i_14 
       (.I0(\y_reg[1] [19]),
        .I1(\y_reg[3] [19]),
        .I2(\y[1][23]_i_18_n_0 ),
        .I3(\y_reg[3] [28]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [30]),
        .O(\y[1][23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][23]_i_15 
       (.I0(\y_reg[3] [20]),
        .I1(\y_reg[1] [20]),
        .I2(\y[1][23]_i_19_n_0 ),
        .I3(\y_reg[1] [31]),
        .I4(\y_reg[3] [29]),
        .I5(flag_reg_rep__0_n_0),
        .O(\y[1][23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A6699A5A56699)) 
    \y[1][23]_i_16 
       (.I0(\y[1][23]_i_17_n_0 ),
        .I1(\y_reg[1] [21]),
        .I2(\y_reg[3] [21]),
        .I3(\y_reg[1] [31]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[3] [30]),
        .O(\y[1][23]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][23]_i_17 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][26] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [25]),
        .O(\y[1][23]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][23]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][24] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [23]),
        .O(\y[1][23]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][23]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][25] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [24]),
        .O(\y[1][23]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFAEEA0EEFA88A088)) 
    \y[1][23]_i_2 
       (.I0(\y[1][23]_i_10_n_0 ),
        .I1(\y_reg[1] [22]),
        .I2(\y_reg[3] [22]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg[3] [26]),
        .I5(\x_reg_n_0_[1][27] ),
        .O(\y[1][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][23]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][23] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [22]),
        .O(\y[1][23]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hA5995A99A5665A66)) 
    \y[1][23]_i_3 
       (.I0(\y[1][23]_i_10_n_0 ),
        .I1(\x_reg_n_0_[1][27] ),
        .I2(\x_reg[3] [26]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\y_reg[3] [22]),
        .I5(\y_reg[1] [22]),
        .O(\y[1][23]_i_3_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][23]_i_4 
       (.I0(\y[1][23]_i_11_n_0 ),
        .I1(\y[1][23]_i_12_n_0 ),
        .O(\y[1][23]_i_4_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][23]_i_5 
       (.I0(\y[1][23]_i_13_n_0 ),
        .I1(\y[1][23]_i_14_n_0 ),
        .O(\y[1][23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9696999696999999)) 
    \y[1][23]_i_6 
       (.I0(\y[1][23]_i_2_n_0 ),
        .I1(\y[1][27]_i_16_n_0 ),
        .I2(\x[1][27]_i_11_n_0 ),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg[3] [26]),
        .I5(\x_reg_n_0_[1][27] ),
        .O(\y[1][23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \y[1][23]_i_7 
       (.I0(\y[1][23]_i_3_n_0 ),
        .I1(\y[1][23]_i_15_n_0 ),
        .I2(\y[1][23]_i_16_n_0 ),
        .O(\y[1][23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][23]_i_8 
       (.I0(\y[1][23]_i_4_n_0 ),
        .I1(\y[1][23]_i_15_n_0 ),
        .I2(\y[1][23]_i_16_n_0 ),
        .O(\y[1][23]_i_8_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][23]_i_9 
       (.I0(\y[1][23]_i_11_n_0 ),
        .I1(\y[1][23]_i_12_n_0 ),
        .I2(\y[1][23]_i_5_n_0 ),
        .O(\y[1][23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFAFACCFFAFAF)) 
    \y[1][27]_i_10 
       (.I0(\y_reg[1] [25]),
        .I1(\y_reg[3] [25]),
        .I2(\x_reg_n_0_[1][30] ),
        .I3(\x_reg[3] [29]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\y[1][27]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[1][27]_i_11 
       (.I0(\x_reg[3] [30]),
        .I1(flag_reg_rep__1_n_0),
        .I2(B0),
        .O(\y[1][27]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h35C53ACA)) 
    \y[1][27]_i_12 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\x_reg[3] [28]),
        .I4(\x_reg_n_0_[1][29] ),
        .O(\y[1][27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCC33A5A533CC5A5A)) 
    \y[1][27]_i_13 
       (.I0(\y_reg[1] [25]),
        .I1(\y_reg[3] [25]),
        .I2(\x_reg_n_0_[1][30] ),
        .I3(\x_reg[3] [29]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\y[1][27]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h35C53ACA)) 
    \y[1][27]_i_14 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\x_reg[3] [27]),
        .I4(\x_reg_n_0_[1][28] ),
        .O(\y[1][27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCC33A5A533CC5A5A)) 
    \y[1][27]_i_15 
       (.I0(\y_reg[1] [24]),
        .I1(\y_reg[3] [24]),
        .I2(\x_reg_n_0_[1][29] ),
        .I3(\x_reg[3] [28]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\y[1][27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCC33A5A533CC5A5A)) 
    \y[1][27]_i_16 
       (.I0(\y_reg[1] [23]),
        .I1(\y_reg[3] [23]),
        .I2(\x_reg_n_0_[1][28] ),
        .I3(\x_reg[3] [27]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\y[1][27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC3553C553CAA)) 
    \y[1][27]_i_17 
       (.I0(\y_reg[1] [26]),
        .I1(\y_reg[3] [26]),
        .I2(\x_reg[3] [30]),
        .I3(flag_reg_rep__1_n_0),
        .I4(B0),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\y[1][27]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h35C53ACA)) 
    \y[1][27]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(flag_reg_rep_n_0),
        .I3(\x_reg[3] [29]),
        .I4(\x_reg_n_0_[1][30] ),
        .O(\y[1][27]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8228828282282828)) 
    \y[1][27]_i_2 
       (.I0(\y[1][27]_i_10_n_0 ),
        .I1(\x[1][27]_i_11_n_0 ),
        .I2(\y[1][27]_i_11_n_0 ),
        .I3(\y_reg[3] [26]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[1] [26]),
        .O(\y[1][27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hDFD50000)) 
    \y[1][27]_i_3 
       (.I0(\y[1][27]_i_12_n_0 ),
        .I1(\y_reg[3] [24]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[1] [24]),
        .I4(\y[1][27]_i_13_n_0 ),
        .O(\y[1][27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDFD50000)) 
    \y[1][27]_i_4 
       (.I0(\y[1][27]_i_14_n_0 ),
        .I1(\y_reg[3] [23]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[1] [23]),
        .I4(\y[1][27]_i_15_n_0 ),
        .O(\y[1][27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FF53500000000)) 
    \y[1][27]_i_5 
       (.I0(\x_reg_n_0_[1][27] ),
        .I1(\x_reg[3] [26]),
        .I2(flag_reg_rep_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[1] [31]),
        .I5(\y[1][27]_i_16_n_0 ),
        .O(\y[1][27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \y[1][27]_i_6 
       (.I0(\y[1][27]_i_2_n_0 ),
        .I1(\y_reg[1] [27]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [27]),
        .I4(\y[1][31]_i_9_n_0 ),
        .I5(\y[1][31]_i_10_n_0 ),
        .O(\y[1][27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9996669699999999)) 
    \y[1][27]_i_7 
       (.I0(\y[1][27]_i_3_n_0 ),
        .I1(\y[1][27]_i_17_n_0 ),
        .I2(\y_reg[1] [25]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [25]),
        .I5(\y[1][27]_i_18_n_0 ),
        .O(\y[1][27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9996669699999999)) 
    \y[1][27]_i_8 
       (.I0(\y[1][27]_i_4_n_0 ),
        .I1(\y[1][27]_i_13_n_0 ),
        .I2(\y_reg[1] [24]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [24]),
        .I5(\y[1][27]_i_12_n_0 ),
        .O(\y[1][27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9996669699999999)) 
    \y[1][27]_i_9 
       (.I0(\y[1][27]_i_5_n_0 ),
        .I1(\y[1][27]_i_15_n_0 ),
        .I2(\y_reg[1] [23]),
        .I3(flag_reg_rep_n_0),
        .I4(\y_reg[3] [23]),
        .I5(\y[1][27]_i_14_n_0 ),
        .O(\y[1][27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCAACFAACFFF)) 
    \y[1][31]_i_10 
       (.I0(\y_reg[1] [26]),
        .I1(\y_reg[3] [26]),
        .I2(\x_reg[3] [30]),
        .I3(flag_reg_rep__1_n_0),
        .I4(B0),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\y[1][31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[1][31]_i_11 
       (.I0(\y_reg[1] [29]),
        .I1(\y_reg[3] [29]),
        .I2(flag_reg_rep__1_n_0),
        .O(\y[1][31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \y[1][31]_i_12 
       (.I0(\y_reg[3] [30]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[1] [30]),
        .O(\y[1][31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[1][31]_i_13 
       (.I0(\y_reg[3] [28]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[1] [28]),
        .O(\y[1][31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00CC0A0AFF00F0F0)) 
    \y[1][31]_i_2 
       (.I0(\y_reg[1] [28]),
        .I1(\y_reg[3] [28]),
        .I2(\y_reg[1] [29]),
        .I3(\y_reg[3] [29]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y[1][31]_i_9_n_0 ),
        .O(\y[1][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FA00F0F0FA0C0C0)) 
    \y[1][31]_i_3 
       (.I0(\y_reg[3] [27]),
        .I1(\y_reg[1] [27]),
        .I2(\y[1][31]_i_9_n_0 ),
        .I3(\y_reg[3] [28]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[1] [28]),
        .O(\y[1][31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h28222888)) 
    \y[1][31]_i_4 
       (.I0(\y[1][31]_i_10_n_0 ),
        .I1(\y[1][31]_i_9_n_0 ),
        .I2(\y_reg[3] [27]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\y_reg[1] [27]),
        .O(\y[1][31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA47AAAAAA474747)) 
    \y[1][31]_i_5 
       (.I0(\x[1][27]_i_11_n_0 ),
        .I1(\y[1][31]_i_11_n_0 ),
        .I2(\x[1][31]_i_10_n_0 ),
        .I3(\y_reg[3] [30]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[1] [30]),
        .O(\y[1][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h47B8FF0000FF00FF)) 
    \y[1][31]_i_6 
       (.I0(\y_reg[3] [28]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[1] [28]),
        .I3(\y[1][31]_i_12_n_0 ),
        .I4(\y[1][31]_i_9_n_0 ),
        .I5(\y[1][31]_i_11_n_0 ),
        .O(\y[1][31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00FF1DE200FFFF00)) 
    \y[1][31]_i_7 
       (.I0(\y_reg[1] [27]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[3] [27]),
        .I3(\y[1][31]_i_11_n_0 ),
        .I4(\y[1][31]_i_13_n_0 ),
        .I5(\y[1][31]_i_9_n_0 ),
        .O(\y[1][31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \y[1][31]_i_8 
       (.I0(\y[1][31]_i_4_n_0 ),
        .I1(\y[1][31]_i_13_n_0 ),
        .I2(\y[1][31]_i_9_n_0 ),
        .I3(\y_reg[1] [27]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[3] [27]),
        .O(\y[1][31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][31]_i_9 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(B0),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg[3] [31]),
        .O(\y[1][31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA808F8A8AE0EFEAE)) 
    \y[1][3]_i_10 
       (.I0(\y[1][3]_i_14_n_0 ),
        .I1(\y_reg[1] [12]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [10]),
        .I4(\y_reg[3] [1]),
        .I5(\y_reg[1] [1]),
        .O(\y[1][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A3CC3A5A53CC3)) 
    \y[1][3]_i_11 
       (.I0(\y_reg[3] [11]),
        .I1(\y_reg[1] [13]),
        .I2(\y[1][7]_i_21_n_0 ),
        .I3(\y_reg[1] [2]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[3] [2]),
        .O(\y[1][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA5A599665A5A9966)) 
    \y[1][3]_i_12 
       (.I0(\y[1][3]_i_14_n_0 ),
        .I1(\y_reg[1] [12]),
        .I2(\y_reg[3] [10]),
        .I3(\y_reg[1] [1]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[3] [1]),
        .O(\y[1][3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][3]_i_13 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][5] ),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg[3] [4]),
        .O(\y[1][3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][3]_i_14 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][6] ),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg[3] [5]),
        .O(\y[1][3]_i_14_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][3]_i_2 
       (.I0(\y[1][3]_i_10_n_0 ),
        .I1(\y[1][3]_i_11_n_0 ),
        .O(\y[1][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4703440000000000)) 
    \y[1][3]_i_3 
       (.I0(\y_reg[3] [31]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[1] [31]),
        .I3(\y_reg[3] [0]),
        .I4(\y_reg[1] [0]),
        .I5(\y[1][3]_i_12_n_0 ),
        .O(\y[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9A95AAA59A9AAAAA)) 
    \y[1][3]_i_4 
       (.I0(\y[1][3]_i_12_n_0 ),
        .I1(\y_reg[3] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[1] [31]),
        .I4(\y_reg[3] [0]),
        .I5(\y_reg[1] [0]),
        .O(\y[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5A335ACCA5CCA533)) 
    \y[1][3]_i_5 
       (.I0(\y_reg[3] [9]),
        .I1(\y_reg[1] [11]),
        .I2(\x_reg[3] [4]),
        .I3(flag_reg_rep__1_n_0),
        .I4(\x_reg_n_0_[1][5] ),
        .I5(\x[1][27]_i_11_n_0 ),
        .O(\y[1][3]_i_5_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][3]_i_6 
       (.I0(\y[1][7]_i_16_n_0 ),
        .I1(\y[1][7]_i_17_n_0 ),
        .I2(\y[1][3]_i_2_n_0 ),
        .O(\y[1][3]_i_6_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][3]_i_7 
       (.I0(\y[1][3]_i_10_n_0 ),
        .I1(\y[1][3]_i_11_n_0 ),
        .I2(\y[1][3]_i_3_n_0 ),
        .O(\y[1][3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h99559595)) 
    \y[1][3]_i_8 
       (.I0(\y[1][3]_i_4_n_0 ),
        .I1(\y[1][3]_i_13_n_0 ),
        .I2(\y_reg[1] [11]),
        .I3(\y_reg[3] [9]),
        .I4(flag_reg_rep__1_n_0),
        .O(\y[1][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A6699A5A56699)) 
    \y[1][3]_i_9 
       (.I0(\y[1][3]_i_5_n_0 ),
        .I1(\y_reg[1] [0]),
        .I2(\y_reg[3] [0]),
        .I3(\y_reg[1] [31]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[3] [31]),
        .O(\y[1][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA55AC3C3A55A3C3C)) 
    \y[1][7]_i_10 
       (.I0(\y_reg[3] [6]),
        .I1(\y_reg[1] [6]),
        .I2(\y[1][11]_i_21_n_0 ),
        .I3(\y_reg[3] [15]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [17]),
        .O(\y[1][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[1][7]_i_11 
       (.I0(\y_reg[1] [16]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\y_reg[3] [14]),
        .I3(\y[1][7]_i_18_n_0 ),
        .I4(\y_reg[1] [5]),
        .I5(\y_reg[3] [5]),
        .O(\y[1][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA55AC3C3A55A3C3C)) 
    \y[1][7]_i_12 
       (.I0(\y_reg[3] [5]),
        .I1(\y_reg[1] [5]),
        .I2(\y[1][7]_i_18_n_0 ),
        .I3(\y_reg[3] [14]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [16]),
        .O(\y[1][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h003088B8B8BBFCFF)) 
    \y[1][7]_i_13 
       (.I0(\y_reg[3] [4]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\y_reg[1] [4]),
        .I3(\y_reg[1] [15]),
        .I4(\y_reg[3] [13]),
        .I5(\y[1][7]_i_19_n_0 ),
        .O(\y[1][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hC33CA5A5C33C5A5A)) 
    \y[1][7]_i_14 
       (.I0(\y_reg[1] [4]),
        .I1(\y_reg[3] [4]),
        .I2(\y[1][7]_i_19_n_0 ),
        .I3(\y_reg[3] [13]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[1] [15]),
        .O(\y[1][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h008830B8B8FCBBFF)) 
    \y[1][7]_i_15 
       (.I0(\y_reg[3] [3]),
        .I1(flag_reg_rep__0_n_0),
        .I2(\y_reg[1] [3]),
        .I3(\y_reg[3] [12]),
        .I4(\y_reg[1] [14]),
        .I5(\y[1][7]_i_20_n_0 ),
        .O(\y[1][7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55050F330F330)) 
    \y[1][7]_i_16 
       (.I0(\y_reg[3] [2]),
        .I1(\y_reg[1] [2]),
        .I2(\y[1][7]_i_21_n_0 ),
        .I3(\y_reg[1] [13]),
        .I4(\y_reg[3] [11]),
        .I5(flag_reg_rep__1_n_0),
        .O(\y[1][7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A3CC3A5A53CC3)) 
    \y[1][7]_i_17 
       (.I0(\y_reg[3] [12]),
        .I1(\y_reg[1] [14]),
        .I2(\y[1][7]_i_20_n_0 ),
        .I3(\y_reg[1] [3]),
        .I4(flag_reg_rep__0_n_0),
        .I5(\y_reg[3] [3]),
        .O(\y[1][7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][7]_i_18 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][10] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [9]),
        .O(\y[1][7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][7]_i_19 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][9] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [8]),
        .O(\y[1][7]_i_19_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y[1][7]_i_2 
       (.I0(\y[1][7]_i_10_n_0 ),
        .I1(\y[1][7]_i_11_n_0 ),
        .O(\y[1][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][7]_i_20 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][8] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [7]),
        .O(\y[1][7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \y[1][7]_i_21 
       (.I0(\y_reg[1] [31]),
        .I1(\y_reg[3] [31]),
        .I2(\x_reg_n_0_[1][7] ),
        .I3(flag_reg_rep__0_n_0),
        .I4(\x_reg[3] [6]),
        .O(\y[1][7]_i_21_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y[1][7]_i_3 
       (.I0(\y[1][7]_i_12_n_0 ),
        .I1(\y[1][7]_i_13_n_0 ),
        .O(\y[1][7]_i_3_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y[1][7]_i_4 
       (.I0(\y[1][7]_i_14_n_0 ),
        .I1(\y[1][7]_i_15_n_0 ),
        .O(\y[1][7]_i_4_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y[1][7]_i_5 
       (.I0(\y[1][7]_i_16_n_0 ),
        .I1(\y[1][7]_i_17_n_0 ),
        .O(\y[1][7]_i_5_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][7]_i_6 
       (.I0(\y[1][11]_i_16_n_0 ),
        .I1(\y[1][11]_i_17_n_0 ),
        .I2(\y[1][7]_i_2_n_0 ),
        .O(\y[1][7]_i_6_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][7]_i_7 
       (.I0(\y[1][7]_i_10_n_0 ),
        .I1(\y[1][7]_i_11_n_0 ),
        .I2(\y[1][7]_i_3_n_0 ),
        .O(\y[1][7]_i_7_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][7]_i_8 
       (.I0(\y[1][7]_i_12_n_0 ),
        .I1(\y[1][7]_i_13_n_0 ),
        .I2(\y[1][7]_i_4_n_0 ),
        .O(\y[1][7]_i_8_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[1][7]_i_9 
       (.I0(\y[1][7]_i_14_n_0 ),
        .I1(\y[1][7]_i_15_n_0 ),
        .I2(\y[1][7]_i_5_n_0 ),
        .O(\y[1][7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][11]_i_10 
       (.I0(stage2_x_taylor[10]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][15]_i_18_n_6 ),
        .O(\y[3][11]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][11]_i_11 
       (.I0(stage2_x_taylor[9]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][15]_i_18_n_7 ),
        .O(\y[3][11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][11]_i_12 
       (.I0(stage2_x_taylor[8]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][7]_i_12_n_4 ),
        .O(\y[3][11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][11]_i_13 
       (.I0(stage2_x_taylor[7]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][7]_i_12_n_5 ),
        .O(\y[3][11]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][11]_i_14 
       (.I0(\y_reg[3] [18]),
        .I1(\y_reg[5] [16]),
        .I2(flag_reg_n_0),
        .O(\y[3][11]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][11]_i_15 
       (.I0(\y_reg[3] [17]),
        .I1(\y_reg[5] [15]),
        .I2(flag_reg_n_0),
        .O(\y[3][11]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][11]_i_16 
       (.I0(\y_reg[3] [16]),
        .I1(\y_reg[5] [14]),
        .I2(flag_reg_n_0),
        .O(\y[3][11]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][11]_i_17 
       (.I0(\y_reg[3] [15]),
        .I1(\y_reg[5] [13]),
        .I2(flag_reg_n_0),
        .O(\y[3][11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][11]_i_2 
       (.I0(\y_reg[5] [10]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [10]),
        .I3(\y_reg[5] [15]),
        .I4(\y_reg[3] [17]),
        .I5(\y[3][11]_i_10_n_0 ),
        .O(\y[3][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][11]_i_3 
       (.I0(\y_reg[5] [9]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [9]),
        .I3(\y_reg[5] [14]),
        .I4(\y_reg[3] [16]),
        .I5(\y[3][11]_i_11_n_0 ),
        .O(\y[3][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][11]_i_4 
       (.I0(\y_reg[5] [8]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [8]),
        .I3(\y_reg[5] [13]),
        .I4(\y_reg[3] [15]),
        .I5(\y[3][11]_i_12_n_0 ),
        .O(\y[3][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][11]_i_5 
       (.I0(\y_reg[5] [7]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [7]),
        .I3(\y_reg[5] [12]),
        .I4(\y_reg[3] [14]),
        .I5(\y[3][11]_i_13_n_0 ),
        .O(\y[3][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][11]_i_6 
       (.I0(\y[3][11]_i_2_n_0 ),
        .I1(\y[3][11]_i_14_n_0 ),
        .I2(\y[3][15]_i_13_n_0 ),
        .I3(\y_reg[5] [11]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [11]),
        .O(\y[3][11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][11]_i_7 
       (.I0(\y[3][11]_i_3_n_0 ),
        .I1(\y[3][11]_i_15_n_0 ),
        .I2(\y[3][11]_i_10_n_0 ),
        .I3(\y_reg[5] [10]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [10]),
        .O(\y[3][11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][11]_i_8 
       (.I0(\y[3][11]_i_4_n_0 ),
        .I1(\y[3][11]_i_16_n_0 ),
        .I2(\y[3][11]_i_11_n_0 ),
        .I3(\y_reg[5] [9]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [9]),
        .O(\y[3][11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][11]_i_9 
       (.I0(\y[3][11]_i_5_n_0 ),
        .I1(\y[3][11]_i_17_n_0 ),
        .I2(\y[3][11]_i_12_n_0 ),
        .I3(\y_reg[5] [8]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [8]),
        .O(\y[3][11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][15]_i_10 
       (.I0(stage2_x_taylor[14]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][19]_i_18_n_6 ),
        .O(\y[3][15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][15]_i_11 
       (.I0(stage2_x_taylor[13]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][19]_i_18_n_7 ),
        .O(\y[3][15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][15]_i_12 
       (.I0(stage2_x_taylor[12]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][15]_i_18_n_4 ),
        .O(\y[3][15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][15]_i_13 
       (.I0(stage2_x_taylor[11]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][15]_i_18_n_5 ),
        .O(\y[3][15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][15]_i_14 
       (.I0(\y_reg[3] [22]),
        .I1(\y_reg[5] [20]),
        .I2(flag_reg_n_0),
        .O(\y[3][15]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][15]_i_15 
       (.I0(\y_reg[3] [21]),
        .I1(\y_reg[5] [19]),
        .I2(flag_reg_n_0),
        .O(\y[3][15]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][15]_i_16 
       (.I0(\y_reg[3] [20]),
        .I1(\y_reg[5] [18]),
        .I2(flag_reg_n_0),
        .O(\y[3][15]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][15]_i_17 
       (.I0(\y_reg[3] [19]),
        .I1(\y_reg[5] [17]),
        .I2(flag_reg_n_0),
        .O(\y[3][15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][15]_i_2 
       (.I0(\y_reg[5] [14]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [14]),
        .I3(\y_reg[5] [19]),
        .I4(\y_reg[3] [21]),
        .I5(\y[3][15]_i_10_n_0 ),
        .O(\y[3][15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][15]_i_20 
       (.I0(stage2_x_taylor[12]),
        .O(\y[3][15]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][15]_i_21 
       (.I0(stage2_x_taylor[11]),
        .O(\y[3][15]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][15]_i_22 
       (.I0(stage2_x_taylor[10]),
        .O(\y[3][15]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][15]_i_23 
       (.I0(stage2_x_taylor[9]),
        .O(\y[3][15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \y[3][15]_i_24 
       (.I0(\x_reg[3] [13]),
        .I1(\x_reg[5] [12]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\x_reg[3] [22]),
        .I4(\x_reg[5] [19]),
        .I5(\y[3][19]_i_35_n_0 ),
        .O(\y[3][15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[3][15]_i_25 
       (.I0(\x_reg[3] [21]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [18]),
        .I3(\y[3][15]_i_32_n_0 ),
        .I4(\x_reg[3] [12]),
        .I5(\x_reg[5] [11]),
        .O(\y[3][15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0ACFC0FACAFF)) 
    \y[3][15]_i_26 
       (.I0(\x_reg[3] [11]),
        .I1(\x_reg[5] [10]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y[3][7]_i_49_n_0 ),
        .I4(\x_reg[3] [22]),
        .I5(\x_reg[5] [19]),
        .O(\y[3][15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h57F751F107570151)) 
    \y[3][15]_i_27 
       (.I0(\y[3][7]_i_50_n_0 ),
        .I1(\x_reg[3] [21]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [18]),
        .I4(\x_reg[3] [10]),
        .I5(\x_reg[5] [9]),
        .O(\y[3][15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][15]_i_28 
       (.I0(\y[3][15]_i_24_n_0 ),
        .I1(\y[3][19]_i_34_n_0 ),
        .I2(\y[3][15]_i_32_n_0 ),
        .I3(\x_reg[3] [14]),
        .I4(\x_reg[5] [13]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][15]_i_29 
       (.I0(\y[3][15]_i_25_n_0 ),
        .I1(\y[3][19]_i_35_n_0 ),
        .I2(\y[3][15]_i_33_n_0 ),
        .I3(\x_reg[3] [13]),
        .I4(\x_reg[5] [12]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][15]_i_3 
       (.I0(\y_reg[5] [13]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [13]),
        .I3(\y_reg[5] [18]),
        .I4(\y_reg[3] [20]),
        .I5(\y[3][15]_i_11_n_0 ),
        .O(\y[3][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][15]_i_30 
       (.I0(\y[3][15]_i_26_n_0 ),
        .I1(\y[3][15]_i_32_n_0 ),
        .I2(\y[3][7]_i_53_n_0 ),
        .I3(\x_reg[3] [12]),
        .I4(\x_reg[5] [11]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][15]_i_31 
       (.I0(\y[3][15]_i_27_n_0 ),
        .I1(\y[3][15]_i_33_n_0 ),
        .I2(\y[3][7]_i_49_n_0 ),
        .I3(\x_reg[3] [11]),
        .I4(\x_reg[5] [10]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][15]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[3][15]_i_32 
       (.I0(\x_reg[5] [20]),
        .I1(\x_reg[3] [23]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][15]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][15]_i_33 
       (.I0(\x_reg[5] [19]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [22]),
        .O(\y[3][15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][15]_i_4 
       (.I0(\y_reg[5] [12]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [12]),
        .I3(\y_reg[5] [17]),
        .I4(\y_reg[3] [19]),
        .I5(\y[3][15]_i_12_n_0 ),
        .O(\y[3][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][15]_i_5 
       (.I0(\y_reg[5] [11]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [11]),
        .I3(\y_reg[5] [16]),
        .I4(\y_reg[3] [18]),
        .I5(\y[3][15]_i_13_n_0 ),
        .O(\y[3][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][15]_i_6 
       (.I0(\y[3][15]_i_2_n_0 ),
        .I1(\y[3][15]_i_14_n_0 ),
        .I2(\y[3][19]_i_13_n_0 ),
        .I3(\y_reg[5] [15]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [15]),
        .O(\y[3][15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][15]_i_7 
       (.I0(\y[3][15]_i_3_n_0 ),
        .I1(\y[3][15]_i_15_n_0 ),
        .I2(\y[3][15]_i_10_n_0 ),
        .I3(\y_reg[5] [14]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [14]),
        .O(\y[3][15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][15]_i_8 
       (.I0(\y[3][15]_i_4_n_0 ),
        .I1(\y[3][15]_i_16_n_0 ),
        .I2(\y[3][15]_i_11_n_0 ),
        .I3(\y_reg[5] [13]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [13]),
        .O(\y[3][15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][15]_i_9 
       (.I0(\y[3][15]_i_5_n_0 ),
        .I1(\y[3][15]_i_17_n_0 ),
        .I2(\y[3][15]_i_12_n_0 ),
        .I3(\y_reg[5] [12]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [12]),
        .O(\y[3][15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][19]_i_10 
       (.I0(stage2_x_taylor[18]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][23]_i_18_n_6 ),
        .O(\y[3][19]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][19]_i_11 
       (.I0(stage2_x_taylor[17]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][23]_i_18_n_7 ),
        .O(\y[3][19]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][19]_i_12 
       (.I0(stage2_x_taylor[16]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][19]_i_18_n_4 ),
        .O(\y[3][19]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][19]_i_13 
       (.I0(stage2_x_taylor[15]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][19]_i_18_n_5 ),
        .O(\y[3][19]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][19]_i_14 
       (.I0(\y_reg[3] [26]),
        .I1(\y_reg[5] [24]),
        .I2(flag_reg_n_0),
        .O(\y[3][19]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][19]_i_15 
       (.I0(\y_reg[3] [25]),
        .I1(\y_reg[5] [23]),
        .I2(flag_reg_n_0),
        .O(\y[3][19]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \y[3][19]_i_16 
       (.I0(\y_reg[5] [22]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [24]),
        .O(\y[3][19]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][19]_i_17 
       (.I0(\y_reg[3] [23]),
        .I1(\y_reg[5] [21]),
        .I2(flag_reg_n_0),
        .O(\y[3][19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][19]_i_2 
       (.I0(\y_reg[5] [18]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [18]),
        .I3(\y_reg[5] [23]),
        .I4(\y_reg[3] [25]),
        .I5(\y[3][19]_i_10_n_0 ),
        .O(\y[3][19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][19]_i_20 
       (.I0(stage2_x_taylor[16]),
        .O(\y[3][19]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][19]_i_21 
       (.I0(stage2_x_taylor[15]),
        .O(\y[3][19]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][19]_i_22 
       (.I0(stage2_x_taylor[14]),
        .O(\y[3][19]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][19]_i_23 
       (.I0(stage2_x_taylor[13]),
        .O(\y[3][19]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[3][19]_i_24 
       (.I0(\x_reg[3] [26]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [23]),
        .I3(\y[3][23]_i_35_n_0 ),
        .I4(\x_reg[3] [17]),
        .I5(\x_reg[5] [16]),
        .O(\y[3][19]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[3][19]_i_25 
       (.I0(\x_reg[3] [25]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [22]),
        .I3(\y[3][19]_i_32_n_0 ),
        .I4(\x_reg[3] [16]),
        .I5(\x_reg[5] [15]),
        .O(\y[3][19]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \y[3][19]_i_26 
       (.I0(\x_reg[3] [15]),
        .I1(\x_reg[5] [14]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\x_reg[3] [24]),
        .I4(\x_reg[5] [21]),
        .I5(\y[3][19]_i_33_n_0 ),
        .O(\y[3][19]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1BFF0ABB115F001B)) 
    \y[3][19]_i_27 
       (.I0(flag_reg_rep__2_n_0),
        .I1(\x_reg[3] [23]),
        .I2(\x_reg[5] [20]),
        .I3(\y[3][19]_i_34_n_0 ),
        .I4(\x_reg[3] [14]),
        .I5(\x_reg[5] [13]),
        .O(\y[3][19]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][19]_i_28 
       (.I0(\y[3][19]_i_24_n_0 ),
        .I1(\y[3][23]_i_34_n_0 ),
        .I2(\y[3][19]_i_32_n_0 ),
        .I3(\x_reg[3] [18]),
        .I4(\x_reg[5] [17]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][19]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][19]_i_29 
       (.I0(\y[3][19]_i_25_n_0 ),
        .I1(\y[3][23]_i_35_n_0 ),
        .I2(\y[3][19]_i_33_n_0 ),
        .I3(\x_reg[3] [17]),
        .I4(\x_reg[5] [16]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][19]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \y[3][19]_i_3 
       (.I0(\y_reg[5] [17]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [17]),
        .I3(\y_reg[3] [24]),
        .I4(\y_reg[5] [22]),
        .I5(\y[3][19]_i_11_n_0 ),
        .O(\y[3][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][19]_i_30 
       (.I0(\y[3][19]_i_26_n_0 ),
        .I1(\y[3][19]_i_32_n_0 ),
        .I2(\y[3][19]_i_34_n_0 ),
        .I3(\x_reg[3] [16]),
        .I4(\x_reg[5] [15]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][19]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][19]_i_31 
       (.I0(\y[3][19]_i_27_n_0 ),
        .I1(\y[3][19]_i_33_n_0 ),
        .I2(\y[3][19]_i_35_n_0 ),
        .I3(\x_reg[3] [15]),
        .I4(\x_reg[5] [14]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][19]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][19]_i_32 
       (.I0(\x_reg[5] [24]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [27]),
        .O(\y[3][19]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][19]_i_33 
       (.I0(\x_reg[5] [23]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [26]),
        .O(\y[3][19]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][19]_i_34 
       (.I0(\x_reg[5] [22]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [25]),
        .O(\y[3][19]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][19]_i_35 
       (.I0(\x_reg[5] [21]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [24]),
        .O(\y[3][19]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][19]_i_4 
       (.I0(\y_reg[5] [16]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [16]),
        .I3(\y_reg[5] [21]),
        .I4(\y_reg[3] [23]),
        .I5(\y[3][19]_i_12_n_0 ),
        .O(\y[3][19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][19]_i_5 
       (.I0(\y_reg[5] [15]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [15]),
        .I3(\y_reg[5] [20]),
        .I4(\y_reg[3] [22]),
        .I5(\y[3][19]_i_13_n_0 ),
        .O(\y[3][19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][19]_i_6 
       (.I0(\y[3][19]_i_2_n_0 ),
        .I1(\y[3][19]_i_14_n_0 ),
        .I2(\y[3][23]_i_13_n_0 ),
        .I3(\y_reg[5] [19]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [19]),
        .O(\y[3][19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][19]_i_7 
       (.I0(\y[3][19]_i_3_n_0 ),
        .I1(\y[3][19]_i_15_n_0 ),
        .I2(\y[3][19]_i_10_n_0 ),
        .I3(\y_reg[5] [18]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [18]),
        .O(\y[3][19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][19]_i_8 
       (.I0(\y[3][19]_i_4_n_0 ),
        .I1(\y[3][19]_i_16_n_0 ),
        .I2(\y[3][19]_i_11_n_0 ),
        .I3(\y_reg[5] [17]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [17]),
        .O(\y[3][19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][19]_i_9 
       (.I0(\y[3][19]_i_5_n_0 ),
        .I1(\y[3][19]_i_17_n_0 ),
        .I2(\y[3][19]_i_12_n_0 ),
        .I3(\y_reg[5] [16]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [16]),
        .O(\y[3][19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][23]_i_10 
       (.I0(stage2_x_taylor[22]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][31]_i_21_n_6 ),
        .O(\y[3][23]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][23]_i_11 
       (.I0(stage2_x_taylor[21]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][31]_i_21_n_7 ),
        .O(\y[3][23]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][23]_i_12 
       (.I0(stage2_x_taylor[20]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][23]_i_18_n_4 ),
        .O(\y[3][23]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][23]_i_13 
       (.I0(stage2_x_taylor[19]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][23]_i_18_n_5 ),
        .O(\y[3][23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][23]_i_14 
       (.I0(\y_reg[3] [30]),
        .I1(\y_reg[5] [28]),
        .I2(flag_reg_n_0),
        .O(\y[3][23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][23]_i_15 
       (.I0(\y_reg[3] [29]),
        .I1(\y_reg[5] [27]),
        .I2(flag_reg_n_0),
        .O(\y[3][23]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][23]_i_16 
       (.I0(\y_reg[3] [28]),
        .I1(\y_reg[5] [26]),
        .I2(flag_reg_n_0),
        .O(\y[3][23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][23]_i_17 
       (.I0(\y_reg[3] [27]),
        .I1(\y_reg[5] [25]),
        .I2(flag_reg_n_0),
        .O(\y[3][23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][23]_i_2 
       (.I0(\y_reg[5] [22]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [22]),
        .I3(\y_reg[5] [27]),
        .I4(\y_reg[3] [29]),
        .I5(\y[3][23]_i_10_n_0 ),
        .O(\y[3][23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][23]_i_20 
       (.I0(stage2_x_taylor[20]),
        .O(\y[3][23]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][23]_i_21 
       (.I0(stage2_x_taylor[19]),
        .O(\y[3][23]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][23]_i_22 
       (.I0(stage2_x_taylor[18]),
        .O(\y[3][23]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][23]_i_23 
       (.I0(stage2_x_taylor[17]),
        .O(\y[3][23]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hCA00CF0AFAC0FFCA)) 
    \y[3][23]_i_24 
       (.I0(\x_reg[3] [21]),
        .I1(\x_reg[5] [20]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x[3][27]_i_16_n_0 ),
        .I4(\x_reg[3] [30]),
        .I5(\x_reg[5] [27]),
        .O(\y[3][23]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[3][23]_i_25 
       (.I0(\x_reg[3] [29]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [26]),
        .I3(\y[3][23]_i_32_n_0 ),
        .I4(\x_reg[3] [20]),
        .I5(\x_reg[5] [19]),
        .O(\y[3][23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000AC0CACACFFAFF)) 
    \y[3][23]_i_26 
       (.I0(\x_reg[3] [19]),
        .I1(\x_reg[5] [18]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[3] [28]),
        .I4(\x_reg[5] [25]),
        .I5(\y[3][23]_i_33_n_0 ),
        .O(\y[3][23]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[3][23]_i_27 
       (.I0(\x_reg[3] [27]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [24]),
        .I3(\y[3][23]_i_34_n_0 ),
        .I4(\x_reg[3] [18]),
        .I5(\x_reg[5] [17]),
        .O(\y[3][23]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9696696996699669)) 
    \y[3][23]_i_28 
       (.I0(\y[3][23]_i_24_n_0 ),
        .I1(\x[3][27]_i_15_n_0 ),
        .I2(\y[3][23]_i_32_n_0 ),
        .I3(\x_reg[3] [22]),
        .I4(\x_reg[5] [21]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][23]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h9696696996699669)) 
    \y[3][23]_i_29 
       (.I0(\y[3][23]_i_25_n_0 ),
        .I1(\x[3][27]_i_16_n_0 ),
        .I2(\y[3][23]_i_33_n_0 ),
        .I3(\x_reg[3] [21]),
        .I4(\x_reg[5] [20]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][23]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][23]_i_3 
       (.I0(\y_reg[5] [21]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [21]),
        .I3(\y_reg[5] [26]),
        .I4(\y_reg[3] [28]),
        .I5(\y[3][23]_i_11_n_0 ),
        .O(\y[3][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][23]_i_30 
       (.I0(\y[3][23]_i_26_n_0 ),
        .I1(\y[3][23]_i_32_n_0 ),
        .I2(\y[3][23]_i_34_n_0 ),
        .I3(\x_reg[3] [20]),
        .I4(\x_reg[5] [19]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][23]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][23]_i_31 
       (.I0(\y[3][23]_i_27_n_0 ),
        .I1(\y[3][23]_i_33_n_0 ),
        .I2(\y[3][23]_i_35_n_0 ),
        .I3(\x_reg[3] [19]),
        .I4(\x_reg[5] [18]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][23]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][23]_i_32 
       (.I0(\x_reg[5] [28]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [31]),
        .O(\y[3][23]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[3][23]_i_33 
       (.I0(\x_reg[5] [27]),
        .I1(\x_reg[3] [30]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][23]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][23]_i_34 
       (.I0(\x_reg[5] [26]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [29]),
        .O(\y[3][23]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][23]_i_35 
       (.I0(\x_reg[5] [25]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [28]),
        .O(\y[3][23]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][23]_i_4 
       (.I0(\y_reg[5] [20]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [20]),
        .I3(\y_reg[5] [25]),
        .I4(\y_reg[3] [27]),
        .I5(\y[3][23]_i_12_n_0 ),
        .O(\y[3][23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][23]_i_5 
       (.I0(\y_reg[5] [19]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [19]),
        .I3(\y_reg[5] [24]),
        .I4(\y_reg[3] [26]),
        .I5(\y[3][23]_i_13_n_0 ),
        .O(\y[3][23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][23]_i_6 
       (.I0(\y[3][23]_i_2_n_0 ),
        .I1(\y[3][23]_i_14_n_0 ),
        .I2(\y[3][27]_i_12_n_0 ),
        .I3(\y_reg[5] [23]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [23]),
        .O(\y[3][23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][23]_i_7 
       (.I0(\y[3][23]_i_3_n_0 ),
        .I1(\y[3][23]_i_15_n_0 ),
        .I2(\y[3][23]_i_10_n_0 ),
        .I3(\y_reg[5] [22]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [22]),
        .O(\y[3][23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][23]_i_8 
       (.I0(\y[3][23]_i_4_n_0 ),
        .I1(\y[3][23]_i_16_n_0 ),
        .I2(\y[3][23]_i_11_n_0 ),
        .I3(\y_reg[5] [21]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [21]),
        .O(\y[3][23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][23]_i_9 
       (.I0(\y[3][23]_i_5_n_0 ),
        .I1(\y[3][23]_i_17_n_0 ),
        .I2(\y[3][23]_i_12_n_0 ),
        .I3(\y_reg[5] [20]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [20]),
        .O(\y[3][23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][27]_i_11 
       (.I0(stage2_x_taylor[24]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][31]_i_21_n_4 ),
        .O(\y[3][27]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][27]_i_12 
       (.I0(stage2_x_taylor[23]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][31]_i_21_n_5 ),
        .O(\y[3][27]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][27]_i_13 
       (.I0(stage2_x_taylor[25]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][31]_i_13_n_7 ),
        .O(\y[3][27]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \y[3][27]_i_14 
       (.I0(\y_reg[5] [30]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\y_reg[3] [31]),
        .O(\y[3][27]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][27]_i_15 
       (.I0(\y_reg[3] [31]),
        .I1(\y_reg[5] [29]),
        .I2(flag_reg_rep__3_n_0),
        .O(\y[3][27]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][27]_i_17 
       (.I0(\x_reg[3] [30]),
        .I1(\x_reg[5] [29]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][27]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][27]_i_18 
       (.I0(\x_reg[3] [29]),
        .I1(\x_reg[5] [28]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][27]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][27]_i_19 
       (.I0(\x_reg[3] [28]),
        .I1(\x_reg[5] [27]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][27]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE2E200E2000000E2)) 
    \y[3][27]_i_2 
       (.I0(\y_reg[3] [26]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [26]),
        .I3(\y_reg[3][31]_i_13_n_6 ),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(stage2_x_taylor[26]),
        .O(\y[3][27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][27]_i_20 
       (.I0(\x_reg[3] [27]),
        .I1(\x_reg[5] [26]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][27]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \y[3][27]_i_21 
       (.I0(\x_reg[5] [28]),
        .I1(\x_reg[3] [29]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [29]),
        .I4(\x_reg[3] [30]),
        .O(\y[3][27]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \y[3][27]_i_22 
       (.I0(\x_reg[5] [27]),
        .I1(\x_reg[3] [28]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [28]),
        .I4(\x_reg[3] [29]),
        .O(\y[3][27]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \y[3][27]_i_23 
       (.I0(\x_reg[5] [26]),
        .I1(\x_reg[3] [27]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [27]),
        .I4(\x_reg[3] [28]),
        .O(\y[3][27]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \y[3][27]_i_24 
       (.I0(\x_reg[5] [25]),
        .I1(\x_reg[3] [26]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [26]),
        .I4(\x_reg[3] [27]),
        .O(\y[3][27]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][27]_i_25 
       (.I0(\x_reg[3] [26]),
        .I1(\x_reg[5] [25]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][27]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hDD00F0F000DD0F0F)) 
    \y[3][27]_i_26 
       (.I0(\x_reg[5] [29]),
        .I1(\x[3][31]_i_16_n_0 ),
        .I2(\x_reg[3] [24]),
        .I3(\x_reg[5] [23]),
        .I4(flag_reg_rep__2_n_0),
        .I5(\x[3][27]_i_15_n_0 ),
        .O(\y[3][27]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \y[3][27]_i_27 
       (.I0(\x_reg[5] [29]),
        .I1(\x_reg[5] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [22]),
        .O(\y[3][27]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h9F6F9060)) 
    \y[3][27]_i_28 
       (.I0(\x_reg[5] [29]),
        .I1(\x_reg[5] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [22]),
        .I4(\x_reg[3] [23]),
        .O(\y[3][27]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0A22AFBBF5DD5044)) 
    \y[3][27]_i_29 
       (.I0(\y[3][27]_i_33_n_0 ),
        .I1(\x_reg[3] [25]),
        .I2(\x_reg[5] [24]),
        .I3(flag_reg_rep__2_n_0),
        .I4(\x[3][31]_i_16_n_0 ),
        .I5(\y[3][27]_i_25_n_0 ),
        .O(\y[3][27]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h2E2E2ED1D1D12ED1)) 
    \y[3][27]_i_3 
       (.I0(\y_reg[3][31]_i_13_n_6 ),
        .I1(\x[3][31]_i_14_n_0 ),
        .I2(stage2_x_taylor[26]),
        .I3(\y_reg[3] [26]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[5] [26]),
        .O(\y[3][27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9969966666966999)) 
    \y[3][27]_i_30 
       (.I0(\y[3][27]_i_26_n_0 ),
        .I1(\x[3][31]_i_16_n_0 ),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [24]),
        .I4(\x_reg[3] [25]),
        .I5(\y[3][27]_i_33_n_0 ),
        .O(\y[3][27]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h96999999)) 
    \y[3][27]_i_31 
       (.I0(\y[3][27]_i_27_n_0 ),
        .I1(\y[3][27]_i_34_n_0 ),
        .I2(\x_reg[5] [31]),
        .I3(\x_reg[5] [29]),
        .I4(flag_reg_rep__2_n_0),
        .O(\y[3][27]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAAA59A959A955A55)) 
    \y[3][27]_i_32 
       (.I0(\y[3][27]_i_28_n_0 ),
        .I1(\x_reg[5] [28]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[3] [31]),
        .I4(\x_reg[5] [30]),
        .I5(\y[3][27]_i_35_n_0 ),
        .O(\y[3][27]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00A00CAC)) 
    \y[3][27]_i_33 
       (.I0(\x_reg[5] [30]),
        .I1(\x_reg[3] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [23]),
        .I4(\x_reg[3] [24]),
        .O(\y[3][27]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h53A35CAC)) 
    \y[3][27]_i_34 
       (.I0(\x_reg[5] [30]),
        .I1(\x_reg[3] [31]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [23]),
        .I4(\x_reg[3] [24]),
        .O(\y[3][27]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][27]_i_35 
       (.I0(\x_reg[3] [22]),
        .I1(\x_reg[5] [21]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][27]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][27]_i_4 
       (.I0(\y_reg[5] [24]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [24]),
        .I3(\y_reg[5] [29]),
        .I4(\y_reg[3] [31]),
        .I5(\y[3][27]_i_11_n_0 ),
        .O(\y[3][27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FCBBFF008830B8)) 
    \y[3][27]_i_5 
       (.I0(\y_reg[5] [23]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [23]),
        .I3(\y_reg[5] [28]),
        .I4(\y_reg[3] [30]),
        .I5(\y[3][27]_i_12_n_0 ),
        .O(\y[3][27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[3][27]_i_6 
       (.I0(\y[3][27]_i_2_n_0 ),
        .I1(\y[3][31]_i_14_n_0 ),
        .I2(\y_reg[3][31]_i_13_n_6 ),
        .I3(\y_reg[3] [31]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[5] [31]),
        .O(\y[3][27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5656566A6A6A566A)) 
    \y[3][27]_i_7 
       (.I0(\y[3][27]_i_3_n_0 ),
        .I1(\y[3][27]_i_13_n_0 ),
        .I2(\y[3][27]_i_14_n_0 ),
        .I3(\y_reg[3] [25]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[5] [25]),
        .O(\y[3][27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][27]_i_8 
       (.I0(\y[3][27]_i_4_n_0 ),
        .I1(\y[3][27]_i_14_n_0 ),
        .I2(\y[3][27]_i_13_n_0 ),
        .I3(\y_reg[5] [25]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[3] [25]),
        .O(\y[3][27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][27]_i_9 
       (.I0(\y[3][27]_i_5_n_0 ),
        .I1(\y[3][27]_i_15_n_0 ),
        .I2(\y[3][27]_i_11_n_0 ),
        .I3(\y_reg[5] [24]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[3] [24]),
        .O(\y[3][27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \y[3][31]_i_10 
       (.I0(\y_reg[3] [29]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [29]),
        .I3(\y_reg[3][31]_i_17_n_7 ),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(stage2_x_taylor[29]),
        .O(\y[3][31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][31]_i_11 
       (.I0(stage2_x_taylor[27]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][31]_i_13_n_5 ),
        .O(\y[3][31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \y[3][31]_i_12 
       (.I0(\y_reg[3] [28]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [28]),
        .I3(\y_reg[3][31]_i_13_n_4 ),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(stage2_x_taylor[28]),
        .O(\y[3][31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \y[3][31]_i_14 
       (.I0(\y_reg[3] [27]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [27]),
        .I3(\y_reg[3][31]_i_13_n_5 ),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(stage2_x_taylor[27]),
        .O(\y[3][31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \y[3][31]_i_15 
       (.I0(\y_reg[3] [29]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [29]),
        .I3(\y_reg[3][31]_i_17_n_7 ),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(stage2_x_taylor[29]),
        .O(\y[3][31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \y[3][31]_i_18 
       (.I0(\y_reg[5] [30]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\y_reg[3] [30]),
        .O(\y[3][31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE2E21DE21D1D1DE2)) 
    \y[3][31]_i_19 
       (.I0(\y_reg[3] [30]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[5] [30]),
        .I3(\y_reg[3][31]_i_17_n_6 ),
        .I4(\x[3][31]_i_14_n_0 ),
        .I5(\y_reg[3][31]_i_16_n_1 ),
        .O(\y[3][31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \y[3][31]_i_2 
       (.I0(\y[3][31]_i_9_n_0 ),
        .I1(\y_reg[5] [28]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [28]),
        .I4(\y[3][31]_i_10_n_0 ),
        .O(\y[3][31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][31]_i_20 
       (.I0(stage2_x_taylor[29]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][31]_i_17_n_7 ),
        .O(\y[3][31]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_22 
       (.I0(stage2_x_taylor[28]),
        .O(\y[3][31]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_23 
       (.I0(stage2_x_taylor[27]),
        .O(\y[3][31]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_24 
       (.I0(stage2_x_taylor[26]),
        .O(\y[3][31]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_25 
       (.I0(stage2_x_taylor[25]),
        .O(\y[3][31]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hD8)) 
    \y[3][31]_i_26 
       (.I0(flag_reg_rep__2_n_0),
        .I1(\x_reg[5] [30]),
        .I2(\x_reg[3] [31]),
        .O(\y[3][31]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][31]_i_27 
       (.I0(\x_reg[3] [31]),
        .I1(\x_reg[5] [30]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][31]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \y[3][31]_i_28 
       (.I0(\x_reg[5] [30]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [31]),
        .O(\y[3][31]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hAC5CA353)) 
    \y[3][31]_i_29 
       (.I0(\x_reg[5] [29]),
        .I1(\x_reg[3] [30]),
        .I2(flag_reg_rep__2_n_0),
        .I3(\x_reg[5] [30]),
        .I4(\x_reg[3] [31]),
        .O(\y[3][31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \y[3][31]_i_3 
       (.I0(\y[3][31]_i_11_n_0 ),
        .I1(\y_reg[5] [27]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [27]),
        .I4(\y[3][31]_i_12_n_0 ),
        .O(\y[3][31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_30 
       (.I0(stage2_x_taylor[29]),
        .O(\y[3][31]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_31 
       (.I0(stage2_x_taylor[24]),
        .O(\y[3][31]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_32 
       (.I0(stage2_x_taylor[23]),
        .O(\y[3][31]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_33 
       (.I0(stage2_x_taylor[22]),
        .O(\y[3][31]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][31]_i_34 
       (.I0(stage2_x_taylor[21]),
        .O(\y[3][31]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[3][31]_i_4 
       (.I0(\y_reg[5] [31]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [31]),
        .I3(\y_reg[3][31]_i_13_n_6 ),
        .I4(\y[3][31]_i_14_n_0 ),
        .O(\y[3][31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F40DAD5454ADFD0)) 
    \y[3][31]_i_5 
       (.I0(\y[3][31]_i_15_n_0 ),
        .I1(\y_reg[3][31]_i_16_n_1 ),
        .I2(\x[3][31]_i_14_n_0 ),
        .I3(\y_reg[3][31]_i_17_n_5 ),
        .I4(\y[3][31]_i_18_n_0 ),
        .I5(\y_reg[3][31]_i_17_n_6 ),
        .O(\y[3][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \y[3][31]_i_6 
       (.I0(\y[3][31]_i_2_n_0 ),
        .I1(\y[3][31]_i_19_n_0 ),
        .I2(\y_reg[3] [29]),
        .I3(flag_reg_rep__3_n_0),
        .I4(\y_reg[5] [29]),
        .I5(\y[3][31]_i_20_n_0 ),
        .O(\y[3][31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \y[3][31]_i_7 
       (.I0(\y[3][31]_i_3_n_0 ),
        .I1(\y[3][31]_i_10_n_0 ),
        .I2(\y_reg[3] [28]),
        .I3(flag_reg_rep__3_n_0),
        .I4(\y_reg[5] [28]),
        .I5(\y[3][31]_i_9_n_0 ),
        .O(\y[3][31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \y[3][31]_i_8 
       (.I0(\y[3][31]_i_4_n_0 ),
        .I1(\y[3][31]_i_12_n_0 ),
        .I2(\y_reg[3] [27]),
        .I3(flag_reg_rep__3_n_0),
        .I4(\y_reg[5] [27]),
        .I5(\y[3][31]_i_11_n_0 ),
        .O(\y[3][31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][31]_i_9 
       (.I0(stage2_x_taylor[28]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][31]_i_13_n_4 ),
        .O(\y[3][31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][3]_i_10 
       (.I0(stage2_x_taylor[2]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][7]_i_16_n_6 ),
        .O(\y[3][3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][3]_i_11 
       (.I0(stage2_x_taylor[1]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][7]_i_16_n_7 ),
        .O(\y[3][3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][3]_i_12 
       (.I0(stage2_x_taylor[3]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][7]_i_16_n_5 ),
        .O(\y[3][3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \y[3][3]_i_13 
       (.I0(\y_reg[5] [7]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[3] [9]),
        .O(\y[3][3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \y[3][3]_i_14 
       (.I0(\y_reg[5] [6]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [8]),
        .O(\y[3][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \y[3][3]_i_2 
       (.I0(\y_reg[5] [2]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\y_reg[3] [2]),
        .I3(\y_reg[3] [9]),
        .I4(\y_reg[5] [7]),
        .I5(\y[3][3]_i_10_n_0 ),
        .O(\y[3][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \y[3][3]_i_3 
       (.I0(\y_reg[5] [1]),
        .I1(flag_reg_rep__3_n_0),
        .I2(\y_reg[3] [1]),
        .I3(\y_reg[3] [8]),
        .I4(\y_reg[5] [6]),
        .I5(\y[3][3]_i_11_n_0 ),
        .O(\y[3][3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \y[3][3]_i_4 
       (.I0(stage2_x_taylor[0]),
        .I1(\y_reg[3] [7]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[5] [5]),
        .O(\y[3][3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[3][3]_i_5 
       (.I0(stage2_x_taylor[0]),
        .I1(\y_reg[3] [7]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[5] [5]),
        .O(\y[3][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9696696996699669)) 
    \y[3][3]_i_6 
       (.I0(\y[3][3]_i_2_n_0 ),
        .I1(\y[3][7]_i_19_n_0 ),
        .I2(\y[3][3]_i_12_n_0 ),
        .I3(\y_reg[3] [3]),
        .I4(\y_reg[5] [3]),
        .I5(flag_reg_rep__3_n_0),
        .O(\y[3][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][3]_i_7 
       (.I0(\y[3][3]_i_3_n_0 ),
        .I1(\y[3][3]_i_13_n_0 ),
        .I2(\y[3][3]_i_10_n_0 ),
        .I3(\y_reg[5] [2]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\y_reg[3] [2]),
        .O(\y[3][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \y[3][3]_i_8 
       (.I0(\y[3][3]_i_4_n_0 ),
        .I1(\y_reg[5] [1]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [1]),
        .I4(\y[3][3]_i_14_n_0 ),
        .I5(\y[3][3]_i_11_n_0 ),
        .O(\y[3][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA5A5C33C5A5AC33C)) 
    \y[3][3]_i_9 
       (.I0(\y_reg[5] [5]),
        .I1(\y_reg[3] [7]),
        .I2(stage2_x_taylor[0]),
        .I3(\y_reg[3] [0]),
        .I4(flag_reg_rep__3_n_0),
        .I5(\y_reg[5] [0]),
        .O(\y[3][3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][7]_i_10 
       (.I0(stage2_x_taylor[6]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][7]_i_12_n_6 ),
        .O(\y[3][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][7]_i_11 
       (.I0(\y_reg[3] [12]),
        .I1(\y_reg[5] [10]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][7]_i_14 
       (.I0(\y_reg[3] [5]),
        .I1(\y_reg[5] [5]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \y[3][7]_i_15 
       (.I0(\y_reg[5] [9]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\y_reg[3] [11]),
        .O(\y[3][7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][7]_i_17 
       (.I0(\y_reg[3] [4]),
        .I1(\y_reg[5] [4]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \y[3][7]_i_19 
       (.I0(\y_reg[3] [10]),
        .I1(\y_reg[5] [8]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFF1DDD0C3F111D00)) 
    \y[3][7]_i_2 
       (.I0(\y_reg[3] [13]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[5] [11]),
        .I3(\y[3][7]_i_10_n_0 ),
        .I4(\y_reg[3] [6]),
        .I5(\y_reg[5] [6]),
        .O(\y[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][7]_i_20 
       (.I0(\y_reg[3] [3]),
        .I1(\y_reg[5] [3]),
        .I2(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \y[3][7]_i_21 
       (.I0(\y_reg[3] [14]),
        .I1(\y_reg[5] [12]),
        .I2(flag_reg_n_0),
        .O(\y[3][7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \y[3][7]_i_22 
       (.I0(\y_reg[5] [11]),
        .I1(flag_reg_n_0),
        .I2(\y_reg[3] [13]),
        .O(\y[3][7]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][7]_i_23 
       (.I0(stage2_x_taylor[5]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][7]_i_12_n_7 ),
        .O(\y[3][7]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \y[3][7]_i_24 
       (.I0(stage2_x_taylor[4]),
        .I1(\y_reg[5] [31]),
        .I2(flag_reg_rep__3_n_0),
        .I3(\y_reg[3] [31]),
        .I4(\y_reg[3][7]_i_16_n_4 ),
        .O(\y[3][7]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_25 
       (.I0(stage2_x_taylor[8]),
        .O(\y[3][7]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_26 
       (.I0(stage2_x_taylor[7]),
        .O(\y[3][7]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_27 
       (.I0(stage2_x_taylor[6]),
        .O(\y[3][7]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_28 
       (.I0(stage2_x_taylor[5]),
        .O(\y[3][7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[3][7]_i_29 
       (.I0(\x_reg[3] [18]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[5] [15]),
        .I3(\y[3][7]_i_49_n_0 ),
        .I4(\x_reg[3] [9]),
        .I5(\x_reg[5] [8]),
        .O(\y[3][7]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hA808FEAE)) 
    \y[3][7]_i_3 
       (.I0(\y[3][7]_i_11_n_0 ),
        .I1(\y_reg[3][7]_i_12_n_7 ),
        .I2(\x[3][31]_i_14_n_0 ),
        .I3(stage2_x_taylor[5]),
        .I4(\y[3][7]_i_14_n_0 ),
        .O(\y[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[3][7]_i_30 
       (.I0(\x_reg[3] [17]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [14]),
        .I3(\y[3][7]_i_50_n_0 ),
        .I4(\x_reg[3] [8]),
        .I5(\x_reg[5] [7]),
        .O(\y[3][7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF0CDD113F001D)) 
    \y[3][7]_i_31 
       (.I0(\x_reg[3] [16]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[5] [13]),
        .I3(\y[3][7]_i_51_n_0 ),
        .I4(\x_reg[3] [7]),
        .I5(\x_reg[5] [6]),
        .O(\y[3][7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h003088B8B8BBFCFF)) 
    \y[3][7]_i_32 
       (.I0(\x_reg[5] [5]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [6]),
        .I3(\x_reg[3] [15]),
        .I4(\x_reg[5] [12]),
        .I5(\y[3][7]_i_52_n_0 ),
        .O(\y[3][7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][7]_i_33 
       (.I0(\y[3][7]_i_29_n_0 ),
        .I1(\y[3][7]_i_53_n_0 ),
        .I2(\y[3][7]_i_50_n_0 ),
        .I3(\x_reg[3] [10]),
        .I4(\x_reg[5] [9]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][7]_i_34 
       (.I0(\y[3][7]_i_30_n_0 ),
        .I1(\y[3][7]_i_51_n_0 ),
        .I2(\y[3][7]_i_49_n_0 ),
        .I3(\x_reg[3] [9]),
        .I4(\x_reg[5] [8]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][7]_i_35 
       (.I0(\y[3][7]_i_31_n_0 ),
        .I1(\y[3][7]_i_52_n_0 ),
        .I2(\y[3][7]_i_50_n_0 ),
        .I3(\x_reg[3] [8]),
        .I4(\x_reg[5] [7]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][7]_i_36 
       (.I0(\y[3][7]_i_32_n_0 ),
        .I1(\y[3][7]_i_51_n_0 ),
        .I2(\y[3][7]_i_54_n_0 ),
        .I3(\x_reg[3] [7]),
        .I4(\x_reg[5] [6]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_37 
       (.I0(stage2_x_taylor[0]),
        .O(\y[3][7]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_38 
       (.I0(stage2_x_taylor[4]),
        .O(\y[3][7]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_39 
       (.I0(stage2_x_taylor[3]),
        .O(\y[3][7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hA808FEAE)) 
    \y[3][7]_i_4 
       (.I0(\y[3][7]_i_15_n_0 ),
        .I1(\y_reg[3][7]_i_16_n_4 ),
        .I2(\x[3][31]_i_14_n_0 ),
        .I3(stage2_x_taylor[4]),
        .I4(\y[3][7]_i_17_n_0 ),
        .O(\y[3][7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_40 
       (.I0(stage2_x_taylor[2]),
        .O(\y[3][7]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[3][7]_i_41 
       (.I0(stage2_x_taylor[1]),
        .O(\y[3][7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h57F7075751F10151)) 
    \y[3][7]_i_42 
       (.I0(\y[3][7]_i_55_n_0 ),
        .I1(\x_reg[3] [16]),
        .I2(flag_reg_rep__1_n_0),
        .I3(\x_reg[5] [13]),
        .I4(\x_reg[5] [4]),
        .I5(\x_reg[3] [5]),
        .O(\y[3][7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF113F0CDD001D)) 
    \y[3][7]_i_43 
       (.I0(\x_reg[3] [13]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[5] [10]),
        .I3(\y[3][7]_i_56_n_0 ),
        .I4(\x_reg[5] [3]),
        .I5(\x_reg[3] [4]),
        .O(\y[3][7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h003088B8B8BBFCFF)) 
    \y[3][7]_i_44 
       (.I0(\x_reg[5] [2]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [3]),
        .I3(\x_reg[3] [12]),
        .I4(\x_reg[5] [9]),
        .I5(\y[3][7]_i_55_n_0 ),
        .O(\y[3][7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][7]_i_45 
       (.I0(\y[3][7]_i_42_n_0 ),
        .I1(\y[3][7]_i_52_n_0 ),
        .I2(\y[3][7]_i_56_n_0 ),
        .I3(\x_reg[5] [5]),
        .I4(flag_reg_rep__2_n_0),
        .I5(\x_reg[3] [6]),
        .O(\y[3][7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][7]_i_46 
       (.I0(\y[3][7]_i_43_n_0 ),
        .I1(\y[3][7]_i_55_n_0 ),
        .I2(\y[3][7]_i_54_n_0 ),
        .I3(\x_reg[5] [4]),
        .I4(flag_reg_rep__2_n_0),
        .I5(\x_reg[3] [5]),
        .O(\y[3][7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669699696)) 
    \y[3][7]_i_47 
       (.I0(\y[3][7]_i_44_n_0 ),
        .I1(\y[3][7]_i_57_n_0 ),
        .I2(\y[3][7]_i_56_n_0 ),
        .I3(\x_reg[5] [3]),
        .I4(\x_reg[3] [4]),
        .I5(flag_reg_rep__2_n_0),
        .O(\y[3][7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \y[3][7]_i_48 
       (.I0(\x_reg[3] [3]),
        .I1(\x_reg[5] [2]),
        .I2(\y[3][7]_i_55_n_0 ),
        .I3(\x_reg[5] [9]),
        .I4(flag_reg_rep__1_n_0),
        .I5(\x_reg[3] [12]),
        .O(\y[3][7]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_49 
       (.I0(\x_reg[5] [17]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [20]),
        .O(\y[3][7]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2FF)) 
    \y[3][7]_i_5 
       (.I0(\y_reg[3][7]_i_16_n_5 ),
        .I1(\x[3][31]_i_14_n_0 ),
        .I2(stage2_x_taylor[3]),
        .I3(\y[3][7]_i_19_n_0 ),
        .I4(\y[3][7]_i_20_n_0 ),
        .O(\y[3][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_50 
       (.I0(\x_reg[5] [16]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [19]),
        .O(\y[3][7]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_51 
       (.I0(\x_reg[5] [15]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [18]),
        .O(\y[3][7]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_52 
       (.I0(\x_reg[5] [14]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [17]),
        .O(\y[3][7]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_53 
       (.I0(\x_reg[5] [18]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [21]),
        .O(\y[3][7]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_54 
       (.I0(\x_reg[5] [13]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [16]),
        .O(\y[3][7]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_55 
       (.I0(\x_reg[5] [11]),
        .I1(flag_reg_rep__1_n_0),
        .I2(\x_reg[3] [14]),
        .O(\y[3][7]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_56 
       (.I0(\x_reg[5] [12]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [15]),
        .O(\y[3][7]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[3][7]_i_57 
       (.I0(\x_reg[5] [10]),
        .I1(flag_reg_rep__2_n_0),
        .I2(\x_reg[3] [13]),
        .O(\y[3][7]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \y[3][7]_i_6 
       (.I0(\y[3][7]_i_2_n_0 ),
        .I1(\y[3][7]_i_21_n_0 ),
        .I2(\y[3][11]_i_13_n_0 ),
        .I3(\y_reg[5] [7]),
        .I4(flag_reg_n_0),
        .I5(\y_reg[3] [7]),
        .O(\y[3][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][7]_i_7 
       (.I0(\y[3][7]_i_3_n_0 ),
        .I1(\y[3][7]_i_10_n_0 ),
        .I2(\y[3][7]_i_22_n_0 ),
        .I3(\y_reg[3] [6]),
        .I4(\y_reg[5] [6]),
        .I5(flag_reg_n_0),
        .O(\y[3][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][7]_i_8 
       (.I0(\y[3][7]_i_4_n_0 ),
        .I1(\y[3][7]_i_23_n_0 ),
        .I2(\y[3][7]_i_11_n_0 ),
        .I3(\y_reg[3] [5]),
        .I4(\y_reg[5] [5]),
        .I5(flag_reg_rep__3_n_0),
        .O(\y[3][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969969669966996)) 
    \y[3][7]_i_9 
       (.I0(\y[3][7]_i_5_n_0 ),
        .I1(\y[3][7]_i_24_n_0 ),
        .I2(\y[3][7]_i_15_n_0 ),
        .I3(\y_reg[3] [4]),
        .I4(\y_reg[5] [4]),
        .I5(flag_reg_rep__3_n_0),
        .O(\y[3][7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][11]_i_10 
       (.I0(\y_reg_n_0_[6][19] ),
        .I1(\y_reg[5][15]_i_12_n_5 ),
        .I2(\y_reg_n_0_[6][13] ),
        .O(\y[5][11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][11]_i_11 
       (.I0(\y_reg_n_0_[6][18] ),
        .I1(\y_reg[5][15]_i_12_n_6 ),
        .I2(\y_reg_n_0_[6][12] ),
        .O(\y[5][11]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][11]_i_13 
       (.I0(\y_reg_n_0_[6][17] ),
        .I1(\y_reg[5][15]_i_12_n_7 ),
        .I2(\y_reg_n_0_[6][11] ),
        .O(\y[5][11]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][11]_i_14 
       (.I0(\y_reg_n_0_[6][16] ),
        .I1(\y_reg[5][11]_i_12_n_4 ),
        .I2(\y_reg_n_0_[6][10] ),
        .O(\y[5][11]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][11]_i_15 
       (.I0(\y_reg[5][15]_i_23_n_6 ),
        .I1(sel),
        .I2(\y_reg[5][15]_i_24_n_5 ),
        .I3(\y_reg_n_0_[6][18] ),
        .I4(\y_reg_n_0_[6][6] ),
        .O(\y[5][11]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][11]_i_16 
       (.I0(\y_reg[5][15]_i_23_n_7 ),
        .I1(sel),
        .I2(\y_reg[5][15]_i_24_n_6 ),
        .I3(\y_reg_n_0_[6][17] ),
        .I4(\y_reg_n_0_[6][5] ),
        .O(\y[5][11]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \y[5][11]_i_17 
       (.I0(\y_reg_n_0_[6][4] ),
        .I1(\y_reg_n_0_[6][16] ),
        .I2(\y_reg[5][11]_i_23_n_4 ),
        .I3(sel),
        .I4(\y_reg[5][15]_i_24_n_7 ),
        .O(\y[5][11]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \y[5][11]_i_18 
       (.I0(\y_reg_n_0_[6][3] ),
        .I1(\y_reg_n_0_[6][15] ),
        .I2(\y_reg[5][11]_i_23_n_5 ),
        .I3(sel),
        .I4(\y_reg[5][11]_i_24_n_4 ),
        .O(\y[5][11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][11]_i_19 
       (.I0(\y[5][11]_i_15_n_0 ),
        .I1(\y_reg_n_0_[6][19] ),
        .I2(\y_reg[5][15]_i_23_n_5 ),
        .I3(sel),
        .I4(\y_reg[5][15]_i_24_n_4 ),
        .I5(\y_reg_n_0_[6][7] ),
        .O(\y[5][11]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \y[5][11]_i_2 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\y_reg[5][15]_i_12_n_6 ),
        .I2(\y_reg_n_0_[6][18] ),
        .I3(\y_reg_n_0_[6][21] ),
        .I4(\y[5][11]_i_10_n_0 ),
        .O(\y[5][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][11]_i_20 
       (.I0(\y[5][11]_i_16_n_0 ),
        .I1(\y_reg_n_0_[6][18] ),
        .I2(\y_reg[5][15]_i_23_n_6 ),
        .I3(sel),
        .I4(\y_reg[5][15]_i_24_n_5 ),
        .I5(\y_reg_n_0_[6][6] ),
        .O(\y[5][11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][11]_i_21 
       (.I0(\y[5][11]_i_17_n_0 ),
        .I1(\y_reg_n_0_[6][17] ),
        .I2(\y_reg[5][15]_i_23_n_7 ),
        .I3(sel),
        .I4(\y_reg[5][15]_i_24_n_6 ),
        .I5(\y_reg_n_0_[6][5] ),
        .O(\y[5][11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][11]_i_22 
       (.I0(\y[5][11]_i_18_n_0 ),
        .I1(\y_reg_n_0_[6][16] ),
        .I2(\y_reg[5][11]_i_23_n_4 ),
        .I3(sel),
        .I4(\y_reg[5][15]_i_24_n_7 ),
        .I5(\y_reg_n_0_[6][4] ),
        .O(\y[5][11]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][11]_i_25 
       (.I0(\y_reg[5][11]_i_24_n_7 ),
        .O(\y[5][11]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][11]_i_26 
       (.I0(\y_reg[5][15]_i_24_n_7 ),
        .O(\y[5][11]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][11]_i_27 
       (.I0(\y_reg[5][11]_i_24_n_4 ),
        .O(\y[5][11]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][11]_i_28 
       (.I0(\y_reg[5][11]_i_24_n_5 ),
        .O(\y[5][11]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][11]_i_29 
       (.I0(\y_reg[5][11]_i_24_n_6 ),
        .O(\y[5][11]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][11]_i_3 
       (.I0(\y_reg_n_0_[6][17] ),
        .I1(\y_reg[5][15]_i_12_n_7 ),
        .I2(\y_reg_n_0_[6][11] ),
        .I3(\y[5][11]_i_11_n_0 ),
        .I4(\y_reg_n_0_[6][20] ),
        .O(\y[5][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \y[5][11]_i_30 
       (.I0(\y[5][15]_i_42_n_0 ),
        .I1(\x_reg_n_0_[6][10] ),
        .I2(\x_reg_n_0_[6][12] ),
        .I3(\x_reg_n_0_[6][8] ),
        .I4(\x_reg_n_0_[6][4] ),
        .I5(\y[5][15]_i_43_n_0 ),
        .O(\y[5][11]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \y[5][11]_i_31 
       (.I0(\x_reg_n_0_[6][9] ),
        .I1(\x_reg_n_0_[6][7] ),
        .I2(\x_reg_n_0_[6][8] ),
        .I3(\x_reg_n_0_[6][12] ),
        .I4(\x_reg_n_0_[6][10] ),
        .I5(\x_reg_n_0_[6][3] ),
        .O(\y[5][11]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6996699696696996)) 
    \y[5][11]_i_32 
       (.I0(\x_reg_n_0_[6][9] ),
        .I1(\x_reg_n_0_[6][7] ),
        .I2(\x_reg_n_0_[6][2] ),
        .I3(\x_reg_n_0_[6][11] ),
        .I4(\x_reg_n_0_[6][1] ),
        .I5(\x_reg_n_0_[6][10] ),
        .O(\y[5][11]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[5][11]_i_33 
       (.I0(\x_reg_n_0_[6][6] ),
        .I1(\x_reg_n_0_[6][8] ),
        .O(\y[5][11]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h9555AA95)) 
    \y[5][11]_i_34 
       (.I0(\y[5][11]_i_30_n_0 ),
        .I1(\x_reg_n_0_[6][9] ),
        .I2(\x_reg_n_0_[6][7] ),
        .I3(\y[5][11]_i_38_n_0 ),
        .I4(\x_reg_n_0_[6][3] ),
        .O(\y[5][11]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6559599A599A6559)) 
    \y[5][11]_i_35 
       (.I0(\y[5][11]_i_31_n_0 ),
        .I1(\x_reg_n_0_[6][11] ),
        .I2(\x_reg_n_0_[6][2] ),
        .I3(\y[5][11]_i_39_n_0 ),
        .I4(\x_reg_n_0_[6][9] ),
        .I5(\x_reg_n_0_[6][7] ),
        .O(\y[5][11]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \y[5][11]_i_36 
       (.I0(\y[5][11]_i_32_n_0 ),
        .I1(\x_reg_n_0_[6][8] ),
        .I2(\x_reg_n_0_[6][6] ),
        .O(\y[5][11]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \y[5][11]_i_37 
       (.I0(\x_reg_n_0_[6][8] ),
        .I1(\x_reg_n_0_[6][6] ),
        .I2(\x_reg_n_0_[6][10] ),
        .I3(\x_reg_n_0_[6][1] ),
        .O(\y[5][11]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][11]_i_38 
       (.I0(\x_reg_n_0_[6][8] ),
        .I1(\x_reg_n_0_[6][12] ),
        .I2(\x_reg_n_0_[6][10] ),
        .O(\y[5][11]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y[5][11]_i_39 
       (.I0(\x_reg_n_0_[6][1] ),
        .I1(\x_reg_n_0_[6][10] ),
        .O(\y[5][11]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][11]_i_4 
       (.I0(\y_reg_n_0_[6][16] ),
        .I1(\y_reg[5][11]_i_12_n_4 ),
        .I2(\y_reg_n_0_[6][10] ),
        .I3(\y[5][11]_i_13_n_0 ),
        .I4(\y_reg_n_0_[6][19] ),
        .O(\y[5][11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][11]_i_5 
       (.I0(\y_reg_n_0_[6][15] ),
        .I1(\y_reg[5][11]_i_12_n_5 ),
        .I2(\y_reg_n_0_[6][9] ),
        .I3(\y[5][11]_i_14_n_0 ),
        .I4(\y_reg_n_0_[6][18] ),
        .O(\y[5][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \y[5][11]_i_6 
       (.I0(\y[5][11]_i_2_n_0 ),
        .I1(\y_reg_n_0_[6][13] ),
        .I2(\y_reg[5][15]_i_12_n_5 ),
        .I3(\y_reg_n_0_[6][19] ),
        .I4(\y_reg_n_0_[6][22] ),
        .I5(\y[5][15]_i_14_n_0 ),
        .O(\y[5][11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \y[5][11]_i_7 
       (.I0(\y[5][11]_i_3_n_0 ),
        .I1(\y_reg_n_0_[6][12] ),
        .I2(\y_reg[5][15]_i_12_n_6 ),
        .I3(\y_reg_n_0_[6][18] ),
        .I4(\y_reg_n_0_[6][21] ),
        .I5(\y[5][11]_i_10_n_0 ),
        .O(\y[5][11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][11]_i_8 
       (.I0(\y[5][11]_i_4_n_0 ),
        .I1(\y_reg_n_0_[6][17] ),
        .I2(\y_reg[5][15]_i_12_n_7 ),
        .I3(\y_reg_n_0_[6][11] ),
        .I4(\y_reg_n_0_[6][20] ),
        .I5(\y[5][11]_i_11_n_0 ),
        .O(\y[5][11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][11]_i_9 
       (.I0(\y[5][11]_i_5_n_0 ),
        .I1(\y_reg_n_0_[6][16] ),
        .I2(\y_reg[5][11]_i_12_n_4 ),
        .I3(\y_reg_n_0_[6][10] ),
        .I4(\y_reg_n_0_[6][19] ),
        .I5(\y[5][11]_i_13_n_0 ),
        .O(\y[5][11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][15]_i_10 
       (.I0(\y_reg_n_0_[6][23] ),
        .I1(\y_reg[5][19]_i_12_n_5 ),
        .I2(\y_reg_n_0_[6][17] ),
        .O(\y[5][15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][15]_i_11 
       (.I0(\y_reg_n_0_[6][22] ),
        .I1(\y_reg[5][19]_i_12_n_6 ),
        .I2(\y_reg_n_0_[6][16] ),
        .O(\y[5][15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][15]_i_13 
       (.I0(\y_reg_n_0_[6][21] ),
        .I1(\y_reg[5][19]_i_12_n_7 ),
        .I2(\y_reg_n_0_[6][15] ),
        .O(\y[5][15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][15]_i_14 
       (.I0(\y_reg_n_0_[6][20] ),
        .I1(\y_reg[5][15]_i_12_n_4 ),
        .I2(\y_reg_n_0_[6][14] ),
        .O(\y[5][15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][15]_i_15 
       (.I0(\y_reg[5][19]_i_23_n_6 ),
        .I1(sel),
        .I2(\y_reg[5][19]_i_24_n_5 ),
        .I3(\y_reg_n_0_[6][22] ),
        .I4(\y_reg_n_0_[6][10] ),
        .O(\y[5][15]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][15]_i_16 
       (.I0(\y_reg[5][19]_i_23_n_7 ),
        .I1(sel),
        .I2(\y_reg[5][19]_i_24_n_6 ),
        .I3(\y_reg_n_0_[6][21] ),
        .I4(\y_reg_n_0_[6][9] ),
        .O(\y[5][15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][15]_i_17 
       (.I0(\y_reg[5][15]_i_23_n_4 ),
        .I1(sel),
        .I2(\y_reg[5][19]_i_24_n_7 ),
        .I3(\y_reg_n_0_[6][20] ),
        .I4(\y_reg_n_0_[6][8] ),
        .O(\y[5][15]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][15]_i_18 
       (.I0(\y_reg[5][15]_i_23_n_5 ),
        .I1(sel),
        .I2(\y_reg[5][15]_i_24_n_4 ),
        .I3(\y_reg_n_0_[6][19] ),
        .I4(\y_reg_n_0_[6][7] ),
        .O(\y[5][15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][15]_i_19 
       (.I0(\y[5][15]_i_15_n_0 ),
        .I1(\y_reg_n_0_[6][23] ),
        .I2(\y_reg[5][19]_i_23_n_5 ),
        .I3(sel),
        .I4(\y_reg[5][19]_i_24_n_4 ),
        .I5(\y_reg_n_0_[6][11] ),
        .O(\y[5][15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][15]_i_2 
       (.I0(\y_reg_n_0_[6][22] ),
        .I1(\y_reg[5][19]_i_12_n_6 ),
        .I2(\y_reg_n_0_[6][16] ),
        .I3(\y[5][15]_i_10_n_0 ),
        .I4(\y_reg_n_0_[6][25] ),
        .O(\y[5][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][15]_i_20 
       (.I0(\y[5][15]_i_16_n_0 ),
        .I1(\y_reg_n_0_[6][22] ),
        .I2(\y_reg[5][19]_i_23_n_6 ),
        .I3(sel),
        .I4(\y_reg[5][19]_i_24_n_5 ),
        .I5(\y_reg_n_0_[6][10] ),
        .O(\y[5][15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][15]_i_21 
       (.I0(\y[5][15]_i_17_n_0 ),
        .I1(\y_reg_n_0_[6][21] ),
        .I2(\y_reg[5][19]_i_23_n_7 ),
        .I3(sel),
        .I4(\y_reg[5][19]_i_24_n_6 ),
        .I5(\y_reg_n_0_[6][9] ),
        .O(\y[5][15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][15]_i_22 
       (.I0(\y[5][15]_i_18_n_0 ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg[5][15]_i_23_n_4 ),
        .I3(sel),
        .I4(\y_reg[5][19]_i_24_n_7 ),
        .I5(\y_reg_n_0_[6][8] ),
        .O(\y[5][15]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][15]_i_25 
       (.I0(\y_reg[5][19]_i_24_n_7 ),
        .O(\y[5][15]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][15]_i_26 
       (.I0(\y_reg[5][15]_i_24_n_4 ),
        .O(\y[5][15]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][15]_i_27 
       (.I0(\y_reg[5][15]_i_24_n_5 ),
        .O(\y[5][15]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][15]_i_28 
       (.I0(\y_reg[5][15]_i_24_n_6 ),
        .O(\y[5][15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E800000000)) 
    \y[5][15]_i_29 
       (.I0(\x_reg_n_0_[6][11] ),
        .I1(\x_reg_n_0_[6][15] ),
        .I2(\x_reg_n_0_[6][13] ),
        .I3(\x_reg_n_0_[6][7] ),
        .I4(\y[5][19]_i_42_n_0 ),
        .I5(\y[5][15]_i_37_n_0 ),
        .O(\y[5][15]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][15]_i_3 
       (.I0(\y_reg_n_0_[6][21] ),
        .I1(\y_reg[5][19]_i_12_n_7 ),
        .I2(\y_reg_n_0_[6][15] ),
        .I3(\y[5][15]_i_11_n_0 ),
        .I4(\y_reg_n_0_[6][24] ),
        .O(\y[5][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][15]_i_30 
       (.I0(\x_reg_n_0_[6][6] ),
        .I1(\y[5][15]_i_38_n_0 ),
        .I2(\x_reg_n_0_[6][10] ),
        .I3(\x_reg_n_0_[6][12] ),
        .I4(\x_reg_n_0_[6][14] ),
        .I5(\y[5][15]_i_39_n_0 ),
        .O(\y[5][15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][15]_i_31 
       (.I0(\x_reg_n_0_[6][5] ),
        .I1(\y[5][15]_i_40_n_0 ),
        .I2(\x_reg_n_0_[6][9] ),
        .I3(\x_reg_n_0_[6][11] ),
        .I4(\x_reg_n_0_[6][13] ),
        .I5(\y[5][15]_i_41_n_0 ),
        .O(\y[5][15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h022AA880A880022A)) 
    \y[5][15]_i_32 
       (.I0(\y[5][15]_i_42_n_0 ),
        .I1(\x_reg_n_0_[6][10] ),
        .I2(\x_reg_n_0_[6][12] ),
        .I3(\x_reg_n_0_[6][8] ),
        .I4(\x_reg_n_0_[6][4] ),
        .I5(\y[5][15]_i_43_n_0 ),
        .O(\y[5][15]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][15]_i_33 
       (.I0(\y[5][15]_i_29_n_0 ),
        .I1(\y[5][19]_i_43_n_0 ),
        .I2(\y[5][15]_i_44_n_0 ),
        .O(\y[5][15]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][15]_i_34 
       (.I0(\y[5][15]_i_30_n_0 ),
        .I1(\y[5][15]_i_37_n_0 ),
        .I2(\y[5][15]_i_45_n_0 ),
        .O(\y[5][15]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][15]_i_35 
       (.I0(\y[5][15]_i_31_n_0 ),
        .I1(\y[5][15]_i_39_n_0 ),
        .I2(\y[5][15]_i_46_n_0 ),
        .O(\y[5][15]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][15]_i_36 
       (.I0(\y[5][15]_i_32_n_0 ),
        .I1(\y[5][15]_i_41_n_0 ),
        .I2(\y[5][15]_i_47_n_0 ),
        .O(\y[5][15]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][15]_i_37 
       (.I0(\y[5][15]_i_38_n_0 ),
        .I1(\x_reg_n_0_[6][6] ),
        .I2(\x_reg_n_0_[6][10] ),
        .I3(\x_reg_n_0_[6][12] ),
        .I4(\x_reg_n_0_[6][14] ),
        .O(\y[5][15]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][15]_i_38 
       (.I0(\x_reg_n_0_[6][11] ),
        .I1(\x_reg_n_0_[6][15] ),
        .I2(\x_reg_n_0_[6][13] ),
        .O(\y[5][15]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][15]_i_39 
       (.I0(\y[5][15]_i_40_n_0 ),
        .I1(\x_reg_n_0_[6][5] ),
        .I2(\x_reg_n_0_[6][9] ),
        .I3(\x_reg_n_0_[6][11] ),
        .I4(\x_reg_n_0_[6][13] ),
        .O(\y[5][15]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][15]_i_4 
       (.I0(\y_reg_n_0_[6][20] ),
        .I1(\y_reg[5][15]_i_12_n_4 ),
        .I2(\y_reg_n_0_[6][14] ),
        .I3(\y[5][15]_i_13_n_0 ),
        .I4(\y_reg_n_0_[6][23] ),
        .O(\y[5][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][15]_i_40 
       (.I0(\x_reg_n_0_[6][14] ),
        .I1(\x_reg_n_0_[6][12] ),
        .I2(\x_reg_n_0_[6][10] ),
        .O(\y[5][15]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \y[5][15]_i_41 
       (.I0(\x_reg_n_0_[6][10] ),
        .I1(\x_reg_n_0_[6][12] ),
        .I2(\x_reg_n_0_[6][8] ),
        .I3(\x_reg_n_0_[6][4] ),
        .I4(\y[5][15]_i_43_n_0 ),
        .O(\y[5][15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000009000000)) 
    \y[5][15]_i_42 
       (.I0(\x_reg_n_0_[6][7] ),
        .I1(\x_reg_n_0_[6][9] ),
        .I2(\x_reg_n_0_[6][10] ),
        .I3(\x_reg_n_0_[6][1] ),
        .I4(\x_reg_n_0_[6][2] ),
        .I5(\x_reg_n_0_[6][11] ),
        .O(\y[5][15]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][15]_i_43 
       (.I0(\x_reg_n_0_[6][13] ),
        .I1(\x_reg_n_0_[6][11] ),
        .I2(\x_reg_n_0_[6][9] ),
        .O(\y[5][15]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \y[5][15]_i_44 
       (.I0(\x_reg_n_0_[6][11] ),
        .I1(\x_reg_n_0_[6][15] ),
        .I2(\x_reg_n_0_[6][13] ),
        .I3(\y[5][19]_i_42_n_0 ),
        .I4(\x_reg_n_0_[6][7] ),
        .O(\y[5][15]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \y[5][15]_i_45 
       (.I0(\y[5][19]_i_42_n_0 ),
        .I1(\x_reg_n_0_[6][7] ),
        .I2(\x_reg_n_0_[6][13] ),
        .I3(\x_reg_n_0_[6][15] ),
        .I4(\x_reg_n_0_[6][11] ),
        .O(\y[5][15]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][15]_i_46 
       (.I0(\x_reg_n_0_[6][14] ),
        .I1(\x_reg_n_0_[6][12] ),
        .I2(\x_reg_n_0_[6][10] ),
        .I3(\y[5][15]_i_38_n_0 ),
        .I4(\x_reg_n_0_[6][6] ),
        .O(\y[5][15]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][15]_i_47 
       (.I0(\x_reg_n_0_[6][13] ),
        .I1(\x_reg_n_0_[6][11] ),
        .I2(\x_reg_n_0_[6][9] ),
        .I3(\y[5][15]_i_40_n_0 ),
        .I4(\x_reg_n_0_[6][5] ),
        .O(\y[5][15]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \y[5][15]_i_5 
       (.I0(\y_reg_n_0_[6][13] ),
        .I1(\y_reg[5][15]_i_12_n_5 ),
        .I2(\y_reg_n_0_[6][19] ),
        .I3(\y_reg_n_0_[6][22] ),
        .I4(\y[5][15]_i_14_n_0 ),
        .O(\y[5][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \y[5][15]_i_6 
       (.I0(\y[5][15]_i_2_n_0 ),
        .I1(\y_reg_n_0_[6][17] ),
        .I2(\y_reg[5][19]_i_12_n_5 ),
        .I3(\y_reg_n_0_[6][23] ),
        .I4(\y_reg_n_0_[6][26] ),
        .I5(\y[5][19]_i_14_n_0 ),
        .O(\y[5][15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][15]_i_7 
       (.I0(\y[5][15]_i_3_n_0 ),
        .I1(\y_reg_n_0_[6][22] ),
        .I2(\y_reg[5][19]_i_12_n_6 ),
        .I3(\y_reg_n_0_[6][16] ),
        .I4(\y_reg_n_0_[6][25] ),
        .I5(\y[5][15]_i_10_n_0 ),
        .O(\y[5][15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][15]_i_8 
       (.I0(\y[5][15]_i_4_n_0 ),
        .I1(\y_reg_n_0_[6][21] ),
        .I2(\y_reg[5][19]_i_12_n_7 ),
        .I3(\y_reg_n_0_[6][15] ),
        .I4(\y_reg_n_0_[6][24] ),
        .I5(\y[5][15]_i_11_n_0 ),
        .O(\y[5][15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][15]_i_9 
       (.I0(\y[5][15]_i_5_n_0 ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg[5][15]_i_12_n_4 ),
        .I3(\y_reg_n_0_[6][14] ),
        .I4(\y_reg_n_0_[6][23] ),
        .I5(\y[5][15]_i_13_n_0 ),
        .O(\y[5][15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_10 
       (.I0(\y_reg_n_0_[6][27] ),
        .I1(\y_reg[5][23]_i_11_n_5 ),
        .I2(\y_reg_n_0_[6][21] ),
        .O(\y[5][19]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_11 
       (.I0(\y_reg_n_0_[6][26] ),
        .I1(\y_reg[5][23]_i_11_n_6 ),
        .I2(\y_reg_n_0_[6][20] ),
        .O(\y[5][19]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_13 
       (.I0(\y_reg_n_0_[6][25] ),
        .I1(\y_reg[5][23]_i_11_n_7 ),
        .I2(\y_reg_n_0_[6][19] ),
        .O(\y[5][19]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_14 
       (.I0(\y_reg_n_0_[6][24] ),
        .I1(\y_reg[5][19]_i_12_n_4 ),
        .I2(\y_reg_n_0_[6][18] ),
        .O(\y[5][19]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][19]_i_15 
       (.I0(\y_reg[5][23]_i_27_n_6 ),
        .I1(sel),
        .I2(\y_reg[5][23]_i_28_n_5 ),
        .I3(\y_reg_n_0_[6][26] ),
        .I4(\y_reg_n_0_[6][14] ),
        .O(\y[5][19]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][19]_i_16 
       (.I0(\y_reg[5][23]_i_27_n_7 ),
        .I1(sel),
        .I2(\y_reg[5][23]_i_28_n_6 ),
        .I3(\y_reg_n_0_[6][25] ),
        .I4(\y_reg_n_0_[6][13] ),
        .O(\y[5][19]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][19]_i_17 
       (.I0(\y_reg[5][19]_i_23_n_4 ),
        .I1(sel),
        .I2(\y_reg[5][23]_i_28_n_7 ),
        .I3(\y_reg_n_0_[6][24] ),
        .I4(\y_reg_n_0_[6][12] ),
        .O(\y[5][19]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][19]_i_18 
       (.I0(\y_reg[5][19]_i_23_n_5 ),
        .I1(sel),
        .I2(\y_reg[5][19]_i_24_n_4 ),
        .I3(\y_reg_n_0_[6][23] ),
        .I4(\y_reg_n_0_[6][11] ),
        .O(\y[5][19]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][19]_i_19 
       (.I0(\y[5][19]_i_15_n_0 ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg[5][23]_i_27_n_5 ),
        .I3(sel),
        .I4(\y_reg[5][23]_i_28_n_4 ),
        .I5(\y_reg_n_0_[6][15] ),
        .O(\y[5][19]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \y[5][19]_i_2 
       (.I0(\y_reg_n_0_[6][20] ),
        .I1(\y_reg[5][23]_i_11_n_6 ),
        .I2(\y_reg_n_0_[6][26] ),
        .I3(\y_reg_n_0_[6][29] ),
        .I4(\y[5][19]_i_10_n_0 ),
        .O(\y[5][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][19]_i_20 
       (.I0(\y[5][19]_i_16_n_0 ),
        .I1(\y_reg_n_0_[6][26] ),
        .I2(\y_reg[5][23]_i_27_n_6 ),
        .I3(sel),
        .I4(\y_reg[5][23]_i_28_n_5 ),
        .I5(\y_reg_n_0_[6][14] ),
        .O(\y[5][19]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][19]_i_21 
       (.I0(\y[5][19]_i_17_n_0 ),
        .I1(\y_reg_n_0_[6][25] ),
        .I2(\y_reg[5][23]_i_27_n_7 ),
        .I3(sel),
        .I4(\y_reg[5][23]_i_28_n_6 ),
        .I5(\y_reg_n_0_[6][13] ),
        .O(\y[5][19]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][19]_i_22 
       (.I0(\y[5][19]_i_18_n_0 ),
        .I1(\y_reg_n_0_[6][24] ),
        .I2(\y_reg[5][19]_i_23_n_4 ),
        .I3(sel),
        .I4(\y_reg[5][23]_i_28_n_7 ),
        .I5(\y_reg_n_0_[6][12] ),
        .O(\y[5][19]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][19]_i_25 
       (.I0(\y_reg[5][23]_i_28_n_7 ),
        .O(\y[5][19]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][19]_i_26 
       (.I0(\y_reg[5][19]_i_24_n_4 ),
        .O(\y[5][19]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][19]_i_27 
       (.I0(\y_reg[5][19]_i_24_n_5 ),
        .O(\y[5][19]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][19]_i_28 
       (.I0(\y_reg[5][19]_i_24_n_6 ),
        .O(\y[5][19]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E800000000)) 
    \y[5][19]_i_29 
       (.I0(\x_reg_n_0_[6][15] ),
        .I1(\x_reg_n_0_[6][19] ),
        .I2(\x_reg_n_0_[6][17] ),
        .I3(\x_reg_n_0_[6][11] ),
        .I4(\y[5][23]_i_46_n_0 ),
        .I5(\y[5][19]_i_37_n_0 ),
        .O(\y[5][19]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \y[5][19]_i_3 
       (.I0(\y_reg_n_0_[6][19] ),
        .I1(\y_reg[5][23]_i_11_n_7 ),
        .I2(\y_reg_n_0_[6][25] ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y[5][19]_i_11_n_0 ),
        .O(\y[5][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][19]_i_30 
       (.I0(\x_reg_n_0_[6][10] ),
        .I1(\y[5][19]_i_38_n_0 ),
        .I2(\x_reg_n_0_[6][14] ),
        .I3(\x_reg_n_0_[6][16] ),
        .I4(\x_reg_n_0_[6][18] ),
        .I5(\y[5][19]_i_39_n_0 ),
        .O(\y[5][19]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][19]_i_31 
       (.I0(\x_reg_n_0_[6][9] ),
        .I1(\y[5][19]_i_40_n_0 ),
        .I2(\x_reg_n_0_[6][13] ),
        .I3(\x_reg_n_0_[6][15] ),
        .I4(\x_reg_n_0_[6][17] ),
        .I5(\y[5][19]_i_41_n_0 ),
        .O(\y[5][19]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222B2BBB)) 
    \y[5][19]_i_32 
       (.I0(\x_reg_n_0_[6][7] ),
        .I1(\y[5][19]_i_42_n_0 ),
        .I2(\x_reg_n_0_[6][13] ),
        .I3(\x_reg_n_0_[6][15] ),
        .I4(\x_reg_n_0_[6][11] ),
        .I5(\y[5][19]_i_43_n_0 ),
        .O(\y[5][19]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_33 
       (.I0(\y[5][19]_i_29_n_0 ),
        .I1(\y[5][23]_i_47_n_0 ),
        .I2(\y[5][19]_i_44_n_0 ),
        .O(\y[5][19]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_34 
       (.I0(\y[5][19]_i_30_n_0 ),
        .I1(\y[5][19]_i_37_n_0 ),
        .I2(\y[5][19]_i_45_n_0 ),
        .O(\y[5][19]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_35 
       (.I0(\y[5][19]_i_31_n_0 ),
        .I1(\y[5][19]_i_39_n_0 ),
        .I2(\y[5][19]_i_46_n_0 ),
        .O(\y[5][19]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_36 
       (.I0(\y[5][19]_i_32_n_0 ),
        .I1(\y[5][19]_i_41_n_0 ),
        .I2(\y[5][19]_i_47_n_0 ),
        .O(\y[5][19]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][19]_i_37 
       (.I0(\y[5][19]_i_38_n_0 ),
        .I1(\x_reg_n_0_[6][10] ),
        .I2(\x_reg_n_0_[6][14] ),
        .I3(\x_reg_n_0_[6][16] ),
        .I4(\x_reg_n_0_[6][18] ),
        .O(\y[5][19]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][19]_i_38 
       (.I0(\x_reg_n_0_[6][15] ),
        .I1(\x_reg_n_0_[6][19] ),
        .I2(\x_reg_n_0_[6][17] ),
        .O(\y[5][19]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][19]_i_39 
       (.I0(\y[5][19]_i_40_n_0 ),
        .I1(\x_reg_n_0_[6][9] ),
        .I2(\x_reg_n_0_[6][13] ),
        .I3(\x_reg_n_0_[6][15] ),
        .I4(\x_reg_n_0_[6][17] ),
        .O(\y[5][19]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \y[5][19]_i_4 
       (.I0(\y_reg_n_0_[6][18] ),
        .I1(\y_reg[5][19]_i_12_n_4 ),
        .I2(\y_reg_n_0_[6][24] ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y[5][19]_i_13_n_0 ),
        .O(\y[5][19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][19]_i_40 
       (.I0(\x_reg_n_0_[6][18] ),
        .I1(\x_reg_n_0_[6][16] ),
        .I2(\x_reg_n_0_[6][14] ),
        .O(\y[5][19]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \y[5][19]_i_41 
       (.I0(\x_reg_n_0_[6][14] ),
        .I1(\x_reg_n_0_[6][16] ),
        .I2(\x_reg_n_0_[6][12] ),
        .I3(\x_reg_n_0_[6][8] ),
        .I4(\y[5][19]_i_48_n_0 ),
        .O(\y[5][19]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][19]_i_42 
       (.I0(\x_reg_n_0_[6][12] ),
        .I1(\x_reg_n_0_[6][16] ),
        .I2(\x_reg_n_0_[6][14] ),
        .O(\y[5][19]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \y[5][19]_i_43 
       (.I0(\y[5][19]_i_48_n_0 ),
        .I1(\x_reg_n_0_[6][8] ),
        .I2(\x_reg_n_0_[6][12] ),
        .I3(\x_reg_n_0_[6][16] ),
        .I4(\x_reg_n_0_[6][14] ),
        .O(\y[5][19]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \y[5][19]_i_44 
       (.I0(\x_reg_n_0_[6][15] ),
        .I1(\x_reg_n_0_[6][19] ),
        .I2(\x_reg_n_0_[6][17] ),
        .I3(\y[5][23]_i_46_n_0 ),
        .I4(\x_reg_n_0_[6][11] ),
        .O(\y[5][19]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \y[5][19]_i_45 
       (.I0(\y[5][23]_i_46_n_0 ),
        .I1(\x_reg_n_0_[6][11] ),
        .I2(\x_reg_n_0_[6][17] ),
        .I3(\x_reg_n_0_[6][19] ),
        .I4(\x_reg_n_0_[6][15] ),
        .O(\y[5][19]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][19]_i_46 
       (.I0(\x_reg_n_0_[6][18] ),
        .I1(\x_reg_n_0_[6][16] ),
        .I2(\x_reg_n_0_[6][14] ),
        .I3(\y[5][19]_i_38_n_0 ),
        .I4(\x_reg_n_0_[6][10] ),
        .O(\y[5][19]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][19]_i_47 
       (.I0(\x_reg_n_0_[6][17] ),
        .I1(\x_reg_n_0_[6][15] ),
        .I2(\x_reg_n_0_[6][13] ),
        .I3(\y[5][19]_i_40_n_0 ),
        .I4(\x_reg_n_0_[6][9] ),
        .O(\y[5][19]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][19]_i_48 
       (.I0(\x_reg_n_0_[6][17] ),
        .I1(\x_reg_n_0_[6][15] ),
        .I2(\x_reg_n_0_[6][13] ),
        .O(\y[5][19]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \y[5][19]_i_5 
       (.I0(\y_reg_n_0_[6][17] ),
        .I1(\y_reg[5][19]_i_12_n_5 ),
        .I2(\y_reg_n_0_[6][23] ),
        .I3(\y_reg_n_0_[6][26] ),
        .I4(\y[5][19]_i_14_n_0 ),
        .O(\y[5][19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \y[5][19]_i_6 
       (.I0(\y[5][19]_i_2_n_0 ),
        .I1(\y_reg_n_0_[6][21] ),
        .I2(\y_reg[5][23]_i_11_n_5 ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y_reg_n_0_[6][30] ),
        .I5(\y[5][23]_i_13_n_0 ),
        .O(\y[5][19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \y[5][19]_i_7 
       (.I0(\y[5][19]_i_3_n_0 ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg[5][23]_i_11_n_6 ),
        .I3(\y_reg_n_0_[6][26] ),
        .I4(\y_reg_n_0_[6][29] ),
        .I5(\y[5][19]_i_10_n_0 ),
        .O(\y[5][19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \y[5][19]_i_8 
       (.I0(\y[5][19]_i_4_n_0 ),
        .I1(\y_reg_n_0_[6][19] ),
        .I2(\y_reg[5][23]_i_11_n_7 ),
        .I3(\y_reg_n_0_[6][25] ),
        .I4(\y_reg_n_0_[6][28] ),
        .I5(\y[5][19]_i_11_n_0 ),
        .O(\y[5][19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \y[5][19]_i_9 
       (.I0(\y[5][19]_i_5_n_0 ),
        .I1(\y_reg_n_0_[6][18] ),
        .I2(\y_reg[5][19]_i_12_n_4 ),
        .I3(\y_reg_n_0_[6][24] ),
        .I4(\y_reg_n_0_[6][27] ),
        .I5(\y[5][19]_i_13_n_0 ),
        .O(\y[5][19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0DD0D00DD00D0DD0)) 
    \y[5][23]_i_10 
       (.I0(\y_reg_n_0_[6][23] ),
        .I1(\y_reg[5][27]_i_10_n_7 ),
        .I2(\y_reg_n_0_[6][30] ),
        .I3(\y[5][23]_i_16_n_0 ),
        .I4(\y_reg_n_0_[6][24] ),
        .I5(\y_reg[5][27]_i_10_n_6 ),
        .O(\y[5][23]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y[5][23]_i_12 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(sel),
        .O(\y[5][23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][23]_i_13 
       (.I0(\y_reg_n_0_[6][28] ),
        .I1(\y_reg[5][23]_i_11_n_4 ),
        .I2(\y_reg_n_0_[6][22] ),
        .O(\y[5][23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][23]_i_14 
       (.I0(\y_reg_n_0_[6][25] ),
        .I1(\y_reg[5][27]_i_10_n_5 ),
        .I2(sel),
        .O(\y[5][23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \y[5][23]_i_15 
       (.I0(\y_reg[5][27]_i_10_n_7 ),
        .I1(\y_reg_n_0_[6][23] ),
        .O(\y[5][23]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y[5][23]_i_16 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(sel),
        .O(\y[5][23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \y[5][23]_i_17 
       (.I0(\y_reg[5][27]_i_10_n_6 ),
        .I1(\y_reg_n_0_[6][24] ),
        .I2(\y_reg_n_0_[6][29] ),
        .I3(sel),
        .I4(\y_reg_n_0_[6][30] ),
        .O(\y[5][23]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \y[5][23]_i_18 
       (.I0(\y_reg_n_0_[6][22] ),
        .I1(\y_reg[5][23]_i_11_n_4 ),
        .I2(\y_reg_n_0_[6][28] ),
        .O(\y[5][23]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h8D72)) 
    \y[5][23]_i_19 
       (.I0(sel),
        .I1(\y_reg[5][27]_i_22_n_4 ),
        .I2(\y_reg[5][27]_i_20_n_5 ),
        .I3(\y_reg_n_0_[6][19] ),
        .O(\y[5][23]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFBBFBFFBB00B0BB0)) 
    \y[5][23]_i_2 
       (.I0(\y_reg[5][27]_i_10_n_6 ),
        .I1(\y_reg_n_0_[6][24] ),
        .I2(sel),
        .I3(\y_reg[5][27]_i_10_n_5 ),
        .I4(\y_reg_n_0_[6][25] ),
        .I5(\y[5][23]_i_10_n_0 ),
        .O(\y[5][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][23]_i_20 
       (.I0(\y_reg[5][27]_i_20_n_7 ),
        .I1(sel),
        .I2(\y_reg[5][27]_i_22_n_6 ),
        .I3(\y_reg_n_0_[6][29] ),
        .I4(\y_reg_n_0_[6][17] ),
        .O(\y[5][23]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][23]_i_21 
       (.I0(\y_reg[5][23]_i_27_n_4 ),
        .I1(sel),
        .I2(\y_reg[5][27]_i_22_n_7 ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y_reg_n_0_[6][16] ),
        .O(\y[5][23]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][23]_i_22 
       (.I0(\y_reg[5][23]_i_27_n_5 ),
        .I1(sel),
        .I2(\y_reg[5][23]_i_28_n_4 ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y_reg_n_0_[6][15] ),
        .O(\y[5][23]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h566A5656566A6A6A)) 
    \y[5][23]_i_23 
       (.I0(\y[5][23]_i_19_n_0 ),
        .I1(\y_reg_n_0_[6][18] ),
        .I2(\y_reg_n_0_[6][30] ),
        .I3(\y_reg[5][27]_i_22_n_5 ),
        .I4(sel),
        .I5(\y_reg[5][27]_i_20_n_6 ),
        .O(\y[5][23]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][23]_i_24 
       (.I0(\y[5][23]_i_20_n_0 ),
        .I1(\y_reg_n_0_[6][30] ),
        .I2(\y_reg[5][27]_i_20_n_6 ),
        .I3(sel),
        .I4(\y_reg[5][27]_i_22_n_5 ),
        .I5(\y_reg_n_0_[6][18] ),
        .O(\y[5][23]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][23]_i_25 
       (.I0(\y[5][23]_i_21_n_0 ),
        .I1(\y_reg_n_0_[6][29] ),
        .I2(\y_reg[5][27]_i_20_n_7 ),
        .I3(sel),
        .I4(\y_reg[5][27]_i_22_n_6 ),
        .I5(\y_reg_n_0_[6][17] ),
        .O(\y[5][23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][23]_i_26 
       (.I0(\y[5][23]_i_22_n_0 ),
        .I1(\y_reg_n_0_[6][28] ),
        .I2(\y_reg[5][23]_i_27_n_4 ),
        .I3(sel),
        .I4(\y_reg[5][27]_i_22_n_7 ),
        .I5(\y_reg_n_0_[6][16] ),
        .O(\y[5][23]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][23]_i_29 
       (.I0(\y_reg[5][27]_i_22_n_7 ),
        .O(\y[5][23]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h9A65659A659A9A65)) 
    \y[5][23]_i_3 
       (.I0(\y[5][23]_i_10_n_0 ),
        .I1(\y_reg[5][27]_i_10_n_6 ),
        .I2(\y_reg_n_0_[6][24] ),
        .I3(sel),
        .I4(\y_reg[5][27]_i_10_n_5 ),
        .I5(\y_reg_n_0_[6][25] ),
        .O(\y[5][23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][23]_i_30 
       (.I0(\y_reg[5][23]_i_28_n_4 ),
        .O(\y[5][23]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][23]_i_31 
       (.I0(\y_reg[5][23]_i_28_n_5 ),
        .O(\y[5][23]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][23]_i_32 
       (.I0(\y_reg[5][23]_i_28_n_6 ),
        .O(\y[5][23]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E800000000)) 
    \y[5][23]_i_33 
       (.I0(\x_reg_n_0_[6][19] ),
        .I1(\x_reg_n_0_[6][23] ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\x_reg_n_0_[6][15] ),
        .I4(\y[5][27]_i_40_n_0 ),
        .I5(\y[5][23]_i_41_n_0 ),
        .O(\y[5][23]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][23]_i_34 
       (.I0(\x_reg_n_0_[6][14] ),
        .I1(\y[5][23]_i_42_n_0 ),
        .I2(\x_reg_n_0_[6][18] ),
        .I3(\x_reg_n_0_[6][20] ),
        .I4(\x_reg_n_0_[6][22] ),
        .I5(\y[5][23]_i_43_n_0 ),
        .O(\y[5][23]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][23]_i_35 
       (.I0(\x_reg_n_0_[6][13] ),
        .I1(\y[5][23]_i_44_n_0 ),
        .I2(\x_reg_n_0_[6][17] ),
        .I3(\x_reg_n_0_[6][19] ),
        .I4(\x_reg_n_0_[6][21] ),
        .I5(\y[5][23]_i_45_n_0 ),
        .O(\y[5][23]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222B2BBB)) 
    \y[5][23]_i_36 
       (.I0(\x_reg_n_0_[6][11] ),
        .I1(\y[5][23]_i_46_n_0 ),
        .I2(\x_reg_n_0_[6][17] ),
        .I3(\x_reg_n_0_[6][19] ),
        .I4(\x_reg_n_0_[6][15] ),
        .I5(\y[5][23]_i_47_n_0 ),
        .O(\y[5][23]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][23]_i_37 
       (.I0(\y[5][23]_i_33_n_0 ),
        .I1(\y[5][27]_i_41_n_0 ),
        .I2(\y[5][23]_i_48_n_0 ),
        .O(\y[5][23]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][23]_i_38 
       (.I0(\y[5][23]_i_34_n_0 ),
        .I1(\y[5][23]_i_41_n_0 ),
        .I2(\y[5][23]_i_49_n_0 ),
        .O(\y[5][23]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][23]_i_39 
       (.I0(\y[5][23]_i_35_n_0 ),
        .I1(\y[5][23]_i_43_n_0 ),
        .I2(\y[5][23]_i_50_n_0 ),
        .O(\y[5][23]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00D4D400D4FFFFD4)) 
    \y[5][23]_i_4 
       (.I0(\y_reg_n_0_[6][22] ),
        .I1(\y_reg[5][23]_i_11_n_4 ),
        .I2(\y_reg_n_0_[6][28] ),
        .I3(\y_reg[5][27]_i_10_n_7 ),
        .I4(\y_reg_n_0_[6][23] ),
        .I5(\y[5][23]_i_12_n_0 ),
        .O(\y[5][23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][23]_i_40 
       (.I0(\y[5][23]_i_36_n_0 ),
        .I1(\y[5][23]_i_45_n_0 ),
        .I2(\y[5][23]_i_51_n_0 ),
        .O(\y[5][23]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][23]_i_41 
       (.I0(\y[5][23]_i_42_n_0 ),
        .I1(\x_reg_n_0_[6][14] ),
        .I2(\x_reg_n_0_[6][18] ),
        .I3(\x_reg_n_0_[6][20] ),
        .I4(\x_reg_n_0_[6][22] ),
        .O(\y[5][23]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][23]_i_42 
       (.I0(\x_reg_n_0_[6][19] ),
        .I1(\x_reg_n_0_[6][23] ),
        .I2(\x_reg_n_0_[6][21] ),
        .O(\y[5][23]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][23]_i_43 
       (.I0(\y[5][23]_i_44_n_0 ),
        .I1(\x_reg_n_0_[6][13] ),
        .I2(\x_reg_n_0_[6][17] ),
        .I3(\x_reg_n_0_[6][19] ),
        .I4(\x_reg_n_0_[6][21] ),
        .O(\y[5][23]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][23]_i_44 
       (.I0(\x_reg_n_0_[6][22] ),
        .I1(\x_reg_n_0_[6][20] ),
        .I2(\x_reg_n_0_[6][18] ),
        .O(\y[5][23]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \y[5][23]_i_45 
       (.I0(\x_reg_n_0_[6][18] ),
        .I1(\x_reg_n_0_[6][20] ),
        .I2(\x_reg_n_0_[6][16] ),
        .I3(\x_reg_n_0_[6][12] ),
        .I4(\y[5][23]_i_52_n_0 ),
        .O(\y[5][23]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][23]_i_46 
       (.I0(\x_reg_n_0_[6][16] ),
        .I1(\x_reg_n_0_[6][20] ),
        .I2(\x_reg_n_0_[6][18] ),
        .O(\y[5][23]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \y[5][23]_i_47 
       (.I0(\y[5][23]_i_52_n_0 ),
        .I1(\x_reg_n_0_[6][12] ),
        .I2(\x_reg_n_0_[6][16] ),
        .I3(\x_reg_n_0_[6][20] ),
        .I4(\x_reg_n_0_[6][18] ),
        .O(\y[5][23]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \y[5][23]_i_48 
       (.I0(\x_reg_n_0_[6][19] ),
        .I1(\x_reg_n_0_[6][23] ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\y[5][27]_i_40_n_0 ),
        .I4(\x_reg_n_0_[6][15] ),
        .O(\y[5][23]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \y[5][23]_i_49 
       (.I0(\y[5][27]_i_40_n_0 ),
        .I1(\x_reg_n_0_[6][15] ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\x_reg_n_0_[6][23] ),
        .I4(\x_reg_n_0_[6][19] ),
        .O(\y[5][23]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \y[5][23]_i_5 
       (.I0(\y_reg_n_0_[6][21] ),
        .I1(\y_reg[5][23]_i_11_n_5 ),
        .I2(\y_reg_n_0_[6][27] ),
        .I3(\y_reg_n_0_[6][30] ),
        .I4(\y[5][23]_i_13_n_0 ),
        .O(\y[5][23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][23]_i_50 
       (.I0(\x_reg_n_0_[6][22] ),
        .I1(\x_reg_n_0_[6][20] ),
        .I2(\x_reg_n_0_[6][18] ),
        .I3(\y[5][23]_i_42_n_0 ),
        .I4(\x_reg_n_0_[6][14] ),
        .O(\y[5][23]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][23]_i_51 
       (.I0(\x_reg_n_0_[6][21] ),
        .I1(\x_reg_n_0_[6][19] ),
        .I2(\x_reg_n_0_[6][17] ),
        .I3(\y[5][23]_i_44_n_0 ),
        .I4(\x_reg_n_0_[6][13] ),
        .O(\y[5][23]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][23]_i_52 
       (.I0(\x_reg_n_0_[6][21] ),
        .I1(\x_reg_n_0_[6][19] ),
        .I2(\x_reg_n_0_[6][17] ),
        .O(\y[5][23]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \y[5][23]_i_6 
       (.I0(\y[5][23]_i_2_n_0 ),
        .I1(\y_reg[5][27]_i_10_n_5 ),
        .I2(sel),
        .I3(\y_reg_n_0_[6][25] ),
        .I4(\y_reg_n_0_[6][26] ),
        .I5(\y_reg[5][27]_i_10_n_4 ),
        .O(\y[5][23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA96A95A995A95695)) 
    \y[5][23]_i_7 
       (.I0(\y[5][23]_i_14_n_0 ),
        .I1(\y[5][23]_i_15_n_0 ),
        .I2(\y_reg[5][27]_i_10_n_6 ),
        .I3(\y_reg_n_0_[6][24] ),
        .I4(\y[5][23]_i_16_n_0 ),
        .I5(\y_reg_n_0_[6][30] ),
        .O(\y[5][23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9699)) 
    \y[5][23]_i_8 
       (.I0(\y[5][23]_i_4_n_0 ),
        .I1(\y[5][23]_i_17_n_0 ),
        .I2(\y_reg[5][27]_i_10_n_7 ),
        .I3(\y_reg_n_0_[6][23] ),
        .O(\y[5][23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \y[5][23]_i_9 
       (.I0(\y[5][23]_i_5_n_0 ),
        .I1(\y[5][23]_i_18_n_0 ),
        .I2(sel),
        .I3(\y_reg_n_0_[6][29] ),
        .I4(\y_reg[5][27]_i_10_n_7 ),
        .I5(\y_reg_n_0_[6][23] ),
        .O(\y[5][23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][27]_i_11 
       (.I0(\y_reg[5][31]_i_39_n_6 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_37_n_7 ),
        .I3(\y_reg_n_0_[6][21] ),
        .I4(\y[5][27]_i_19_n_0 ),
        .O(\y[5][27]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][27]_i_12 
       (.I0(\y_reg[5][31]_i_39_n_7 ),
        .I1(sel),
        .I2(\y_reg[5][27]_i_20_n_4 ),
        .I3(\y_reg_n_0_[6][20] ),
        .I4(\y[5][27]_i_21_n_0 ),
        .O(\y[5][27]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h8F80202F)) 
    \y[5][27]_i_13 
       (.I0(\y_reg[5][27]_i_22_n_4 ),
        .I1(\y_reg[5][31]_i_39_n_7 ),
        .I2(sel),
        .I3(\y_reg[5][27]_i_20_n_4 ),
        .I4(\y_reg_n_0_[6][20] ),
        .O(\y[5][27]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2A08)) 
    \y[5][27]_i_14 
       (.I0(\y_reg_n_0_[6][19] ),
        .I1(sel),
        .I2(\y_reg[5][27]_i_22_n_4 ),
        .I3(\y_reg[5][27]_i_20_n_5 ),
        .O(\y[5][27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][27]_i_15 
       (.I0(\y[5][27]_i_11_n_0 ),
        .I1(\y[5][31]_i_41_n_0 ),
        .I2(\y_reg_n_0_[6][22] ),
        .I3(\y_reg[5][31]_i_37_n_6 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_39_n_5 ),
        .O(\y[5][27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][27]_i_16 
       (.I0(\y[5][27]_i_12_n_0 ),
        .I1(\y[5][27]_i_19_n_0 ),
        .I2(\y_reg_n_0_[6][21] ),
        .I3(\y_reg[5][31]_i_37_n_7 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_39_n_6 ),
        .O(\y[5][27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][27]_i_17 
       (.I0(\y[5][27]_i_13_n_0 ),
        .I1(\y[5][27]_i_21_n_0 ),
        .I2(\y_reg_n_0_[6][20] ),
        .I3(\y_reg[5][27]_i_20_n_4 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_39_n_7 ),
        .O(\y[5][27]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666969996)) 
    \y[5][27]_i_18 
       (.I0(\y[5][27]_i_14_n_0 ),
        .I1(\y_reg_n_0_[6][20] ),
        .I2(\y_reg[5][27]_i_20_n_4 ),
        .I3(sel),
        .I4(\y_reg[5][31]_i_39_n_7 ),
        .I5(\y_reg[5][27]_i_22_n_4 ),
        .O(\y[5][27]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][27]_i_19 
       (.I0(\y_reg_n_0_[6][22] ),
        .I1(\y_reg[5][31]_i_37_n_6 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_39_n_5 ),
        .O(\y[5][27]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0BB0)) 
    \y[5][27]_i_2 
       (.I0(\y_reg[5][31]_i_10_n_6 ),
        .I1(\y_reg_n_0_[6][28] ),
        .I2(\y_reg[5][31]_i_10_n_5 ),
        .I3(\y_reg_n_0_[6][29] ),
        .O(\y[5][27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][27]_i_21 
       (.I0(\y_reg_n_0_[6][21] ),
        .I1(\y_reg[5][31]_i_37_n_7 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_39_n_6 ),
        .O(\y[5][27]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][27]_i_23 
       (.I0(\y_reg[5][31]_i_39_n_7 ),
        .O(\y[5][27]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][27]_i_24 
       (.I0(\y_reg[5][27]_i_22_n_4 ),
        .O(\y[5][27]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][27]_i_25 
       (.I0(\y_reg[5][27]_i_22_n_5 ),
        .O(\y[5][27]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][27]_i_26 
       (.I0(\y_reg[5][27]_i_22_n_6 ),
        .O(\y[5][27]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E800000000)) 
    \y[5][27]_i_27 
       (.I0(\x_reg_n_0_[6][23] ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\x_reg_n_0_[6][19] ),
        .I4(\y[5][31]_i_76_n_0 ),
        .I5(\y[5][27]_i_35_n_0 ),
        .O(\y[5][27]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][27]_i_28 
       (.I0(\x_reg_n_0_[6][18] ),
        .I1(\y[5][27]_i_36_n_0 ),
        .I2(\x_reg_n_0_[6][22] ),
        .I3(\x_reg_n_0_[6][24] ),
        .I4(\x_reg_n_0_[6][26] ),
        .I5(\y[5][27]_i_37_n_0 ),
        .O(\y[5][27]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][27]_i_29 
       (.I0(\x_reg_n_0_[6][17] ),
        .I1(\y[5][27]_i_38_n_0 ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\x_reg_n_0_[6][23] ),
        .I4(\x_reg_n_0_[6][25] ),
        .I5(\y[5][27]_i_39_n_0 ),
        .O(\y[5][27]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h0BB0)) 
    \y[5][27]_i_3 
       (.I0(\y_reg[5][31]_i_10_n_7 ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg[5][31]_i_10_n_6 ),
        .I3(\y_reg_n_0_[6][28] ),
        .O(\y[5][27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222B2BBB)) 
    \y[5][27]_i_30 
       (.I0(\x_reg_n_0_[6][15] ),
        .I1(\y[5][27]_i_40_n_0 ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\x_reg_n_0_[6][23] ),
        .I4(\x_reg_n_0_[6][19] ),
        .I5(\y[5][27]_i_41_n_0 ),
        .O(\y[5][27]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][27]_i_31 
       (.I0(\y[5][27]_i_27_n_0 ),
        .I1(\y[5][31]_i_77_n_0 ),
        .I2(\y[5][27]_i_42_n_0 ),
        .O(\y[5][27]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][27]_i_32 
       (.I0(\y[5][27]_i_28_n_0 ),
        .I1(\y[5][27]_i_35_n_0 ),
        .I2(\y[5][27]_i_43_n_0 ),
        .O(\y[5][27]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][27]_i_33 
       (.I0(\y[5][27]_i_29_n_0 ),
        .I1(\y[5][27]_i_37_n_0 ),
        .I2(\y[5][27]_i_44_n_0 ),
        .O(\y[5][27]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][27]_i_34 
       (.I0(\y[5][27]_i_30_n_0 ),
        .I1(\y[5][27]_i_39_n_0 ),
        .I2(\y[5][27]_i_45_n_0 ),
        .O(\y[5][27]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][27]_i_35 
       (.I0(\y[5][27]_i_36_n_0 ),
        .I1(\x_reg_n_0_[6][18] ),
        .I2(\x_reg_n_0_[6][22] ),
        .I3(\x_reg_n_0_[6][24] ),
        .I4(\x_reg_n_0_[6][26] ),
        .O(\y[5][27]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][27]_i_36 
       (.I0(\x_reg_n_0_[6][23] ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg_n_0_[6][25] ),
        .O(\y[5][27]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][27]_i_37 
       (.I0(\y[5][27]_i_38_n_0 ),
        .I1(\x_reg_n_0_[6][17] ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\x_reg_n_0_[6][23] ),
        .I4(\x_reg_n_0_[6][25] ),
        .O(\y[5][27]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][27]_i_38 
       (.I0(\x_reg_n_0_[6][26] ),
        .I1(\x_reg_n_0_[6][24] ),
        .I2(\x_reg_n_0_[6][22] ),
        .O(\y[5][27]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \y[5][27]_i_39 
       (.I0(\x_reg_n_0_[6][22] ),
        .I1(\x_reg_n_0_[6][24] ),
        .I2(\x_reg_n_0_[6][20] ),
        .I3(\x_reg_n_0_[6][16] ),
        .I4(\y[5][27]_i_46_n_0 ),
        .O(\y[5][27]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h0BB0)) 
    \y[5][27]_i_4 
       (.I0(\y_reg[5][27]_i_10_n_4 ),
        .I1(\y_reg_n_0_[6][26] ),
        .I2(\y_reg[5][31]_i_10_n_7 ),
        .I3(\y_reg_n_0_[6][27] ),
        .O(\y[5][27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][27]_i_40 
       (.I0(\x_reg_n_0_[6][20] ),
        .I1(\x_reg_n_0_[6][24] ),
        .I2(\x_reg_n_0_[6][22] ),
        .O(\y[5][27]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \y[5][27]_i_41 
       (.I0(\y[5][27]_i_46_n_0 ),
        .I1(\x_reg_n_0_[6][16] ),
        .I2(\x_reg_n_0_[6][20] ),
        .I3(\x_reg_n_0_[6][24] ),
        .I4(\x_reg_n_0_[6][22] ),
        .O(\y[5][27]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \y[5][27]_i_42 
       (.I0(\x_reg_n_0_[6][23] ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\y[5][31]_i_76_n_0 ),
        .I4(\x_reg_n_0_[6][19] ),
        .O(\y[5][27]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \y[5][27]_i_43 
       (.I0(\y[5][31]_i_76_n_0 ),
        .I1(\x_reg_n_0_[6][19] ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\x_reg_n_0_[6][27] ),
        .I4(\x_reg_n_0_[6][23] ),
        .O(\y[5][27]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][27]_i_44 
       (.I0(\x_reg_n_0_[6][26] ),
        .I1(\x_reg_n_0_[6][24] ),
        .I2(\x_reg_n_0_[6][22] ),
        .I3(\y[5][27]_i_36_n_0 ),
        .I4(\x_reg_n_0_[6][18] ),
        .O(\y[5][27]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][27]_i_45 
       (.I0(\x_reg_n_0_[6][25] ),
        .I1(\x_reg_n_0_[6][23] ),
        .I2(\x_reg_n_0_[6][21] ),
        .I3(\y[5][27]_i_38_n_0 ),
        .I4(\x_reg_n_0_[6][17] ),
        .O(\y[5][27]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][27]_i_46 
       (.I0(\x_reg_n_0_[6][25] ),
        .I1(\x_reg_n_0_[6][23] ),
        .I2(\x_reg_n_0_[6][21] ),
        .O(\y[5][27]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h06660006)) 
    \y[5][27]_i_5 
       (.I0(\y_reg[5][27]_i_10_n_4 ),
        .I1(\y_reg_n_0_[6][26] ),
        .I2(\y_reg_n_0_[6][25] ),
        .I3(sel),
        .I4(\y_reg[5][27]_i_10_n_5 ),
        .O(\y[5][27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \y[5][27]_i_6 
       (.I0(\y_reg[5][31]_i_10_n_5 ),
        .I1(\y_reg_n_0_[6][29] ),
        .I2(\y_reg[5][31]_i_10_n_4 ),
        .I3(\y_reg_n_0_[6][30] ),
        .I4(\y[5][27]_i_2_n_0 ),
        .O(\y[5][27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \y[5][27]_i_7 
       (.I0(\y_reg[5][31]_i_10_n_6 ),
        .I1(\y_reg_n_0_[6][28] ),
        .I2(\y_reg[5][31]_i_10_n_5 ),
        .I3(\y_reg_n_0_[6][29] ),
        .I4(\y[5][27]_i_3_n_0 ),
        .O(\y[5][27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \y[5][27]_i_8 
       (.I0(\y_reg[5][31]_i_10_n_7 ),
        .I1(\y_reg_n_0_[6][27] ),
        .I2(\y_reg[5][31]_i_10_n_6 ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y[5][27]_i_4_n_0 ),
        .O(\y[5][27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \y[5][27]_i_9 
       (.I0(\y_reg[5][27]_i_10_n_4 ),
        .I1(\y_reg_n_0_[6][26] ),
        .I2(\y_reg[5][31]_i_10_n_7 ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y[5][27]_i_5_n_0 ),
        .O(\y[5][27]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_1 
       (.I0(in_valid_IBUF),
        .O(\y[5][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][31]_i_11 
       (.I0(\y_reg[5][31]_i_26_n_7 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_27_n_4 ),
        .I3(\y_reg_n_0_[6][28] ),
        .I4(\y[5][31]_i_28_n_0 ),
        .O(\y[5][31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][31]_i_12 
       (.I0(\y_reg[5][31]_i_29_n_4 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_27_n_5 ),
        .I3(\y_reg_n_0_[6][27] ),
        .I4(\y[5][31]_i_30_n_0 ),
        .O(\y[5][31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][31]_i_13 
       (.I0(\y_reg[5][31]_i_29_n_5 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_27_n_6 ),
        .I3(\y_reg_n_0_[6][26] ),
        .I4(\y[5][31]_i_31_n_0 ),
        .O(\y[5][31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9A95CFC0CFC0656A)) 
    \y[5][31]_i_14 
       (.I0(\y[5][31]_i_32_n_0 ),
        .I1(\y_reg[5][31]_i_26_n_0 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_33_n_5 ),
        .I4(\y_reg_n_0_[6][30] ),
        .I5(\y[5][31]_i_34_n_0 ),
        .O(\y[5][31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][31]_i_15 
       (.I0(\y[5][31]_i_11_n_0 ),
        .I1(\y[5][31]_i_35_n_0 ),
        .I2(\y_reg_n_0_[6][29] ),
        .I3(\y_reg[5][31]_i_33_n_7 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_26_n_6 ),
        .O(\y[5][31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][31]_i_16 
       (.I0(\y[5][31]_i_12_n_0 ),
        .I1(\y[5][31]_i_28_n_0 ),
        .I2(\y_reg_n_0_[6][28] ),
        .I3(\y_reg[5][31]_i_27_n_4 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_26_n_7 ),
        .O(\y[5][31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][31]_i_17 
       (.I0(\y[5][31]_i_13_n_0 ),
        .I1(\y[5][31]_i_30_n_0 ),
        .I2(\y_reg_n_0_[6][27] ),
        .I3(\y_reg[5][31]_i_27_n_5 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_29_n_4 ),
        .O(\y[5][31]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][31]_i_18 
       (.I0(\y_reg[5][31]_i_29_n_6 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_27_n_7 ),
        .I3(\y_reg_n_0_[6][25] ),
        .I4(\y[5][31]_i_36_n_0 ),
        .O(\y[5][31]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][31]_i_19 
       (.I0(\y_reg[5][31]_i_29_n_7 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_37_n_4 ),
        .I3(\y_reg_n_0_[6][24] ),
        .I4(\y[5][31]_i_38_n_0 ),
        .O(\y[5][31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][31]_i_20 
       (.I0(\y_reg[5][31]_i_39_n_4 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_37_n_5 ),
        .I3(\y_reg_n_0_[6][23] ),
        .I4(\y[5][31]_i_40_n_0 ),
        .O(\y[5][31]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFB8)) 
    \y[5][31]_i_21 
       (.I0(\y_reg[5][31]_i_39_n_5 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_37_n_6 ),
        .I3(\y_reg_n_0_[6][22] ),
        .I4(\y[5][31]_i_41_n_0 ),
        .O(\y[5][31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][31]_i_22 
       (.I0(\y[5][31]_i_18_n_0 ),
        .I1(\y[5][31]_i_31_n_0 ),
        .I2(\y_reg_n_0_[6][26] ),
        .I3(\y_reg[5][31]_i_27_n_6 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_29_n_5 ),
        .O(\y[5][31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][31]_i_23 
       (.I0(\y[5][31]_i_19_n_0 ),
        .I1(\y[5][31]_i_36_n_0 ),
        .I2(\y_reg_n_0_[6][25] ),
        .I3(\y_reg[5][31]_i_27_n_7 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_29_n_6 ),
        .O(\y[5][31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][31]_i_24 
       (.I0(\y[5][31]_i_20_n_0 ),
        .I1(\y[5][31]_i_38_n_0 ),
        .I2(\y_reg_n_0_[6][24] ),
        .I3(\y_reg[5][31]_i_37_n_4 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_29_n_7 ),
        .O(\y[5][31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6666666969696669)) 
    \y[5][31]_i_25 
       (.I0(\y[5][31]_i_21_n_0 ),
        .I1(\y[5][31]_i_40_n_0 ),
        .I2(\y_reg_n_0_[6][23] ),
        .I3(\y_reg[5][31]_i_37_n_5 ),
        .I4(sel),
        .I5(\y_reg[5][31]_i_39_n_4 ),
        .O(\y[5][31]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][31]_i_28 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(\y_reg[5][31]_i_33_n_7 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_26_n_6 ),
        .O(\y[5][31]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][31]_i_30 
       (.I0(\y_reg_n_0_[6][28] ),
        .I1(\y_reg[5][31]_i_27_n_4 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_26_n_7 ),
        .O(\y[5][31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][31]_i_31 
       (.I0(\y_reg_n_0_[6][27] ),
        .I1(\y_reg[5][31]_i_27_n_5 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_29_n_4 ),
        .O(\y[5][31]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \y[5][31]_i_32 
       (.I0(\y_reg_n_0_[6][29] ),
        .I1(\y_reg[5][31]_i_33_n_7 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_26_n_6 ),
        .O(\y[5][31]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[5][31]_i_34 
       (.I0(\y_reg[5][31]_i_26_n_5 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_33_n_6 ),
        .O(\y[5][31]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][31]_i_35 
       (.I0(\y_reg_n_0_[6][30] ),
        .I1(\y_reg[5][31]_i_33_n_6 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_26_n_5 ),
        .O(\y[5][31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][31]_i_36 
       (.I0(\y_reg_n_0_[6][26] ),
        .I1(\y_reg[5][31]_i_27_n_6 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_29_n_5 ),
        .O(\y[5][31]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][31]_i_38 
       (.I0(\y_reg_n_0_[6][25] ),
        .I1(\y_reg[5][31]_i_27_n_7 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_29_n_6 ),
        .O(\y[5][31]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hEE8E)) 
    \y[5][31]_i_4 
       (.I0(sel),
        .I1(\y_reg[5][31]_i_3_n_7 ),
        .I2(\y_reg_n_0_[6][30] ),
        .I3(\y_reg[5][31]_i_10_n_4 ),
        .O(\y[5][31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][31]_i_40 
       (.I0(\y_reg_n_0_[6][24] ),
        .I1(\y_reg[5][31]_i_37_n_4 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_29_n_7 ),
        .O(\y[5][31]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \y[5][31]_i_41 
       (.I0(\y_reg_n_0_[6][23] ),
        .I1(\y_reg[5][31]_i_37_n_5 ),
        .I2(sel),
        .I3(\y_reg[5][31]_i_39_n_4 ),
        .O(\y[5][31]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[5][31]_i_42 
       (.I0(\x_reg_n_0_[6][30] ),
        .I1(p_3_in0),
        .O(\y[5][31]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[5][31]_i_43 
       (.I0(\x_reg_n_0_[6][29] ),
        .I1(\x_reg_n_0_[6][30] ),
        .O(\y[5][31]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[5][31]_i_44 
       (.I0(\x_reg_n_0_[6][28] ),
        .I1(\x_reg_n_0_[6][29] ),
        .O(\y[5][31]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_45 
       (.I0(\y_reg[5][31]_i_26_n_7 ),
        .O(\y[5][31]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_46 
       (.I0(\y_reg[5][31]_i_29_n_4 ),
        .O(\y[5][31]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_47 
       (.I0(\y_reg[5][31]_i_29_n_5 ),
        .O(\y[5][31]_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_48 
       (.I0(\y_reg[5][31]_i_29_n_6 ),
        .O(\y[5][31]_i_48_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_49 
       (.I0(\x_reg_n_0_[6][27] ),
        .O(\y[5][31]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h0BB0)) 
    \y[5][31]_i_5 
       (.I0(\y_reg[5][31]_i_10_n_5 ),
        .I1(\y_reg_n_0_[6][29] ),
        .I2(\y_reg[5][31]_i_10_n_4 ),
        .I3(\y_reg_n_0_[6][30] ),
        .O(\y[5][31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00B2B200)) 
    \y[5][31]_i_50 
       (.I0(\x_reg_n_0_[6][24] ),
        .I1(\x_reg_n_0_[6][29] ),
        .I2(p_3_in0),
        .I3(\x_reg_n_0_[6][30] ),
        .I4(\x_reg_n_0_[6][25] ),
        .O(\y[5][31]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h007070F7F7FFFFFF)) 
    \y[5][31]_i_51 
       (.I0(\x_reg_n_0_[6][27] ),
        .I1(\x_reg_n_0_[6][29] ),
        .I2(\x_reg_n_0_[6][23] ),
        .I3(\x_reg_n_0_[6][30] ),
        .I4(\x_reg_n_0_[6][28] ),
        .I5(\y[5][31]_i_70_n_0 ),
        .O(\y[5][31]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[5][31]_i_52 
       (.I0(\x_reg_n_0_[6][27] ),
        .I1(\x_reg_n_0_[6][28] ),
        .O(\y[5][31]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'hFBB0044F)) 
    \y[5][31]_i_53 
       (.I0(\x_reg_n_0_[6][25] ),
        .I1(\x_reg_n_0_[6][30] ),
        .I2(\x_reg_n_0_[6][26] ),
        .I3(p_3_in0),
        .I4(\x_reg_n_0_[6][27] ),
        .O(\y[5][31]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h69699669)) 
    \y[5][31]_i_54 
       (.I0(\y[5][31]_i_50_n_0 ),
        .I1(p_3_in0),
        .I2(\x_reg_n_0_[6][26] ),
        .I3(\x_reg_n_0_[6][30] ),
        .I4(\x_reg_n_0_[6][25] ),
        .O(\y[5][31]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \y[5][31]_i_55 
       (.I0(\y[5][31]_i_51_n_0 ),
        .I1(\x_reg_n_0_[6][25] ),
        .I2(\x_reg_n_0_[6][30] ),
        .I3(p_3_in0),
        .I4(\x_reg_n_0_[6][29] ),
        .I5(\x_reg_n_0_[6][24] ),
        .O(\y[5][31]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_56 
       (.I0(\y_reg[5][31]_i_26_n_5 ),
        .O(\y[5][31]_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_57 
       (.I0(\y_reg[5][31]_i_26_n_6 ),
        .O(\y[5][31]_i_57_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_58 
       (.I0(\y_reg[5][31]_i_29_n_7 ),
        .O(\y[5][31]_i_58_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_59 
       (.I0(\y_reg[5][31]_i_39_n_4 ),
        .O(\y[5][31]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[5][31]_i_6 
       (.I0(\y_reg[5][31]_i_3_n_5 ),
        .I1(\y_reg[5][31]_i_3_n_4 ),
        .O(\y[5][31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_60 
       (.I0(\y_reg[5][31]_i_39_n_5 ),
        .O(\y[5][31]_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[5][31]_i_61 
       (.I0(\y_reg[5][31]_i_39_n_6 ),
        .O(\y[5][31]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h9990600060006660)) 
    \y[5][31]_i_62 
       (.I0(\x_reg_n_0_[6][23] ),
        .I1(\y[5][31]_i_71_n_0 ),
        .I2(p_3_in0),
        .I3(\x_reg_n_0_[6][22] ),
        .I4(\x_reg_n_0_[6][29] ),
        .I5(\x_reg_n_0_[6][27] ),
        .O(\y[5][31]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h7F17FF7F01001701)) 
    \y[5][31]_i_63 
       (.I0(\x_reg_n_0_[6][26] ),
        .I1(\x_reg_n_0_[6][28] ),
        .I2(\x_reg_n_0_[6][30] ),
        .I3(\x_reg_n_0_[6][21] ),
        .I4(\y[5][31]_i_72_n_0 ),
        .I5(\y[5][31]_i_73_n_0 ),
        .O(\y[5][31]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h6669699900000000)) 
    \y[5][31]_i_64 
       (.I0(\x_reg_n_0_[6][21] ),
        .I1(\y[5][31]_i_74_n_0 ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\x_reg_n_0_[6][27] ),
        .I4(\x_reg_n_0_[6][29] ),
        .I5(\y[5][31]_i_75_n_0 ),
        .O(\y[5][31]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222B2BBB)) 
    \y[5][31]_i_65 
       (.I0(\x_reg_n_0_[6][19] ),
        .I1(\y[5][31]_i_76_n_0 ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\x_reg_n_0_[6][27] ),
        .I4(\x_reg_n_0_[6][23] ),
        .I5(\y[5][31]_i_77_n_0 ),
        .O(\y[5][31]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'h96666999)) 
    \y[5][31]_i_66 
       (.I0(\y[5][31]_i_62_n_0 ),
        .I1(\y[5][31]_i_78_n_0 ),
        .I2(\x_reg_n_0_[6][30] ),
        .I3(\x_reg_n_0_[6][28] ),
        .I4(\y[5][31]_i_70_n_0 ),
        .O(\y[5][31]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h556969AAAA969655)) 
    \y[5][31]_i_67 
       (.I0(\y[5][31]_i_63_n_0 ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg_n_0_[6][29] ),
        .I3(\x_reg_n_0_[6][22] ),
        .I4(p_3_in0),
        .I5(\y[5][31]_i_79_n_0 ),
        .O(\y[5][31]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h9996966666696999)) 
    \y[5][31]_i_68 
       (.I0(\y[5][31]_i_64_n_0 ),
        .I1(\y[5][31]_i_80_n_0 ),
        .I2(\x_reg_n_0_[6][30] ),
        .I3(\x_reg_n_0_[6][28] ),
        .I4(\x_reg_n_0_[6][26] ),
        .I5(\y[5][31]_i_73_n_0 ),
        .O(\y[5][31]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][31]_i_69 
       (.I0(\y[5][31]_i_65_n_0 ),
        .I1(\y[5][31]_i_75_n_0 ),
        .I2(\y[5][31]_i_81_n_0 ),
        .O(\y[5][31]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \y[5][31]_i_7 
       (.I0(\y_reg[5][31]_i_3_n_6 ),
        .I1(\y_reg[5][31]_i_3_n_5 ),
        .O(\y[5][31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][31]_i_70 
       (.I0(\x_reg_n_0_[6][24] ),
        .I1(\x_reg_n_0_[6][29] ),
        .I2(p_3_in0),
        .O(\y[5][31]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y[5][31]_i_71 
       (.I0(\x_reg_n_0_[6][28] ),
        .I1(\x_reg_n_0_[6][30] ),
        .O(\y[5][31]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \y[5][31]_i_72 
       (.I0(\x_reg_n_0_[6][25] ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg_n_0_[6][29] ),
        .O(\y[5][31]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \y[5][31]_i_73 
       (.I0(p_3_in0),
        .I1(\x_reg_n_0_[6][22] ),
        .I2(\x_reg_n_0_[6][29] ),
        .I3(\x_reg_n_0_[6][27] ),
        .O(\y[5][31]_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][31]_i_74 
       (.I0(\x_reg_n_0_[6][30] ),
        .I1(\x_reg_n_0_[6][28] ),
        .I2(\x_reg_n_0_[6][26] ),
        .O(\y[5][31]_i_74_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \y[5][31]_i_75 
       (.I0(\x_reg_n_0_[6][26] ),
        .I1(\x_reg_n_0_[6][28] ),
        .I2(\x_reg_n_0_[6][24] ),
        .I3(\x_reg_n_0_[6][20] ),
        .I4(\y[5][31]_i_82_n_0 ),
        .O(\y[5][31]_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][31]_i_76 
       (.I0(\x_reg_n_0_[6][24] ),
        .I1(\x_reg_n_0_[6][28] ),
        .I2(\x_reg_n_0_[6][26] ),
        .O(\y[5][31]_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \y[5][31]_i_77 
       (.I0(\y[5][31]_i_82_n_0 ),
        .I1(\x_reg_n_0_[6][20] ),
        .I2(\x_reg_n_0_[6][24] ),
        .I3(\x_reg_n_0_[6][28] ),
        .I4(\x_reg_n_0_[6][26] ),
        .O(\y[5][31]_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h088F8F08)) 
    \y[5][31]_i_78 
       (.I0(\x_reg_n_0_[6][27] ),
        .I1(\x_reg_n_0_[6][29] ),
        .I2(\x_reg_n_0_[6][23] ),
        .I3(\x_reg_n_0_[6][30] ),
        .I4(\x_reg_n_0_[6][28] ),
        .O(\y[5][31]_i_78_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h87787887)) 
    \y[5][31]_i_79 
       (.I0(\x_reg_n_0_[6][29] ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg_n_0_[6][28] ),
        .I3(\x_reg_n_0_[6][30] ),
        .I4(\x_reg_n_0_[6][23] ),
        .O(\y[5][31]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hFBB0044F)) 
    \y[5][31]_i_8 
       (.I0(\y_reg[5][31]_i_10_n_4 ),
        .I1(\y_reg_n_0_[6][30] ),
        .I2(\y_reg[5][31]_i_3_n_7 ),
        .I3(sel),
        .I4(\y_reg[5][31]_i_3_n_6 ),
        .O(\y[5][31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h888E8EEE)) 
    \y[5][31]_i_80 
       (.I0(\y[5][31]_i_74_n_0 ),
        .I1(\x_reg_n_0_[6][21] ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\x_reg_n_0_[6][27] ),
        .I4(\x_reg_n_0_[6][29] ),
        .O(\y[5][31]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \y[5][31]_i_81 
       (.I0(\x_reg_n_0_[6][29] ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg_n_0_[6][25] ),
        .I3(\y[5][31]_i_74_n_0 ),
        .I4(\x_reg_n_0_[6][21] ),
        .O(\y[5][31]_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \y[5][31]_i_82 
       (.I0(\x_reg_n_0_[6][29] ),
        .I1(\x_reg_n_0_[6][27] ),
        .I2(\x_reg_n_0_[6][25] ),
        .O(\y[5][31]_i_82_n_0 ));
  LUT5 #(
    .INIT(32'h69699669)) 
    \y[5][31]_i_9 
       (.I0(\y[5][31]_i_5_n_0 ),
        .I1(sel),
        .I2(\y_reg[5][31]_i_3_n_7 ),
        .I3(\y_reg_n_0_[6][30] ),
        .I4(\y_reg[5][31]_i_10_n_4 ),
        .O(\y[5][31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][3]_i_10 
       (.I0(\y_reg_n_0_[6][11] ),
        .I1(\y_reg[5][7]_i_12_n_5 ),
        .I2(\y_reg_n_0_[6][5] ),
        .O(\y[5][3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][3]_i_2 
       (.I0(\y_reg_n_0_[6][10] ),
        .I1(\y_reg[5][7]_i_12_n_6 ),
        .I2(\y_reg_n_0_[6][4] ),
        .I3(\y[5][3]_i_10_n_0 ),
        .I4(\y_reg_n_0_[6][13] ),
        .O(\y[5][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F880F88080F8)) 
    \y[5][3]_i_3 
       (.I0(\y_reg_n_0_[6][11] ),
        .I1(\y_reg_n_0_[6][9] ),
        .I2(\y_reg_n_0_[6][12] ),
        .I3(\y_reg_n_0_[6][10] ),
        .I4(\y_reg[5][7]_i_12_n_6 ),
        .I5(\y_reg_n_0_[6][4] ),
        .O(\y[5][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \y[5][3]_i_4 
       (.I0(\y_reg_n_0_[6][4] ),
        .I1(\y_reg[5][7]_i_12_n_6 ),
        .I2(\y_reg_n_0_[6][10] ),
        .I3(\y_reg_n_0_[6][9] ),
        .I4(\y_reg_n_0_[6][11] ),
        .I5(\y_reg_n_0_[6][12] ),
        .O(\y[5][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y[5][3]_i_5 
       (.I0(\y_reg_n_0_[6][9] ),
        .I1(\y_reg_n_0_[6][11] ),
        .O(\y[5][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][3]_i_6 
       (.I0(\y[5][3]_i_2_n_0 ),
        .I1(\y_reg_n_0_[6][11] ),
        .I2(\y_reg[5][7]_i_12_n_5 ),
        .I3(\y_reg_n_0_[6][5] ),
        .I4(\y_reg_n_0_[6][14] ),
        .I5(\y[5][7]_i_14_n_0 ),
        .O(\y[5][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][3]_i_7 
       (.I0(\y[5][3]_i_3_n_0 ),
        .I1(\y_reg_n_0_[6][10] ),
        .I2(\y_reg[5][7]_i_12_n_6 ),
        .I3(\y_reg_n_0_[6][4] ),
        .I4(\y_reg_n_0_[6][13] ),
        .I5(\y[5][3]_i_10_n_0 ),
        .O(\y[5][3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \y[5][3]_i_8 
       (.I0(\y[5][3]_i_4_n_0 ),
        .I1(\y_reg_n_0_[6][3] ),
        .I2(\y_reg[5][7]_i_12_n_7 ),
        .O(\y[5][3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \y[5][3]_i_9 
       (.I0(\y_reg[5][7]_i_12_n_7 ),
        .I1(\y_reg_n_0_[6][3] ),
        .I2(\y_reg_n_0_[6][11] ),
        .I3(\y_reg_n_0_[6][9] ),
        .O(\y[5][3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][7]_i_10 
       (.I0(\y_reg_n_0_[6][15] ),
        .I1(\y_reg[5][11]_i_12_n_5 ),
        .I2(\y_reg_n_0_[6][9] ),
        .O(\y[5][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][7]_i_11 
       (.I0(\y_reg_n_0_[6][14] ),
        .I1(\y_reg[5][11]_i_12_n_6 ),
        .I2(\y_reg_n_0_[6][8] ),
        .O(\y[5][7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][7]_i_13 
       (.I0(\y_reg_n_0_[6][13] ),
        .I1(\y_reg[5][11]_i_12_n_7 ),
        .I2(\y_reg_n_0_[6][7] ),
        .O(\y[5][7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][7]_i_14 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\y_reg[5][7]_i_12_n_4 ),
        .I2(\y_reg_n_0_[6][6] ),
        .O(\y[5][7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \y[5][7]_i_15 
       (.I0(\y_reg_n_0_[6][2] ),
        .I1(\y_reg_n_0_[6][14] ),
        .I2(\y_reg[5][11]_i_23_n_6 ),
        .I3(sel),
        .I4(\y_reg[5][11]_i_24_n_5 ),
        .O(\y[5][7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFE2E200)) 
    \y[5][7]_i_16 
       (.I0(\y_reg[5][11]_i_23_n_7 ),
        .I1(sel),
        .I2(\y_reg[5][11]_i_24_n_6 ),
        .I3(\y_reg_n_0_[6][13] ),
        .I4(\y_reg_n_0_[6][1] ),
        .O(\y[5][7]_i_16_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \y[5][7]_i_17 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\y_reg[5][11]_i_24_n_7 ),
        .I2(\y_reg_n_0_[6][0] ),
        .O(\y[5][7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][7]_i_18 
       (.I0(\y[5][7]_i_15_n_0 ),
        .I1(\y_reg_n_0_[6][15] ),
        .I2(\y_reg[5][11]_i_23_n_5 ),
        .I3(sel),
        .I4(\y_reg[5][11]_i_24_n_4 ),
        .I5(\y_reg_n_0_[6][3] ),
        .O(\y[5][7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][7]_i_19 
       (.I0(\y[5][7]_i_16_n_0 ),
        .I1(\y_reg_n_0_[6][14] ),
        .I2(\y_reg[5][11]_i_23_n_6 ),
        .I3(sel),
        .I4(\y_reg[5][11]_i_24_n_5 ),
        .I5(\y_reg_n_0_[6][2] ),
        .O(\y[5][7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][7]_i_2 
       (.I0(\y_reg_n_0_[6][14] ),
        .I1(\y_reg[5][11]_i_12_n_6 ),
        .I2(\y_reg_n_0_[6][8] ),
        .I3(\y[5][7]_i_10_n_0 ),
        .I4(\y_reg_n_0_[6][17] ),
        .O(\y[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \y[5][7]_i_20 
       (.I0(\y[5][7]_i_17_n_0 ),
        .I1(\y_reg_n_0_[6][13] ),
        .I2(\y_reg[5][11]_i_23_n_7 ),
        .I3(sel),
        .I4(\y_reg[5][11]_i_24_n_6 ),
        .I5(\y_reg_n_0_[6][1] ),
        .O(\y[5][7]_i_20_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \y[5][7]_i_21 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\y_reg[5][11]_i_24_n_7 ),
        .I2(\y_reg_n_0_[6][0] ),
        .O(\y[5][7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][7]_i_3 
       (.I0(\y_reg_n_0_[6][13] ),
        .I1(\y_reg[5][11]_i_12_n_7 ),
        .I2(\y_reg_n_0_[6][7] ),
        .I3(\y[5][7]_i_11_n_0 ),
        .I4(\y_reg_n_0_[6][16] ),
        .O(\y[5][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][7]_i_4 
       (.I0(\y_reg_n_0_[6][12] ),
        .I1(\y_reg[5][7]_i_12_n_4 ),
        .I2(\y_reg_n_0_[6][6] ),
        .I3(\y[5][7]_i_13_n_0 ),
        .I4(\y_reg_n_0_[6][15] ),
        .O(\y[5][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8EFF008E)) 
    \y[5][7]_i_5 
       (.I0(\y_reg_n_0_[6][11] ),
        .I1(\y_reg[5][7]_i_12_n_5 ),
        .I2(\y_reg_n_0_[6][5] ),
        .I3(\y[5][7]_i_14_n_0 ),
        .I4(\y_reg_n_0_[6][14] ),
        .O(\y[5][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][7]_i_6 
       (.I0(\y[5][7]_i_2_n_0 ),
        .I1(\y_reg_n_0_[6][15] ),
        .I2(\y_reg[5][11]_i_12_n_5 ),
        .I3(\y_reg_n_0_[6][9] ),
        .I4(\y_reg_n_0_[6][18] ),
        .I5(\y[5][11]_i_14_n_0 ),
        .O(\y[5][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][7]_i_7 
       (.I0(\y[5][7]_i_3_n_0 ),
        .I1(\y_reg_n_0_[6][14] ),
        .I2(\y_reg[5][11]_i_12_n_6 ),
        .I3(\y_reg_n_0_[6][8] ),
        .I4(\y_reg_n_0_[6][17] ),
        .I5(\y[5][7]_i_10_n_0 ),
        .O(\y[5][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][7]_i_8 
       (.I0(\y[5][7]_i_4_n_0 ),
        .I1(\y_reg_n_0_[6][13] ),
        .I2(\y_reg[5][11]_i_12_n_7 ),
        .I3(\y_reg_n_0_[6][7] ),
        .I4(\y_reg_n_0_[6][16] ),
        .I5(\y[5][7]_i_11_n_0 ),
        .O(\y[5][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h95A96A566A5695A9)) 
    \y[5][7]_i_9 
       (.I0(\y[5][7]_i_5_n_0 ),
        .I1(\y_reg_n_0_[6][12] ),
        .I2(\y_reg[5][7]_i_12_n_4 ),
        .I3(\y_reg_n_0_[6][6] ),
        .I4(\y_reg_n_0_[6][15] ),
        .I5(\y[5][7]_i_13_n_0 ),
        .O(\y[5][7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][0]_i_1 
       (.I0(y_in_IBUF[0]),
        .I1(range45),
        .I2(x_in_IBUF[0]),
        .O(\y[6][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][10]_i_1 
       (.I0(y_in_IBUF[10]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][12]_i_2_n_6 ),
        .I4(\y[6][10]_i_2_n_0 ),
        .O(\y[6][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][10]_i_2 
       (.I0(x_in_IBUF[10]),
        .I1(\x_reg[6][12]_i_2_n_6 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][11]_i_1 
       (.I0(y_in_IBUF[11]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][12]_i_2_n_5 ),
        .I4(\y[6][11]_i_2_n_0 ),
        .O(\y[6][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][11]_i_2 
       (.I0(x_in_IBUF[11]),
        .I1(\x_reg[6][12]_i_2_n_5 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][12]_i_1 
       (.I0(y_in_IBUF[12]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][12]_i_2_n_4 ),
        .I4(\y[6][12]_i_3_n_0 ),
        .O(\y[6][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][12]_i_3 
       (.I0(x_in_IBUF[12]),
        .I1(\x_reg[6][12]_i_2_n_4 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][12]_i_4 
       (.I0(y_in_IBUF[12]),
        .O(\y[6][12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][12]_i_5 
       (.I0(y_in_IBUF[11]),
        .O(\y[6][12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][12]_i_6 
       (.I0(y_in_IBUF[10]),
        .O(\y[6][12]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][12]_i_7 
       (.I0(y_in_IBUF[9]),
        .O(\y[6][12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][13]_i_1 
       (.I0(y_in_IBUF[13]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][16]_i_2_n_7 ),
        .I4(\y[6][13]_i_2_n_0 ),
        .O(\y[6][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][13]_i_2 
       (.I0(x_in_IBUF[13]),
        .I1(\x_reg[6][16]_i_2_n_7 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][14]_i_1 
       (.I0(y_in_IBUF[14]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][16]_i_2_n_6 ),
        .I4(\y[6][14]_i_2_n_0 ),
        .O(\y[6][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][14]_i_2 
       (.I0(x_in_IBUF[14]),
        .I1(\x_reg[6][16]_i_2_n_6 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][15]_i_1 
       (.I0(y_in_IBUF[15]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][16]_i_2_n_5 ),
        .I4(\y[6][15]_i_2_n_0 ),
        .O(\y[6][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][15]_i_2 
       (.I0(x_in_IBUF[15]),
        .I1(\x_reg[6][16]_i_2_n_5 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][16]_i_1 
       (.I0(y_in_IBUF[16]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][16]_i_2_n_4 ),
        .I4(\y[6][16]_i_3_n_0 ),
        .O(\y[6][16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][16]_i_3 
       (.I0(x_in_IBUF[16]),
        .I1(\x_reg[6][16]_i_2_n_4 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][16]_i_4 
       (.I0(y_in_IBUF[16]),
        .O(\y[6][16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][16]_i_5 
       (.I0(y_in_IBUF[15]),
        .O(\y[6][16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][16]_i_6 
       (.I0(y_in_IBUF[14]),
        .O(\y[6][16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][16]_i_7 
       (.I0(y_in_IBUF[13]),
        .O(\y[6][16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][17]_i_1 
       (.I0(y_in_IBUF[17]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][20]_i_2_n_7 ),
        .I4(\y[6][17]_i_2_n_0 ),
        .O(\y[6][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][17]_i_2 
       (.I0(x_in_IBUF[17]),
        .I1(\x_reg[6][20]_i_2_n_7 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][18]_i_1 
       (.I0(y_in_IBUF[18]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][20]_i_2_n_6 ),
        .I4(\y[6][18]_i_2_n_0 ),
        .O(\y[6][18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][18]_i_2 
       (.I0(x_in_IBUF[18]),
        .I1(\x_reg[6][20]_i_2_n_6 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][19]_i_1 
       (.I0(y_in_IBUF[19]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][20]_i_2_n_5 ),
        .I4(\y[6][19]_i_2_n_0 ),
        .O(\y[6][19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][19]_i_2 
       (.I0(x_in_IBUF[19]),
        .I1(\x_reg[6][20]_i_2_n_5 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][1]_i_1 
       (.I0(y_in_IBUF[1]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][4]_i_2_n_7 ),
        .I4(\y[6][1]_i_2_n_0 ),
        .O(\y[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][1]_i_2 
       (.I0(x_in_IBUF[1]),
        .I1(\x_reg[6][4]_i_2_n_7 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][20]_i_1 
       (.I0(y_in_IBUF[20]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][20]_i_2_n_4 ),
        .I4(\y[6][20]_i_3_n_0 ),
        .O(\y[6][20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][20]_i_3 
       (.I0(x_in_IBUF[20]),
        .I1(\x_reg[6][20]_i_2_n_4 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][20]_i_4 
       (.I0(y_in_IBUF[20]),
        .O(\y[6][20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][20]_i_5 
       (.I0(y_in_IBUF[19]),
        .O(\y[6][20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][20]_i_6 
       (.I0(y_in_IBUF[18]),
        .O(\y[6][20]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][20]_i_7 
       (.I0(y_in_IBUF[17]),
        .O(\y[6][20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][21]_i_1 
       (.I0(y_in_IBUF[21]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][24]_i_2_n_7 ),
        .I4(\y[6][21]_i_2_n_0 ),
        .O(\y[6][21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][21]_i_2 
       (.I0(x_in_IBUF[21]),
        .I1(\x_reg[6][24]_i_2_n_7 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][22]_i_1 
       (.I0(y_in_IBUF[22]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][24]_i_2_n_6 ),
        .I4(\y[6][22]_i_2_n_0 ),
        .O(\y[6][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][22]_i_2 
       (.I0(x_in_IBUF[22]),
        .I1(\x_reg[6][24]_i_2_n_6 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][23]_i_1 
       (.I0(y_in_IBUF[23]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][24]_i_2_n_5 ),
        .I4(\y[6][23]_i_2_n_0 ),
        .O(\y[6][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][23]_i_2 
       (.I0(x_in_IBUF[23]),
        .I1(\x_reg[6][24]_i_2_n_5 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][24]_i_1 
       (.I0(y_in_IBUF[24]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][24]_i_2_n_4 ),
        .I4(\y[6][24]_i_3_n_0 ),
        .O(\y[6][24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][24]_i_3 
       (.I0(x_in_IBUF[24]),
        .I1(\x_reg[6][24]_i_2_n_4 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][24]_i_4 
       (.I0(y_in_IBUF[24]),
        .O(\y[6][24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][24]_i_5 
       (.I0(y_in_IBUF[23]),
        .O(\y[6][24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][24]_i_6 
       (.I0(y_in_IBUF[22]),
        .O(\y[6][24]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][24]_i_7 
       (.I0(y_in_IBUF[21]),
        .O(\y[6][24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][25]_i_1 
       (.I0(y_in_IBUF[25]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][28]_i_2_n_7 ),
        .I4(\y[6][25]_i_2_n_0 ),
        .O(\y[6][25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][25]_i_2 
       (.I0(x_in_IBUF[25]),
        .I1(\x_reg[6][28]_i_2_n_7 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][26]_i_1 
       (.I0(y_in_IBUF[26]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][28]_i_2_n_6 ),
        .I4(\y[6][26]_i_2_n_0 ),
        .O(\y[6][26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][26]_i_2 
       (.I0(x_in_IBUF[26]),
        .I1(\x_reg[6][28]_i_2_n_6 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][27]_i_1 
       (.I0(y_in_IBUF[27]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][28]_i_2_n_5 ),
        .I4(\y[6][27]_i_2_n_0 ),
        .O(\y[6][27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][27]_i_2 
       (.I0(x_in_IBUF[27]),
        .I1(\x_reg[6][28]_i_2_n_5 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][28]_i_1 
       (.I0(y_in_IBUF[28]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][28]_i_2_n_4 ),
        .I4(\y[6][28]_i_3_n_0 ),
        .O(\y[6][28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][28]_i_3 
       (.I0(x_in_IBUF[28]),
        .I1(\x_reg[6][28]_i_2_n_4 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][28]_i_4 
       (.I0(y_in_IBUF[28]),
        .O(\y[6][28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][28]_i_5 
       (.I0(y_in_IBUF[27]),
        .O(\y[6][28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][28]_i_6 
       (.I0(y_in_IBUF[26]),
        .O(\y[6][28]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][28]_i_7 
       (.I0(y_in_IBUF[25]),
        .O(\y[6][28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][29]_i_1 
       (.I0(y_in_IBUF[29]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][31]_i_2_n_7 ),
        .I4(\y[6][29]_i_2_n_0 ),
        .O(\y[6][29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][29]_i_2 
       (.I0(x_in_IBUF[29]),
        .I1(\y_reg[6][31]_i_4_n_7 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][2]_i_1 
       (.I0(y_in_IBUF[2]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][4]_i_2_n_6 ),
        .I4(\y[6][2]_i_2_n_0 ),
        .O(\y[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][2]_i_2 
       (.I0(x_in_IBUF[2]),
        .I1(\x_reg[6][4]_i_2_n_6 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][30]_i_1 
       (.I0(y_in_IBUF[30]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][31]_i_2_n_6 ),
        .I4(\y[6][30]_i_2_n_0 ),
        .O(\y[6][30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][30]_i_2 
       (.I0(x_in_IBUF[30]),
        .I1(\y_reg[6][31]_i_4_n_6 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAFACC3C0)) 
    \y[6][31]_i_1 
       (.I0(\y_reg[6][31]_i_2_n_5 ),
        .I1(y_in_IBUF[31]),
        .I2(range45),
        .I3(\y_reg[6][31]_i_4_n_5 ),
        .I4(x_in_IBUF[31]),
        .O(\y[6][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_10 
       (.I0(abs_x_in[28]),
        .I1(abs_y_in[28]),
        .I2(abs_y_in[29]),
        .I3(\y_reg[6][31]_i_4_n_7 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[29]),
        .O(\y[6][31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_11 
       (.I0(abs_x_in[26]),
        .I1(abs_y_in[26]),
        .I2(abs_y_in[27]),
        .I3(\x_reg[6][28]_i_2_n_5 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[27]),
        .O(\y[6][31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_12 
       (.I0(abs_x_in[24]),
        .I1(abs_y_in[24]),
        .I2(abs_y_in[25]),
        .I3(\x_reg[6][28]_i_2_n_7 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[25]),
        .O(\y[6][31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8777000000008777)) 
    \y[6][31]_i_13 
       (.I0(y_in_IBUF[31]),
        .I1(\y_reg[6][31]_i_2_n_5 ),
        .I2(\y_reg[6][31]_i_4_n_5 ),
        .I3(x_in_IBUF[31]),
        .I4(abs_x_in[30]),
        .I5(abs_y_in[30]),
        .O(\y[6][31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_14 
       (.I0(\y[6][31]_i_33_n_0 ),
        .I1(x_in_IBUF[28]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][28]_i_2_n_4 ),
        .I4(abs_y_in[28]),
        .O(\y[6][31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_15 
       (.I0(\y[6][31]_i_34_n_0 ),
        .I1(x_in_IBUF[26]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][28]_i_2_n_6 ),
        .I4(abs_y_in[26]),
        .O(\y[6][31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_16 
       (.I0(\y[6][31]_i_35_n_0 ),
        .I1(x_in_IBUF[24]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][24]_i_2_n_4 ),
        .I4(abs_y_in[24]),
        .O(\y[6][31]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][31]_i_17 
       (.I0(x_in_IBUF[31]),
        .O(\y[6][31]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][31]_i_18 
       (.I0(x_in_IBUF[30]),
        .O(\y[6][31]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][31]_i_19 
       (.I0(x_in_IBUF[29]),
        .O(\y[6][31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_21 
       (.I0(abs_x_in[22]),
        .I1(abs_y_in[22]),
        .I2(abs_y_in[23]),
        .I3(\x_reg[6][24]_i_2_n_5 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[23]),
        .O(\y[6][31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_22 
       (.I0(abs_x_in[20]),
        .I1(abs_y_in[20]),
        .I2(abs_y_in[21]),
        .I3(\x_reg[6][24]_i_2_n_7 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[21]),
        .O(\y[6][31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_23 
       (.I0(abs_x_in[18]),
        .I1(abs_y_in[18]),
        .I2(abs_y_in[19]),
        .I3(\x_reg[6][20]_i_2_n_5 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[19]),
        .O(\y[6][31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_24 
       (.I0(abs_x_in[16]),
        .I1(abs_y_in[16]),
        .I2(abs_y_in[17]),
        .I3(\x_reg[6][20]_i_2_n_7 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[17]),
        .O(\y[6][31]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_25 
       (.I0(\y[6][31]_i_49_n_0 ),
        .I1(x_in_IBUF[22]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][24]_i_2_n_6 ),
        .I4(abs_y_in[22]),
        .O(\y[6][31]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_26 
       (.I0(\y[6][31]_i_50_n_0 ),
        .I1(x_in_IBUF[20]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][20]_i_2_n_4 ),
        .I4(abs_y_in[20]),
        .O(\y[6][31]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_27 
       (.I0(\y[6][31]_i_51_n_0 ),
        .I1(x_in_IBUF[18]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][20]_i_2_n_6 ),
        .I4(abs_y_in[18]),
        .O(\y[6][31]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_28 
       (.I0(\y[6][31]_i_52_n_0 ),
        .I1(x_in_IBUF[16]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][16]_i_2_n_4 ),
        .I4(abs_y_in[16]),
        .O(\y[6][31]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_29 
       (.I0(\y_reg[6][31]_i_4_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[30]),
        .O(abs_x_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_30 
       (.I0(\x_reg[6][28]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[28]),
        .O(abs_x_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_31 
       (.I0(\x_reg[6][28]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[26]),
        .O(abs_x_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_32 
       (.I0(\x_reg[6][24]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[24]),
        .O(abs_x_in[24]));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_33 
       (.I0(y_in_IBUF[29]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][31]_i_2_n_7 ),
        .I3(x_in_IBUF[29]),
        .I4(x_in_IBUF[31]),
        .I5(\y_reg[6][31]_i_4_n_7 ),
        .O(\y[6][31]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_34 
       (.I0(y_in_IBUF[27]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][28]_i_2_n_5 ),
        .I3(x_in_IBUF[27]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][28]_i_2_n_5 ),
        .O(\y[6][31]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_35 
       (.I0(y_in_IBUF[25]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][28]_i_2_n_7 ),
        .I3(x_in_IBUF[25]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][28]_i_2_n_7 ),
        .O(\y[6][31]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_37 
       (.I0(abs_x_in[14]),
        .I1(abs_y_in[14]),
        .I2(abs_y_in[15]),
        .I3(\x_reg[6][16]_i_2_n_5 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[15]),
        .O(\y[6][31]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_38 
       (.I0(abs_x_in[12]),
        .I1(abs_y_in[12]),
        .I2(abs_y_in[13]),
        .I3(\x_reg[6][16]_i_2_n_7 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[13]),
        .O(\y[6][31]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_39 
       (.I0(abs_x_in[10]),
        .I1(abs_y_in[10]),
        .I2(abs_y_in[11]),
        .I3(\x_reg[6][12]_i_2_n_5 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[11]),
        .O(\y[6][31]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_40 
       (.I0(abs_x_in[8]),
        .I1(abs_y_in[8]),
        .I2(abs_y_in[9]),
        .I3(\x_reg[6][12]_i_2_n_7 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[9]),
        .O(\y[6][31]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_41 
       (.I0(\y[6][31]_i_65_n_0 ),
        .I1(x_in_IBUF[14]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][16]_i_2_n_6 ),
        .I4(abs_y_in[14]),
        .O(\y[6][31]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_42 
       (.I0(\y[6][31]_i_66_n_0 ),
        .I1(x_in_IBUF[12]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][12]_i_2_n_4 ),
        .I4(abs_y_in[12]),
        .O(\y[6][31]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_43 
       (.I0(\y[6][31]_i_67_n_0 ),
        .I1(x_in_IBUF[10]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][12]_i_2_n_6 ),
        .I4(abs_y_in[10]),
        .O(\y[6][31]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_44 
       (.I0(\y[6][31]_i_68_n_0 ),
        .I1(x_in_IBUF[8]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][8]_i_2_n_4 ),
        .I4(abs_y_in[8]),
        .O(\y[6][31]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_45 
       (.I0(\x_reg[6][24]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[22]),
        .O(abs_x_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_46 
       (.I0(\x_reg[6][20]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[20]),
        .O(abs_x_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_47 
       (.I0(\x_reg[6][20]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[18]),
        .O(abs_x_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_48 
       (.I0(\x_reg[6][16]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[16]),
        .O(abs_x_in[16]));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_49 
       (.I0(y_in_IBUF[23]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][24]_i_2_n_5 ),
        .I3(x_in_IBUF[23]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][24]_i_2_n_5 ),
        .O(\y[6][31]_i_49_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][31]_i_5 
       (.I0(y_in_IBUF[31]),
        .O(\y[6][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_50 
       (.I0(y_in_IBUF[21]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][24]_i_2_n_7 ),
        .I3(x_in_IBUF[21]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][24]_i_2_n_7 ),
        .O(\y[6][31]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_51 
       (.I0(y_in_IBUF[19]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][20]_i_2_n_5 ),
        .I3(x_in_IBUF[19]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][20]_i_2_n_5 ),
        .O(\y[6][31]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_52 
       (.I0(y_in_IBUF[17]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][20]_i_2_n_7 ),
        .I3(x_in_IBUF[17]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][20]_i_2_n_7 ),
        .O(\y[6][31]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_53 
       (.I0(abs_x_in[6]),
        .I1(abs_y_in[6]),
        .I2(abs_y_in[7]),
        .I3(\x_reg[6][8]_i_2_n_5 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[7]),
        .O(\y[6][31]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_54 
       (.I0(abs_x_in[4]),
        .I1(abs_y_in[4]),
        .I2(abs_y_in[5]),
        .I3(\x_reg[6][8]_i_2_n_7 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[5]),
        .O(\y[6][31]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_55 
       (.I0(abs_x_in[2]),
        .I1(abs_y_in[2]),
        .I2(abs_y_in[3]),
        .I3(\x_reg[6][4]_i_2_n_5 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[3]),
        .O(\y[6][31]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    \y[6][31]_i_56 
       (.I0(x_in_IBUF[0]),
        .I1(y_in_IBUF[0]),
        .I2(abs_y_in[1]),
        .I3(\x_reg[6][4]_i_2_n_7 ),
        .I4(x_in_IBUF[31]),
        .I5(x_in_IBUF[1]),
        .O(\y[6][31]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_57 
       (.I0(\y[6][31]_i_72_n_0 ),
        .I1(x_in_IBUF[6]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][8]_i_2_n_6 ),
        .I4(abs_y_in[6]),
        .O(\y[6][31]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_58 
       (.I0(\y[6][31]_i_73_n_0 ),
        .I1(x_in_IBUF[4]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][4]_i_2_n_4 ),
        .I4(abs_y_in[4]),
        .O(\y[6][31]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    \y[6][31]_i_59 
       (.I0(\y[6][31]_i_74_n_0 ),
        .I1(x_in_IBUF[2]),
        .I2(x_in_IBUF[31]),
        .I3(\x_reg[6][4]_i_2_n_6 ),
        .I4(abs_y_in[2]),
        .O(\y[6][31]_i_59_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][31]_i_6 
       (.I0(y_in_IBUF[30]),
        .O(\y[6][31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \y[6][31]_i_60 
       (.I0(\y[6][31]_i_75_n_0 ),
        .I1(y_in_IBUF[0]),
        .I2(x_in_IBUF[0]),
        .O(\y[6][31]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_61 
       (.I0(\x_reg[6][16]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[14]),
        .O(abs_x_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_62 
       (.I0(\x_reg[6][12]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[12]),
        .O(abs_x_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_63 
       (.I0(\x_reg[6][12]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[10]),
        .O(abs_x_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_64 
       (.I0(\x_reg[6][8]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[8]),
        .O(abs_x_in[8]));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_65 
       (.I0(y_in_IBUF[15]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][16]_i_2_n_5 ),
        .I3(x_in_IBUF[15]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][16]_i_2_n_5 ),
        .O(\y[6][31]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_66 
       (.I0(y_in_IBUF[13]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][16]_i_2_n_7 ),
        .I3(x_in_IBUF[13]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][16]_i_2_n_7 ),
        .O(\y[6][31]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_67 
       (.I0(y_in_IBUF[11]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][12]_i_2_n_5 ),
        .I3(x_in_IBUF[11]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][12]_i_2_n_5 ),
        .O(\y[6][31]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_68 
       (.I0(y_in_IBUF[9]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][12]_i_2_n_7 ),
        .I3(x_in_IBUF[9]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][12]_i_2_n_7 ),
        .O(\y[6][31]_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_69 
       (.I0(\x_reg[6][8]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[6]),
        .O(abs_x_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][31]_i_7 
       (.I0(y_in_IBUF[29]),
        .O(\y[6][31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_70 
       (.I0(\x_reg[6][4]_i_2_n_4 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[4]),
        .O(abs_x_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \y[6][31]_i_71 
       (.I0(\x_reg[6][4]_i_2_n_6 ),
        .I1(x_in_IBUF[31]),
        .I2(x_in_IBUF[2]),
        .O(abs_x_in[2]));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_72 
       (.I0(y_in_IBUF[7]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][8]_i_2_n_5 ),
        .I3(x_in_IBUF[7]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][8]_i_2_n_5 ),
        .O(\y[6][31]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_73 
       (.I0(y_in_IBUF[5]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][8]_i_2_n_7 ),
        .I3(x_in_IBUF[5]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][8]_i_2_n_7 ),
        .O(\y[6][31]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_74 
       (.I0(y_in_IBUF[3]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][4]_i_2_n_5 ),
        .I3(x_in_IBUF[3]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][4]_i_2_n_5 ),
        .O(\y[6][31]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \y[6][31]_i_75 
       (.I0(y_in_IBUF[1]),
        .I1(y_in_IBUF[31]),
        .I2(\y_reg[6][4]_i_2_n_7 ),
        .I3(x_in_IBUF[1]),
        .I4(x_in_IBUF[31]),
        .I5(\x_reg[6][4]_i_2_n_7 ),
        .O(\y[6][31]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h088808888FFF0888)) 
    \y[6][31]_i_9 
       (.I0(y_in_IBUF[31]),
        .I1(\y_reg[6][31]_i_2_n_5 ),
        .I2(\y_reg[6][31]_i_4_n_5 ),
        .I3(x_in_IBUF[31]),
        .I4(abs_x_in[30]),
        .I5(abs_y_in[30]),
        .O(\y[6][31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][3]_i_1 
       (.I0(y_in_IBUF[3]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][4]_i_2_n_5 ),
        .I4(\y[6][3]_i_2_n_0 ),
        .O(\y[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][3]_i_2 
       (.I0(x_in_IBUF[3]),
        .I1(\x_reg[6][4]_i_2_n_5 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][4]_i_1 
       (.I0(y_in_IBUF[4]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][4]_i_2_n_4 ),
        .I4(\y[6][4]_i_3_n_0 ),
        .O(\y[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][4]_i_3 
       (.I0(x_in_IBUF[4]),
        .I1(\x_reg[6][4]_i_2_n_4 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][4]_i_4 
       (.I0(y_in_IBUF[0]),
        .O(\y[6][4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][4]_i_5 
       (.I0(y_in_IBUF[4]),
        .O(\y[6][4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][4]_i_6 
       (.I0(y_in_IBUF[3]),
        .O(\y[6][4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][4]_i_7 
       (.I0(y_in_IBUF[2]),
        .O(\y[6][4]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][4]_i_8 
       (.I0(y_in_IBUF[1]),
        .O(\y[6][4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][5]_i_1 
       (.I0(y_in_IBUF[5]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][8]_i_2_n_7 ),
        .I4(\y[6][5]_i_2_n_0 ),
        .O(\y[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][5]_i_2 
       (.I0(x_in_IBUF[5]),
        .I1(\x_reg[6][8]_i_2_n_7 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][6]_i_1 
       (.I0(y_in_IBUF[6]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][8]_i_2_n_6 ),
        .I4(\y[6][6]_i_2_n_0 ),
        .O(\y[6][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][6]_i_2 
       (.I0(x_in_IBUF[6]),
        .I1(\x_reg[6][8]_i_2_n_6 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][7]_i_1 
       (.I0(y_in_IBUF[7]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][8]_i_2_n_5 ),
        .I4(\y[6][7]_i_2_n_0 ),
        .O(\y[6][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][7]_i_2 
       (.I0(x_in_IBUF[7]),
        .I1(\x_reg[6][8]_i_2_n_5 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][8]_i_1 
       (.I0(y_in_IBUF[8]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][8]_i_2_n_4 ),
        .I4(\y[6][8]_i_3_n_0 ),
        .O(\y[6][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][8]_i_3 
       (.I0(x_in_IBUF[8]),
        .I1(\x_reg[6][8]_i_2_n_4 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][8]_i_4 
       (.I0(y_in_IBUF[8]),
        .O(\y[6][8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][8]_i_5 
       (.I0(y_in_IBUF[7]),
        .O(\y[6][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][8]_i_6 
       (.I0(y_in_IBUF[6]),
        .O(\y[6][8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y[6][8]_i_7 
       (.I0(y_in_IBUF[5]),
        .O(\y[6][8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \y[6][9]_i_1 
       (.I0(y_in_IBUF[9]),
        .I1(range45),
        .I2(x_in_IBUF[31]),
        .I3(\y_reg[6][12]_i_2_n_7 ),
        .I4(\y[6][9]_i_2_n_0 ),
        .O(\y[6][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y[6][9]_i_2 
       (.I0(x_in_IBUF[9]),
        .I1(\x_reg[6][12]_i_2_n_7 ),
        .I2(range45),
        .I3(y_in_IBUF[31]),
        .O(\y[6][9]_i_2_n_0 ));
  IBUF \y_in_IBUF[0]_inst 
       (.I(y_in[0]),
        .O(y_in_IBUF[0]));
  IBUF \y_in_IBUF[10]_inst 
       (.I(y_in[10]),
        .O(y_in_IBUF[10]));
  IBUF \y_in_IBUF[11]_inst 
       (.I(y_in[11]),
        .O(y_in_IBUF[11]));
  IBUF \y_in_IBUF[12]_inst 
       (.I(y_in[12]),
        .O(y_in_IBUF[12]));
  IBUF \y_in_IBUF[13]_inst 
       (.I(y_in[13]),
        .O(y_in_IBUF[13]));
  IBUF \y_in_IBUF[14]_inst 
       (.I(y_in[14]),
        .O(y_in_IBUF[14]));
  IBUF \y_in_IBUF[15]_inst 
       (.I(y_in[15]),
        .O(y_in_IBUF[15]));
  IBUF \y_in_IBUF[16]_inst 
       (.I(y_in[16]),
        .O(y_in_IBUF[16]));
  IBUF \y_in_IBUF[17]_inst 
       (.I(y_in[17]),
        .O(y_in_IBUF[17]));
  IBUF \y_in_IBUF[18]_inst 
       (.I(y_in[18]),
        .O(y_in_IBUF[18]));
  IBUF \y_in_IBUF[19]_inst 
       (.I(y_in[19]),
        .O(y_in_IBUF[19]));
  IBUF \y_in_IBUF[1]_inst 
       (.I(y_in[1]),
        .O(y_in_IBUF[1]));
  IBUF \y_in_IBUF[20]_inst 
       (.I(y_in[20]),
        .O(y_in_IBUF[20]));
  IBUF \y_in_IBUF[21]_inst 
       (.I(y_in[21]),
        .O(y_in_IBUF[21]));
  IBUF \y_in_IBUF[22]_inst 
       (.I(y_in[22]),
        .O(y_in_IBUF[22]));
  IBUF \y_in_IBUF[23]_inst 
       (.I(y_in[23]),
        .O(y_in_IBUF[23]));
  IBUF \y_in_IBUF[24]_inst 
       (.I(y_in[24]),
        .O(y_in_IBUF[24]));
  IBUF \y_in_IBUF[25]_inst 
       (.I(y_in[25]),
        .O(y_in_IBUF[25]));
  IBUF \y_in_IBUF[26]_inst 
       (.I(y_in[26]),
        .O(y_in_IBUF[26]));
  IBUF \y_in_IBUF[27]_inst 
       (.I(y_in[27]),
        .O(y_in_IBUF[27]));
  IBUF \y_in_IBUF[28]_inst 
       (.I(y_in[28]),
        .O(y_in_IBUF[28]));
  IBUF \y_in_IBUF[29]_inst 
       (.I(y_in[29]),
        .O(y_in_IBUF[29]));
  IBUF \y_in_IBUF[2]_inst 
       (.I(y_in[2]),
        .O(y_in_IBUF[2]));
  IBUF \y_in_IBUF[30]_inst 
       (.I(y_in[30]),
        .O(y_in_IBUF[30]));
  IBUF \y_in_IBUF[31]_inst 
       (.I(y_in[31]),
        .O(y_in_IBUF[31]));
  IBUF \y_in_IBUF[3]_inst 
       (.I(y_in[3]),
        .O(y_in_IBUF[3]));
  IBUF \y_in_IBUF[4]_inst 
       (.I(y_in[4]),
        .O(y_in_IBUF[4]));
  IBUF \y_in_IBUF[5]_inst 
       (.I(y_in[5]),
        .O(y_in_IBUF[5]));
  IBUF \y_in_IBUF[6]_inst 
       (.I(y_in[6]),
        .O(y_in_IBUF[6]));
  IBUF \y_in_IBUF[7]_inst 
       (.I(y_in[7]),
        .O(y_in_IBUF[7]));
  IBUF \y_in_IBUF[8]_inst 
       (.I(y_in[8]),
        .O(y_in_IBUF[8]));
  IBUF \y_in_IBUF[9]_inst 
       (.I(y_in[9]),
        .O(y_in_IBUF[9]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[0]),
        .Q(\y_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[10]),
        .Q(\y_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[11]),
        .Q(\y_reg[1] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[1][11]_i_1 
       (.CI(\y_reg[1][7]_i_1_n_0 ),
        .CO({\y_reg[1][11]_i_1_n_0 ,\y_reg[1][11]_i_1_n_1 ,\y_reg[1][11]_i_1_n_2 ,\y_reg[1][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[1][11]_i_2_n_0 ,\y[1][11]_i_3_n_0 ,\y[1][11]_i_4_n_0 ,\y[1][11]_i_5_n_0 }),
        .O(stage3y[11:8]),
        .S({\y[1][11]_i_6_n_0 ,\y[1][11]_i_7_n_0 ,\y[1][11]_i_8_n_0 ,\y[1][11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[12]),
        .Q(\y_reg[1] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[13]),
        .Q(\y_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[14]),
        .Q(\y_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[15]),
        .Q(\y_reg[1] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[1][15]_i_1 
       (.CI(\y_reg[1][11]_i_1_n_0 ),
        .CO({\y_reg[1][15]_i_1_n_0 ,\y_reg[1][15]_i_1_n_1 ,\y_reg[1][15]_i_1_n_2 ,\y_reg[1][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[1][15]_i_2_n_0 ,\y[1][15]_i_3_n_0 ,\y[1][15]_i_4_n_0 ,\y[1][15]_i_5_n_0 }),
        .O(stage3y[15:12]),
        .S({\y[1][15]_i_6_n_0 ,\y[1][15]_i_7_n_0 ,\y[1][15]_i_8_n_0 ,\y[1][15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[16]),
        .Q(\y_reg[1] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[17]),
        .Q(\y_reg[1] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[18]),
        .Q(\y_reg[1] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[19]),
        .Q(\y_reg[1] [19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[1][19]_i_1 
       (.CI(\y_reg[1][15]_i_1_n_0 ),
        .CO({\y_reg[1][19]_i_1_n_0 ,\y_reg[1][19]_i_1_n_1 ,\y_reg[1][19]_i_1_n_2 ,\y_reg[1][19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[1][19]_i_2_n_0 ,\y[1][19]_i_3_n_0 ,\y[1][19]_i_4_n_0 ,\y[1][19]_i_5_n_0 }),
        .O(stage3y[19:16]),
        .S({\y[1][19]_i_6_n_0 ,\y[1][19]_i_7_n_0 ,\y[1][19]_i_8_n_0 ,\y[1][19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[1]),
        .Q(\y_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[20]),
        .Q(\y_reg[1] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[21]),
        .Q(\y_reg[1] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[22]),
        .Q(\y_reg[1] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[23]),
        .Q(\y_reg[1] [23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[1][23]_i_1 
       (.CI(\y_reg[1][19]_i_1_n_0 ),
        .CO({\y_reg[1][23]_i_1_n_0 ,\y_reg[1][23]_i_1_n_1 ,\y_reg[1][23]_i_1_n_2 ,\y_reg[1][23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[1][23]_i_2_n_0 ,\y[1][23]_i_3_n_0 ,\y[1][23]_i_4_n_0 ,\y[1][23]_i_5_n_0 }),
        .O(stage3y[23:20]),
        .S({\y[1][23]_i_6_n_0 ,\y[1][23]_i_7_n_0 ,\y[1][23]_i_8_n_0 ,\y[1][23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[24]),
        .Q(\y_reg[1] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[25]),
        .Q(\y_reg[1] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[26]),
        .Q(\y_reg[1] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[27]),
        .Q(\y_reg[1] [27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[1][27]_i_1 
       (.CI(\y_reg[1][23]_i_1_n_0 ),
        .CO({\y_reg[1][27]_i_1_n_0 ,\y_reg[1][27]_i_1_n_1 ,\y_reg[1][27]_i_1_n_2 ,\y_reg[1][27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[1][27]_i_2_n_0 ,\y[1][27]_i_3_n_0 ,\y[1][27]_i_4_n_0 ,\y[1][27]_i_5_n_0 }),
        .O(stage3y[27:24]),
        .S({\y[1][27]_i_6_n_0 ,\y[1][27]_i_7_n_0 ,\y[1][27]_i_8_n_0 ,\y[1][27]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[28]),
        .Q(\y_reg[1] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[29]),
        .Q(\y_reg[1] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[2]),
        .Q(\y_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[30]),
        .Q(\y_reg[1] [30]));
  (* ORIG_CELL_NAME = "y_reg[1][31]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[31]),
        .Q(\y_reg[1] [31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[1][31]_i_1 
       (.CI(\y_reg[1][27]_i_1_n_0 ),
        .CO({\NLW_y_reg[1][31]_i_1_CO_UNCONNECTED [3],\y_reg[1][31]_i_1_n_1 ,\y_reg[1][31]_i_1_n_2 ,\y_reg[1][31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\y[1][31]_i_2_n_0 ,\y[1][31]_i_3_n_0 ,\y[1][31]_i_4_n_0 }),
        .O(stage3y[31:28]),
        .S({\y[1][31]_i_5_n_0 ,\y[1][31]_i_6_n_0 ,\y[1][31]_i_7_n_0 ,\y[1][31]_i_8_n_0 }));
  (* ORIG_CELL_NAME = "y_reg[1][31]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][31]_rep 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[31]),
        .Q(\y_reg[1][31]_rep_n_0 ));
  (* ORIG_CELL_NAME = "y_reg[1][31]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][31]_rep__0 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[31]),
        .Q(\y_reg[1][31]_rep__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[3]),
        .Q(\y_reg[1] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[1][3]_i_1 
       (.CI(1'b0),
        .CO({\y_reg[1][3]_i_1_n_0 ,\y_reg[1][3]_i_1_n_1 ,\y_reg[1][3]_i_1_n_2 ,\y_reg[1][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[1][3]_i_2_n_0 ,\y[1][3]_i_3_n_0 ,\y[1][3]_i_4_n_0 ,\y[1][3]_i_5_n_0 }),
        .O(stage3y[3:0]),
        .S({\y[1][3]_i_6_n_0 ,\y[1][3]_i_7_n_0 ,\y[1][3]_i_8_n_0 ,\y[1][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[4]),
        .Q(\y_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[5]),
        .Q(\y_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[6]),
        .Q(\y_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[7]),
        .Q(\y_reg[1] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[1][7]_i_1 
       (.CI(\y_reg[1][3]_i_1_n_0 ),
        .CO({\y_reg[1][7]_i_1_n_0 ,\y_reg[1][7]_i_1_n_1 ,\y_reg[1][7]_i_1_n_2 ,\y_reg[1][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[1][7]_i_2_n_0 ,\y[1][7]_i_3_n_0 ,\y[1][7]_i_4_n_0 ,\y[1][7]_i_5_n_0 }),
        .O(stage3y[7:4]),
        .S({\y[1][7]_i_6_n_0 ,\y[1][7]_i_7_n_0 ,\y[1][7]_i_8_n_0 ,\y[1][7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[8]),
        .Q(\y_reg[1] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage3y[9]),
        .Q(\y_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[0]),
        .Q(\y_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[10]),
        .Q(\y_reg[3] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[11]),
        .Q(\y_reg[3] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][11]_i_1 
       (.CI(\y_reg[3][7]_i_1_n_0 ),
        .CO({\y_reg[3][11]_i_1_n_0 ,\y_reg[3][11]_i_1_n_1 ,\y_reg[3][11]_i_1_n_2 ,\y_reg[3][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][11]_i_2_n_0 ,\y[3][11]_i_3_n_0 ,\y[3][11]_i_4_n_0 ,\y[3][11]_i_5_n_0 }),
        .O(stage2y[11:8]),
        .S({\y[3][11]_i_6_n_0 ,\y[3][11]_i_7_n_0 ,\y[3][11]_i_8_n_0 ,\y[3][11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[12]),
        .Q(\y_reg[3] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[13]),
        .Q(\y_reg[3] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[14]),
        .Q(\y_reg[3] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[15]),
        .Q(\y_reg[3] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][15]_i_1 
       (.CI(\y_reg[3][11]_i_1_n_0 ),
        .CO({\y_reg[3][15]_i_1_n_0 ,\y_reg[3][15]_i_1_n_1 ,\y_reg[3][15]_i_1_n_2 ,\y_reg[3][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][15]_i_2_n_0 ,\y[3][15]_i_3_n_0 ,\y[3][15]_i_4_n_0 ,\y[3][15]_i_5_n_0 }),
        .O(stage2y[15:12]),
        .S({\y[3][15]_i_6_n_0 ,\y[3][15]_i_7_n_0 ,\y[3][15]_i_8_n_0 ,\y[3][15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][15]_i_18 
       (.CI(\y_reg[3][7]_i_12_n_0 ),
        .CO({\y_reg[3][15]_i_18_n_0 ,\y_reg[3][15]_i_18_n_1 ,\y_reg[3][15]_i_18_n_2 ,\y_reg[3][15]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[3][15]_i_18_n_4 ,\y_reg[3][15]_i_18_n_5 ,\y_reg[3][15]_i_18_n_6 ,\y_reg[3][15]_i_18_n_7 }),
        .S({\y[3][15]_i_20_n_0 ,\y[3][15]_i_21_n_0 ,\y[3][15]_i_22_n_0 ,\y[3][15]_i_23_n_0 }));
  CARRY4 \y_reg[3][15]_i_19 
       (.CI(\y_reg[3][7]_i_13_n_0 ),
        .CO({\y_reg[3][15]_i_19_n_0 ,\y_reg[3][15]_i_19_n_1 ,\y_reg[3][15]_i_19_n_2 ,\y_reg[3][15]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][15]_i_24_n_0 ,\y[3][15]_i_25_n_0 ,\y[3][15]_i_26_n_0 ,\y[3][15]_i_27_n_0 }),
        .O(stage2_x_taylor[11:8]),
        .S({\y[3][15]_i_28_n_0 ,\y[3][15]_i_29_n_0 ,\y[3][15]_i_30_n_0 ,\y[3][15]_i_31_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[16]),
        .Q(\y_reg[3] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[17]),
        .Q(\y_reg[3] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[18]),
        .Q(\y_reg[3] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[19]),
        .Q(\y_reg[3] [19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][19]_i_1 
       (.CI(\y_reg[3][15]_i_1_n_0 ),
        .CO({\y_reg[3][19]_i_1_n_0 ,\y_reg[3][19]_i_1_n_1 ,\y_reg[3][19]_i_1_n_2 ,\y_reg[3][19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][19]_i_2_n_0 ,\y[3][19]_i_3_n_0 ,\y[3][19]_i_4_n_0 ,\y[3][19]_i_5_n_0 }),
        .O(stage2y[19:16]),
        .S({\y[3][19]_i_6_n_0 ,\y[3][19]_i_7_n_0 ,\y[3][19]_i_8_n_0 ,\y[3][19]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][19]_i_18 
       (.CI(\y_reg[3][15]_i_18_n_0 ),
        .CO({\y_reg[3][19]_i_18_n_0 ,\y_reg[3][19]_i_18_n_1 ,\y_reg[3][19]_i_18_n_2 ,\y_reg[3][19]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[3][19]_i_18_n_4 ,\y_reg[3][19]_i_18_n_5 ,\y_reg[3][19]_i_18_n_6 ,\y_reg[3][19]_i_18_n_7 }),
        .S({\y[3][19]_i_20_n_0 ,\y[3][19]_i_21_n_0 ,\y[3][19]_i_22_n_0 ,\y[3][19]_i_23_n_0 }));
  CARRY4 \y_reg[3][19]_i_19 
       (.CI(\y_reg[3][15]_i_19_n_0 ),
        .CO({\y_reg[3][19]_i_19_n_0 ,\y_reg[3][19]_i_19_n_1 ,\y_reg[3][19]_i_19_n_2 ,\y_reg[3][19]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][19]_i_24_n_0 ,\y[3][19]_i_25_n_0 ,\y[3][19]_i_26_n_0 ,\y[3][19]_i_27_n_0 }),
        .O(stage2_x_taylor[15:12]),
        .S({\y[3][19]_i_28_n_0 ,\y[3][19]_i_29_n_0 ,\y[3][19]_i_30_n_0 ,\y[3][19]_i_31_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[1]),
        .Q(\y_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[20]),
        .Q(\y_reg[3] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[21]),
        .Q(\y_reg[3] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[22]),
        .Q(\y_reg[3] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[23]),
        .Q(\y_reg[3] [23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][23]_i_1 
       (.CI(\y_reg[3][19]_i_1_n_0 ),
        .CO({\y_reg[3][23]_i_1_n_0 ,\y_reg[3][23]_i_1_n_1 ,\y_reg[3][23]_i_1_n_2 ,\y_reg[3][23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][23]_i_2_n_0 ,\y[3][23]_i_3_n_0 ,\y[3][23]_i_4_n_0 ,\y[3][23]_i_5_n_0 }),
        .O(stage2y[23:20]),
        .S({\y[3][23]_i_6_n_0 ,\y[3][23]_i_7_n_0 ,\y[3][23]_i_8_n_0 ,\y[3][23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][23]_i_18 
       (.CI(\y_reg[3][19]_i_18_n_0 ),
        .CO({\y_reg[3][23]_i_18_n_0 ,\y_reg[3][23]_i_18_n_1 ,\y_reg[3][23]_i_18_n_2 ,\y_reg[3][23]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[3][23]_i_18_n_4 ,\y_reg[3][23]_i_18_n_5 ,\y_reg[3][23]_i_18_n_6 ,\y_reg[3][23]_i_18_n_7 }),
        .S({\y[3][23]_i_20_n_0 ,\y[3][23]_i_21_n_0 ,\y[3][23]_i_22_n_0 ,\y[3][23]_i_23_n_0 }));
  CARRY4 \y_reg[3][23]_i_19 
       (.CI(\y_reg[3][19]_i_19_n_0 ),
        .CO({\y_reg[3][23]_i_19_n_0 ,\y_reg[3][23]_i_19_n_1 ,\y_reg[3][23]_i_19_n_2 ,\y_reg[3][23]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][23]_i_24_n_0 ,\y[3][23]_i_25_n_0 ,\y[3][23]_i_26_n_0 ,\y[3][23]_i_27_n_0 }),
        .O(stage2_x_taylor[19:16]),
        .S({\y[3][23]_i_28_n_0 ,\y[3][23]_i_29_n_0 ,\y[3][23]_i_30_n_0 ,\y[3][23]_i_31_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[24]),
        .Q(\y_reg[3] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[25]),
        .Q(\y_reg[3] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[26]),
        .Q(\y_reg[3] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[27]),
        .Q(\y_reg[3] [27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][27]_i_1 
       (.CI(\y_reg[3][23]_i_1_n_0 ),
        .CO({\y_reg[3][27]_i_1_n_0 ,\y_reg[3][27]_i_1_n_1 ,\y_reg[3][27]_i_1_n_2 ,\y_reg[3][27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][27]_i_2_n_0 ,\y[3][27]_i_3_n_0 ,\y[3][27]_i_4_n_0 ,\y[3][27]_i_5_n_0 }),
        .O(stage2y[27:24]),
        .S({\y[3][27]_i_6_n_0 ,\y[3][27]_i_7_n_0 ,\y[3][27]_i_8_n_0 ,\y[3][27]_i_9_n_0 }));
  CARRY4 \y_reg[3][27]_i_10 
       (.CI(\y_reg[3][27]_i_16_n_0 ),
        .CO({\y_reg[3][27]_i_10_n_0 ,\y_reg[3][27]_i_10_n_1 ,\y_reg[3][27]_i_10_n_2 ,\y_reg[3][27]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][27]_i_17_n_0 ,\y[3][27]_i_18_n_0 ,\y[3][27]_i_19_n_0 ,\y[3][27]_i_20_n_0 }),
        .O(stage2_x_taylor[27:24]),
        .S({\y[3][27]_i_21_n_0 ,\y[3][27]_i_22_n_0 ,\y[3][27]_i_23_n_0 ,\y[3][27]_i_24_n_0 }));
  CARRY4 \y_reg[3][27]_i_16 
       (.CI(\y_reg[3][23]_i_19_n_0 ),
        .CO({\y_reg[3][27]_i_16_n_0 ,\y_reg[3][27]_i_16_n_1 ,\y_reg[3][27]_i_16_n_2 ,\y_reg[3][27]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][27]_i_25_n_0 ,\y[3][27]_i_26_n_0 ,\y[3][27]_i_27_n_0 ,\y[3][27]_i_28_n_0 }),
        .O(stage2_x_taylor[23:20]),
        .S({\y[3][27]_i_29_n_0 ,\y[3][27]_i_30_n_0 ,\y[3][27]_i_31_n_0 ,\y[3][27]_i_32_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[28]),
        .Q(\y_reg[3] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[29]),
        .Q(\y_reg[3] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[2]),
        .Q(\y_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[30]),
        .Q(\y_reg[3] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[31]),
        .Q(\y_reg[3] [31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][31]_i_1 
       (.CI(\y_reg[3][27]_i_1_n_0 ),
        .CO({\NLW_y_reg[3][31]_i_1_CO_UNCONNECTED [3],\y_reg[3][31]_i_1_n_1 ,\y_reg[3][31]_i_1_n_2 ,\y_reg[3][31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\y[3][31]_i_2_n_0 ,\y[3][31]_i_3_n_0 ,\y[3][31]_i_4_n_0 }),
        .O(stage2y[31:28]),
        .S({\y[3][31]_i_5_n_0 ,\y[3][31]_i_6_n_0 ,\y[3][31]_i_7_n_0 ,\y[3][31]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][31]_i_13 
       (.CI(\y_reg[3][31]_i_21_n_0 ),
        .CO({\y_reg[3][31]_i_13_n_0 ,\y_reg[3][31]_i_13_n_1 ,\y_reg[3][31]_i_13_n_2 ,\y_reg[3][31]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[3][31]_i_13_n_4 ,\y_reg[3][31]_i_13_n_5 ,\y_reg[3][31]_i_13_n_6 ,\y_reg[3][31]_i_13_n_7 }),
        .S({\y[3][31]_i_22_n_0 ,\y[3][31]_i_23_n_0 ,\y[3][31]_i_24_n_0 ,\y[3][31]_i_25_n_0 }));
  CARRY4 \y_reg[3][31]_i_16 
       (.CI(\y_reg[3][27]_i_10_n_0 ),
        .CO({\NLW_y_reg[3][31]_i_16_CO_UNCONNECTED [3],\y_reg[3][31]_i_16_n_1 ,\NLW_y_reg[3][31]_i_16_CO_UNCONNECTED [1],\y_reg[3][31]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\y[3][31]_i_26_n_0 ,\y[3][31]_i_27_n_0 }),
        .O({\NLW_y_reg[3][31]_i_16_O_UNCONNECTED [3:2],stage2_x_taylor[29:28]}),
        .S({1'b0,1'b1,\y[3][31]_i_28_n_0 ,\y[3][31]_i_29_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][31]_i_17 
       (.CI(\y_reg[3][31]_i_13_n_0 ),
        .CO({\NLW_y_reg[3][31]_i_17_CO_UNCONNECTED [3:2],\y_reg[3][31]_i_17_n_2 ,\y_reg[3][31]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_reg[3][31]_i_17_O_UNCONNECTED [3],\y_reg[3][31]_i_17_n_5 ,\y_reg[3][31]_i_17_n_6 ,\y_reg[3][31]_i_17_n_7 }),
        .S({1'b0,\y_reg[3][31]_i_16_n_1 ,\y_reg[3][31]_i_16_n_1 ,\y[3][31]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][31]_i_21 
       (.CI(\y_reg[3][23]_i_18_n_0 ),
        .CO({\y_reg[3][31]_i_21_n_0 ,\y_reg[3][31]_i_21_n_1 ,\y_reg[3][31]_i_21_n_2 ,\y_reg[3][31]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[3][31]_i_21_n_4 ,\y_reg[3][31]_i_21_n_5 ,\y_reg[3][31]_i_21_n_6 ,\y_reg[3][31]_i_21_n_7 }),
        .S({\y[3][31]_i_31_n_0 ,\y[3][31]_i_32_n_0 ,\y[3][31]_i_33_n_0 ,\y[3][31]_i_34_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[3]),
        .Q(\y_reg[3] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][3]_i_1 
       (.CI(1'b0),
        .CO({\y_reg[3][3]_i_1_n_0 ,\y_reg[3][3]_i_1_n_1 ,\y_reg[3][3]_i_1_n_2 ,\y_reg[3][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][3]_i_2_n_0 ,\y[3][3]_i_3_n_0 ,\y[3][3]_i_4_n_0 ,\y[3][3]_i_5_n_0 }),
        .O(stage2y[3:0]),
        .S({\y[3][3]_i_6_n_0 ,\y[3][3]_i_7_n_0 ,\y[3][3]_i_8_n_0 ,\y[3][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[4]),
        .Q(\y_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[5]),
        .Q(\y_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[6]),
        .Q(\y_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[7]),
        .Q(\y_reg[3] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][7]_i_1 
       (.CI(\y_reg[3][3]_i_1_n_0 ),
        .CO({\y_reg[3][7]_i_1_n_0 ,\y_reg[3][7]_i_1_n_1 ,\y_reg[3][7]_i_1_n_2 ,\y_reg[3][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][7]_i_2_n_0 ,\y[3][7]_i_3_n_0 ,\y[3][7]_i_4_n_0 ,\y[3][7]_i_5_n_0 }),
        .O(stage2y[7:4]),
        .S({\y[3][7]_i_6_n_0 ,\y[3][7]_i_7_n_0 ,\y[3][7]_i_8_n_0 ,\y[3][7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][7]_i_12 
       (.CI(\y_reg[3][7]_i_16_n_0 ),
        .CO({\y_reg[3][7]_i_12_n_0 ,\y_reg[3][7]_i_12_n_1 ,\y_reg[3][7]_i_12_n_2 ,\y_reg[3][7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[3][7]_i_12_n_4 ,\y_reg[3][7]_i_12_n_5 ,\y_reg[3][7]_i_12_n_6 ,\y_reg[3][7]_i_12_n_7 }),
        .S({\y[3][7]_i_25_n_0 ,\y[3][7]_i_26_n_0 ,\y[3][7]_i_27_n_0 ,\y[3][7]_i_28_n_0 }));
  CARRY4 \y_reg[3][7]_i_13 
       (.CI(\y_reg[3][7]_i_18_n_0 ),
        .CO({\y_reg[3][7]_i_13_n_0 ,\y_reg[3][7]_i_13_n_1 ,\y_reg[3][7]_i_13_n_2 ,\y_reg[3][7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[3][7]_i_29_n_0 ,\y[3][7]_i_30_n_0 ,\y[3][7]_i_31_n_0 ,\y[3][7]_i_32_n_0 }),
        .O(stage2_x_taylor[7:4]),
        .S({\y[3][7]_i_33_n_0 ,\y[3][7]_i_34_n_0 ,\y[3][7]_i_35_n_0 ,\y[3][7]_i_36_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[3][7]_i_16 
       (.CI(1'b0),
        .CO({\y_reg[3][7]_i_16_n_0 ,\y_reg[3][7]_i_16_n_1 ,\y_reg[3][7]_i_16_n_2 ,\y_reg[3][7]_i_16_n_3 }),
        .CYINIT(\y[3][7]_i_37_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[3][7]_i_16_n_4 ,\y_reg[3][7]_i_16_n_5 ,\y_reg[3][7]_i_16_n_6 ,\y_reg[3][7]_i_16_n_7 }),
        .S({\y[3][7]_i_38_n_0 ,\y[3][7]_i_39_n_0 ,\y[3][7]_i_40_n_0 ,\y[3][7]_i_41_n_0 }));
  CARRY4 \y_reg[3][7]_i_18 
       (.CI(1'b0),
        .CO({\y_reg[3][7]_i_18_n_0 ,\y_reg[3][7]_i_18_n_1 ,\y_reg[3][7]_i_18_n_2 ,\y_reg[3][7]_i_18_n_3 }),
        .CYINIT(1'b1),
        .DI({\y[3][7]_i_42_n_0 ,\y[3][7]_i_43_n_0 ,\y[3][7]_i_44_n_0 ,1'b1}),
        .O(stage2_x_taylor[3:0]),
        .S({\y[3][7]_i_45_n_0 ,\y[3][7]_i_46_n_0 ,\y[3][7]_i_47_n_0 ,\y[3][7]_i_48_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[8]),
        .Q(\y_reg[3] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(stage2y[9]),
        .Q(\y_reg[3] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][3]_i_1_n_7 ),
        .Q(\y_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][11]_i_1_n_5 ),
        .Q(\y_reg[5] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][11]_i_1_n_4 ),
        .Q(\y_reg[5] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][11]_i_1 
       (.CI(\y_reg[5][7]_i_1_n_0 ),
        .CO({\y_reg[5][11]_i_1_n_0 ,\y_reg[5][11]_i_1_n_1 ,\y_reg[5][11]_i_1_n_2 ,\y_reg[5][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][11]_i_2_n_0 ,\y[5][11]_i_3_n_0 ,\y[5][11]_i_4_n_0 ,\y[5][11]_i_5_n_0 }),
        .O({\y_reg[5][11]_i_1_n_4 ,\y_reg[5][11]_i_1_n_5 ,\y_reg[5][11]_i_1_n_6 ,\y_reg[5][11]_i_1_n_7 }),
        .S({\y[5][11]_i_6_n_0 ,\y[5][11]_i_7_n_0 ,\y[5][11]_i_8_n_0 ,\y[5][11]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][11]_i_12 
       (.CI(\y_reg[5][7]_i_12_n_0 ),
        .CO({\y_reg[5][11]_i_12_n_0 ,\y_reg[5][11]_i_12_n_1 ,\y_reg[5][11]_i_12_n_2 ,\y_reg[5][11]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][11]_i_15_n_0 ,\y[5][11]_i_16_n_0 ,\y[5][11]_i_17_n_0 ,\y[5][11]_i_18_n_0 }),
        .O({\y_reg[5][11]_i_12_n_4 ,\y_reg[5][11]_i_12_n_5 ,\y_reg[5][11]_i_12_n_6 ,\y_reg[5][11]_i_12_n_7 }),
        .S({\y[5][11]_i_19_n_0 ,\y[5][11]_i_20_n_0 ,\y[5][11]_i_21_n_0 ,\y[5][11]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][11]_i_23 
       (.CI(1'b0),
        .CO({\y_reg[5][11]_i_23_n_0 ,\y_reg[5][11]_i_23_n_1 ,\y_reg[5][11]_i_23_n_2 ,\y_reg[5][11]_i_23_n_3 }),
        .CYINIT(\y[5][11]_i_25_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[5][11]_i_23_n_4 ,\y_reg[5][11]_i_23_n_5 ,\y_reg[5][11]_i_23_n_6 ,\y_reg[5][11]_i_23_n_7 }),
        .S({\y[5][11]_i_26_n_0 ,\y[5][11]_i_27_n_0 ,\y[5][11]_i_28_n_0 ,\y[5][11]_i_29_n_0 }));
  CARRY4 \y_reg[5][11]_i_24 
       (.CI(1'b0),
        .CO({\y_reg[5][11]_i_24_n_0 ,\y_reg[5][11]_i_24_n_1 ,\y_reg[5][11]_i_24_n_2 ,\y_reg[5][11]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][11]_i_30_n_0 ,\y[5][11]_i_31_n_0 ,\y[5][11]_i_32_n_0 ,\y[5][11]_i_33_n_0 }),
        .O({\y_reg[5][11]_i_24_n_4 ,\y_reg[5][11]_i_24_n_5 ,\y_reg[5][11]_i_24_n_6 ,\y_reg[5][11]_i_24_n_7 }),
        .S({\y[5][11]_i_34_n_0 ,\y[5][11]_i_35_n_0 ,\y[5][11]_i_36_n_0 ,\y[5][11]_i_37_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][15]_i_1_n_7 ),
        .Q(\y_reg[5] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][15]_i_1_n_6 ),
        .Q(\y_reg[5] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][15]_i_1_n_5 ),
        .Q(\y_reg[5] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][15]_i_1_n_4 ),
        .Q(\y_reg[5] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][15]_i_1 
       (.CI(\y_reg[5][11]_i_1_n_0 ),
        .CO({\y_reg[5][15]_i_1_n_0 ,\y_reg[5][15]_i_1_n_1 ,\y_reg[5][15]_i_1_n_2 ,\y_reg[5][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][15]_i_2_n_0 ,\y[5][15]_i_3_n_0 ,\y[5][15]_i_4_n_0 ,\y[5][15]_i_5_n_0 }),
        .O({\y_reg[5][15]_i_1_n_4 ,\y_reg[5][15]_i_1_n_5 ,\y_reg[5][15]_i_1_n_6 ,\y_reg[5][15]_i_1_n_7 }),
        .S({\y[5][15]_i_6_n_0 ,\y[5][15]_i_7_n_0 ,\y[5][15]_i_8_n_0 ,\y[5][15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][15]_i_12 
       (.CI(\y_reg[5][11]_i_12_n_0 ),
        .CO({\y_reg[5][15]_i_12_n_0 ,\y_reg[5][15]_i_12_n_1 ,\y_reg[5][15]_i_12_n_2 ,\y_reg[5][15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][15]_i_15_n_0 ,\y[5][15]_i_16_n_0 ,\y[5][15]_i_17_n_0 ,\y[5][15]_i_18_n_0 }),
        .O({\y_reg[5][15]_i_12_n_4 ,\y_reg[5][15]_i_12_n_5 ,\y_reg[5][15]_i_12_n_6 ,\y_reg[5][15]_i_12_n_7 }),
        .S({\y[5][15]_i_19_n_0 ,\y[5][15]_i_20_n_0 ,\y[5][15]_i_21_n_0 ,\y[5][15]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][15]_i_23 
       (.CI(\y_reg[5][11]_i_23_n_0 ),
        .CO({\y_reg[5][15]_i_23_n_0 ,\y_reg[5][15]_i_23_n_1 ,\y_reg[5][15]_i_23_n_2 ,\y_reg[5][15]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[5][15]_i_23_n_4 ,\y_reg[5][15]_i_23_n_5 ,\y_reg[5][15]_i_23_n_6 ,\y_reg[5][15]_i_23_n_7 }),
        .S({\y[5][15]_i_25_n_0 ,\y[5][15]_i_26_n_0 ,\y[5][15]_i_27_n_0 ,\y[5][15]_i_28_n_0 }));
  CARRY4 \y_reg[5][15]_i_24 
       (.CI(\y_reg[5][11]_i_24_n_0 ),
        .CO({\y_reg[5][15]_i_24_n_0 ,\y_reg[5][15]_i_24_n_1 ,\y_reg[5][15]_i_24_n_2 ,\y_reg[5][15]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][15]_i_29_n_0 ,\y[5][15]_i_30_n_0 ,\y[5][15]_i_31_n_0 ,\y[5][15]_i_32_n_0 }),
        .O({\y_reg[5][15]_i_24_n_4 ,\y_reg[5][15]_i_24_n_5 ,\y_reg[5][15]_i_24_n_6 ,\y_reg[5][15]_i_24_n_7 }),
        .S({\y[5][15]_i_33_n_0 ,\y[5][15]_i_34_n_0 ,\y[5][15]_i_35_n_0 ,\y[5][15]_i_36_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][19]_i_1_n_7 ),
        .Q(\y_reg[5] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][19]_i_1_n_6 ),
        .Q(\y_reg[5] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][19]_i_1_n_5 ),
        .Q(\y_reg[5] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][19]_i_1_n_4 ),
        .Q(\y_reg[5] [19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][19]_i_1 
       (.CI(\y_reg[5][15]_i_1_n_0 ),
        .CO({\y_reg[5][19]_i_1_n_0 ,\y_reg[5][19]_i_1_n_1 ,\y_reg[5][19]_i_1_n_2 ,\y_reg[5][19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][19]_i_2_n_0 ,\y[5][19]_i_3_n_0 ,\y[5][19]_i_4_n_0 ,\y[5][19]_i_5_n_0 }),
        .O({\y_reg[5][19]_i_1_n_4 ,\y_reg[5][19]_i_1_n_5 ,\y_reg[5][19]_i_1_n_6 ,\y_reg[5][19]_i_1_n_7 }),
        .S({\y[5][19]_i_6_n_0 ,\y[5][19]_i_7_n_0 ,\y[5][19]_i_8_n_0 ,\y[5][19]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][19]_i_12 
       (.CI(\y_reg[5][15]_i_12_n_0 ),
        .CO({\y_reg[5][19]_i_12_n_0 ,\y_reg[5][19]_i_12_n_1 ,\y_reg[5][19]_i_12_n_2 ,\y_reg[5][19]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][19]_i_15_n_0 ,\y[5][19]_i_16_n_0 ,\y[5][19]_i_17_n_0 ,\y[5][19]_i_18_n_0 }),
        .O({\y_reg[5][19]_i_12_n_4 ,\y_reg[5][19]_i_12_n_5 ,\y_reg[5][19]_i_12_n_6 ,\y_reg[5][19]_i_12_n_7 }),
        .S({\y[5][19]_i_19_n_0 ,\y[5][19]_i_20_n_0 ,\y[5][19]_i_21_n_0 ,\y[5][19]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][19]_i_23 
       (.CI(\y_reg[5][15]_i_23_n_0 ),
        .CO({\y_reg[5][19]_i_23_n_0 ,\y_reg[5][19]_i_23_n_1 ,\y_reg[5][19]_i_23_n_2 ,\y_reg[5][19]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[5][19]_i_23_n_4 ,\y_reg[5][19]_i_23_n_5 ,\y_reg[5][19]_i_23_n_6 ,\y_reg[5][19]_i_23_n_7 }),
        .S({\y[5][19]_i_25_n_0 ,\y[5][19]_i_26_n_0 ,\y[5][19]_i_27_n_0 ,\y[5][19]_i_28_n_0 }));
  CARRY4 \y_reg[5][19]_i_24 
       (.CI(\y_reg[5][15]_i_24_n_0 ),
        .CO({\y_reg[5][19]_i_24_n_0 ,\y_reg[5][19]_i_24_n_1 ,\y_reg[5][19]_i_24_n_2 ,\y_reg[5][19]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][19]_i_29_n_0 ,\y[5][19]_i_30_n_0 ,\y[5][19]_i_31_n_0 ,\y[5][19]_i_32_n_0 }),
        .O({\y_reg[5][19]_i_24_n_4 ,\y_reg[5][19]_i_24_n_5 ,\y_reg[5][19]_i_24_n_6 ,\y_reg[5][19]_i_24_n_7 }),
        .S({\y[5][19]_i_33_n_0 ,\y[5][19]_i_34_n_0 ,\y[5][19]_i_35_n_0 ,\y[5][19]_i_36_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][3]_i_1_n_6 ),
        .Q(\y_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][20] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][23]_i_1_n_7 ),
        .Q(\y_reg[5] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][21] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][23]_i_1_n_6 ),
        .Q(\y_reg[5] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][22] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][23]_i_1_n_5 ),
        .Q(\y_reg[5] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][23] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][23]_i_1_n_4 ),
        .Q(\y_reg[5] [23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][23]_i_1 
       (.CI(\y_reg[5][19]_i_1_n_0 ),
        .CO({\y_reg[5][23]_i_1_n_0 ,\y_reg[5][23]_i_1_n_1 ,\y_reg[5][23]_i_1_n_2 ,\y_reg[5][23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][23]_i_2_n_0 ,\y[5][23]_i_3_n_0 ,\y[5][23]_i_4_n_0 ,\y[5][23]_i_5_n_0 }),
        .O({\y_reg[5][23]_i_1_n_4 ,\y_reg[5][23]_i_1_n_5 ,\y_reg[5][23]_i_1_n_6 ,\y_reg[5][23]_i_1_n_7 }),
        .S({\y[5][23]_i_6_n_0 ,\y[5][23]_i_7_n_0 ,\y[5][23]_i_8_n_0 ,\y[5][23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][23]_i_11 
       (.CI(\y_reg[5][19]_i_12_n_0 ),
        .CO({\y_reg[5][23]_i_11_n_0 ,\y_reg[5][23]_i_11_n_1 ,\y_reg[5][23]_i_11_n_2 ,\y_reg[5][23]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][23]_i_19_n_0 ,\y[5][23]_i_20_n_0 ,\y[5][23]_i_21_n_0 ,\y[5][23]_i_22_n_0 }),
        .O({\y_reg[5][23]_i_11_n_4 ,\y_reg[5][23]_i_11_n_5 ,\y_reg[5][23]_i_11_n_6 ,\y_reg[5][23]_i_11_n_7 }),
        .S({\y[5][23]_i_23_n_0 ,\y[5][23]_i_24_n_0 ,\y[5][23]_i_25_n_0 ,\y[5][23]_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][23]_i_27 
       (.CI(\y_reg[5][19]_i_23_n_0 ),
        .CO({\y_reg[5][23]_i_27_n_0 ,\y_reg[5][23]_i_27_n_1 ,\y_reg[5][23]_i_27_n_2 ,\y_reg[5][23]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[5][23]_i_27_n_4 ,\y_reg[5][23]_i_27_n_5 ,\y_reg[5][23]_i_27_n_6 ,\y_reg[5][23]_i_27_n_7 }),
        .S({\y[5][23]_i_29_n_0 ,\y[5][23]_i_30_n_0 ,\y[5][23]_i_31_n_0 ,\y[5][23]_i_32_n_0 }));
  CARRY4 \y_reg[5][23]_i_28 
       (.CI(\y_reg[5][19]_i_24_n_0 ),
        .CO({\y_reg[5][23]_i_28_n_0 ,\y_reg[5][23]_i_28_n_1 ,\y_reg[5][23]_i_28_n_2 ,\y_reg[5][23]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][23]_i_33_n_0 ,\y[5][23]_i_34_n_0 ,\y[5][23]_i_35_n_0 ,\y[5][23]_i_36_n_0 }),
        .O({\y_reg[5][23]_i_28_n_4 ,\y_reg[5][23]_i_28_n_5 ,\y_reg[5][23]_i_28_n_6 ,\y_reg[5][23]_i_28_n_7 }),
        .S({\y[5][23]_i_37_n_0 ,\y[5][23]_i_38_n_0 ,\y[5][23]_i_39_n_0 ,\y[5][23]_i_40_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][24] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][27]_i_1_n_7 ),
        .Q(\y_reg[5] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][25] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][27]_i_1_n_6 ),
        .Q(\y_reg[5] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][26] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][27]_i_1_n_5 ),
        .Q(\y_reg[5] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][27] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][27]_i_1_n_4 ),
        .Q(\y_reg[5] [27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][27]_i_1 
       (.CI(\y_reg[5][23]_i_1_n_0 ),
        .CO({\y_reg[5][27]_i_1_n_0 ,\y_reg[5][27]_i_1_n_1 ,\y_reg[5][27]_i_1_n_2 ,\y_reg[5][27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][27]_i_2_n_0 ,\y[5][27]_i_3_n_0 ,\y[5][27]_i_4_n_0 ,\y[5][27]_i_5_n_0 }),
        .O({\y_reg[5][27]_i_1_n_4 ,\y_reg[5][27]_i_1_n_5 ,\y_reg[5][27]_i_1_n_6 ,\y_reg[5][27]_i_1_n_7 }),
        .S({\y[5][27]_i_6_n_0 ,\y[5][27]_i_7_n_0 ,\y[5][27]_i_8_n_0 ,\y[5][27]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][27]_i_10 
       (.CI(\y_reg[5][23]_i_11_n_0 ),
        .CO({\y_reg[5][27]_i_10_n_0 ,\y_reg[5][27]_i_10_n_1 ,\y_reg[5][27]_i_10_n_2 ,\y_reg[5][27]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][27]_i_11_n_0 ,\y[5][27]_i_12_n_0 ,\y[5][27]_i_13_n_0 ,\y[5][27]_i_14_n_0 }),
        .O({\y_reg[5][27]_i_10_n_4 ,\y_reg[5][27]_i_10_n_5 ,\y_reg[5][27]_i_10_n_6 ,\y_reg[5][27]_i_10_n_7 }),
        .S({\y[5][27]_i_15_n_0 ,\y[5][27]_i_16_n_0 ,\y[5][27]_i_17_n_0 ,\y[5][27]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][27]_i_20 
       (.CI(\y_reg[5][23]_i_27_n_0 ),
        .CO({\y_reg[5][27]_i_20_n_0 ,\y_reg[5][27]_i_20_n_1 ,\y_reg[5][27]_i_20_n_2 ,\y_reg[5][27]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[5][27]_i_20_n_4 ,\y_reg[5][27]_i_20_n_5 ,\y_reg[5][27]_i_20_n_6 ,\y_reg[5][27]_i_20_n_7 }),
        .S({\y[5][27]_i_23_n_0 ,\y[5][27]_i_24_n_0 ,\y[5][27]_i_25_n_0 ,\y[5][27]_i_26_n_0 }));
  CARRY4 \y_reg[5][27]_i_22 
       (.CI(\y_reg[5][23]_i_28_n_0 ),
        .CO({\y_reg[5][27]_i_22_n_0 ,\y_reg[5][27]_i_22_n_1 ,\y_reg[5][27]_i_22_n_2 ,\y_reg[5][27]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][27]_i_27_n_0 ,\y[5][27]_i_28_n_0 ,\y[5][27]_i_29_n_0 ,\y[5][27]_i_30_n_0 }),
        .O({\y_reg[5][27]_i_22_n_4 ,\y_reg[5][27]_i_22_n_5 ,\y_reg[5][27]_i_22_n_6 ,\y_reg[5][27]_i_22_n_7 }),
        .S({\y[5][27]_i_31_n_0 ,\y[5][27]_i_32_n_0 ,\y[5][27]_i_33_n_0 ,\y[5][27]_i_34_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][28] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][31]_i_2_n_7 ),
        .Q(\y_reg[5] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][29] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][31]_i_2_n_6 ),
        .Q(\y_reg[5] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][3]_i_1_n_5 ),
        .Q(\y_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][30] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][31]_i_2_n_5 ),
        .Q(\y_reg[5] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][31] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][31]_i_2_n_4 ),
        .Q(\y_reg[5] [31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][31]_i_10 
       (.CI(\y_reg[5][27]_i_10_n_0 ),
        .CO({\y_reg[5][31]_i_10_n_0 ,\y_reg[5][31]_i_10_n_1 ,\y_reg[5][31]_i_10_n_2 ,\y_reg[5][31]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][31]_i_18_n_0 ,\y[5][31]_i_19_n_0 ,\y[5][31]_i_20_n_0 ,\y[5][31]_i_21_n_0 }),
        .O({\y_reg[5][31]_i_10_n_4 ,\y_reg[5][31]_i_10_n_5 ,\y_reg[5][31]_i_10_n_6 ,\y_reg[5][31]_i_10_n_7 }),
        .S({\y[5][31]_i_22_n_0 ,\y[5][31]_i_23_n_0 ,\y[5][31]_i_24_n_0 ,\y[5][31]_i_25_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][31]_i_2 
       (.CI(\y_reg[5][27]_i_1_n_0 ),
        .CO({\NLW_y_reg[5][31]_i_2_CO_UNCONNECTED [3],\y_reg[5][31]_i_2_n_1 ,\y_reg[5][31]_i_2_n_2 ,\y_reg[5][31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\y_reg[5][31]_i_3_n_6 ,\y[5][31]_i_4_n_0 ,\y[5][31]_i_5_n_0 }),
        .O({\y_reg[5][31]_i_2_n_4 ,\y_reg[5][31]_i_2_n_5 ,\y_reg[5][31]_i_2_n_6 ,\y_reg[5][31]_i_2_n_7 }),
        .S({\y[5][31]_i_6_n_0 ,\y[5][31]_i_7_n_0 ,\y[5][31]_i_8_n_0 ,\y[5][31]_i_9_n_0 }));
  CARRY4 \y_reg[5][31]_i_26 
       (.CI(\y_reg[5][31]_i_29_n_0 ),
        .CO({\y_reg[5][31]_i_26_n_0 ,\NLW_y_reg[5][31]_i_26_CO_UNCONNECTED [2],\y_reg[5][31]_i_26_n_2 ,\y_reg[5][31]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\x_reg_n_0_[6][30] ,\x_reg_n_0_[6][29] ,\x_reg_n_0_[6][28] }),
        .O({\NLW_y_reg[5][31]_i_26_O_UNCONNECTED [3],\y_reg[5][31]_i_26_n_5 ,\y_reg[5][31]_i_26_n_6 ,\y_reg[5][31]_i_26_n_7 }),
        .S({1'b1,\y[5][31]_i_42_n_0 ,\y[5][31]_i_43_n_0 ,\y[5][31]_i_44_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][31]_i_27 
       (.CI(\y_reg[5][31]_i_37_n_0 ),
        .CO({\y_reg[5][31]_i_27_n_0 ,\y_reg[5][31]_i_27_n_1 ,\y_reg[5][31]_i_27_n_2 ,\y_reg[5][31]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[5][31]_i_27_n_4 ,\y_reg[5][31]_i_27_n_5 ,\y_reg[5][31]_i_27_n_6 ,\y_reg[5][31]_i_27_n_7 }),
        .S({\y[5][31]_i_45_n_0 ,\y[5][31]_i_46_n_0 ,\y[5][31]_i_47_n_0 ,\y[5][31]_i_48_n_0 }));
  CARRY4 \y_reg[5][31]_i_29 
       (.CI(\y_reg[5][31]_i_39_n_0 ),
        .CO({\y_reg[5][31]_i_29_n_0 ,\y_reg[5][31]_i_29_n_1 ,\y_reg[5][31]_i_29_n_2 ,\y_reg[5][31]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[6][27] ,\y[5][31]_i_49_n_0 ,\y[5][31]_i_50_n_0 ,\y[5][31]_i_51_n_0 }),
        .O({\y_reg[5][31]_i_29_n_4 ,\y_reg[5][31]_i_29_n_5 ,\y_reg[5][31]_i_29_n_6 ,\y_reg[5][31]_i_29_n_7 }),
        .S({\y[5][31]_i_52_n_0 ,\y[5][31]_i_53_n_0 ,\y[5][31]_i_54_n_0 ,\y[5][31]_i_55_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][31]_i_3 
       (.CI(\y_reg[5][31]_i_10_n_0 ),
        .CO({\NLW_y_reg[5][31]_i_3_CO_UNCONNECTED [3],\y_reg[5][31]_i_3_n_1 ,\y_reg[5][31]_i_3_n_2 ,\y_reg[5][31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\y[5][31]_i_11_n_0 ,\y[5][31]_i_12_n_0 ,\y[5][31]_i_13_n_0 }),
        .O({\y_reg[5][31]_i_3_n_4 ,\y_reg[5][31]_i_3_n_5 ,\y_reg[5][31]_i_3_n_6 ,\y_reg[5][31]_i_3_n_7 }),
        .S({\y[5][31]_i_14_n_0 ,\y[5][31]_i_15_n_0 ,\y[5][31]_i_16_n_0 ,\y[5][31]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][31]_i_33 
       (.CI(\y_reg[5][31]_i_27_n_0 ),
        .CO({\NLW_y_reg[5][31]_i_33_CO_UNCONNECTED [3:2],\y_reg[5][31]_i_33_n_2 ,\y_reg[5][31]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_reg[5][31]_i_33_O_UNCONNECTED [3],\y_reg[5][31]_i_33_n_5 ,\y_reg[5][31]_i_33_n_6 ,\y_reg[5][31]_i_33_n_7 }),
        .S({1'b0,\y_reg[5][31]_i_26_n_0 ,\y[5][31]_i_56_n_0 ,\y[5][31]_i_57_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][31]_i_37 
       (.CI(\y_reg[5][27]_i_20_n_0 ),
        .CO({\y_reg[5][31]_i_37_n_0 ,\y_reg[5][31]_i_37_n_1 ,\y_reg[5][31]_i_37_n_2 ,\y_reg[5][31]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[5][31]_i_37_n_4 ,\y_reg[5][31]_i_37_n_5 ,\y_reg[5][31]_i_37_n_6 ,\y_reg[5][31]_i_37_n_7 }),
        .S({\y[5][31]_i_58_n_0 ,\y[5][31]_i_59_n_0 ,\y[5][31]_i_60_n_0 ,\y[5][31]_i_61_n_0 }));
  CARRY4 \y_reg[5][31]_i_39 
       (.CI(\y_reg[5][27]_i_22_n_0 ),
        .CO({\y_reg[5][31]_i_39_n_0 ,\y_reg[5][31]_i_39_n_1 ,\y_reg[5][31]_i_39_n_2 ,\y_reg[5][31]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][31]_i_62_n_0 ,\y[5][31]_i_63_n_0 ,\y[5][31]_i_64_n_0 ,\y[5][31]_i_65_n_0 }),
        .O({\y_reg[5][31]_i_39_n_4 ,\y_reg[5][31]_i_39_n_5 ,\y_reg[5][31]_i_39_n_6 ,\y_reg[5][31]_i_39_n_7 }),
        .S({\y[5][31]_i_66_n_0 ,\y[5][31]_i_67_n_0 ,\y[5][31]_i_68_n_0 ,\y[5][31]_i_69_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][3]_i_1_n_4 ),
        .Q(\y_reg[5] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][3]_i_1 
       (.CI(1'b0),
        .CO({\y_reg[5][3]_i_1_n_0 ,\y_reg[5][3]_i_1_n_1 ,\y_reg[5][3]_i_1_n_2 ,\y_reg[5][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][3]_i_2_n_0 ,\y[5][3]_i_3_n_0 ,\y[5][3]_i_4_n_0 ,\y[5][3]_i_5_n_0 }),
        .O({\y_reg[5][3]_i_1_n_4 ,\y_reg[5][3]_i_1_n_5 ,\y_reg[5][3]_i_1_n_6 ,\y_reg[5][3]_i_1_n_7 }),
        .S({\y[5][3]_i_6_n_0 ,\y[5][3]_i_7_n_0 ,\y[5][3]_i_8_n_0 ,\y[5][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][7]_i_1_n_7 ),
        .Q(\y_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][7]_i_1_n_6 ),
        .Q(\y_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][7]_i_1_n_5 ),
        .Q(\y_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][7]_i_1_n_4 ),
        .Q(\y_reg[5] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][7]_i_1 
       (.CI(\y_reg[5][3]_i_1_n_0 ),
        .CO({\y_reg[5][7]_i_1_n_0 ,\y_reg[5][7]_i_1_n_1 ,\y_reg[5][7]_i_1_n_2 ,\y_reg[5][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][7]_i_2_n_0 ,\y[5][7]_i_3_n_0 ,\y[5][7]_i_4_n_0 ,\y[5][7]_i_5_n_0 }),
        .O({\y_reg[5][7]_i_1_n_4 ,\y_reg[5][7]_i_1_n_5 ,\y_reg[5][7]_i_1_n_6 ,\y_reg[5][7]_i_1_n_7 }),
        .S({\y[5][7]_i_6_n_0 ,\y[5][7]_i_7_n_0 ,\y[5][7]_i_8_n_0 ,\y[5][7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[5][7]_i_12 
       (.CI(1'b0),
        .CO({\y_reg[5][7]_i_12_n_0 ,\y_reg[5][7]_i_12_n_1 ,\y_reg[5][7]_i_12_n_2 ,\y_reg[5][7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[5][7]_i_15_n_0 ,\y[5][7]_i_16_n_0 ,\y[5][7]_i_17_n_0 ,1'b0}),
        .O({\y_reg[5][7]_i_12_n_4 ,\y_reg[5][7]_i_12_n_5 ,\y_reg[5][7]_i_12_n_6 ,\y_reg[5][7]_i_12_n_7 }),
        .S({\y[5][7]_i_18_n_0 ,\y[5][7]_i_19_n_0 ,\y[5][7]_i_20_n_0 ,\y[5][7]_i_21_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][11]_i_1_n_7 ),
        .Q(\y_reg[5] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5][11]_i_1_n_6 ),
        .Q(\y_reg[5] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][0]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][10]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][10] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][11]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][11] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][12]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][12]_i_2 
       (.CI(\y_reg[6][8]_i_2_n_0 ),
        .CO({\y_reg[6][12]_i_2_n_0 ,\y_reg[6][12]_i_2_n_1 ,\y_reg[6][12]_i_2_n_2 ,\y_reg[6][12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[6][12]_i_2_n_4 ,\y_reg[6][12]_i_2_n_5 ,\y_reg[6][12]_i_2_n_6 ,\y_reg[6][12]_i_2_n_7 }),
        .S({\y[6][12]_i_4_n_0 ,\y[6][12]_i_5_n_0 ,\y[6][12]_i_6_n_0 ,\y[6][12]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][13]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][13] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][14]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][14] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][15]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][15] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][16] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][16]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][16]_i_2 
       (.CI(\y_reg[6][12]_i_2_n_0 ),
        .CO({\y_reg[6][16]_i_2_n_0 ,\y_reg[6][16]_i_2_n_1 ,\y_reg[6][16]_i_2_n_2 ,\y_reg[6][16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[6][16]_i_2_n_4 ,\y_reg[6][16]_i_2_n_5 ,\y_reg[6][16]_i_2_n_6 ,\y_reg[6][16]_i_2_n_7 }),
        .S({\y[6][16]_i_4_n_0 ,\y[6][16]_i_5_n_0 ,\y[6][16]_i_6_n_0 ,\y[6][16]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][17] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][17]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][17] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][18] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][18]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][18] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][19] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][19]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][19] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][1]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][20] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][20]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][20]_i_2 
       (.CI(\y_reg[6][16]_i_2_n_0 ),
        .CO({\y_reg[6][20]_i_2_n_0 ,\y_reg[6][20]_i_2_n_1 ,\y_reg[6][20]_i_2_n_2 ,\y_reg[6][20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[6][20]_i_2_n_4 ,\y_reg[6][20]_i_2_n_5 ,\y_reg[6][20]_i_2_n_6 ,\y_reg[6][20]_i_2_n_7 }),
        .S({\y[6][20]_i_4_n_0 ,\y[6][20]_i_5_n_0 ,\y[6][20]_i_6_n_0 ,\y[6][20]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][21] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][21]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][21] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][22] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][22]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][22] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][23] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][23]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][23] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][24] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][24]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][24]_i_2 
       (.CI(\y_reg[6][20]_i_2_n_0 ),
        .CO({\y_reg[6][24]_i_2_n_0 ,\y_reg[6][24]_i_2_n_1 ,\y_reg[6][24]_i_2_n_2 ,\y_reg[6][24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[6][24]_i_2_n_4 ,\y_reg[6][24]_i_2_n_5 ,\y_reg[6][24]_i_2_n_6 ,\y_reg[6][24]_i_2_n_7 }),
        .S({\y[6][24]_i_4_n_0 ,\y[6][24]_i_5_n_0 ,\y[6][24]_i_6_n_0 ,\y[6][24]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][25] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][25]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][25] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][26] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][26]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][26] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][27] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][27]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][27] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][28] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][28]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][28]_i_2 
       (.CI(\y_reg[6][24]_i_2_n_0 ),
        .CO({\y_reg[6][28]_i_2_n_0 ,\y_reg[6][28]_i_2_n_1 ,\y_reg[6][28]_i_2_n_2 ,\y_reg[6][28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[6][28]_i_2_n_4 ,\y_reg[6][28]_i_2_n_5 ,\y_reg[6][28]_i_2_n_6 ,\y_reg[6][28]_i_2_n_7 }),
        .S({\y[6][28]_i_4_n_0 ,\y[6][28]_i_5_n_0 ,\y[6][28]_i_6_n_0 ,\y[6][28]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][29] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][29]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][29] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][2]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][30] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][30]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][30] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][31] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][31]_i_1_n_0 ),
        .Q(sel));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][31]_i_2 
       (.CI(\y_reg[6][28]_i_2_n_0 ),
        .CO({\NLW_y_reg[6][31]_i_2_CO_UNCONNECTED [3:2],\y_reg[6][31]_i_2_n_2 ,\y_reg[6][31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_reg[6][31]_i_2_O_UNCONNECTED [3],\y_reg[6][31]_i_2_n_5 ,\y_reg[6][31]_i_2_n_6 ,\y_reg[6][31]_i_2_n_7 }),
        .S({1'b0,\y[6][31]_i_5_n_0 ,\y[6][31]_i_6_n_0 ,\y[6][31]_i_7_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \y_reg[6][31]_i_20 
       (.CI(\y_reg[6][31]_i_36_n_0 ),
        .CO({\y_reg[6][31]_i_20_n_0 ,\y_reg[6][31]_i_20_n_1 ,\y_reg[6][31]_i_20_n_2 ,\y_reg[6][31]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[6][31]_i_37_n_0 ,\y[6][31]_i_38_n_0 ,\y[6][31]_i_39_n_0 ,\y[6][31]_i_40_n_0 }),
        .O(\NLW_y_reg[6][31]_i_20_O_UNCONNECTED [3:0]),
        .S({\y[6][31]_i_41_n_0 ,\y[6][31]_i_42_n_0 ,\y[6][31]_i_43_n_0 ,\y[6][31]_i_44_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \y_reg[6][31]_i_3 
       (.CI(\y_reg[6][31]_i_8_n_0 ),
        .CO({range45,\y_reg[6][31]_i_3_n_1 ,\y_reg[6][31]_i_3_n_2 ,\y_reg[6][31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[6][31]_i_9_n_0 ,\y[6][31]_i_10_n_0 ,\y[6][31]_i_11_n_0 ,\y[6][31]_i_12_n_0 }),
        .O(\NLW_y_reg[6][31]_i_3_O_UNCONNECTED [3:0]),
        .S({\y[6][31]_i_13_n_0 ,\y[6][31]_i_14_n_0 ,\y[6][31]_i_15_n_0 ,\y[6][31]_i_16_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \y_reg[6][31]_i_36 
       (.CI(1'b0),
        .CO({\y_reg[6][31]_i_36_n_0 ,\y_reg[6][31]_i_36_n_1 ,\y_reg[6][31]_i_36_n_2 ,\y_reg[6][31]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[6][31]_i_53_n_0 ,\y[6][31]_i_54_n_0 ,\y[6][31]_i_55_n_0 ,\y[6][31]_i_56_n_0 }),
        .O(\NLW_y_reg[6][31]_i_36_O_UNCONNECTED [3:0]),
        .S({\y[6][31]_i_57_n_0 ,\y[6][31]_i_58_n_0 ,\y[6][31]_i_59_n_0 ,\y[6][31]_i_60_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][31]_i_4 
       (.CI(\x_reg[6][28]_i_2_n_0 ),
        .CO({\NLW_y_reg[6][31]_i_4_CO_UNCONNECTED [3:2],\y_reg[6][31]_i_4_n_2 ,\y_reg[6][31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_reg[6][31]_i_4_O_UNCONNECTED [3],\y_reg[6][31]_i_4_n_5 ,\y_reg[6][31]_i_4_n_6 ,\y_reg[6][31]_i_4_n_7 }),
        .S({1'b0,\y[6][31]_i_17_n_0 ,\y[6][31]_i_18_n_0 ,\y[6][31]_i_19_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \y_reg[6][31]_i_8 
       (.CI(\y_reg[6][31]_i_20_n_0 ),
        .CO({\y_reg[6][31]_i_8_n_0 ,\y_reg[6][31]_i_8_n_1 ,\y_reg[6][31]_i_8_n_2 ,\y_reg[6][31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\y[6][31]_i_21_n_0 ,\y[6][31]_i_22_n_0 ,\y[6][31]_i_23_n_0 ,\y[6][31]_i_24_n_0 }),
        .O(\NLW_y_reg[6][31]_i_8_O_UNCONNECTED [3:0]),
        .S({\y[6][31]_i_25_n_0 ,\y[6][31]_i_26_n_0 ,\y[6][31]_i_27_n_0 ,\y[6][31]_i_28_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][3]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][4]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][4]_i_2 
       (.CI(1'b0),
        .CO({\y_reg[6][4]_i_2_n_0 ,\y_reg[6][4]_i_2_n_1 ,\y_reg[6][4]_i_2_n_2 ,\y_reg[6][4]_i_2_n_3 }),
        .CYINIT(\y[6][4]_i_4_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[6][4]_i_2_n_4 ,\y_reg[6][4]_i_2_n_5 ,\y_reg[6][4]_i_2_n_6 ,\y_reg[6][4]_i_2_n_7 }),
        .S({\y[6][4]_i_5_n_0 ,\y[6][4]_i_6_n_0 ,\y[6][4]_i_7_n_0 ,\y[6][4]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][5]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][6]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][7]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][8]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_reg[6][8]_i_2 
       (.CI(\y_reg[6][4]_i_2_n_0 ),
        .CO({\y_reg[6][8]_i_2_n_0 ,\y_reg[6][8]_i_2_n_1 ,\y_reg[6][8]_i_2_n_2 ,\y_reg[6][8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\y_reg[6][8]_i_2_n_4 ,\y_reg[6][8]_i_2_n_5 ,\y_reg[6][8]_i_2_n_6 ,\y_reg[6][8]_i_2_n_7 }),
        .S({\y[6][8]_i_4_n_0 ,\y[6][8]_i_5_n_0 ,\y[6][8]_i_6_n_0 ,\y[6][8]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\y[6][9]_i_1_n_0 ),
        .Q(\y_reg_n_0_[6][9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][11]_i_2 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[0][11]_i_3 
       (.I0(\z_reg[1] [10]),
        .I1(\z_reg[1] [11]),
        .O(\z[0][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[0][11]_i_4 
       (.I0(\z_reg[1] [9]),
        .I1(\z_reg[1] [10]),
        .O(\z[0][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[0][11]_i_5 
       (.I0(\z_reg[1] [8]),
        .I1(\z_reg[1] [9]),
        .O(\z[0][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[0][11]_i_6 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .I1(\z_reg[1] [8]),
        .O(\z[0][11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[0][15]_i_2 
       (.I0(\z_reg[1] [14]),
        .I1(\z_reg[1] [15]),
        .O(\z[0][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[0][15]_i_3 
       (.I0(\z_reg[1] [13]),
        .I1(\z_reg[1] [14]),
        .O(\z[0][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[0][15]_i_4 
       (.I0(\z_reg[1] [12]),
        .I1(\z_reg[1] [13]),
        .O(\z[0][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[0][15]_i_5 
       (.I0(\z_reg[1] [11]),
        .I1(\z_reg[1] [12]),
        .O(\z[0][15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h96AA)) 
    \z[0][7]_i_10 
       (.I0(\z_reg[1] [0]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(stage4y[31]),
        .I3(p_2_in),
        .O(\z[0][7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_100 
       (.I0(\y_reg[1] [22]),
        .O(\z[0][7]_i_100_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_101 
       (.I0(\y_reg[1] [21]),
        .O(\z[0][7]_i_101_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_103 
       (.I0(\y_reg[1] [23]),
        .I1(\x_reg_n_0_[1][29] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_104 
       (.I0(\y_reg[1] [22]),
        .I1(\x_reg_n_0_[1][28] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_104_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_105 
       (.I0(\y_reg[1] [21]),
        .I1(\x_reg_n_0_[1][27] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_105_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_106 
       (.I0(\y_reg[1] [20]),
        .I1(\x_reg_n_0_[1][26] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_106_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_107 
       (.I0(\y_reg[1] [7]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_132_n_5 ),
        .I3(\z[0][7]_i_156_n_0 ),
        .I4(\z[0][7]_i_157_n_0 ),
        .O(\z[0][7]_i_107_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_108 
       (.I0(\y_reg[1] [5]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_132_n_7 ),
        .I3(\z[0][7]_i_158_n_0 ),
        .I4(\z[0][7]_i_159_n_0 ),
        .O(\z[0][7]_i_108_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_109 
       (.I0(\y_reg[1] [3]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_160_n_5 ),
        .I3(\z[0][7]_i_161_n_0 ),
        .I4(\z[0][7]_i_162_n_0 ),
        .O(\z[0][7]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2E2FF00E2)) 
    \z[0][7]_i_110 
       (.I0(\y_reg[1] [1]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_160_n_7 ),
        .I3(\z[0][7]_i_163_n_0 ),
        .I4(\y_reg[1] [0]),
        .I5(stage4y[0]),
        .O(\z[0][7]_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_111 
       (.I0(\z[0][7]_i_165_n_0 ),
        .I1(\z[0][7]_i_166_n_0 ),
        .I2(\z_reg[0][7]_i_132_n_6 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [6]),
        .O(\z[0][7]_i_111_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_112 
       (.I0(\z[0][7]_i_167_n_0 ),
        .I1(\z[0][7]_i_168_n_0 ),
        .I2(\z_reg[0][7]_i_160_n_4 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [4]),
        .O(\z[0][7]_i_112_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_113 
       (.I0(\z[0][7]_i_169_n_0 ),
        .I1(\z[0][7]_i_170_n_0 ),
        .I2(\z_reg[0][7]_i_160_n_6 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [2]),
        .O(\z[0][7]_i_113_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \z[0][7]_i_114 
       (.I0(stage4y[0]),
        .I1(\y_reg[1] [0]),
        .I2(\z[0][7]_i_171_n_0 ),
        .O(\z[0][7]_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_115 
       (.I0(\z_reg[0][7]_i_138_n_5 ),
        .I1(stage4y[31]),
        .I2(stage4y[15]),
        .O(\z[0][7]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_116 
       (.I0(\y_reg[1] [14]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_85_n_6 ),
        .I3(stage4y[14]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_138_n_6 ),
        .O(\z[0][7]_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_117 
       (.I0(\z_reg[0][7]_i_138_n_7 ),
        .I1(stage4y[31]),
        .I2(stage4y[13]),
        .O(\z[0][7]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_118 
       (.I0(\y_reg[1] [12]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_119_n_4 ),
        .I3(stage4y[12]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_172_n_4 ),
        .O(\z[0][7]_i_118_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_120 
       (.I0(\z_reg[0][7]_i_172_n_5 ),
        .I1(stage4y[31]),
        .I2(stage4y[11]),
        .O(\z[0][7]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_121 
       (.I0(\y_reg[1] [10]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_119_n_6 ),
        .I3(stage4y[10]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_172_n_6 ),
        .O(\z[0][7]_i_121_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_122 
       (.I0(\z_reg[0][7]_i_172_n_7 ),
        .I1(stage4y[31]),
        .I2(stage4y[9]),
        .O(\z[0][7]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_123 
       (.I0(\y_reg[1] [8]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_132_n_4 ),
        .I3(stage4y[8]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_178_n_4 ),
        .O(\z[0][7]_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_124 
       (.I0(\y_reg[1] [15]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_85_n_5 ),
        .I3(stage4y[15]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_138_n_5 ),
        .O(\z[0][7]_i_124_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_125 
       (.I0(\z_reg[0][7]_i_138_n_6 ),
        .I1(stage4y[31]),
        .I2(stage4y[14]),
        .O(\z[0][7]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_126 
       (.I0(\y_reg[1] [13]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_85_n_7 ),
        .I3(stage4y[13]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_138_n_7 ),
        .O(\z[0][7]_i_126_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_127 
       (.I0(\z_reg[0][7]_i_172_n_4 ),
        .I1(stage4y[31]),
        .I2(stage4y[12]),
        .O(\z[0][7]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_128 
       (.I0(\y_reg[1] [11]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_119_n_5 ),
        .I3(stage4y[11]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_172_n_5 ),
        .O(\z[0][7]_i_128_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_129 
       (.I0(\z_reg[0][7]_i_172_n_6 ),
        .I1(stage4y[31]),
        .I2(stage4y[10]),
        .O(\z[0][7]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_130 
       (.I0(\y_reg[1] [9]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_119_n_7 ),
        .I3(stage4y[9]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_172_n_7 ),
        .O(\z[0][7]_i_130_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_131 
       (.I0(\z_reg[0][7]_i_178_n_4 ),
        .I1(stage4y[31]),
        .I2(stage4y[8]),
        .O(\z[0][7]_i_131_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_134 
       (.I0(\y_reg[1] [20]),
        .O(\z[0][7]_i_134_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_135 
       (.I0(\y_reg[1] [19]),
        .O(\z[0][7]_i_135_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_136 
       (.I0(\y_reg[1] [18]),
        .O(\z[0][7]_i_136_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_137 
       (.I0(\y_reg[1] [17]),
        .O(\z[0][7]_i_137_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_139 
       (.I0(\y_reg[1] [16]),
        .O(\z[0][7]_i_139_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    \z[0][7]_i_14 
       (.I0(\z_reg[0][7]_i_36_n_5 ),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_37_n_5 ),
        .I3(stage4y[31]),
        .I4(\z[0][7]_i_38_n_0 ),
        .O(\z[0][7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_140 
       (.I0(\y_reg[1] [15]),
        .O(\z[0][7]_i_140_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_141 
       (.I0(\y_reg[1] [14]),
        .O(\z[0][7]_i_141_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_142 
       (.I0(\y_reg[1] [13]),
        .O(\z[0][7]_i_142_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_143 
       (.I0(stage4y[28]),
        .O(\z[0][7]_i_143_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_144 
       (.I0(stage4y[27]),
        .O(\z[0][7]_i_144_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_145 
       (.I0(stage4y[26]),
        .O(\z[0][7]_i_145_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_146 
       (.I0(stage4y[25]),
        .O(\z[0][7]_i_146_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_147 
       (.I0(stage4y[24]),
        .O(\z[0][7]_i_147_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_148 
       (.I0(stage4y[23]),
        .O(\z[0][7]_i_148_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_149 
       (.I0(stage4y[22]),
        .O(\z[0][7]_i_149_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_15 
       (.I0(\y_reg[1] [29]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_36_n_7 ),
        .I3(\z[0][7]_i_39_n_0 ),
        .I4(\z[0][7]_i_40_n_0 ),
        .O(\z[0][7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_150 
       (.I0(stage4y[21]),
        .O(\z[0][7]_i_150_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_152 
       (.I0(\y_reg[1] [19]),
        .I1(\x_reg_n_0_[1][25] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_152_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_153 
       (.I0(\y_reg[1] [18]),
        .I1(\x_reg_n_0_[1][24] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_153_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_154 
       (.I0(\y_reg[1] [17]),
        .I1(\x_reg_n_0_[1][23] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_154_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_155 
       (.I0(\y_reg[1] [16]),
        .I1(\x_reg_n_0_[1][22] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_155_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_156 
       (.I0(\z_reg[0][7]_i_178_n_5 ),
        .I1(stage4y[31]),
        .I2(stage4y[7]),
        .O(\z[0][7]_i_156_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_157 
       (.I0(\y_reg[1] [6]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_132_n_6 ),
        .I3(stage4y[6]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_178_n_6 ),
        .O(\z[0][7]_i_157_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_158 
       (.I0(\z_reg[0][7]_i_178_n_7 ),
        .I1(stage4y[31]),
        .I2(stage4y[5]),
        .O(\z[0][7]_i_158_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_159 
       (.I0(\y_reg[1] [4]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_160_n_4 ),
        .I3(stage4y[4]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_196_n_4 ),
        .O(\z[0][7]_i_159_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_16 
       (.I0(\y_reg[1] [27]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_41_n_5 ),
        .I3(\z[0][7]_i_42_n_0 ),
        .I4(\z[0][7]_i_43_n_0 ),
        .O(\z[0][7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_161 
       (.I0(\z_reg[0][7]_i_196_n_5 ),
        .I1(stage4y[31]),
        .I2(stage4y[3]),
        .O(\z[0][7]_i_161_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_162 
       (.I0(\y_reg[1] [2]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_160_n_6 ),
        .I3(stage4y[2]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_196_n_6 ),
        .O(\z[0][7]_i_162_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_163 
       (.I0(\z_reg[0][7]_i_196_n_7 ),
        .I1(stage4y[31]),
        .I2(stage4y[1]),
        .O(\z[0][7]_i_163_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_165 
       (.I0(\y_reg[1] [7]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_132_n_5 ),
        .I3(stage4y[7]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_178_n_5 ),
        .O(\z[0][7]_i_165_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_166 
       (.I0(\z_reg[0][7]_i_178_n_6 ),
        .I1(stage4y[31]),
        .I2(stage4y[6]),
        .O(\z[0][7]_i_166_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_167 
       (.I0(\y_reg[1] [5]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_132_n_7 ),
        .I3(stage4y[5]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_178_n_7 ),
        .O(\z[0][7]_i_167_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_168 
       (.I0(\z_reg[0][7]_i_196_n_4 ),
        .I1(stage4y[31]),
        .I2(stage4y[4]),
        .O(\z[0][7]_i_168_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_169 
       (.I0(\y_reg[1] [3]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_160_n_5 ),
        .I3(stage4y[3]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_196_n_5 ),
        .O(\z[0][7]_i_169_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_17 
       (.I0(\y_reg[1] [25]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_41_n_7 ),
        .I3(\z[0][7]_i_44_n_0 ),
        .I4(\z[0][7]_i_45_n_0 ),
        .O(\z[0][7]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_170 
       (.I0(\z_reg[0][7]_i_196_n_6 ),
        .I1(stage4y[31]),
        .I2(stage4y[2]),
        .O(\z[0][7]_i_170_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_171 
       (.I0(\y_reg[1] [1]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_160_n_7 ),
        .I3(stage4y[1]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_196_n_7 ),
        .O(\z[0][7]_i_171_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_173 
       (.I0(\y_reg[1] [12]),
        .O(\z[0][7]_i_173_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_174 
       (.I0(\y_reg[1] [11]),
        .O(\z[0][7]_i_174_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_175 
       (.I0(\y_reg[1] [10]),
        .O(\z[0][7]_i_175_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_176 
       (.I0(\y_reg[1] [9]),
        .O(\z[0][7]_i_176_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_179 
       (.I0(\y_reg[1] [8]),
        .O(\z[0][7]_i_179_n_0 ));
  LUT5 #(
    .INIT(32'h00008777)) 
    \z[0][7]_i_18 
       (.I0(stage4y[31]),
        .I1(\z_reg[0][7]_i_37_n_5 ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .I3(\z_reg[0][7]_i_36_n_5 ),
        .I4(\z[0][7]_i_46_n_0 ),
        .O(\z[0][7]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_180 
       (.I0(\y_reg[1] [7]),
        .O(\z[0][7]_i_180_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_181 
       (.I0(\y_reg[1] [6]),
        .O(\z[0][7]_i_181_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_182 
       (.I0(\y_reg[1] [5]),
        .O(\z[0][7]_i_182_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_183 
       (.I0(stage4y[20]),
        .O(\z[0][7]_i_183_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_184 
       (.I0(stage4y[19]),
        .O(\z[0][7]_i_184_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_185 
       (.I0(stage4y[18]),
        .O(\z[0][7]_i_185_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_186 
       (.I0(stage4y[17]),
        .O(\z[0][7]_i_186_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_187 
       (.I0(stage4y[16]),
        .O(\z[0][7]_i_187_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_188 
       (.I0(stage4y[15]),
        .O(\z[0][7]_i_188_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_189 
       (.I0(stage4y[14]),
        .O(\z[0][7]_i_189_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_19 
       (.I0(\z[0][7]_i_47_n_0 ),
        .I1(\z[0][7]_i_48_n_0 ),
        .I2(\z_reg[0][7]_i_41_n_4 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [28]),
        .O(\z[0][7]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_190 
       (.I0(stage4y[13]),
        .O(\z[0][7]_i_190_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_191 
       (.I0(\y_reg[1] [15]),
        .I1(\x_reg_n_0_[1][21] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_191_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_192 
       (.I0(\y_reg[1] [14]),
        .I1(\x_reg_n_0_[1][20] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_192_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_193 
       (.I0(\y_reg[1] [13]),
        .I1(\x_reg_n_0_[1][19] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_193_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_194 
       (.I0(\y_reg[1] [12]),
        .I1(\x_reg_n_0_[1][18] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_194_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_197 
       (.I0(\y_reg[1] [0]),
        .O(\z[0][7]_i_197_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_198 
       (.I0(\y_reg[1] [4]),
        .O(\z[0][7]_i_198_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_199 
       (.I0(\y_reg[1] [3]),
        .O(\z[0][7]_i_199_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_20 
       (.I0(\z[0][7]_i_49_n_0 ),
        .I1(\z[0][7]_i_50_n_0 ),
        .I2(\z_reg[0][7]_i_41_n_6 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [26]),
        .O(\z[0][7]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_200 
       (.I0(\y_reg[1] [2]),
        .O(\z[0][7]_i_200_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_201 
       (.I0(\y_reg[1] [1]),
        .O(\z[0][7]_i_201_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_202 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_202_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_203 
       (.I0(\y_reg[1] [3]),
        .I1(\x_reg_n_0_[1][9] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_203_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_204 
       (.I0(\y_reg[1] [2]),
        .I1(\x_reg_n_0_[1][8] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_204_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_205 
       (.I0(\y_reg[1] [1]),
        .I1(\x_reg_n_0_[1][7] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_205_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_206 
       (.I0(\y_reg[1] [0]),
        .I1(\x_reg_n_0_[1][6] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_206_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_207 
       (.I0(stage4y[12]),
        .O(\z[0][7]_i_207_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_208 
       (.I0(stage4y[11]),
        .O(\z[0][7]_i_208_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_209 
       (.I0(stage4y[10]),
        .O(\z[0][7]_i_209_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_21 
       (.I0(\z[0][7]_i_51_n_0 ),
        .I1(\z[0][7]_i_52_n_0 ),
        .I2(\z_reg[0][7]_i_53_n_4 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [24]),
        .O(\z[0][7]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_210 
       (.I0(stage4y[9]),
        .O(\z[0][7]_i_210_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_211 
       (.I0(\y_reg[1] [11]),
        .I1(\x_reg_n_0_[1][17] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_211_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_212 
       (.I0(\y_reg[1] [10]),
        .I1(\x_reg_n_0_[1][16] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_212_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_213 
       (.I0(\y_reg[1] [9]),
        .I1(\x_reg_n_0_[1][15] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_213_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_214 
       (.I0(\y_reg[1] [8]),
        .I1(\x_reg_n_0_[1][14] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_214_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_215 
       (.I0(stage4y[8]),
        .O(\z[0][7]_i_215_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_216 
       (.I0(stage4y[7]),
        .O(\z[0][7]_i_216_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_217 
       (.I0(stage4y[6]),
        .O(\z[0][7]_i_217_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_218 
       (.I0(stage4y[5]),
        .O(\z[0][7]_i_218_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_219 
       (.I0(\y_reg[1] [7]),
        .I1(\x_reg_n_0_[1][13] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_219_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_220 
       (.I0(\y_reg[1] [6]),
        .I1(\x_reg_n_0_[1][12] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_220_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_221 
       (.I0(\y_reg[1] [5]),
        .I1(\x_reg_n_0_[1][11] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_221_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_222 
       (.I0(\y_reg[1] [4]),
        .I1(\x_reg_n_0_[1][10] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_222_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_223 
       (.I0(stage4y[0]),
        .O(\z[0][7]_i_223_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_224 
       (.I0(stage4y[4]),
        .O(\z[0][7]_i_224_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_225 
       (.I0(stage4y[3]),
        .O(\z[0][7]_i_225_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_226 
       (.I0(stage4y[2]),
        .O(\z[0][7]_i_226_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_227 
       (.I0(stage4y[1]),
        .O(\z[0][7]_i_227_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_23 
       (.I0(B0),
        .O(\z[0][7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_24 
       (.I0(\y_reg[1] [30]),
        .I1(B0),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_25 
       (.I0(\y_reg[1] [29]),
        .I1(B0),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_26 
       (.I0(\y_reg[1] [28]),
        .I1(B0),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_28 
       (.I0(\y_reg[1] [23]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_53_n_5 ),
        .I3(\z[0][7]_i_68_n_0 ),
        .I4(\z[0][7]_i_69_n_0 ),
        .O(\z[0][7]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_29 
       (.I0(\y_reg[1] [21]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_53_n_7 ),
        .I3(\z[0][7]_i_70_n_0 ),
        .I4(\z[0][7]_i_71_n_0 ),
        .O(\z[0][7]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[0][7]_i_3 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .I1(\z_reg[1] [7]),
        .O(\z[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_30 
       (.I0(\y_reg[1] [19]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_72_n_5 ),
        .I3(\z[0][7]_i_73_n_0 ),
        .I4(\z[0][7]_i_74_n_0 ),
        .O(\z[0][7]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_31 
       (.I0(\y_reg[1] [17]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_72_n_7 ),
        .I3(\z[0][7]_i_75_n_0 ),
        .I4(\z[0][7]_i_76_n_0 ),
        .O(\z[0][7]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_32 
       (.I0(\z[0][7]_i_77_n_0 ),
        .I1(\z[0][7]_i_78_n_0 ),
        .I2(\z_reg[0][7]_i_53_n_6 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [22]),
        .O(\z[0][7]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_33 
       (.I0(\z[0][7]_i_79_n_0 ),
        .I1(\z[0][7]_i_80_n_0 ),
        .I2(\z_reg[0][7]_i_72_n_4 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [20]),
        .O(\z[0][7]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_34 
       (.I0(\z[0][7]_i_81_n_0 ),
        .I1(\z[0][7]_i_82_n_0 ),
        .I2(\z_reg[0][7]_i_72_n_6 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [18]),
        .O(\z[0][7]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_35 
       (.I0(\z[0][7]_i_83_n_0 ),
        .I1(\z[0][7]_i_84_n_0 ),
        .I2(\z_reg[0][7]_i_85_n_4 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [16]),
        .O(\z[0][7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_38 
       (.I0(\y_reg[1] [30]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_36_n_6 ),
        .I3(stage4y[30]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_37_n_6 ),
        .O(\z[0][7]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_39 
       (.I0(\z_reg[0][7]_i_37_n_7 ),
        .I1(stage4y[31]),
        .I2(stage4y[29]),
        .O(\z[0][7]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    \z[0][7]_i_4 
       (.I0(\z_reg[1] [6]),
        .I1(p_2_in),
        .I2(stage4y[31]),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_40 
       (.I0(\y_reg[1] [28]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_41_n_4 ),
        .I3(stage4y[28]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_89_n_4 ),
        .O(\z[0][7]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_42 
       (.I0(\z_reg[0][7]_i_89_n_5 ),
        .I1(stage4y[31]),
        .I2(stage4y[27]),
        .O(\z[0][7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_43 
       (.I0(\y_reg[1] [26]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_41_n_6 ),
        .I3(stage4y[26]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_89_n_6 ),
        .O(\z[0][7]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_44 
       (.I0(\z_reg[0][7]_i_89_n_7 ),
        .I1(stage4y[31]),
        .I2(stage4y[25]),
        .O(\z[0][7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_45 
       (.I0(\y_reg[1] [24]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_53_n_4 ),
        .I3(stage4y[24]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_97_n_4 ),
        .O(\z[0][7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_46 
       (.I0(\y_reg[1] [30]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_36_n_6 ),
        .I3(stage4y[30]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_37_n_6 ),
        .O(\z[0][7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_47 
       (.I0(\y_reg[1] [29]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_36_n_7 ),
        .I3(stage4y[29]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_37_n_7 ),
        .O(\z[0][7]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_48 
       (.I0(\z_reg[0][7]_i_89_n_4 ),
        .I1(stage4y[31]),
        .I2(stage4y[28]),
        .O(\z[0][7]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_49 
       (.I0(\y_reg[1] [27]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_41_n_5 ),
        .I3(stage4y[27]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_89_n_5 ),
        .O(\z[0][7]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    \z[0][7]_i_5 
       (.I0(\z_reg[1] [5]),
        .I1(p_2_in),
        .I2(stage4y[31]),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_50 
       (.I0(\z_reg[0][7]_i_89_n_6 ),
        .I1(stage4y[31]),
        .I2(stage4y[26]),
        .O(\z[0][7]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_51 
       (.I0(\y_reg[1] [25]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_41_n_7 ),
        .I3(stage4y[25]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_89_n_7 ),
        .O(\z[0][7]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_52 
       (.I0(\z_reg[0][7]_i_97_n_4 ),
        .I1(stage4y[31]),
        .I2(stage4y[24]),
        .O(\z[0][7]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_55 
       (.I0(\y_reg[1] [27]),
        .I1(B0),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_56 
       (.I0(\y_reg[1] [26]),
        .I1(B0),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_57 
       (.I0(\y_reg[1] [25]),
        .I1(B0),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \z[0][7]_i_58 
       (.I0(\y_reg[1] [24]),
        .I1(\x_reg_n_0_[1][30] ),
        .I2(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    \z[0][7]_i_6 
       (.I0(\z_reg[1] [4]),
        .I1(p_2_in),
        .I2(stage4y[31]),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_60 
       (.I0(\y_reg[1] [15]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_85_n_5 ),
        .I3(\z[0][7]_i_115_n_0 ),
        .I4(\z[0][7]_i_116_n_0 ),
        .O(\z[0][7]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_61 
       (.I0(\y_reg[1] [13]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_85_n_7 ),
        .I3(\z[0][7]_i_117_n_0 ),
        .I4(\z[0][7]_i_118_n_0 ),
        .O(\z[0][7]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_62 
       (.I0(\y_reg[1] [11]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_119_n_5 ),
        .I3(\z[0][7]_i_120_n_0 ),
        .I4(\z[0][7]_i_121_n_0 ),
        .O(\z[0][7]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    \z[0][7]_i_63 
       (.I0(\y_reg[1] [9]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_119_n_7 ),
        .I3(\z[0][7]_i_122_n_0 ),
        .I4(\z[0][7]_i_123_n_0 ),
        .O(\z[0][7]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_64 
       (.I0(\z[0][7]_i_124_n_0 ),
        .I1(\z[0][7]_i_125_n_0 ),
        .I2(\z_reg[0][7]_i_85_n_6 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [14]),
        .O(\z[0][7]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_65 
       (.I0(\z[0][7]_i_126_n_0 ),
        .I1(\z[0][7]_i_127_n_0 ),
        .I2(\z_reg[0][7]_i_119_n_4 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [12]),
        .O(\z[0][7]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_66 
       (.I0(\z[0][7]_i_128_n_0 ),
        .I1(\z[0][7]_i_129_n_0 ),
        .I2(\z_reg[0][7]_i_119_n_6 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [10]),
        .O(\z[0][7]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h41444111)) 
    \z[0][7]_i_67 
       (.I0(\z[0][7]_i_130_n_0 ),
        .I1(\z[0][7]_i_131_n_0 ),
        .I2(\z_reg[0][7]_i_132_n_4 ),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .I4(\y_reg[1] [8]),
        .O(\z[0][7]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_68 
       (.I0(\z_reg[0][7]_i_97_n_5 ),
        .I1(stage4y[31]),
        .I2(stage4y[23]),
        .O(\z[0][7]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_69 
       (.I0(\y_reg[1] [22]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_53_n_6 ),
        .I3(stage4y[22]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_97_n_6 ),
        .O(\z[0][7]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hA695)) 
    \z[0][7]_i_7 
       (.I0(\z_reg[1] [3]),
        .I1(p_2_in),
        .I2(stage4y[31]),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_70 
       (.I0(\z_reg[0][7]_i_97_n_7 ),
        .I1(stage4y[31]),
        .I2(stage4y[21]),
        .O(\z[0][7]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_71 
       (.I0(\y_reg[1] [20]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_72_n_4 ),
        .I3(stage4y[20]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_133_n_4 ),
        .O(\z[0][7]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_73 
       (.I0(\z_reg[0][7]_i_133_n_5 ),
        .I1(stage4y[31]),
        .I2(stage4y[19]),
        .O(\z[0][7]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_74 
       (.I0(\y_reg[1] [18]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_72_n_6 ),
        .I3(stage4y[18]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_133_n_6 ),
        .O(\z[0][7]_i_74_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_75 
       (.I0(\z_reg[0][7]_i_133_n_7 ),
        .I1(stage4y[31]),
        .I2(stage4y[17]),
        .O(\z[0][7]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \z[0][7]_i_76 
       (.I0(\y_reg[1] [16]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_85_n_4 ),
        .I3(stage4y[16]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_138_n_4 ),
        .O(\z[0][7]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_77 
       (.I0(\y_reg[1] [23]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_53_n_5 ),
        .I3(stage4y[23]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_97_n_5 ),
        .O(\z[0][7]_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_78 
       (.I0(\z_reg[0][7]_i_97_n_6 ),
        .I1(stage4y[31]),
        .I2(stage4y[22]),
        .O(\z[0][7]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_79 
       (.I0(\y_reg[1] [21]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_53_n_7 ),
        .I3(stage4y[21]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_97_n_7 ),
        .O(\z[0][7]_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hA695)) 
    \z[0][7]_i_8 
       (.I0(\z_reg[1] [2]),
        .I1(p_2_in),
        .I2(stage4y[31]),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_80 
       (.I0(\z_reg[0][7]_i_133_n_4 ),
        .I1(stage4y[31]),
        .I2(stage4y[20]),
        .O(\z[0][7]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_81 
       (.I0(\y_reg[1] [19]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_72_n_5 ),
        .I3(stage4y[19]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_133_n_5 ),
        .O(\z[0][7]_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_82 
       (.I0(\z_reg[0][7]_i_133_n_6 ),
        .I1(stage4y[31]),
        .I2(stage4y[18]),
        .O(\z[0][7]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \z[0][7]_i_83 
       (.I0(\y_reg[1] [17]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .I2(\z_reg[0][7]_i_72_n_7 ),
        .I3(stage4y[17]),
        .I4(stage4y[31]),
        .I5(\z_reg[0][7]_i_133_n_7 ),
        .O(\z[0][7]_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \z[0][7]_i_84 
       (.I0(\z_reg[0][7]_i_138_n_4 ),
        .I1(stage4y[31]),
        .I2(stage4y[16]),
        .O(\z[0][7]_i_84_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_86 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_86_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_87 
       (.I0(\y_reg[1] [30]),
        .O(\z[0][7]_i_87_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_88 
       (.I0(\y_reg[1] [29]),
        .O(\z[0][7]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h5955)) 
    \z[0][7]_i_9 
       (.I0(\z_reg[1] [1]),
        .I1(p_2_in),
        .I2(stage4y[31]),
        .I3(\y_reg[1][31]_rep_n_0 ),
        .O(\z[0][7]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_90 
       (.I0(stage4y[31]),
        .O(\z[0][7]_i_90_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_91 
       (.I0(stage4y[30]),
        .O(\z[0][7]_i_91_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_92 
       (.I0(stage4y[29]),
        .O(\z[0][7]_i_92_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_93 
       (.I0(\y_reg[1] [28]),
        .O(\z[0][7]_i_93_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_94 
       (.I0(\y_reg[1] [27]),
        .O(\z[0][7]_i_94_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_95 
       (.I0(\y_reg[1] [26]),
        .O(\z[0][7]_i_95_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_96 
       (.I0(\y_reg[1] [25]),
        .O(\z[0][7]_i_96_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_98 
       (.I0(\y_reg[1] [24]),
        .O(\z[0][7]_i_98_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[0][7]_i_99 
       (.I0(\y_reg[1] [23]),
        .O(\z[0][7]_i_99_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[1][0]_i_1 
       (.I0(\z_reg[2] [0]),
        .O(p_9_out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \z[1][12]_i_2 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .O(\z[1][12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][12]_i_3 
       (.I0(\z_reg[2] [11]),
        .I1(\z_reg[2] [12]),
        .O(\z[1][12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][12]_i_4 
       (.I0(\z_reg[2] [10]),
        .I1(\z_reg[2] [11]),
        .O(\z[1][12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][12]_i_5 
       (.I0(\z_reg[2] [9]),
        .I1(\z_reg[2] [10]),
        .O(\z[1][12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[1][12]_i_6 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .I1(\z_reg[2] [9]),
        .O(\z[1][12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][15]_i_2 
       (.I0(\z_reg[2] [14]),
        .I1(\z_reg[2] [15]),
        .O(\z[1][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][15]_i_3 
       (.I0(\z_reg[2] [13]),
        .I1(\z_reg[2] [14]),
        .O(\z[1][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][15]_i_4 
       (.I0(\z_reg[2] [12]),
        .I1(\z_reg[2] [13]),
        .O(\z[1][15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[1][4]_i_2 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .O(\z[1][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[1][4]_i_3 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .I1(\z_reg[2] [4]),
        .O(\z[1][4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[1][4]_i_4 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .I1(\z_reg[2] [3]),
        .O(\z[1][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][4]_i_5 
       (.I0(\z_reg[2] [2]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .O(\z[1][4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[1][4]_i_6 
       (.I0(\z_reg[2] [1]),
        .I1(\y_reg[1][31]_rep_n_0 ),
        .O(\z[1][4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[1][8]_i_2 
       (.I0(\z_reg[2] [8]),
        .I1(\z_reg[2] [7]),
        .O(\z[1][8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][8]_i_3 
       (.I0(\z_reg[2] [6]),
        .I1(\z_reg[2] [7]),
        .O(\z[1][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[1][8]_i_4 
       (.I0(\y_reg[1][31]_rep_n_0 ),
        .I1(\z_reg[2] [6]),
        .O(\z[1][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[1][8]_i_5 
       (.I0(\z_reg[2] [5]),
        .I1(\z_reg[2] [4]),
        .O(\z[1][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[2][11]_i_2 
       (.I0(\y_reg[3] [31]),
        .O(\z[2][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[2][11]_i_3 
       (.I0(\z_reg[3] [10]),
        .I1(\z_reg[3] [11]),
        .O(\z[2][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[2][11]_i_4 
       (.I0(\y_reg[3] [31]),
        .I1(\z_reg[3] [10]),
        .O(\z[2][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[2][11]_i_5 
       (.I0(\z_reg[3] [9]),
        .I1(\z_reg[3] [8]),
        .O(\z[2][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[2][11]_i_6 
       (.I0(\z_reg[3] [7]),
        .I1(\z_reg[3] [8]),
        .O(\z[2][11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[2][15]_i_2 
       (.I0(\z_reg[3] [14]),
        .I1(\z_reg[3] [15]),
        .O(\z[2][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[2][15]_i_3 
       (.I0(\z_reg[3] [13]),
        .I1(\z_reg[3] [14]),
        .O(\z[2][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[2][15]_i_4 
       (.I0(\z_reg[3] [12]),
        .I1(\z_reg[3] [13]),
        .O(\z[2][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[2][15]_i_5 
       (.I0(\z_reg[3] [11]),
        .I1(\z_reg[3] [12]),
        .O(\z[2][15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[2][3]_i_2 
       (.I0(\z_reg[3] [3]),
        .I1(\y_reg[3] [31]),
        .O(\z[2][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[2][3]_i_3 
       (.I0(\z_reg[3] [2]),
        .I1(\y_reg[3] [31]),
        .O(\z[2][3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[2][3]_i_4 
       (.I0(\z_reg[3] [1]),
        .O(\z[2][3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[2][7]_i_2 
       (.I0(\y_reg[3] [31]),
        .O(\z[2][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[2][7]_i_3 
       (.I0(\y_reg[3] [31]),
        .I1(\z_reg[3] [7]),
        .O(\z[2][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[2][7]_i_4 
       (.I0(\z_reg[3] [6]),
        .I1(\z_reg[3] [5]),
        .O(\z[2][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[2][7]_i_5 
       (.I0(\y_reg[3] [31]),
        .I1(\z_reg[3] [5]),
        .O(\z[2][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[2][7]_i_6 
       (.I0(\y_reg[3] [31]),
        .I1(\z_reg[3] [4]),
        .O(\z[2][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[3][10]_i_2 
       (.I0(\z_reg[4] [10]),
        .I1(\z_reg[4] [9]),
        .O(\z[3][10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[3][10]_i_3 
       (.I0(\z_reg[4] [8]),
        .I1(\z_reg[4] [9]),
        .O(\z[3][10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[3][10]_i_4 
       (.I0(\y_reg[3] [31]),
        .I1(\z_reg[4] [8]),
        .O(\z[3][10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[3][10]_i_5 
       (.I0(\z_reg[4] [7]),
        .I1(\z_reg[4] [6]),
        .O(\z[3][10]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[3][14]_i_2 
       (.I0(\y_reg[3] [31]),
        .O(\z[3][14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[3][14]_i_3 
       (.I0(\z_reg[4] [13]),
        .I1(\z_reg[4] [14]),
        .O(\z[3][14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[3][14]_i_4 
       (.I0(\z_reg[4] [12]),
        .I1(\z_reg[4] [13]),
        .O(\z[3][14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[3][14]_i_5 
       (.I0(\z_reg[4] [11]),
        .I1(\z_reg[4] [12]),
        .O(\z[3][14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[3][14]_i_6 
       (.I0(\y_reg[3] [31]),
        .I1(\z_reg[4] [11]),
        .O(\z[3][14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[3][15]_i_2 
       (.I0(\z_reg[4] [14]),
        .I1(\z_reg[4] [15]),
        .O(\z[3][15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[3][6]_i_2 
       (.I0(\y_reg[3] [31]),
        .O(\z[3][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[3][6]_i_3 
       (.I0(\y_reg[3] [31]),
        .I1(\z_reg[4] [6]),
        .O(\z[3][6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[3][6]_i_4 
       (.I0(\y_reg[3] [31]),
        .I1(\z_reg[4] [5]),
        .O(\z[3][6]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[3][6]_i_5 
       (.I0(\z_reg[4] [4]),
        .O(\z[3][6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[4][10]_i_2 
       (.I0(\z_reg[5] [9]),
        .I1(\z_reg[5] [10]),
        .O(\z[4][10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[4][10]_i_3 
       (.I0(\y_reg[5] [31]),
        .I1(\z_reg[5] [9]),
        .O(\z[4][10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[4][10]_i_4 
       (.I0(\z_reg[5] [8]),
        .I1(\z_reg[5] [7]),
        .O(\z[4][10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[4][10]_i_5 
       (.I0(\z_reg[5] [6]),
        .I1(\z_reg[5] [7]),
        .O(\z[4][10]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[4][14]_i_2 
       (.I0(\y_reg[5] [31]),
        .O(\z[4][14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[4][14]_i_3 
       (.I0(\z_reg[5] [13]),
        .I1(\z_reg[5] [14]),
        .O(\z[4][14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[4][14]_i_4 
       (.I0(\z_reg[5] [12]),
        .I1(\z_reg[5] [13]),
        .O(\z[4][14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[4][14]_i_5 
       (.I0(\y_reg[5] [31]),
        .I1(\z_reg[5] [12]),
        .O(\z[4][14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[4][14]_i_6 
       (.I0(\z_reg[5] [11]),
        .I1(\z_reg[5] [10]),
        .O(\z[4][14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[4][15]_i_2 
       (.I0(\z_reg[5] [14]),
        .I1(\z_reg[5] [15]),
        .O(\z[4][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \z[4][2]_i_1 
       (.I0(\y_reg[5] [31]),
        .O(p_3_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \z[4][3]_i_1 
       (.I0(\y_reg[5] [31]),
        .I1(\z_reg[5] [3]),
        .O(p_3_out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \z[4][6]_i_2 
       (.I0(\y_reg[5] [31]),
        .O(\z[4][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[4][6]_i_3 
       (.I0(\z_reg[5] [5]),
        .I1(\z_reg[5] [6]),
        .O(\z[4][6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[4][6]_i_4 
       (.I0(\z_reg[5] [4]),
        .I1(\z_reg[5] [5]),
        .O(\z[4][6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[4][6]_i_5 
       (.I0(\y_reg[5] [31]),
        .I1(\z_reg[5] [4]),
        .O(\z[4][6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[4][6]_i_6 
       (.I0(\y_reg[5] [31]),
        .I1(\z_reg[5] [3]),
        .O(\z[4][6]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[5][11]_i_2 
       (.I0(sel),
        .O(p_0_in0));
  LUT1 #(
    .INIT(2'h1)) 
    \z[5][11]_i_3 
       (.I0(sel),
        .O(\z[5][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[5][11]_i_4 
       (.I0(sel),
        .I1(\z_reg[6] [11]),
        .O(\z[5][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[5][11]_i_5 
       (.I0(\z_reg[6] [13]),
        .I1(\z_reg[6] [9]),
        .O(\z[5][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[5][11]_i_6 
       (.I0(sel),
        .I1(\z_reg[6] [9]),
        .O(\z[5][11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[5][15]_i_2 
       (.I0(sel),
        .O(\z[5][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[5][15]_i_3 
       (.I0(\z_reg[6] [14]),
        .I1(\z_reg[6] [15]),
        .O(\z[5][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \z[5][15]_i_4 
       (.I0(\z_reg[6] [13]),
        .I1(\z_reg[6] [14]),
        .O(\z[5][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[5][15]_i_5 
       (.I0(sel),
        .I1(\z_reg[6] [13]),
        .O(\z[5][15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \z[5][15]_i_6 
       (.I0(\z_reg[6] [14]),
        .I1(\z_reg[6] [11]),
        .O(\z[5][15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \z[5][5]_i_2 
       (.I0(sel),
        .O(\z[5][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \z[6][11]_i_1 
       (.I0(range45),
        .I1(x_in_IBUF[31]),
        .I2(y_in_IBUF[31]),
        .O(\z[6][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \z[6][13]_i_1 
       (.I0(x_in_IBUF[31]),
        .I1(y_in_IBUF[31]),
        .I2(range45),
        .O(\z[6][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \z[6][14]_i_1 
       (.I0(x_in_IBUF[31]),
        .I1(range45),
        .I2(y_in_IBUF[31]),
        .O(\z[6][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \z[6][15]_i_1 
       (.I0(range45),
        .I1(x_in_IBUF[31]),
        .I2(y_in_IBUF[31]),
        .O(\z[6][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \z[6][8]_i_1 
       (.I0(range45),
        .O(\z[6][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \z[6][9]_i_1 
       (.I0(y_in_IBUF[31]),
        .I1(x_in_IBUF[31]),
        .I2(range45),
        .O(\z[6][9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[10]),
        .Q(\z_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[11]),
        .Q(\z_reg[0] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][11]_i_1 
       (.CI(\z_reg[0][7]_i_1_n_0 ),
        .CO({\z_reg[0][11]_i_1_n_0 ,\z_reg[0][11]_i_1_n_1 ,\z_reg[0][11]_i_1_n_2 ,\z_reg[0][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[1] [10:8],\z[0][11]_i_2_n_0 }),
        .O(p_11_out[11:8]),
        .S({\z[0][11]_i_3_n_0 ,\z[0][11]_i_4_n_0 ,\z[0][11]_i_5_n_0 ,\z[0][11]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[12]),
        .Q(\z_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[13]),
        .Q(\z_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[14]),
        .Q(\z_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[15]),
        .Q(\z_reg[0] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][15]_i_1 
       (.CI(\z_reg[0][11]_i_1_n_0 ),
        .CO({\NLW_z_reg[0][15]_i_1_CO_UNCONNECTED [3],\z_reg[0][15]_i_1_n_1 ,\z_reg[0][15]_i_1_n_2 ,\z_reg[0][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\z_reg[1] [13:11]}),
        .O(p_11_out[15:12]),
        .S({\z[0][15]_i_2_n_0 ,\z[0][15]_i_3_n_0 ,\z[0][15]_i_4_n_0 ,\z[0][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[7]),
        .Q(\z_reg[0] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_1 
       (.CI(\z_reg[0][7]_i_2_n_0 ),
        .CO({\z_reg[0][7]_i_1_n_0 ,\z_reg[0][7]_i_1_n_1 ,\z_reg[0][7]_i_1_n_2 ,\z_reg[0][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y_reg[1][31]_rep_n_0 ,\z_reg[1] [6:4]}),
        .O({p_11_out[7],\NLW_z_reg[0][7]_i_1_O_UNCONNECTED [2:0]}),
        .S({\z[0][7]_i_3_n_0 ,\z[0][7]_i_4_n_0 ,\z[0][7]_i_5_n_0 ,\z[0][7]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_102 
       (.CI(\z_reg[0][7]_i_151_n_0 ),
        .CO({\z_reg[0][7]_i_102_n_0 ,\z_reg[0][7]_i_102_n_1 ,\z_reg[0][7]_i_102_n_2 ,\z_reg[0][7]_i_102_n_3 }),
        .CYINIT(1'b0),
        .DI(\y_reg[1] [19:16]),
        .O(stage4y[19:16]),
        .S({\z[0][7]_i_152_n_0 ,\z[0][7]_i_153_n_0 ,\z[0][7]_i_154_n_0 ,\z[0][7]_i_155_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \z_reg[0][7]_i_11 
       (.CI(\z_reg[0][7]_i_13_n_0 ),
        .CO({p_2_in,\z_reg[0][7]_i_11_n_1 ,\z_reg[0][7]_i_11_n_2 ,\z_reg[0][7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\z[0][7]_i_14_n_0 ,\z[0][7]_i_15_n_0 ,\z[0][7]_i_16_n_0 ,\z[0][7]_i_17_n_0 }),
        .O(\NLW_z_reg[0][7]_i_11_O_UNCONNECTED [3:0]),
        .S({\z[0][7]_i_18_n_0 ,\z[0][7]_i_19_n_0 ,\z[0][7]_i_20_n_0 ,\z[0][7]_i_21_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_119 
       (.CI(\z_reg[0][7]_i_132_n_0 ),
        .CO({\z_reg[0][7]_i_119_n_0 ,\z_reg[0][7]_i_119_n_1 ,\z_reg[0][7]_i_119_n_2 ,\z_reg[0][7]_i_119_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_119_n_4 ,\z_reg[0][7]_i_119_n_5 ,\z_reg[0][7]_i_119_n_6 ,\z_reg[0][7]_i_119_n_7 }),
        .S({\z[0][7]_i_173_n_0 ,\z[0][7]_i_174_n_0 ,\z[0][7]_i_175_n_0 ,\z[0][7]_i_176_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_12 
       (.CI(\z_reg[0][7]_i_22_n_0 ),
        .CO({\NLW_z_reg[0][7]_i_12_CO_UNCONNECTED [3],\z_reg[0][7]_i_12_n_1 ,\z_reg[0][7]_i_12_n_2 ,\z_reg[0][7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\y_reg[1] [30:28]}),
        .O(stage4y[31:28]),
        .S({\z[0][7]_i_23_n_0 ,\z[0][7]_i_24_n_0 ,\z[0][7]_i_25_n_0 ,\z[0][7]_i_26_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \z_reg[0][7]_i_13 
       (.CI(\z_reg[0][7]_i_27_n_0 ),
        .CO({\z_reg[0][7]_i_13_n_0 ,\z_reg[0][7]_i_13_n_1 ,\z_reg[0][7]_i_13_n_2 ,\z_reg[0][7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\z[0][7]_i_28_n_0 ,\z[0][7]_i_29_n_0 ,\z[0][7]_i_30_n_0 ,\z[0][7]_i_31_n_0 }),
        .O(\NLW_z_reg[0][7]_i_13_O_UNCONNECTED [3:0]),
        .S({\z[0][7]_i_32_n_0 ,\z[0][7]_i_33_n_0 ,\z[0][7]_i_34_n_0 ,\z[0][7]_i_35_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_132 
       (.CI(\z_reg[0][7]_i_160_n_0 ),
        .CO({\z_reg[0][7]_i_132_n_0 ,\z_reg[0][7]_i_132_n_1 ,\z_reg[0][7]_i_132_n_2 ,\z_reg[0][7]_i_132_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_132_n_4 ,\z_reg[0][7]_i_132_n_5 ,\z_reg[0][7]_i_132_n_6 ,\z_reg[0][7]_i_132_n_7 }),
        .S({\z[0][7]_i_179_n_0 ,\z[0][7]_i_180_n_0 ,\z[0][7]_i_181_n_0 ,\z[0][7]_i_182_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_133 
       (.CI(\z_reg[0][7]_i_138_n_0 ),
        .CO({\z_reg[0][7]_i_133_n_0 ,\z_reg[0][7]_i_133_n_1 ,\z_reg[0][7]_i_133_n_2 ,\z_reg[0][7]_i_133_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_133_n_4 ,\z_reg[0][7]_i_133_n_5 ,\z_reg[0][7]_i_133_n_6 ,\z_reg[0][7]_i_133_n_7 }),
        .S({\z[0][7]_i_183_n_0 ,\z[0][7]_i_184_n_0 ,\z[0][7]_i_185_n_0 ,\z[0][7]_i_186_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_138 
       (.CI(\z_reg[0][7]_i_172_n_0 ),
        .CO({\z_reg[0][7]_i_138_n_0 ,\z_reg[0][7]_i_138_n_1 ,\z_reg[0][7]_i_138_n_2 ,\z_reg[0][7]_i_138_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_138_n_4 ,\z_reg[0][7]_i_138_n_5 ,\z_reg[0][7]_i_138_n_6 ,\z_reg[0][7]_i_138_n_7 }),
        .S({\z[0][7]_i_187_n_0 ,\z[0][7]_i_188_n_0 ,\z[0][7]_i_189_n_0 ,\z[0][7]_i_190_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_151 
       (.CI(\z_reg[0][7]_i_177_n_0 ),
        .CO({\z_reg[0][7]_i_151_n_0 ,\z_reg[0][7]_i_151_n_1 ,\z_reg[0][7]_i_151_n_2 ,\z_reg[0][7]_i_151_n_3 }),
        .CYINIT(1'b0),
        .DI(\y_reg[1] [15:12]),
        .O(stage4y[15:12]),
        .S({\z[0][7]_i_191_n_0 ,\z[0][7]_i_192_n_0 ,\z[0][7]_i_193_n_0 ,\z[0][7]_i_194_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_160 
       (.CI(1'b0),
        .CO({\z_reg[0][7]_i_160_n_0 ,\z_reg[0][7]_i_160_n_1 ,\z_reg[0][7]_i_160_n_2 ,\z_reg[0][7]_i_160_n_3 }),
        .CYINIT(\z[0][7]_i_197_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_160_n_4 ,\z_reg[0][7]_i_160_n_5 ,\z_reg[0][7]_i_160_n_6 ,\z_reg[0][7]_i_160_n_7 }),
        .S({\z[0][7]_i_198_n_0 ,\z[0][7]_i_199_n_0 ,\z[0][7]_i_200_n_0 ,\z[0][7]_i_201_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_164 
       (.CI(1'b0),
        .CO({\z_reg[0][7]_i_164_n_0 ,\z_reg[0][7]_i_164_n_1 ,\z_reg[0][7]_i_164_n_2 ,\z_reg[0][7]_i_164_n_3 }),
        .CYINIT(\z[0][7]_i_202_n_0 ),
        .DI(\y_reg[1] [3:0]),
        .O(stage4y[3:0]),
        .S({\z[0][7]_i_203_n_0 ,\z[0][7]_i_204_n_0 ,\z[0][7]_i_205_n_0 ,\z[0][7]_i_206_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_172 
       (.CI(\z_reg[0][7]_i_178_n_0 ),
        .CO({\z_reg[0][7]_i_172_n_0 ,\z_reg[0][7]_i_172_n_1 ,\z_reg[0][7]_i_172_n_2 ,\z_reg[0][7]_i_172_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_172_n_4 ,\z_reg[0][7]_i_172_n_5 ,\z_reg[0][7]_i_172_n_6 ,\z_reg[0][7]_i_172_n_7 }),
        .S({\z[0][7]_i_207_n_0 ,\z[0][7]_i_208_n_0 ,\z[0][7]_i_209_n_0 ,\z[0][7]_i_210_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_177 
       (.CI(\z_reg[0][7]_i_195_n_0 ),
        .CO({\z_reg[0][7]_i_177_n_0 ,\z_reg[0][7]_i_177_n_1 ,\z_reg[0][7]_i_177_n_2 ,\z_reg[0][7]_i_177_n_3 }),
        .CYINIT(1'b0),
        .DI(\y_reg[1] [11:8]),
        .O(stage4y[11:8]),
        .S({\z[0][7]_i_211_n_0 ,\z[0][7]_i_212_n_0 ,\z[0][7]_i_213_n_0 ,\z[0][7]_i_214_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_178 
       (.CI(\z_reg[0][7]_i_196_n_0 ),
        .CO({\z_reg[0][7]_i_178_n_0 ,\z_reg[0][7]_i_178_n_1 ,\z_reg[0][7]_i_178_n_2 ,\z_reg[0][7]_i_178_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_178_n_4 ,\z_reg[0][7]_i_178_n_5 ,\z_reg[0][7]_i_178_n_6 ,\z_reg[0][7]_i_178_n_7 }),
        .S({\z[0][7]_i_215_n_0 ,\z[0][7]_i_216_n_0 ,\z[0][7]_i_217_n_0 ,\z[0][7]_i_218_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_195 
       (.CI(\z_reg[0][7]_i_164_n_0 ),
        .CO({\z_reg[0][7]_i_195_n_0 ,\z_reg[0][7]_i_195_n_1 ,\z_reg[0][7]_i_195_n_2 ,\z_reg[0][7]_i_195_n_3 }),
        .CYINIT(1'b0),
        .DI(\y_reg[1] [7:4]),
        .O(stage4y[7:4]),
        .S({\z[0][7]_i_219_n_0 ,\z[0][7]_i_220_n_0 ,\z[0][7]_i_221_n_0 ,\z[0][7]_i_222_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_196 
       (.CI(1'b0),
        .CO({\z_reg[0][7]_i_196_n_0 ,\z_reg[0][7]_i_196_n_1 ,\z_reg[0][7]_i_196_n_2 ,\z_reg[0][7]_i_196_n_3 }),
        .CYINIT(\z[0][7]_i_223_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_196_n_4 ,\z_reg[0][7]_i_196_n_5 ,\z_reg[0][7]_i_196_n_6 ,\z_reg[0][7]_i_196_n_7 }),
        .S({\z[0][7]_i_224_n_0 ,\z[0][7]_i_225_n_0 ,\z[0][7]_i_226_n_0 ,\z[0][7]_i_227_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_2 
       (.CI(1'b0),
        .CO({\z_reg[0][7]_i_2_n_0 ,\z_reg[0][7]_i_2_n_1 ,\z_reg[0][7]_i_2_n_2 ,\z_reg[0][7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\z_reg[1] [3:0]),
        .O(\NLW_z_reg[0][7]_i_2_O_UNCONNECTED [3:0]),
        .S({\z[0][7]_i_7_n_0 ,\z[0][7]_i_8_n_0 ,\z[0][7]_i_9_n_0 ,\z[0][7]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_22 
       (.CI(\z_reg[0][7]_i_54_n_0 ),
        .CO({\z_reg[0][7]_i_22_n_0 ,\z_reg[0][7]_i_22_n_1 ,\z_reg[0][7]_i_22_n_2 ,\z_reg[0][7]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI(\y_reg[1] [27:24]),
        .O(stage4y[27:24]),
        .S({\z[0][7]_i_55_n_0 ,\z[0][7]_i_56_n_0 ,\z[0][7]_i_57_n_0 ,\z[0][7]_i_58_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \z_reg[0][7]_i_27 
       (.CI(\z_reg[0][7]_i_59_n_0 ),
        .CO({\z_reg[0][7]_i_27_n_0 ,\z_reg[0][7]_i_27_n_1 ,\z_reg[0][7]_i_27_n_2 ,\z_reg[0][7]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({\z[0][7]_i_60_n_0 ,\z[0][7]_i_61_n_0 ,\z[0][7]_i_62_n_0 ,\z[0][7]_i_63_n_0 }),
        .O(\NLW_z_reg[0][7]_i_27_O_UNCONNECTED [3:0]),
        .S({\z[0][7]_i_64_n_0 ,\z[0][7]_i_65_n_0 ,\z[0][7]_i_66_n_0 ,\z[0][7]_i_67_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_36 
       (.CI(\z_reg[0][7]_i_41_n_0 ),
        .CO({\NLW_z_reg[0][7]_i_36_CO_UNCONNECTED [3:2],\z_reg[0][7]_i_36_n_2 ,\z_reg[0][7]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_z_reg[0][7]_i_36_O_UNCONNECTED [3],\z_reg[0][7]_i_36_n_5 ,\z_reg[0][7]_i_36_n_6 ,\z_reg[0][7]_i_36_n_7 }),
        .S({1'b0,\z[0][7]_i_86_n_0 ,\z[0][7]_i_87_n_0 ,\z[0][7]_i_88_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_37 
       (.CI(\z_reg[0][7]_i_89_n_0 ),
        .CO({\NLW_z_reg[0][7]_i_37_CO_UNCONNECTED [3:2],\z_reg[0][7]_i_37_n_2 ,\z_reg[0][7]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_z_reg[0][7]_i_37_O_UNCONNECTED [3],\z_reg[0][7]_i_37_n_5 ,\z_reg[0][7]_i_37_n_6 ,\z_reg[0][7]_i_37_n_7 }),
        .S({1'b0,\z[0][7]_i_90_n_0 ,\z[0][7]_i_91_n_0 ,\z[0][7]_i_92_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_41 
       (.CI(\z_reg[0][7]_i_53_n_0 ),
        .CO({\z_reg[0][7]_i_41_n_0 ,\z_reg[0][7]_i_41_n_1 ,\z_reg[0][7]_i_41_n_2 ,\z_reg[0][7]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_41_n_4 ,\z_reg[0][7]_i_41_n_5 ,\z_reg[0][7]_i_41_n_6 ,\z_reg[0][7]_i_41_n_7 }),
        .S({\z[0][7]_i_93_n_0 ,\z[0][7]_i_94_n_0 ,\z[0][7]_i_95_n_0 ,\z[0][7]_i_96_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_53 
       (.CI(\z_reg[0][7]_i_72_n_0 ),
        .CO({\z_reg[0][7]_i_53_n_0 ,\z_reg[0][7]_i_53_n_1 ,\z_reg[0][7]_i_53_n_2 ,\z_reg[0][7]_i_53_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_53_n_4 ,\z_reg[0][7]_i_53_n_5 ,\z_reg[0][7]_i_53_n_6 ,\z_reg[0][7]_i_53_n_7 }),
        .S({\z[0][7]_i_98_n_0 ,\z[0][7]_i_99_n_0 ,\z[0][7]_i_100_n_0 ,\z[0][7]_i_101_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_54 
       (.CI(\z_reg[0][7]_i_102_n_0 ),
        .CO({\z_reg[0][7]_i_54_n_0 ,\z_reg[0][7]_i_54_n_1 ,\z_reg[0][7]_i_54_n_2 ,\z_reg[0][7]_i_54_n_3 }),
        .CYINIT(1'b0),
        .DI(\y_reg[1] [23:20]),
        .O(stage4y[23:20]),
        .S({\z[0][7]_i_103_n_0 ,\z[0][7]_i_104_n_0 ,\z[0][7]_i_105_n_0 ,\z[0][7]_i_106_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \z_reg[0][7]_i_59 
       (.CI(1'b0),
        .CO({\z_reg[0][7]_i_59_n_0 ,\z_reg[0][7]_i_59_n_1 ,\z_reg[0][7]_i_59_n_2 ,\z_reg[0][7]_i_59_n_3 }),
        .CYINIT(1'b0),
        .DI({\z[0][7]_i_107_n_0 ,\z[0][7]_i_108_n_0 ,\z[0][7]_i_109_n_0 ,\z[0][7]_i_110_n_0 }),
        .O(\NLW_z_reg[0][7]_i_59_O_UNCONNECTED [3:0]),
        .S({\z[0][7]_i_111_n_0 ,\z[0][7]_i_112_n_0 ,\z[0][7]_i_113_n_0 ,\z[0][7]_i_114_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_72 
       (.CI(\z_reg[0][7]_i_85_n_0 ),
        .CO({\z_reg[0][7]_i_72_n_0 ,\z_reg[0][7]_i_72_n_1 ,\z_reg[0][7]_i_72_n_2 ,\z_reg[0][7]_i_72_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_72_n_4 ,\z_reg[0][7]_i_72_n_5 ,\z_reg[0][7]_i_72_n_6 ,\z_reg[0][7]_i_72_n_7 }),
        .S({\z[0][7]_i_134_n_0 ,\z[0][7]_i_135_n_0 ,\z[0][7]_i_136_n_0 ,\z[0][7]_i_137_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_85 
       (.CI(\z_reg[0][7]_i_119_n_0 ),
        .CO({\z_reg[0][7]_i_85_n_0 ,\z_reg[0][7]_i_85_n_1 ,\z_reg[0][7]_i_85_n_2 ,\z_reg[0][7]_i_85_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_85_n_4 ,\z_reg[0][7]_i_85_n_5 ,\z_reg[0][7]_i_85_n_6 ,\z_reg[0][7]_i_85_n_7 }),
        .S({\z[0][7]_i_139_n_0 ,\z[0][7]_i_140_n_0 ,\z[0][7]_i_141_n_0 ,\z[0][7]_i_142_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_89 
       (.CI(\z_reg[0][7]_i_97_n_0 ),
        .CO({\z_reg[0][7]_i_89_n_0 ,\z_reg[0][7]_i_89_n_1 ,\z_reg[0][7]_i_89_n_2 ,\z_reg[0][7]_i_89_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_89_n_4 ,\z_reg[0][7]_i_89_n_5 ,\z_reg[0][7]_i_89_n_6 ,\z_reg[0][7]_i_89_n_7 }),
        .S({\z[0][7]_i_143_n_0 ,\z[0][7]_i_144_n_0 ,\z[0][7]_i_145_n_0 ,\z[0][7]_i_146_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[0][7]_i_97 
       (.CI(\z_reg[0][7]_i_133_n_0 ),
        .CO({\z_reg[0][7]_i_97_n_0 ,\z_reg[0][7]_i_97_n_1 ,\z_reg[0][7]_i_97_n_2 ,\z_reg[0][7]_i_97_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\z_reg[0][7]_i_97_n_4 ,\z_reg[0][7]_i_97_n_5 ,\z_reg[0][7]_i_97_n_6 ,\z_reg[0][7]_i_97_n_7 }),
        .S({\z[0][7]_i_147_n_0 ,\z[0][7]_i_148_n_0 ,\z[0][7]_i_149_n_0 ,\z[0][7]_i_150_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[8]),
        .Q(\z_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_11_out[9]),
        .Q(\z_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[0]),
        .Q(\z_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[10]),
        .Q(\z_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[11]),
        .Q(\z_reg[1] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[12]),
        .Q(\z_reg[1] [12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[1][12]_i_1 
       (.CI(\z_reg[1][8]_i_1_n_0 ),
        .CO({\z_reg[1][12]_i_1_n_0 ,\z_reg[1][12]_i_1_n_1 ,\z_reg[1][12]_i_1_n_2 ,\z_reg[1][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[2] [11:9],\z[1][12]_i_2_n_0 }),
        .O(p_9_out[12:9]),
        .S({\z[1][12]_i_3_n_0 ,\z[1][12]_i_4_n_0 ,\z[1][12]_i_5_n_0 ,\z[1][12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[13]),
        .Q(\z_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[14]),
        .Q(\z_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[15]),
        .Q(\z_reg[1] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[1][15]_i_1 
       (.CI(\z_reg[1][12]_i_1_n_0 ),
        .CO({\NLW_z_reg[1][15]_i_1_CO_UNCONNECTED [3:2],\z_reg[1][15]_i_1_n_2 ,\z_reg[1][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\z_reg[2] [13:12]}),
        .O({\NLW_z_reg[1][15]_i_1_O_UNCONNECTED [3],p_9_out[15:13]}),
        .S({1'b0,\z[1][15]_i_2_n_0 ,\z[1][15]_i_3_n_0 ,\z[1][15]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[1]),
        .Q(\z_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[2]),
        .Q(\z_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[3]),
        .Q(\z_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[4]),
        .Q(\z_reg[1] [4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[1][4]_i_1 
       (.CI(1'b0),
        .CO({\z_reg[1][4]_i_1_n_0 ,\z_reg[1][4]_i_1_n_1 ,\z_reg[1][4]_i_1_n_2 ,\z_reg[1][4]_i_1_n_3 }),
        .CYINIT(\z_reg[2] [0]),
        .DI({\z[1][4]_i_2_n_0 ,\y_reg[1][31]_rep_n_0 ,\z_reg[2] [2:1]}),
        .O(p_9_out[4:1]),
        .S({\z[1][4]_i_3_n_0 ,\z[1][4]_i_4_n_0 ,\z[1][4]_i_5_n_0 ,\z[1][4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[5]),
        .Q(\z_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[6]),
        .Q(\z_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[7]),
        .Q(\z_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[8]),
        .Q(\z_reg[1] [8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[1][8]_i_1 
       (.CI(\z_reg[1][4]_i_1_n_0 ),
        .CO({\z_reg[1][8]_i_1_n_0 ,\z_reg[1][8]_i_1_n_1 ,\z_reg[1][8]_i_1_n_2 ,\z_reg[1][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[2] [8],\z_reg[2] [6],\y_reg[1][31]_rep_n_0 ,\z_reg[2] [5]}),
        .O(p_9_out[8:5]),
        .S({\z[1][8]_i_2_n_0 ,\z[1][8]_i_3_n_0 ,\z[1][8]_i_4_n_0 ,\z[1][8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_9_out[9]),
        .Q(\z_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[0]),
        .Q(\z_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[10]),
        .Q(\z_reg[2] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[11]),
        .Q(\z_reg[2] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[2][11]_i_1 
       (.CI(\z_reg[2][7]_i_1_n_0 ),
        .CO({\z_reg[2][11]_i_1_n_0 ,\z_reg[2][11]_i_1_n_1 ,\z_reg[2][11]_i_1_n_2 ,\z_reg[2][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[3] [10],\z[2][11]_i_2_n_0 ,\z_reg[3] [9],\z_reg[3] [7]}),
        .O(p_7_out[11:8]),
        .S({\z[2][11]_i_3_n_0 ,\z[2][11]_i_4_n_0 ,\z[2][11]_i_5_n_0 ,\z[2][11]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[12]),
        .Q(\z_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[13]),
        .Q(\z_reg[2] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[14]),
        .Q(\z_reg[2] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[15]),
        .Q(\z_reg[2] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[2][15]_i_1 
       (.CI(\z_reg[2][11]_i_1_n_0 ),
        .CO({\NLW_z_reg[2][15]_i_1_CO_UNCONNECTED [3],\z_reg[2][15]_i_1_n_1 ,\z_reg[2][15]_i_1_n_2 ,\z_reg[2][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\z_reg[3] [13:11]}),
        .O(p_7_out[15:12]),
        .S({\z[2][15]_i_2_n_0 ,\z[2][15]_i_3_n_0 ,\z[2][15]_i_4_n_0 ,\z[2][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[1]),
        .Q(\z_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[2]),
        .Q(\z_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[3]),
        .Q(\z_reg[2] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[2][3]_i_1 
       (.CI(1'b0),
        .CO({\z_reg[2][3]_i_1_n_0 ,\z_reg[2][3]_i_1_n_1 ,\z_reg[2][3]_i_1_n_2 ,\z_reg[2][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[3] [3:1],1'b0}),
        .O(p_7_out[3:0]),
        .S({\z[2][3]_i_2_n_0 ,\z[2][3]_i_3_n_0 ,\z[2][3]_i_4_n_0 ,\z_reg[3] [0]}));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[4]),
        .Q(\z_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[5]),
        .Q(\z_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[6]),
        .Q(\z_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[7]),
        .Q(\z_reg[2] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[2][7]_i_1 
       (.CI(\z_reg[2][3]_i_1_n_0 ),
        .CO({\z_reg[2][7]_i_1_n_0 ,\z_reg[2][7]_i_1_n_1 ,\z_reg[2][7]_i_1_n_2 ,\z_reg[2][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\y_reg[3] [31],\z_reg[3] [6],\z[2][7]_i_2_n_0 ,\y_reg[3] [31]}),
        .O(p_7_out[7:4]),
        .S({\z[2][7]_i_3_n_0 ,\z[2][7]_i_4_n_0 ,\z[2][7]_i_5_n_0 ,\z[2][7]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[8]),
        .Q(\z_reg[2] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_7_out[9]),
        .Q(\z_reg[2] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[4] [0]),
        .Q(\z_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[10]),
        .Q(\z_reg[3] [10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[3][10]_i_1 
       (.CI(\z_reg[3][6]_i_1_n_0 ),
        .CO({\z_reg[3][10]_i_1_n_0 ,\z_reg[3][10]_i_1_n_1 ,\z_reg[3][10]_i_1_n_2 ,\z_reg[3][10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[4] [10],\z_reg[4] [8],\y_reg[3] [31],\z_reg[4] [7]}),
        .O(p_5_out[10:7]),
        .S({\z[3][10]_i_2_n_0 ,\z[3][10]_i_3_n_0 ,\z[3][10]_i_4_n_0 ,\z[3][10]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[11]),
        .Q(\z_reg[3] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[12]),
        .Q(\z_reg[3] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[13]),
        .Q(\z_reg[3] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[14]),
        .Q(\z_reg[3] [14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[3][14]_i_1 
       (.CI(\z_reg[3][10]_i_1_n_0 ),
        .CO({\z_reg[3][14]_i_1_n_0 ,\z_reg[3][14]_i_1_n_1 ,\z_reg[3][14]_i_1_n_2 ,\z_reg[3][14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[4] [13:11],\z[3][14]_i_2_n_0 }),
        .O(p_5_out[14:11]),
        .S({\z[3][14]_i_3_n_0 ,\z[3][14]_i_4_n_0 ,\z[3][14]_i_5_n_0 ,\z[3][14]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[15]),
        .Q(\z_reg[3] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[3][15]_i_1 
       (.CI(\z_reg[3][14]_i_1_n_0 ),
        .CO(\NLW_z_reg[3][15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_z_reg[3][15]_i_1_O_UNCONNECTED [3:1],p_5_out[15]}),
        .S({1'b0,1'b0,1'b0,\z[3][15]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[4] [1]),
        .Q(\z_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\z_reg[4] [2]),
        .Q(\z_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[3]),
        .Q(\z_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[4]),
        .Q(\z_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[5]),
        .Q(\z_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[6]),
        .Q(\z_reg[3] [6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[3][6]_i_1 
       (.CI(1'b0),
        .CO({\z_reg[3][6]_i_1_n_0 ,\z_reg[3][6]_i_1_n_1 ,\z_reg[3][6]_i_1_n_2 ,\z_reg[3][6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z[3][6]_i_2_n_0 ,\y_reg[3] [31],\z_reg[4] [4],1'b0}),
        .O(p_5_out[6:3]),
        .S({\z[3][6]_i_3_n_0 ,\z[3][6]_i_4_n_0 ,\z[3][6]_i_5_n_0 ,\z_reg[4] [3]}));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[7]),
        .Q(\z_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[8]),
        .Q(\z_reg[3] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_5_out[9]),
        .Q(\z_reg[3] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(1'b1),
        .Q(\z_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[10]),
        .Q(\z_reg[4] [10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[4][10]_i_1 
       (.CI(\z_reg[4][6]_i_1_n_0 ),
        .CO({\z_reg[4][10]_i_1_n_0 ,\z_reg[4][10]_i_1_n_1 ,\z_reg[4][10]_i_1_n_2 ,\z_reg[4][10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[5] [9],\y_reg[5] [31],\z_reg[5] [8],\z_reg[5] [6]}),
        .O(p_3_out[10:7]),
        .S({\z[4][10]_i_2_n_0 ,\z[4][10]_i_3_n_0 ,\z[4][10]_i_4_n_0 ,\z[4][10]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[11]),
        .Q(\z_reg[4] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[12]),
        .Q(\z_reg[4] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[13]),
        .Q(\z_reg[4] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[14]),
        .Q(\z_reg[4] [14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[4][14]_i_1 
       (.CI(\z_reg[4][10]_i_1_n_0 ),
        .CO({\z_reg[4][14]_i_1_n_0 ,\z_reg[4][14]_i_1_n_1 ,\z_reg[4][14]_i_1_n_2 ,\z_reg[4][14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[5] [13:12],\z[4][14]_i_2_n_0 ,\z_reg[5] [11]}),
        .O(p_3_out[14:11]),
        .S({\z[4][14]_i_3_n_0 ,\z[4][14]_i_4_n_0 ,\z[4][14]_i_5_n_0 ,\z[4][14]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[15]),
        .Q(\z_reg[4] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[4][15]_i_1 
       (.CI(\z_reg[4][14]_i_1_n_0 ),
        .CO(\NLW_z_reg[4][15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_z_reg[4][15]_i_1_O_UNCONNECTED [3:1],p_3_out[15]}),
        .S({1'b0,1'b0,1'b0,\z[4][15]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(\y_reg[5] [31]),
        .Q(\z_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[2]),
        .Q(\z_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[3]),
        .Q(\z_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[4]),
        .Q(\z_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[5]),
        .Q(\z_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[6]),
        .Q(\z_reg[4] [6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[4][6]_i_1 
       (.CI(1'b0),
        .CO({\z_reg[4][6]_i_1_n_0 ,\z_reg[4][6]_i_1_n_1 ,\z_reg[4][6]_i_1_n_2 ,\z_reg[4][6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z_reg[5] [5:4],\z[4][6]_i_2_n_0 ,\y_reg[5] [31]}),
        .O({p_3_out[6:4],\NLW_z_reg[4][6]_i_1_O_UNCONNECTED [0]}),
        .S({\z[4][6]_i_3_n_0 ,\z[4][6]_i_4_n_0 ,\z[4][6]_i_5_n_0 ,\z[4][6]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[7]),
        .Q(\z_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[8]),
        .Q(\z_reg[4] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[4][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_3_out[9]),
        .Q(\z_reg[4] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[10]),
        .Q(\z_reg[5] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[11]),
        .Q(\z_reg[5] [11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[5][11]_i_1 
       (.CI(1'b0),
        .CO({\z_reg[5][11]_i_1_n_0 ,\z_reg[5][11]_i_1_n_1 ,\z_reg[5][11]_i_1_n_2 ,\z_reg[5][11]_i_1_n_3 }),
        .CYINIT(p_0_in0),
        .DI({sel,\z_reg[6] [13],\z[5][11]_i_3_n_0 ,\z_reg[6] [8]}),
        .O(p_1_out[11:8]),
        .S({\z[5][11]_i_4_n_0 ,\z[5][11]_i_5_n_0 ,\z[5][11]_i_6_n_0 ,\z_reg[6] [8]}));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[12]),
        .Q(\z_reg[5] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[13]),
        .Q(\z_reg[5] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[14]),
        .Q(\z_reg[5] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[15]),
        .Q(\z_reg[5] [15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \z_reg[5][15]_i_1 
       (.CI(\z_reg[5][11]_i_1_n_0 ),
        .CO({\NLW_z_reg[5][15]_i_1_CO_UNCONNECTED [3],\z_reg[5][15]_i_1_n_1 ,\z_reg[5][15]_i_1_n_2 ,\z_reg[5][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\z_reg[6] [13],\z[5][15]_i_2_n_0 ,\z_reg[6] [14]}),
        .O(p_1_out[15:12]),
        .S({\z[5][15]_i_3_n_0 ,\z[5][15]_i_4_n_0 ,\z[5][15]_i_5_n_0 ,\z[5][15]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[3]),
        .Q(\z_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[4]),
        .Q(\z_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[5]),
        .Q(\z_reg[5] [5]));
  CARRY4 \z_reg[5][5]_i_1 
       (.CI(1'b0),
        .CO({\z_reg[5][5]_i_1_n_0 ,\z_reg[5][5]_i_1_n_1 ,\z_reg[5][5]_i_1_n_2 ,\z_reg[5][5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\z[5][5]_i_2_n_0 ,sel,1'b0,1'b0}),
        .O({p_1_out[5:3],\NLW_z_reg[5][5]_i_1_O_UNCONNECTED [0]}),
        .S({sel,sel,1'b1,1'b0}));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[6]),
        .Q(\z_reg[5] [6]));
  CARRY4 \z_reg[5][6]_i_1 
       (.CI(\z_reg[5][5]_i_1_n_0 ),
        .CO({\NLW_z_reg[5][6]_i_1_CO_UNCONNECTED [3:1],p_1_out[6]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_z_reg[5][6]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(sel),
        .Q(\z_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[8]),
        .Q(\z_reg[5] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\y[5][31]_i_1_n_0 ),
        .CLR(flag_i_2_n_0),
        .D(p_1_out[9]),
        .Q(\z_reg[5] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\z[6][11]_i_1_n_0 ),
        .Q(\z_reg[6] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\z[6][13]_i_1_n_0 ),
        .Q(\z_reg[6] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\z[6][14]_i_1_n_0 ),
        .Q(\z_reg[6] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\z[6][15]_i_1_n_0 ),
        .Q(\z_reg[6] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\z[6][8]_i_1_n_0 ),
        .Q(\z_reg[6] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \z_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(in_valid_IBUF),
        .CLR(flag_i_2_n_0),
        .D(\z[6][9]_i_1_n_0 ),
        .Q(\z_reg[6] [9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
