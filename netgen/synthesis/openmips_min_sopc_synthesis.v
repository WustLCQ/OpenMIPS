////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: openmips_min_sopc_synthesis.v
// /___/   /\     Timestamp: Mon Nov 09 21:12:40 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim openmips_min_sopc.ngc openmips_min_sopc_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: openmips_min_sopc.ngc
// Output file	: E:\Workspace\ISE\OpenMIPS\netgen\synthesis\openmips_min_sopc_synthesis.v
// # of Modules	: 1
// Design Name	: openmips_min_sopc
// Xilinx        : D:\Xilinx\13.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module openmips_min_sopc (
  clk_100mhz, btn, sw, seg, an, led
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk_100mhz;
  input [4 : 0] btn;
  input [7 : 0] sw;
  output [7 : 0] seg;
  output [3 : 0] an;
  output [7 : 0] led;
  
  // synthesis translate_off
  
  wire btn_4_IBUF_0;
  wire btn_3_IBUF_1;
  wire btn_2_IBUF_2;
  wire btn_1_IBUF_3;
  wire btn_0_IBUF_4;
  wire sw_7_IBUF_5;
  wire sw_6_IBUF_6;
  wire sw_5_IBUF_7;
  wire sw_4_IBUF_8;
  wire sw_3_IBUF_9;
  wire sw_2_IBUF_10;
  wire sw_1_IBUF_11;
  wire sw_0_IBUF_12;
  wire clk_100mhz_BUFGP_13;
  wire \anti_jitter/sw_ok[1] ;
  wire \anti_jitter/sw_ok[7] ;
  wire \anti_jitter/sw_ok[6] ;
  wire led_7_OBUF_49;
  wire led_6_OBUF_50;
  wire led_5_OBUF_51;
  wire led_4_OBUF_52;
  wire led_3_OBUF_53;
  wire led_2_OBUF_54;
  wire led_1_OBUF_55;
  wire led_0_OBUF_56;
  wire an_3_OBUF_93;
  wire an_2_OBUF_94;
  wire an_1_OBUF_95;
  wire an_0_OBUF_96;
  wire seg_6_OBUF_97;
  wire seg_5_OBUF_98;
  wire seg_4_OBUF_99;
  wire seg_3_OBUF_100;
  wire seg_2_OBUF_101;
  wire seg_1_OBUF_102;
  wire seg_0_OBUF_103;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<16>1 ;
  wire \Result<17>1 ;
  wire \Result<18>1 ;
  wire \Result<19>1 ;
  wire \mux8t1_4/Mmux_o_43_222 ;
  wire \mux8t1_4/Mmux_o_33_223 ;
  wire \mux8t1_4/Mmux_o_42_224 ;
  wire \mux8t1_4/Mmux_o_32_225 ;
  wire \mux8t1_4/Mmux_o_41_226 ;
  wire \mux8t1_4/Mmux_o_31_227 ;
  wire \mux8t1_4/Mmux_o_4_228 ;
  wire \mux8t1_4/Mmux_o_3_229 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<4>_248 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<3>_249 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<2>_251 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<2> ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<1>_254 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<1>_255 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi1_256 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<0>_257 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<0>_258 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi_259 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o1_308 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o2_309 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o3_310 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o4_311 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o5_312 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o6_313 ;
  wire \clk_div/Mcount_clkdiv_cy<1>_rt_348 ;
  wire \clk_div/Mcount_clkdiv_cy<2>_rt_349 ;
  wire \clk_div/Mcount_clkdiv_cy<3>_rt_350 ;
  wire \clk_div/Mcount_clkdiv_cy<4>_rt_351 ;
  wire \clk_div/Mcount_clkdiv_cy<5>_rt_352 ;
  wire \clk_div/Mcount_clkdiv_cy<6>_rt_353 ;
  wire \clk_div/Mcount_clkdiv_cy<7>_rt_354 ;
  wire \clk_div/Mcount_clkdiv_cy<8>_rt_355 ;
  wire \clk_div/Mcount_clkdiv_cy<9>_rt_356 ;
  wire \clk_div/Mcount_clkdiv_cy<10>_rt_357 ;
  wire \clk_div/Mcount_clkdiv_cy<11>_rt_358 ;
  wire \clk_div/Mcount_clkdiv_cy<12>_rt_359 ;
  wire \clk_div/Mcount_clkdiv_cy<13>_rt_360 ;
  wire \clk_div/Mcount_clkdiv_cy<14>_rt_361 ;
  wire \clk_div/Mcount_clkdiv_cy<15>_rt_362 ;
  wire \clk_div/Mcount_clkdiv_cy<16>_rt_363 ;
  wire \clk_div/Mcount_clkdiv_cy<17>_rt_364 ;
  wire \clk_div/Mcount_clkdiv_cy<18>_rt_365 ;
  wire \openmips/pc_reg/Maccum_pc_cy<3>_rt_366 ;
  wire \openmips/pc_reg/Maccum_pc_cy<4>_rt_367 ;
  wire \openmips/pc_reg/Maccum_pc_cy<5>_rt_368 ;
  wire \openmips/pc_reg/Maccum_pc_cy<6>_rt_369 ;
  wire \openmips/pc_reg/Maccum_pc_cy<7>_rt_370 ;
  wire \openmips/pc_reg/Maccum_pc_cy<8>_rt_371 ;
  wire \openmips/pc_reg/Maccum_pc_cy<9>_rt_372 ;
  wire \openmips/pc_reg/Maccum_pc_cy<10>_rt_373 ;
  wire \openmips/pc_reg/Maccum_pc_cy<11>_rt_374 ;
  wire \openmips/pc_reg/Maccum_pc_cy<12>_rt_375 ;
  wire \openmips/pc_reg/Maccum_pc_cy<13>_rt_376 ;
  wire \openmips/pc_reg/Maccum_pc_cy<14>_rt_377 ;
  wire \openmips/pc_reg/Maccum_pc_cy<15>_rt_378 ;
  wire \openmips/pc_reg/Maccum_pc_cy<16>_rt_379 ;
  wire \openmips/pc_reg/Maccum_pc_cy<17>_rt_380 ;
  wire \openmips/pc_reg/Maccum_pc_cy<18>_rt_381 ;
  wire \openmips/pc_reg/Maccum_pc_cy<19>_rt_382 ;
  wire \openmips/pc_reg/Maccum_pc_cy<20>_rt_383 ;
  wire \openmips/pc_reg/Maccum_pc_cy<21>_rt_384 ;
  wire \openmips/pc_reg/Maccum_pc_cy<22>_rt_385 ;
  wire \openmips/pc_reg/Maccum_pc_cy<23>_rt_386 ;
  wire \openmips/pc_reg/Maccum_pc_cy<24>_rt_387 ;
  wire \openmips/pc_reg/Maccum_pc_cy<25>_rt_388 ;
  wire \openmips/pc_reg/Maccum_pc_cy<26>_rt_389 ;
  wire \openmips/pc_reg/Maccum_pc_cy<27>_rt_390 ;
  wire \openmips/pc_reg/Maccum_pc_cy<28>_rt_391 ;
  wire \openmips/pc_reg/Maccum_pc_cy<29>_rt_392 ;
  wire \openmips/pc_reg/Maccum_pc_cy<30>_rt_393 ;
  wire \anti_jitter/Mcount_counter_cy<15>_rt_394 ;
  wire \anti_jitter/Mcount_counter_cy<14>_rt_395 ;
  wire \anti_jitter/Mcount_counter_cy<13>_rt_396 ;
  wire \anti_jitter/Mcount_counter_cy<12>_rt_397 ;
  wire \anti_jitter/Mcount_counter_cy<11>_rt_398 ;
  wire \anti_jitter/Mcount_counter_cy<10>_rt_399 ;
  wire \anti_jitter/Mcount_counter_cy<9>_rt_400 ;
  wire \anti_jitter/Mcount_counter_cy<8>_rt_401 ;
  wire \anti_jitter/Mcount_counter_cy<7>_rt_402 ;
  wire \anti_jitter/Mcount_counter_cy<6>_rt_403 ;
  wire \anti_jitter/Mcount_counter_cy<5>_rt_404 ;
  wire \anti_jitter/Mcount_counter_cy<4>_rt_405 ;
  wire \anti_jitter/Mcount_counter_cy<3>_rt_406 ;
  wire \anti_jitter/Mcount_counter_cy<2>_rt_407 ;
  wire \anti_jitter/Mcount_counter_cy<1>_rt_408 ;
  wire \clk_div/Mcount_clkdiv_xor<19>_rt_409 ;
  wire \openmips/pc_reg/Maccum_pc_xor<31>_rt_410 ;
  wire \anti_jitter/Mcount_counter_xor<16>_rt_411 ;
  wire \anti_jitter/_n0054_inv1_cepot_412 ;
  wire \anti_jitter/sw_ok_1_dpot_413 ;
  wire \anti_jitter/sw_ok_6_dpot_414 ;
  wire \anti_jitter/sw_ok_7_dpot_415 ;
  wire \anti_jitter/counter_9_rstpot_416 ;
  wire \anti_jitter/counter_8_rstpot_417 ;
  wire \anti_jitter/counter_7_rstpot_418 ;
  wire \anti_jitter/counter_6_rstpot_419 ;
  wire \anti_jitter/counter_5_rstpot_420 ;
  wire \anti_jitter/counter_4_rstpot_421 ;
  wire \anti_jitter/counter_3_rstpot_422 ;
  wire \anti_jitter/counter_2_rstpot_423 ;
  wire \anti_jitter/counter_1_rstpot_424 ;
  wire \anti_jitter/counter_0_rstpot_425 ;
  wire \anti_jitter/counter_10_rstpot_426 ;
  wire \anti_jitter/counter_11_rstpot_427 ;
  wire \anti_jitter/counter_12_rstpot_428 ;
  wire \anti_jitter/counter_13_rstpot_429 ;
  wire \anti_jitter/counter_14_rstpot_430 ;
  wire \anti_jitter/counter_15_rstpot_431 ;
  wire \anti_jitter/counter_16_rstpot_432 ;
  wire [31 : 2] \openmips/pc_reg/pc ;
  wire [19 : 0] \clk_div/clkdiv ;
  wire [31 : 0] inst;
  wire [3 : 0] digit;
  wire [31 : 2] Result;
  wire [0 : 0] \clk_div/Mcount_clkdiv_lut ;
  wire [18 : 0] \clk_div/Mcount_clkdiv_cy ;
  wire [2 : 2] \openmips/pc_reg/Maccum_pc_lut ;
  wire [30 : 2] \openmips/pc_reg/Maccum_pc_cy ;
  wire [15 : 0] \anti_jitter/Mcount_counter_cy ;
  wire [0 : 0] \anti_jitter/Mcount_counter_lut ;
  wire [16 : 0] \anti_jitter/Result ;
  wire [16 : 0] \anti_jitter/counter ;
  wire [7 : 0] \anti_jitter/sw_temp ;
  wire [4 : 0] \anti_jitter/btn_temp ;
  VCC   XST_VCC (
    .P(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> )
  );
  GND   XST_GND (
    .G(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 )
  );
  FDR   \openmips/pc_reg/pc_2  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[2]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [2])
  );
  FDR   \openmips/pc_reg/pc_3  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[3]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [3])
  );
  FDR   \openmips/pc_reg/pc_4  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[4]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [4])
  );
  FDR   \openmips/pc_reg/pc_5  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[5]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [5])
  );
  FDR   \openmips/pc_reg/pc_6  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[6]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [6])
  );
  FDR   \openmips/pc_reg/pc_7  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[7]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [7])
  );
  FDR   \openmips/pc_reg/pc_8  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[8]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [8])
  );
  FDR   \openmips/pc_reg/pc_9  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[9]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [9])
  );
  FDR   \openmips/pc_reg/pc_10  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[10]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [10])
  );
  FDR   \openmips/pc_reg/pc_11  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[11]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [11])
  );
  FDR   \openmips/pc_reg/pc_12  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[12]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [12])
  );
  FDR   \openmips/pc_reg/pc_13  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[13]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [13])
  );
  FDR   \openmips/pc_reg/pc_14  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[14]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [14])
  );
  FDR   \openmips/pc_reg/pc_15  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[15]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [15])
  );
  FDR   \openmips/pc_reg/pc_16  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[16]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [16])
  );
  FDR   \openmips/pc_reg/pc_17  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[17]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [17])
  );
  FDR   \openmips/pc_reg/pc_18  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[18]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [18])
  );
  FDR   \openmips/pc_reg/pc_19  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[19]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [19])
  );
  FDR   \openmips/pc_reg/pc_20  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[20]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [20])
  );
  FDR   \openmips/pc_reg/pc_21  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[21]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [21])
  );
  FDR   \openmips/pc_reg/pc_22  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[22]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [22])
  );
  FDR   \openmips/pc_reg/pc_23  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[23]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [23])
  );
  FDR   \openmips/pc_reg/pc_24  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[24]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [24])
  );
  FDR   \openmips/pc_reg/pc_25  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[25]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [25])
  );
  FDR   \openmips/pc_reg/pc_26  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[26]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [26])
  );
  FDR   \openmips/pc_reg/pc_27  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[27]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [27])
  );
  FDR   \openmips/pc_reg/pc_28  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[28]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [28])
  );
  FDR   \openmips/pc_reg/pc_29  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[29]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [29])
  );
  FDR   \openmips/pc_reg/pc_30  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[30]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [30])
  );
  FDR   \openmips/pc_reg/pc_31  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[31]),
    .R(sw_7_IBUF_5),
    .Q(\openmips/pc_reg/pc [31])
  );
  FDC   \clk_div/clkdiv_0  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<0>1 ),
    .Q(\clk_div/clkdiv [0])
  );
  FDC   \clk_div/clkdiv_1  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<1>1 ),
    .Q(\clk_div/clkdiv [1])
  );
  FDC   \clk_div/clkdiv_2  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<2>1 ),
    .Q(\clk_div/clkdiv [2])
  );
  FDC   \clk_div/clkdiv_3  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<3>1 ),
    .Q(\clk_div/clkdiv [3])
  );
  FDC   \clk_div/clkdiv_4  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<4>1 ),
    .Q(\clk_div/clkdiv [4])
  );
  FDC   \clk_div/clkdiv_5  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<5>1 ),
    .Q(\clk_div/clkdiv [5])
  );
  FDC   \clk_div/clkdiv_6  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<6>1 ),
    .Q(\clk_div/clkdiv [6])
  );
  FDC   \clk_div/clkdiv_7  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<7>1 ),
    .Q(\clk_div/clkdiv [7])
  );
  FDC   \clk_div/clkdiv_8  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<8>1 ),
    .Q(\clk_div/clkdiv [8])
  );
  FDC   \clk_div/clkdiv_9  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<9>1 ),
    .Q(\clk_div/clkdiv [9])
  );
  FDC   \clk_div/clkdiv_10  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<10>1 ),
    .Q(\clk_div/clkdiv [10])
  );
  FDC   \clk_div/clkdiv_11  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<11>1 ),
    .Q(\clk_div/clkdiv [11])
  );
  FDC   \clk_div/clkdiv_12  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<12>1 ),
    .Q(\clk_div/clkdiv [12])
  );
  FDC   \clk_div/clkdiv_13  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<13>1 ),
    .Q(\clk_div/clkdiv [13])
  );
  FDC   \clk_div/clkdiv_14  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<14>1 ),
    .Q(\clk_div/clkdiv [14])
  );
  FDC   \clk_div/clkdiv_15  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<15>1 ),
    .Q(\clk_div/clkdiv [15])
  );
  FDC   \clk_div/clkdiv_16  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<16>1 ),
    .Q(\clk_div/clkdiv [16])
  );
  FDC   \clk_div/clkdiv_17  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<17>1 ),
    .Q(\clk_div/clkdiv [17])
  );
  FDC   \clk_div/clkdiv_18  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<18>1 ),
    .Q(\clk_div/clkdiv [18])
  );
  FDC   \clk_div/clkdiv_19  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(sw_7_IBUF_5),
    .D(\Result<19>1 ),
    .Q(\clk_div/clkdiv [19])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ),
    .S(\clk_div/Mcount_clkdiv_lut [0]),
    .O(\clk_div/Mcount_clkdiv_cy [0])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .LI(\clk_div/Mcount_clkdiv_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<1>  (
    .CI(\clk_div/Mcount_clkdiv_cy [0]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<1>_rt_348 ),
    .O(\clk_div/Mcount_clkdiv_cy [1])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<1>  (
    .CI(\clk_div/Mcount_clkdiv_cy [0]),
    .LI(\clk_div/Mcount_clkdiv_cy<1>_rt_348 ),
    .O(\Result<1>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<2>  (
    .CI(\clk_div/Mcount_clkdiv_cy [1]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<2>_rt_349 ),
    .O(\clk_div/Mcount_clkdiv_cy [2])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<2>  (
    .CI(\clk_div/Mcount_clkdiv_cy [1]),
    .LI(\clk_div/Mcount_clkdiv_cy<2>_rt_349 ),
    .O(\Result<2>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<3>  (
    .CI(\clk_div/Mcount_clkdiv_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<3>_rt_350 ),
    .O(\clk_div/Mcount_clkdiv_cy [3])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<3>  (
    .CI(\clk_div/Mcount_clkdiv_cy [2]),
    .LI(\clk_div/Mcount_clkdiv_cy<3>_rt_350 ),
    .O(\Result<3>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<4>  (
    .CI(\clk_div/Mcount_clkdiv_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<4>_rt_351 ),
    .O(\clk_div/Mcount_clkdiv_cy [4])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<4>  (
    .CI(\clk_div/Mcount_clkdiv_cy [3]),
    .LI(\clk_div/Mcount_clkdiv_cy<4>_rt_351 ),
    .O(\Result<4>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<5>  (
    .CI(\clk_div/Mcount_clkdiv_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<5>_rt_352 ),
    .O(\clk_div/Mcount_clkdiv_cy [5])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<5>  (
    .CI(\clk_div/Mcount_clkdiv_cy [4]),
    .LI(\clk_div/Mcount_clkdiv_cy<5>_rt_352 ),
    .O(\Result<5>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<6>  (
    .CI(\clk_div/Mcount_clkdiv_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<6>_rt_353 ),
    .O(\clk_div/Mcount_clkdiv_cy [6])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<6>  (
    .CI(\clk_div/Mcount_clkdiv_cy [5]),
    .LI(\clk_div/Mcount_clkdiv_cy<6>_rt_353 ),
    .O(\Result<6>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<7>  (
    .CI(\clk_div/Mcount_clkdiv_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<7>_rt_354 ),
    .O(\clk_div/Mcount_clkdiv_cy [7])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<7>  (
    .CI(\clk_div/Mcount_clkdiv_cy [6]),
    .LI(\clk_div/Mcount_clkdiv_cy<7>_rt_354 ),
    .O(\Result<7>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<8>  (
    .CI(\clk_div/Mcount_clkdiv_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<8>_rt_355 ),
    .O(\clk_div/Mcount_clkdiv_cy [8])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<8>  (
    .CI(\clk_div/Mcount_clkdiv_cy [7]),
    .LI(\clk_div/Mcount_clkdiv_cy<8>_rt_355 ),
    .O(\Result<8>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<9>  (
    .CI(\clk_div/Mcount_clkdiv_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<9>_rt_356 ),
    .O(\clk_div/Mcount_clkdiv_cy [9])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<9>  (
    .CI(\clk_div/Mcount_clkdiv_cy [8]),
    .LI(\clk_div/Mcount_clkdiv_cy<9>_rt_356 ),
    .O(\Result<9>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<10>  (
    .CI(\clk_div/Mcount_clkdiv_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<10>_rt_357 ),
    .O(\clk_div/Mcount_clkdiv_cy [10])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<10>  (
    .CI(\clk_div/Mcount_clkdiv_cy [9]),
    .LI(\clk_div/Mcount_clkdiv_cy<10>_rt_357 ),
    .O(\Result<10>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<11>  (
    .CI(\clk_div/Mcount_clkdiv_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<11>_rt_358 ),
    .O(\clk_div/Mcount_clkdiv_cy [11])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<11>  (
    .CI(\clk_div/Mcount_clkdiv_cy [10]),
    .LI(\clk_div/Mcount_clkdiv_cy<11>_rt_358 ),
    .O(\Result<11>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<12>  (
    .CI(\clk_div/Mcount_clkdiv_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<12>_rt_359 ),
    .O(\clk_div/Mcount_clkdiv_cy [12])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<12>  (
    .CI(\clk_div/Mcount_clkdiv_cy [11]),
    .LI(\clk_div/Mcount_clkdiv_cy<12>_rt_359 ),
    .O(\Result<12>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<13>  (
    .CI(\clk_div/Mcount_clkdiv_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<13>_rt_360 ),
    .O(\clk_div/Mcount_clkdiv_cy [13])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<13>  (
    .CI(\clk_div/Mcount_clkdiv_cy [12]),
    .LI(\clk_div/Mcount_clkdiv_cy<13>_rt_360 ),
    .O(\Result<13>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<14>  (
    .CI(\clk_div/Mcount_clkdiv_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<14>_rt_361 ),
    .O(\clk_div/Mcount_clkdiv_cy [14])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<14>  (
    .CI(\clk_div/Mcount_clkdiv_cy [13]),
    .LI(\clk_div/Mcount_clkdiv_cy<14>_rt_361 ),
    .O(\Result<14>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<15>  (
    .CI(\clk_div/Mcount_clkdiv_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<15>_rt_362 ),
    .O(\clk_div/Mcount_clkdiv_cy [15])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<15>  (
    .CI(\clk_div/Mcount_clkdiv_cy [14]),
    .LI(\clk_div/Mcount_clkdiv_cy<15>_rt_362 ),
    .O(\Result<15>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<16>  (
    .CI(\clk_div/Mcount_clkdiv_cy [15]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<16>_rt_363 ),
    .O(\clk_div/Mcount_clkdiv_cy [16])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<16>  (
    .CI(\clk_div/Mcount_clkdiv_cy [15]),
    .LI(\clk_div/Mcount_clkdiv_cy<16>_rt_363 ),
    .O(\Result<16>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<17>  (
    .CI(\clk_div/Mcount_clkdiv_cy [16]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<17>_rt_364 ),
    .O(\clk_div/Mcount_clkdiv_cy [17])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<17>  (
    .CI(\clk_div/Mcount_clkdiv_cy [16]),
    .LI(\clk_div/Mcount_clkdiv_cy<17>_rt_364 ),
    .O(\Result<17>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<18>  (
    .CI(\clk_div/Mcount_clkdiv_cy [17]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<18>_rt_365 ),
    .O(\clk_div/Mcount_clkdiv_cy [18])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<18>  (
    .CI(\clk_div/Mcount_clkdiv_cy [17]),
    .LI(\clk_div/Mcount_clkdiv_cy<18>_rt_365 ),
    .O(\Result<18>1 )
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<19>  (
    .CI(\clk_div/Mcount_clkdiv_cy [18]),
    .LI(\clk_div/Mcount_clkdiv_xor<19>_rt_409 ),
    .O(\Result<19>1 )
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ),
    .S(\openmips/pc_reg/Maccum_pc_lut [2]),
    .O(\openmips/pc_reg/Maccum_pc_cy [2])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .LI(\openmips/pc_reg/Maccum_pc_lut [2]),
    .O(Result[2])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<3>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<3>_rt_366 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [3])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<3>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [2]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<3>_rt_366 ),
    .O(Result[3])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<4>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<4>_rt_367 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [4])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<4>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [3]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<4>_rt_367 ),
    .O(Result[4])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<5>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<5>_rt_368 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [5])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<5>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [4]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<5>_rt_368 ),
    .O(Result[5])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<6>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<6>_rt_369 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [6])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<6>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [5]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<6>_rt_369 ),
    .O(Result[6])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<7>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<7>_rt_370 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [7])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<7>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [6]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<7>_rt_370 ),
    .O(Result[7])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<8>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<8>_rt_371 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [8])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<8>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [7]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<8>_rt_371 ),
    .O(Result[8])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<9>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<9>_rt_372 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [9])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<9>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [8]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<9>_rt_372 ),
    .O(Result[9])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<10>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<10>_rt_373 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [10])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<10>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [9]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<10>_rt_373 ),
    .O(Result[10])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<11>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<11>_rt_374 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [11])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<11>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [10]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<11>_rt_374 ),
    .O(Result[11])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<12>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<12>_rt_375 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [12])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<12>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [11]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<12>_rt_375 ),
    .O(Result[12])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<13>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<13>_rt_376 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [13])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<13>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [12]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<13>_rt_376 ),
    .O(Result[13])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<14>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<14>_rt_377 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [14])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<14>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [13]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<14>_rt_377 ),
    .O(Result[14])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<15>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<15>_rt_378 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [15])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<15>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [14]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<15>_rt_378 ),
    .O(Result[15])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<16>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [15]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<16>_rt_379 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [16])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<16>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [15]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<16>_rt_379 ),
    .O(Result[16])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<17>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [16]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<17>_rt_380 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [17])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<17>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [16]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<17>_rt_380 ),
    .O(Result[17])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<18>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [17]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<18>_rt_381 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [18])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<18>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [17]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<18>_rt_381 ),
    .O(Result[18])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<19>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [18]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<19>_rt_382 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [19])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<19>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [18]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<19>_rt_382 ),
    .O(Result[19])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<20>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [19]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<20>_rt_383 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [20])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<20>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [19]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<20>_rt_383 ),
    .O(Result[20])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<21>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [20]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<21>_rt_384 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [21])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<21>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [20]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<21>_rt_384 ),
    .O(Result[21])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<22>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [21]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<22>_rt_385 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [22])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<22>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [21]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<22>_rt_385 ),
    .O(Result[22])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<23>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [22]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<23>_rt_386 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [23])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<23>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [22]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<23>_rt_386 ),
    .O(Result[23])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<24>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [23]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<24>_rt_387 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [24])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<24>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [23]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<24>_rt_387 ),
    .O(Result[24])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<25>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [24]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<25>_rt_388 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [25])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<25>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [24]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<25>_rt_388 ),
    .O(Result[25])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<26>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [25]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<26>_rt_389 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [26])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<26>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [25]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<26>_rt_389 ),
    .O(Result[26])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<27>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [26]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<27>_rt_390 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [27])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<27>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [26]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<27>_rt_390 ),
    .O(Result[27])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<28>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [27]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<28>_rt_391 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [28])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<28>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [27]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<28>_rt_391 ),
    .O(Result[28])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<29>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [28]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<29>_rt_392 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [29])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<29>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [28]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<29>_rt_392 ),
    .O(Result[29])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<30>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [29]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<30>_rt_393 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [30])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<30>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [29]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<30>_rt_393 ),
    .O(Result[30])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<31>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [30]),
    .LI(\openmips/pc_reg/Maccum_pc_xor<31>_rt_410 ),
    .O(Result[31])
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_2  (
    .I0(\mux8t1_4/Mmux_o_43_222 ),
    .I1(\mux8t1_4/Mmux_o_33_223 ),
    .S(\anti_jitter/sw_ok[1] ),
    .O(digit[3])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \mux8t1_4/Mmux_o_43  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .I2(inst[11]),
    .I3(inst[15]),
    .I4(inst[7]),
    .I5(inst[3]),
    .O(\mux8t1_4/Mmux_o_43_222 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \mux8t1_4/Mmux_o_33  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .I2(inst[27]),
    .I3(inst[31]),
    .I4(inst[23]),
    .I5(inst[19]),
    .O(\mux8t1_4/Mmux_o_33_223 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_1  (
    .I0(\mux8t1_4/Mmux_o_42_224 ),
    .I1(\mux8t1_4/Mmux_o_32_225 ),
    .S(\anti_jitter/sw_ok[1] ),
    .O(digit[2])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \mux8t1_4/Mmux_o_42  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .I2(inst[10]),
    .I3(inst[14]),
    .I4(inst[6]),
    .I5(inst[2]),
    .O(\mux8t1_4/Mmux_o_42_224 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \mux8t1_4/Mmux_o_32  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .I2(inst[26]),
    .I3(inst[30]),
    .I4(inst[22]),
    .I5(inst[18]),
    .O(\mux8t1_4/Mmux_o_32_225 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_0  (
    .I0(\mux8t1_4/Mmux_o_41_226 ),
    .I1(\mux8t1_4/Mmux_o_31_227 ),
    .S(\anti_jitter/sw_ok[1] ),
    .O(digit[1])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \mux8t1_4/Mmux_o_41  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .I2(inst[9]),
    .I3(inst[13]),
    .I4(inst[5]),
    .I5(inst[1]),
    .O(\mux8t1_4/Mmux_o_41_226 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \mux8t1_4/Mmux_o_31  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .I2(inst[25]),
    .I3(inst[29]),
    .I4(inst[21]),
    .I5(inst[17]),
    .O(\mux8t1_4/Mmux_o_31_227 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7  (
    .I0(\mux8t1_4/Mmux_o_4_228 ),
    .I1(\mux8t1_4/Mmux_o_3_229 ),
    .S(\anti_jitter/sw_ok[1] ),
    .O(digit[0])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \mux8t1_4/Mmux_o_4  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .I2(inst[8]),
    .I3(inst[12]),
    .I4(inst[4]),
    .I5(inst[0]),
    .O(\mux8t1_4/Mmux_o_4_228 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \mux8t1_4/Mmux_o_3  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .I2(inst[24]),
    .I3(inst[28]),
    .I4(inst[20]),
    .I5(inst[16]),
    .O(\mux8t1_4/Mmux_o_3_229 )
  );
  XORCY   \anti_jitter/Mcount_counter_xor<16>  (
    .CI(\anti_jitter/Mcount_counter_cy [15]),
    .LI(\anti_jitter/Mcount_counter_xor<16>_rt_411 ),
    .O(\anti_jitter/Result [16])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<15>  (
    .CI(\anti_jitter/Mcount_counter_cy [14]),
    .LI(\anti_jitter/Mcount_counter_cy<15>_rt_394 ),
    .O(\anti_jitter/Result [15])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<15>  (
    .CI(\anti_jitter/Mcount_counter_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<15>_rt_394 ),
    .O(\anti_jitter/Mcount_counter_cy [15])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<14>  (
    .CI(\anti_jitter/Mcount_counter_cy [13]),
    .LI(\anti_jitter/Mcount_counter_cy<14>_rt_395 ),
    .O(\anti_jitter/Result [14])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<14>  (
    .CI(\anti_jitter/Mcount_counter_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<14>_rt_395 ),
    .O(\anti_jitter/Mcount_counter_cy [14])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<13>  (
    .CI(\anti_jitter/Mcount_counter_cy [12]),
    .LI(\anti_jitter/Mcount_counter_cy<13>_rt_396 ),
    .O(\anti_jitter/Result [13])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<13>  (
    .CI(\anti_jitter/Mcount_counter_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<13>_rt_396 ),
    .O(\anti_jitter/Mcount_counter_cy [13])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<12>  (
    .CI(\anti_jitter/Mcount_counter_cy [11]),
    .LI(\anti_jitter/Mcount_counter_cy<12>_rt_397 ),
    .O(\anti_jitter/Result [12])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<12>  (
    .CI(\anti_jitter/Mcount_counter_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<12>_rt_397 ),
    .O(\anti_jitter/Mcount_counter_cy [12])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<11>  (
    .CI(\anti_jitter/Mcount_counter_cy [10]),
    .LI(\anti_jitter/Mcount_counter_cy<11>_rt_398 ),
    .O(\anti_jitter/Result [11])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<11>  (
    .CI(\anti_jitter/Mcount_counter_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<11>_rt_398 ),
    .O(\anti_jitter/Mcount_counter_cy [11])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<10>  (
    .CI(\anti_jitter/Mcount_counter_cy [9]),
    .LI(\anti_jitter/Mcount_counter_cy<10>_rt_399 ),
    .O(\anti_jitter/Result [10])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<10>  (
    .CI(\anti_jitter/Mcount_counter_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<10>_rt_399 ),
    .O(\anti_jitter/Mcount_counter_cy [10])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<9>  (
    .CI(\anti_jitter/Mcount_counter_cy [8]),
    .LI(\anti_jitter/Mcount_counter_cy<9>_rt_400 ),
    .O(\anti_jitter/Result [9])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<9>  (
    .CI(\anti_jitter/Mcount_counter_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<9>_rt_400 ),
    .O(\anti_jitter/Mcount_counter_cy [9])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<8>  (
    .CI(\anti_jitter/Mcount_counter_cy [7]),
    .LI(\anti_jitter/Mcount_counter_cy<8>_rt_401 ),
    .O(\anti_jitter/Result [8])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<8>  (
    .CI(\anti_jitter/Mcount_counter_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<8>_rt_401 ),
    .O(\anti_jitter/Mcount_counter_cy [8])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<7>  (
    .CI(\anti_jitter/Mcount_counter_cy [6]),
    .LI(\anti_jitter/Mcount_counter_cy<7>_rt_402 ),
    .O(\anti_jitter/Result [7])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<7>  (
    .CI(\anti_jitter/Mcount_counter_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<7>_rt_402 ),
    .O(\anti_jitter/Mcount_counter_cy [7])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<6>  (
    .CI(\anti_jitter/Mcount_counter_cy [5]),
    .LI(\anti_jitter/Mcount_counter_cy<6>_rt_403 ),
    .O(\anti_jitter/Result [6])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<6>  (
    .CI(\anti_jitter/Mcount_counter_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<6>_rt_403 ),
    .O(\anti_jitter/Mcount_counter_cy [6])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<5>  (
    .CI(\anti_jitter/Mcount_counter_cy [4]),
    .LI(\anti_jitter/Mcount_counter_cy<5>_rt_404 ),
    .O(\anti_jitter/Result [5])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<5>  (
    .CI(\anti_jitter/Mcount_counter_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<5>_rt_404 ),
    .O(\anti_jitter/Mcount_counter_cy [5])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<4>  (
    .CI(\anti_jitter/Mcount_counter_cy [3]),
    .LI(\anti_jitter/Mcount_counter_cy<4>_rt_405 ),
    .O(\anti_jitter/Result [4])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<4>  (
    .CI(\anti_jitter/Mcount_counter_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<4>_rt_405 ),
    .O(\anti_jitter/Mcount_counter_cy [4])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<3>  (
    .CI(\anti_jitter/Mcount_counter_cy [2]),
    .LI(\anti_jitter/Mcount_counter_cy<3>_rt_406 ),
    .O(\anti_jitter/Result [3])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<3>  (
    .CI(\anti_jitter/Mcount_counter_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<3>_rt_406 ),
    .O(\anti_jitter/Mcount_counter_cy [3])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<2>  (
    .CI(\anti_jitter/Mcount_counter_cy [1]),
    .LI(\anti_jitter/Mcount_counter_cy<2>_rt_407 ),
    .O(\anti_jitter/Result [2])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<2>  (
    .CI(\anti_jitter/Mcount_counter_cy [1]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<2>_rt_407 ),
    .O(\anti_jitter/Mcount_counter_cy [2])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<1>  (
    .CI(\anti_jitter/Mcount_counter_cy [0]),
    .LI(\anti_jitter/Mcount_counter_cy<1>_rt_408 ),
    .O(\anti_jitter/Result [1])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<1>  (
    .CI(\anti_jitter/Mcount_counter_cy [0]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<1>_rt_408 ),
    .O(\anti_jitter/Mcount_counter_cy [1])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .LI(\anti_jitter/Mcount_counter_lut [0]),
    .O(\anti_jitter/Result [0])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ),
    .S(\anti_jitter/Mcount_counter_lut [0]),
    .O(\anti_jitter/Mcount_counter_cy [0])
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<4>_248 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<4>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<3>_249 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<4>_248 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<3>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<2>_251 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<3>_249 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<1>_254 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<2> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<2>_251 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<1>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<0>_257 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi1_256 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<1>_255 ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<1>_254 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<1>  (
    .I0(\anti_jitter/counter [11]),
    .I1(\anti_jitter/counter [12]),
    .I2(\anti_jitter/counter [13]),
    .I3(\anti_jitter/counter [10]),
    .I4(\anti_jitter/counter [14]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<1>_255 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi1  (
    .I0(\anti_jitter/counter [14]),
    .I1(\anti_jitter/counter [13]),
    .I2(\anti_jitter/counter [12]),
    .I3(\anti_jitter/counter [11]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi1_256 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi_259 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<0>_258 ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<0>_257 )
  );
  LUT5 #(
    .INIT ( 32'h00002000 ))
  \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<0>  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/counter [6]),
    .I2(\anti_jitter/counter [7]),
    .I3(\anti_jitter/counter [5]),
    .I4(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<0>_258 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/counter [7]),
    .I2(\anti_jitter/counter [6]),
    .I3(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lutdi_259 )
  );
  FDE   \anti_jitter/sw_ok_7  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/_n0054_inv1_cepot_412 ),
    .D(\anti_jitter/sw_ok_7_dpot_415 ),
    .Q(\anti_jitter/sw_ok[7] )
  );
  FDE   \anti_jitter/sw_ok_6  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/_n0054_inv1_cepot_412 ),
    .D(\anti_jitter/sw_ok_6_dpot_414 ),
    .Q(\anti_jitter/sw_ok[6] )
  );
  FDE   \anti_jitter/sw_ok_1  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/_n0054_inv1_cepot_412 ),
    .D(\anti_jitter/sw_ok_1_dpot_413 ),
    .Q(\anti_jitter/sw_ok[1] )
  );
  FD   \anti_jitter/sw_temp_7  (
    .C(clk_100mhz_BUFGP_13),
    .D(sw_7_IBUF_5),
    .Q(\anti_jitter/sw_temp [7])
  );
  FD   \anti_jitter/sw_temp_6  (
    .C(clk_100mhz_BUFGP_13),
    .D(sw_6_IBUF_6),
    .Q(\anti_jitter/sw_temp [6])
  );
  FD   \anti_jitter/sw_temp_5  (
    .C(clk_100mhz_BUFGP_13),
    .D(sw_5_IBUF_7),
    .Q(\anti_jitter/sw_temp [5])
  );
  FD   \anti_jitter/sw_temp_4  (
    .C(clk_100mhz_BUFGP_13),
    .D(sw_4_IBUF_8),
    .Q(\anti_jitter/sw_temp [4])
  );
  FD   \anti_jitter/sw_temp_3  (
    .C(clk_100mhz_BUFGP_13),
    .D(sw_3_IBUF_9),
    .Q(\anti_jitter/sw_temp [3])
  );
  FD   \anti_jitter/sw_temp_2  (
    .C(clk_100mhz_BUFGP_13),
    .D(sw_2_IBUF_10),
    .Q(\anti_jitter/sw_temp [2])
  );
  FD   \anti_jitter/sw_temp_1  (
    .C(clk_100mhz_BUFGP_13),
    .D(sw_1_IBUF_11),
    .Q(\anti_jitter/sw_temp [1])
  );
  FD   \anti_jitter/sw_temp_0  (
    .C(clk_100mhz_BUFGP_13),
    .D(sw_0_IBUF_12),
    .Q(\anti_jitter/sw_temp [0])
  );
  FD   \anti_jitter/btn_temp_4  (
    .C(clk_100mhz_BUFGP_13),
    .D(btn_4_IBUF_0),
    .Q(\anti_jitter/btn_temp [4])
  );
  FD   \anti_jitter/btn_temp_3  (
    .C(clk_100mhz_BUFGP_13),
    .D(btn_3_IBUF_1),
    .Q(\anti_jitter/btn_temp [3])
  );
  FD   \anti_jitter/btn_temp_2  (
    .C(clk_100mhz_BUFGP_13),
    .D(btn_2_IBUF_2),
    .Q(\anti_jitter/btn_temp [2])
  );
  FD   \anti_jitter/btn_temp_1  (
    .C(clk_100mhz_BUFGP_13),
    .D(btn_1_IBUF_3),
    .Q(\anti_jitter/btn_temp [1])
  );
  FD   \anti_jitter/btn_temp_0  (
    .C(clk_100mhz_BUFGP_13),
    .D(btn_0_IBUF_4),
    .Q(\anti_jitter/btn_temp [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \mux4t1_4/Mram_o12  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .O(an_0_OBUF_96)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \mux4t1_4/Mram_o111  (
    .I0(\clk_div/clkdiv [18]),
    .I1(\clk_div/clkdiv [19]),
    .O(an_1_OBUF_95)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \mux4t1_4/Mram_o21  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .O(an_2_OBUF_94)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \mux4t1_4/Mram_o31  (
    .I0(\clk_div/clkdiv [18]),
    .I1(\clk_div/clkdiv [19]),
    .O(an_3_OBUF_93)
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \decoder_7seg/Mram_segment51  (
    .I0(digit[2]),
    .I1(digit[0]),
    .I2(digit[1]),
    .I3(digit[3]),
    .O(seg_5_OBUF_98)
  );
  LUT4 #(
    .INIT ( 16'h0941 ))
  \decoder_7seg/Mram_segment11  (
    .I0(digit[1]),
    .I1(digit[2]),
    .I2(digit[3]),
    .I3(digit[0]),
    .O(seg_0_OBUF_103)
  );
  LUT4 #(
    .INIT ( 16'h02BA ))
  \decoder_7seg/Mram_segment21  (
    .I0(digit[0]),
    .I1(digit[1]),
    .I2(digit[2]),
    .I3(digit[3]),
    .O(seg_2_OBUF_101)
  );
  LUT5 #(
    .INIT ( 32'hE6C4A280 ))
  Mmux_led21 (
    .I0(\anti_jitter/sw_ok[7] ),
    .I1(\anti_jitter/sw_ok[6] ),
    .I2(\openmips/pc_reg/pc [25]),
    .I3(\openmips/pc_reg/pc [17]),
    .I4(\openmips/pc_reg/pc [9]),
    .O(led_1_OBUF_55)
  );
  LUT5 #(
    .INIT ( 32'hE6C4A280 ))
  Mmux_led11 (
    .I0(\anti_jitter/sw_ok[7] ),
    .I1(\anti_jitter/sw_ok[6] ),
    .I2(\openmips/pc_reg/pc [24]),
    .I3(\openmips/pc_reg/pc [16]),
    .I4(\openmips/pc_reg/pc [8]),
    .O(led_0_OBUF_56)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led31 (
    .I0(\anti_jitter/sw_ok[6] ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\openmips/pc_reg/pc [10]),
    .I3(\openmips/pc_reg/pc [26]),
    .I4(\openmips/pc_reg/pc [18]),
    .I5(\openmips/pc_reg/pc [2]),
    .O(led_2_OBUF_54)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led41 (
    .I0(\anti_jitter/sw_ok[6] ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\openmips/pc_reg/pc [11]),
    .I3(\openmips/pc_reg/pc [27]),
    .I4(\openmips/pc_reg/pc [19]),
    .I5(\openmips/pc_reg/pc [3]),
    .O(led_3_OBUF_53)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led51 (
    .I0(\anti_jitter/sw_ok[6] ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\openmips/pc_reg/pc [12]),
    .I3(\openmips/pc_reg/pc [28]),
    .I4(\openmips/pc_reg/pc [20]),
    .I5(\openmips/pc_reg/pc [4]),
    .O(led_4_OBUF_52)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led61 (
    .I0(\anti_jitter/sw_ok[6] ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\openmips/pc_reg/pc [13]),
    .I3(\openmips/pc_reg/pc [29]),
    .I4(\openmips/pc_reg/pc [21]),
    .I5(\openmips/pc_reg/pc [5]),
    .O(led_5_OBUF_51)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led71 (
    .I0(\anti_jitter/sw_ok[6] ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\openmips/pc_reg/pc [14]),
    .I3(\openmips/pc_reg/pc [30]),
    .I4(\openmips/pc_reg/pc [22]),
    .I5(\openmips/pc_reg/pc [6]),
    .O(led_6_OBUF_50)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led81 (
    .I0(\anti_jitter/sw_ok[6] ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\openmips/pc_reg/pc [15]),
    .I3(\openmips/pc_reg/pc [31]),
    .I4(\openmips/pc_reg/pc [23]),
    .I5(\openmips/pc_reg/pc [7]),
    .O(led_7_OBUF_49)
  );
  LUT4 #(
    .INIT ( 16'h4190 ))
  \seg<6>1  (
    .I0(digit[1]),
    .I1(digit[3]),
    .I2(digit[0]),
    .I3(digit[2]),
    .O(seg_6_OBUF_97)
  );
  LUT4 #(
    .INIT ( 16'hA118 ))
  \seg<3>1  (
    .I0(digit[1]),
    .I1(digit[3]),
    .I2(digit[0]),
    .I3(digit[2]),
    .O(seg_3_OBUF_100)
  );
  LUT4 #(
    .INIT ( 16'hC140 ))
  \seg<4>1  (
    .I0(digit[0]),
    .I1(digit[3]),
    .I2(digit[2]),
    .I3(digit[1]),
    .O(seg_4_OBUF_99)
  );
  LUT4 #(
    .INIT ( 16'h2382 ))
  \seg<1>1  (
    .I0(digit[0]),
    .I1(digit[3]),
    .I2(digit[2]),
    .I3(digit[1]),
    .O(seg_1_OBUF_102)
  );
  LUT6 #(
    .INIT ( 64'h7FDFF7FD3FCFF3FC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o1  (
    .I0(sw_7_IBUF_5),
    .I1(sw_0_IBUF_12),
    .I2(btn_1_IBUF_3),
    .I3(\anti_jitter/sw_temp [0]),
    .I4(\anti_jitter/btn_temp [1]),
    .I5(\anti_jitter/sw_temp [7]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o1_308 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o2  (
    .I0(sw_5_IBUF_7),
    .I1(sw_7_IBUF_5),
    .I2(sw_6_IBUF_6),
    .I3(\anti_jitter/sw_temp [6]),
    .I4(\anti_jitter/sw_temp [5]),
    .I5(\anti_jitter/sw_temp [7]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o2_309 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o3  (
    .I0(sw_3_IBUF_9),
    .I1(sw_5_IBUF_7),
    .I2(sw_4_IBUF_8),
    .I3(\anti_jitter/sw_temp [4]),
    .I4(\anti_jitter/sw_temp [3]),
    .I5(\anti_jitter/sw_temp [5]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o3_310 )
  );
  LUT6 #(
    .INIT ( 64'h3FCFF3FCBFEFFBFE ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o4  (
    .I0(btn_4_IBUF_0),
    .I1(btn_3_IBUF_1),
    .I2(btn_2_IBUF_2),
    .I3(\anti_jitter/btn_temp [3]),
    .I4(\anti_jitter/btn_temp [2]),
    .I5(\anti_jitter/btn_temp [4]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o4_311 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o5  (
    .I0(sw_1_IBUF_11),
    .I1(sw_3_IBUF_9),
    .I2(sw_2_IBUF_10),
    .I3(\anti_jitter/sw_temp [2]),
    .I4(\anti_jitter/sw_temp [1]),
    .I5(\anti_jitter/sw_temp [3]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o5_312 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o6  (
    .I0(btn_4_IBUF_0),
    .I1(sw_1_IBUF_11),
    .I2(btn_0_IBUF_4),
    .I3(\anti_jitter/btn_temp [0]),
    .I4(\anti_jitter/btn_temp [4]),
    .I5(\anti_jitter/sw_temp [1]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o6_313 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o7  (
    .I0(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o1_308 ),
    .I1(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o4_311 ),
    .I2(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o6_313 ),
    .I3(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o5_312 ),
    .I4(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o3_310 ),
    .I5(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o2_309 ),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o )
  );
  IBUF   btn_4_IBUF (
    .I(btn[4]),
    .O(btn_4_IBUF_0)
  );
  IBUF   btn_3_IBUF (
    .I(btn[3]),
    .O(btn_3_IBUF_1)
  );
  IBUF   btn_2_IBUF (
    .I(btn[2]),
    .O(btn_2_IBUF_2)
  );
  IBUF   btn_1_IBUF (
    .I(btn[1]),
    .O(btn_1_IBUF_3)
  );
  IBUF   btn_0_IBUF (
    .I(btn[0]),
    .O(btn_0_IBUF_4)
  );
  IBUF   sw_7_IBUF (
    .I(sw[7]),
    .O(sw_7_IBUF_5)
  );
  IBUF   sw_6_IBUF (
    .I(sw[6]),
    .O(sw_6_IBUF_6)
  );
  IBUF   sw_5_IBUF (
    .I(sw[5]),
    .O(sw_5_IBUF_7)
  );
  IBUF   sw_4_IBUF (
    .I(sw[4]),
    .O(sw_4_IBUF_8)
  );
  IBUF   sw_3_IBUF (
    .I(sw[3]),
    .O(sw_3_IBUF_9)
  );
  IBUF   sw_2_IBUF (
    .I(sw[2]),
    .O(sw_2_IBUF_10)
  );
  IBUF   sw_1_IBUF (
    .I(sw[1]),
    .O(sw_1_IBUF_11)
  );
  IBUF   sw_0_IBUF (
    .I(sw[0]),
    .O(sw_0_IBUF_12)
  );
  OBUF   seg_7_OBUF (
    .I(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<3> ),
    .O(seg[7])
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_97),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_98),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_99),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_100),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_101),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_102),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_103),
    .O(seg[0])
  );
  OBUF   an_3_OBUF (
    .I(an_3_OBUF_93),
    .O(an[3])
  );
  OBUF   an_2_OBUF (
    .I(an_2_OBUF_94),
    .O(an[2])
  );
  OBUF   an_1_OBUF (
    .I(an_1_OBUF_95),
    .O(an[1])
  );
  OBUF   an_0_OBUF (
    .I(an_0_OBUF_96),
    .O(an[0])
  );
  OBUF   led_7_OBUF (
    .I(led_7_OBUF_49),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(led_6_OBUF_50),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(led_5_OBUF_51),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(led_4_OBUF_52),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(led_3_OBUF_53),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(led_2_OBUF_54),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(led_1_OBUF_55),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(led_0_OBUF_56),
    .O(led[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<2>1  (
    .I0(\anti_jitter/counter [16]),
    .I1(\anti_jitter/counter [15]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_lut<2> )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<1>_rt  (
    .I0(\clk_div/clkdiv [1]),
    .O(\clk_div/Mcount_clkdiv_cy<1>_rt_348 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<2>_rt  (
    .I0(\clk_div/clkdiv [2]),
    .O(\clk_div/Mcount_clkdiv_cy<2>_rt_349 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<3>_rt  (
    .I0(\clk_div/clkdiv [3]),
    .O(\clk_div/Mcount_clkdiv_cy<3>_rt_350 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<4>_rt  (
    .I0(\clk_div/clkdiv [4]),
    .O(\clk_div/Mcount_clkdiv_cy<4>_rt_351 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<5>_rt  (
    .I0(\clk_div/clkdiv [5]),
    .O(\clk_div/Mcount_clkdiv_cy<5>_rt_352 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<6>_rt  (
    .I0(\clk_div/clkdiv [6]),
    .O(\clk_div/Mcount_clkdiv_cy<6>_rt_353 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<7>_rt  (
    .I0(\clk_div/clkdiv [7]),
    .O(\clk_div/Mcount_clkdiv_cy<7>_rt_354 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<8>_rt  (
    .I0(\clk_div/clkdiv [8]),
    .O(\clk_div/Mcount_clkdiv_cy<8>_rt_355 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<9>_rt  (
    .I0(\clk_div/clkdiv [9]),
    .O(\clk_div/Mcount_clkdiv_cy<9>_rt_356 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<10>_rt  (
    .I0(\clk_div/clkdiv [10]),
    .O(\clk_div/Mcount_clkdiv_cy<10>_rt_357 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<11>_rt  (
    .I0(\clk_div/clkdiv [11]),
    .O(\clk_div/Mcount_clkdiv_cy<11>_rt_358 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<12>_rt  (
    .I0(\clk_div/clkdiv [12]),
    .O(\clk_div/Mcount_clkdiv_cy<12>_rt_359 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<13>_rt  (
    .I0(\clk_div/clkdiv [13]),
    .O(\clk_div/Mcount_clkdiv_cy<13>_rt_360 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<14>_rt  (
    .I0(\clk_div/clkdiv [14]),
    .O(\clk_div/Mcount_clkdiv_cy<14>_rt_361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<15>_rt  (
    .I0(\clk_div/clkdiv [15]),
    .O(\clk_div/Mcount_clkdiv_cy<15>_rt_362 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<16>_rt  (
    .I0(\clk_div/clkdiv [16]),
    .O(\clk_div/Mcount_clkdiv_cy<16>_rt_363 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<17>_rt  (
    .I0(\clk_div/clkdiv [17]),
    .O(\clk_div/Mcount_clkdiv_cy<17>_rt_364 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<18>_rt  (
    .I0(\clk_div/clkdiv [18]),
    .O(\clk_div/Mcount_clkdiv_cy<18>_rt_365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<3>_rt  (
    .I0(\openmips/pc_reg/pc [3]),
    .O(\openmips/pc_reg/Maccum_pc_cy<3>_rt_366 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<4>_rt  (
    .I0(\openmips/pc_reg/pc [4]),
    .O(\openmips/pc_reg/Maccum_pc_cy<4>_rt_367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<5>_rt  (
    .I0(\openmips/pc_reg/pc [5]),
    .O(\openmips/pc_reg/Maccum_pc_cy<5>_rt_368 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<6>_rt  (
    .I0(\openmips/pc_reg/pc [6]),
    .O(\openmips/pc_reg/Maccum_pc_cy<6>_rt_369 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<7>_rt  (
    .I0(\openmips/pc_reg/pc [7]),
    .O(\openmips/pc_reg/Maccum_pc_cy<7>_rt_370 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<8>_rt  (
    .I0(\openmips/pc_reg/pc [8]),
    .O(\openmips/pc_reg/Maccum_pc_cy<8>_rt_371 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<9>_rt  (
    .I0(\openmips/pc_reg/pc [9]),
    .O(\openmips/pc_reg/Maccum_pc_cy<9>_rt_372 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<10>_rt  (
    .I0(\openmips/pc_reg/pc [10]),
    .O(\openmips/pc_reg/Maccum_pc_cy<10>_rt_373 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<11>_rt  (
    .I0(\openmips/pc_reg/pc [11]),
    .O(\openmips/pc_reg/Maccum_pc_cy<11>_rt_374 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<12>_rt  (
    .I0(\openmips/pc_reg/pc [12]),
    .O(\openmips/pc_reg/Maccum_pc_cy<12>_rt_375 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<13>_rt  (
    .I0(\openmips/pc_reg/pc [13]),
    .O(\openmips/pc_reg/Maccum_pc_cy<13>_rt_376 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<14>_rt  (
    .I0(\openmips/pc_reg/pc [14]),
    .O(\openmips/pc_reg/Maccum_pc_cy<14>_rt_377 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<15>_rt  (
    .I0(\openmips/pc_reg/pc [15]),
    .O(\openmips/pc_reg/Maccum_pc_cy<15>_rt_378 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<16>_rt  (
    .I0(\openmips/pc_reg/pc [16]),
    .O(\openmips/pc_reg/Maccum_pc_cy<16>_rt_379 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<17>_rt  (
    .I0(\openmips/pc_reg/pc [17]),
    .O(\openmips/pc_reg/Maccum_pc_cy<17>_rt_380 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<18>_rt  (
    .I0(\openmips/pc_reg/pc [18]),
    .O(\openmips/pc_reg/Maccum_pc_cy<18>_rt_381 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<19>_rt  (
    .I0(\openmips/pc_reg/pc [19]),
    .O(\openmips/pc_reg/Maccum_pc_cy<19>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<20>_rt  (
    .I0(\openmips/pc_reg/pc [20]),
    .O(\openmips/pc_reg/Maccum_pc_cy<20>_rt_383 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<21>_rt  (
    .I0(\openmips/pc_reg/pc [21]),
    .O(\openmips/pc_reg/Maccum_pc_cy<21>_rt_384 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<22>_rt  (
    .I0(\openmips/pc_reg/pc [22]),
    .O(\openmips/pc_reg/Maccum_pc_cy<22>_rt_385 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<23>_rt  (
    .I0(\openmips/pc_reg/pc [23]),
    .O(\openmips/pc_reg/Maccum_pc_cy<23>_rt_386 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<24>_rt  (
    .I0(\openmips/pc_reg/pc [24]),
    .O(\openmips/pc_reg/Maccum_pc_cy<24>_rt_387 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<25>_rt  (
    .I0(\openmips/pc_reg/pc [25]),
    .O(\openmips/pc_reg/Maccum_pc_cy<25>_rt_388 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<26>_rt  (
    .I0(\openmips/pc_reg/pc [26]),
    .O(\openmips/pc_reg/Maccum_pc_cy<26>_rt_389 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<27>_rt  (
    .I0(\openmips/pc_reg/pc [27]),
    .O(\openmips/pc_reg/Maccum_pc_cy<27>_rt_390 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<28>_rt  (
    .I0(\openmips/pc_reg/pc [28]),
    .O(\openmips/pc_reg/Maccum_pc_cy<28>_rt_391 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<29>_rt  (
    .I0(\openmips/pc_reg/pc [29]),
    .O(\openmips/pc_reg/Maccum_pc_cy<29>_rt_392 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<30>_rt  (
    .I0(\openmips/pc_reg/pc [30]),
    .O(\openmips/pc_reg/Maccum_pc_cy<30>_rt_393 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<15>_rt  (
    .I0(\anti_jitter/counter [15]),
    .O(\anti_jitter/Mcount_counter_cy<15>_rt_394 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<14>_rt  (
    .I0(\anti_jitter/counter [14]),
    .O(\anti_jitter/Mcount_counter_cy<14>_rt_395 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<13>_rt  (
    .I0(\anti_jitter/counter [13]),
    .O(\anti_jitter/Mcount_counter_cy<13>_rt_396 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<12>_rt  (
    .I0(\anti_jitter/counter [12]),
    .O(\anti_jitter/Mcount_counter_cy<12>_rt_397 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<11>_rt  (
    .I0(\anti_jitter/counter [11]),
    .O(\anti_jitter/Mcount_counter_cy<11>_rt_398 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<10>_rt  (
    .I0(\anti_jitter/counter [10]),
    .O(\anti_jitter/Mcount_counter_cy<10>_rt_399 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<9>_rt  (
    .I0(\anti_jitter/counter [9]),
    .O(\anti_jitter/Mcount_counter_cy<9>_rt_400 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<8>_rt  (
    .I0(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcount_counter_cy<8>_rt_401 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<7>_rt  (
    .I0(\anti_jitter/counter [7]),
    .O(\anti_jitter/Mcount_counter_cy<7>_rt_402 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<6>_rt  (
    .I0(\anti_jitter/counter [6]),
    .O(\anti_jitter/Mcount_counter_cy<6>_rt_403 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<5>_rt  (
    .I0(\anti_jitter/counter [5]),
    .O(\anti_jitter/Mcount_counter_cy<5>_rt_404 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<4>_rt  (
    .I0(\anti_jitter/counter [4]),
    .O(\anti_jitter/Mcount_counter_cy<4>_rt_405 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<3>_rt  (
    .I0(\anti_jitter/counter [3]),
    .O(\anti_jitter/Mcount_counter_cy<3>_rt_406 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<2>_rt  (
    .I0(\anti_jitter/counter [2]),
    .O(\anti_jitter/Mcount_counter_cy<2>_rt_407 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<1>_rt  (
    .I0(\anti_jitter/counter [1]),
    .O(\anti_jitter/Mcount_counter_cy<1>_rt_408 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_xor<19>_rt  (
    .I0(\clk_div/clkdiv [19]),
    .O(\clk_div/Mcount_clkdiv_xor<19>_rt_409 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_xor<31>_rt  (
    .I0(\openmips/pc_reg/pc [31]),
    .O(\openmips/pc_reg/Maccum_pc_xor<31>_rt_410 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_xor<16>_rt  (
    .I0(\anti_jitter/counter [16]),
    .O(\anti_jitter/Mcount_counter_xor<16>_rt_411 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \anti_jitter/_n0054_inv1_cepot  (
    .I0(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o1_308 ),
    .I1(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o4_311 ),
    .I2(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o6_313 ),
    .I3(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o5_312 ),
    .I4(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o3_310 ),
    .I5(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o2_309 ),
    .O(\anti_jitter/_n0054_inv1_cepot_412 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_1_dpot  (
    .I0(sw_1_IBUF_11),
    .I1(\anti_jitter/sw_ok[1] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/sw_ok_1_dpot_413 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_6_dpot  (
    .I0(sw_6_IBUF_6),
    .I1(\anti_jitter/sw_ok[6] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/sw_ok_6_dpot_414 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_7_dpot  (
    .I0(sw_7_IBUF_5),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/sw_ok_7_dpot_415 )
  );
  FDR   \anti_jitter/counter_9  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_9_rstpot_416 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [9])
  );
  FDR   \anti_jitter/counter_8  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_8_rstpot_417 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [8])
  );
  FDR   \anti_jitter/counter_7  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_7_rstpot_418 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [7])
  );
  FDR   \anti_jitter/counter_6  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_6_rstpot_419 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [6])
  );
  FDR   \anti_jitter/counter_5  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_5_rstpot_420 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [5])
  );
  FDR   \anti_jitter/counter_4  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_4_rstpot_421 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [4])
  );
  FDR   \anti_jitter/counter_3  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_3_rstpot_422 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [3])
  );
  FDR   \anti_jitter/counter_2  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_2_rstpot_423 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [2])
  );
  FDR   \anti_jitter/counter_1  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_1_rstpot_424 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [1])
  );
  FDR   \anti_jitter/counter_0  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_0_rstpot_425 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [0])
  );
  FDR   \anti_jitter/counter_10  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_10_rstpot_426 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [10])
  );
  FDR   \anti_jitter/counter_11  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_11_rstpot_427 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [11])
  );
  FDR   \anti_jitter/counter_12  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_12_rstpot_428 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [12])
  );
  FDR   \anti_jitter/counter_13  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_13_rstpot_429 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [13])
  );
  FDR   \anti_jitter/counter_14  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_14_rstpot_430 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [14])
  );
  FDR   \anti_jitter/counter_15  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_15_rstpot_431 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [15])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_9_rstpot  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/Result [9]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_9_rstpot_416 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_8_rstpot  (
    .I0(\anti_jitter/counter [8]),
    .I1(\anti_jitter/Result [8]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_8_rstpot_417 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_7_rstpot  (
    .I0(\anti_jitter/counter [7]),
    .I1(\anti_jitter/Result [7]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_7_rstpot_418 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_6_rstpot  (
    .I0(\anti_jitter/counter [6]),
    .I1(\anti_jitter/Result [6]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_6_rstpot_419 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_5_rstpot  (
    .I0(\anti_jitter/counter [5]),
    .I1(\anti_jitter/Result [5]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_5_rstpot_420 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_4_rstpot  (
    .I0(\anti_jitter/counter [4]),
    .I1(\anti_jitter/Result [4]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_4_rstpot_421 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_3_rstpot  (
    .I0(\anti_jitter/counter [3]),
    .I1(\anti_jitter/Result [3]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_3_rstpot_422 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_2_rstpot  (
    .I0(\anti_jitter/counter [2]),
    .I1(\anti_jitter/Result [2]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_2_rstpot_423 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_1_rstpot  (
    .I0(\anti_jitter/counter [1]),
    .I1(\anti_jitter/Result [1]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_1_rstpot_424 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_0_rstpot  (
    .I0(\anti_jitter/counter [0]),
    .I1(\anti_jitter/Result [0]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_0_rstpot_425 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_10_rstpot  (
    .I0(\anti_jitter/counter [10]),
    .I1(\anti_jitter/Result [10]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_10_rstpot_426 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_11_rstpot  (
    .I0(\anti_jitter/counter [11]),
    .I1(\anti_jitter/Result [11]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_11_rstpot_427 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_12_rstpot  (
    .I0(\anti_jitter/counter [12]),
    .I1(\anti_jitter/Result [12]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_12_rstpot_428 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_13_rstpot  (
    .I0(\anti_jitter/counter [13]),
    .I1(\anti_jitter/Result [13]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_13_rstpot_429 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_14_rstpot  (
    .I0(\anti_jitter/counter [14]),
    .I1(\anti_jitter/Result [14]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_14_rstpot_430 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_15_rstpot  (
    .I0(\anti_jitter/counter [15]),
    .I1(\anti_jitter/Result [15]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_15_rstpot_431 )
  );
  FDR   \anti_jitter/counter_16  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_16_rstpot_432 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_141_o ),
    .Q(\anti_jitter/counter [16])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_16_rstpot  (
    .I0(\anti_jitter/counter [16]),
    .I1(\anti_jitter/Result [16]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_17_o_LessThan_4_o_cy<5>_247 ),
    .O(\anti_jitter/counter_16_rstpot_432 )
  );
  BUFGP   clk_100mhz_BUFGP (
    .I(clk_100mhz),
    .O(clk_100mhz_BUFGP_13)
  );
  INV   \clk_div/Mcount_clkdiv_lut<0>_INV_0  (
    .I(\clk_div/clkdiv [0]),
    .O(\clk_div/Mcount_clkdiv_lut [0])
  );
  INV   \openmips/pc_reg/Maccum_pc_lut<2>_INV_0  (
    .I(\openmips/pc_reg/pc [2]),
    .O(\openmips/pc_reg/Maccum_pc_lut [2])
  );
  INV   \anti_jitter/Mcount_counter_lut<0>_INV_0  (
    .I(\anti_jitter/counter [0]),
    .O(\anti_jitter/Mcount_counter_lut [0])
  );
  inst_rom   inst_rom (
    .a({\openmips/pc_reg/pc [11], \openmips/pc_reg/pc [10], \openmips/pc_reg/pc [9], \openmips/pc_reg/pc [8], \openmips/pc_reg/pc [7], 
\openmips/pc_reg/pc [6], \openmips/pc_reg/pc [5], \openmips/pc_reg/pc [4], \openmips/pc_reg/pc [3], \openmips/pc_reg/pc [2]}),
    .spo({inst[31], inst[30], inst[29], inst[28], inst[27], inst[26], inst[25], inst[24], inst[23], inst[22], inst[21], inst[20], inst[19], inst[18], 
inst[17], inst[16], inst[15], inst[14], inst[13], inst[12], inst[11], inst[10], inst[9], inst[8], inst[7], inst[6], inst[5], inst[4], inst[3], inst[2]
, inst[1], inst[0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

// synthesis translate_on
