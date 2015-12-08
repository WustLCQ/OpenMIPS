////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: openmips_min_sopc_synthesis.v
// /___/   /\     Timestamp: Tue Dec 08 16:57:09 2015
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
  wire sw_6_IBUF_5;
  wire sw_5_IBUF_6;
  wire sw_4_IBUF_7;
  wire sw_3_IBUF_8;
  wire sw_2_IBUF_9;
  wire sw_1_IBUF_10;
  wire sw_0_IBUF_11;
  wire clk_100mhz_BUFGP_12;
  wire \anti_jitter/sw_ok[1] ;
  wire \anti_jitter/sw_ok[7] ;
  wire \anti_jitter/sw_ok[6] ;
  wire led_7_OBUF_48;
  wire led_6_OBUF_49;
  wire led_5_OBUF_50;
  wire led_4_OBUF_51;
  wire led_3_OBUF_52;
  wire led_2_OBUF_53;
  wire led_1_OBUF_54;
  wire led_0_OBUF_55;
  wire an_3_OBUF_92;
  wire an_2_OBUF_93;
  wire an_1_OBUF_94;
  wire an_0_OBUF_95;
  wire seg_6_OBUF_96;
  wire seg_5_OBUF_97;
  wire seg_4_OBUF_98;
  wire seg_3_OBUF_99;
  wire seg_2_OBUF_100;
  wire seg_1_OBUF_101;
  wire seg_0_OBUF_102;
  wire \mux8t1_4/Mmux_o_43_161 ;
  wire \mux8t1_4/Mmux_o_33_162 ;
  wire \mux8t1_4/Mmux_o_42_163 ;
  wire \mux8t1_4/Mmux_o_32_164 ;
  wire \mux8t1_4/Mmux_o_41_165 ;
  wire \mux8t1_4/Mmux_o_31_166 ;
  wire \mux8t1_4/Mmux_o_4_167 ;
  wire \mux8t1_4/Mmux_o_3_168 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<4>_187 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<3>_188 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<2>_190 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<2> ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<1>_193 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<1>_194 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi1_195 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<0>_196 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<0>_197 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi_198 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ;
  wire \openmips/ex/cnt_o_0_307 ;
  wire \openmips/ex/cnt_o_1_308 ;
  wire \openmips/if_id/id_inst[0] ;
  wire \openmips/if_id/id_inst[1] ;
  wire \openmips/if_id/id_inst[2] ;
  wire \openmips/if_id/id_inst[3] ;
  wire \openmips/if_id/id_inst[4] ;
  wire \openmips/if_id/id_inst[5] ;
  wire \openmips/if_id/id_inst[6] ;
  wire \openmips/if_id/id_inst[7] ;
  wire \openmips/if_id/id_inst[8] ;
  wire \openmips/if_id/id_inst[9] ;
  wire \openmips/if_id/id_inst[10] ;
  wire \openmips/if_id/id_inst[21] ;
  wire \openmips/if_id/id_inst[22] ;
  wire \openmips/if_id/id_inst[23] ;
  wire \openmips/if_id/id_inst[24] ;
  wire \openmips/if_id/id_inst[25] ;
  wire \openmips/if_id/id_inst[26] ;
  wire \openmips/if_id/id_inst[27] ;
  wire \openmips/if_id/id_inst[28] ;
  wire \openmips/if_id/id_inst[29] ;
  wire \openmips/if_id/id_inst[30] ;
  wire \openmips/if_id/id_inst[31] ;
  wire \openmips/id_ex/Reset_OR_DriverANDClockEnable ;
  wire \openmips/id_ex/stall<2>_inv1 ;
  wire \openmips/id/Mmux_alusel_o1111 ;
  wire \openmips/id/Mmux_aluop_o214 ;
  wire \openmips/id/Mmux_aluop_o213 ;
  wire \openmips/id/Mmux_aluop_o212 ;
  wire \openmips/id/op3[5]_PWR_6_o_equal_26_o<5>1 ;
  wire \openmips/id/out151 ;
  wire \openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ;
  wire \openmips/id/out41 ;
  wire \openmips/id/op3[5]_PWR_6_o_Select_32_o3 ;
  wire \openmips/id/Mmux_aluop_o12_360 ;
  wire \openmips/id/Mmux_aluop_o11 ;
  wire \openmips/id/Mmux_aluop_o31_362 ;
  wire \openmips/id/op3[5]_INV_18_o ;
  wire \openmips/id/op2[4]_GND_6_o_equal_53_o ;
  wire \openmips/id/_n0491 ;
  wire \openmips/id/inst_i[31]_GND_6_o_equal_106_o ;
  wire \openmips/id/op3[5]_GND_6_o_equal_108_o ;
  wire \openmips/id/op[5]_GND_6_o_equal_91_o ;
  wire \openmips/id/op[5]_GND_6_o_equal_92_o ;
  wire \openmips/ex/_n07942 ;
  wire \openmips/ex/_n0552 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o1_374 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o2_375 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o3_376 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o4_377 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o5_378 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o6_379 ;
  wire \openmips/id/Mmux_aluop_o7 ;
  wire \openmips/id/Mmux_aluop_o71_381 ;
  wire \openmips/id/Mmux_aluop_o3 ;
  wire \openmips/id/Mmux_aluop_o32_383 ;
  wire \openmips/id/Mmux_aluop_o33_384 ;
  wire \openmips/id/Mmux_aluop_o34_385 ;
  wire \openmips/id/Mmux_aluop_o4 ;
  wire \openmips/id/Mmux_aluop_o41_387 ;
  wire \openmips/id/Mmux_aluop_o42_388 ;
  wire \openmips/id/Mmux_aluop_o61 ;
  wire \openmips/id/Mmux_aluop_o62_390 ;
  wire \openmips/id/Mmux_aluop_o63_391 ;
  wire \openmips/id/Mmux_aluop_o52 ;
  wire \openmips/id/Mmux_aluop_o53_393 ;
  wire \openmips/id/Mmux_aluop_o54_394 ;
  wire N0;
  wire \openmips/id/Mmux_aluop_o13_396 ;
  wire \openmips/id/Mmux_aluop_o14_397 ;
  wire \openmips/id/Mmux_aluop_o15_398 ;
  wire \openmips/id/Mmux_aluop_o16_399 ;
  wire \openmips/id/Mmux_aluop_o17_400 ;
  wire \openmips/id/Mmux_aluop_o2121_401 ;
  wire \openmips/id/Mmux_aluop_o2122_402 ;
  wire \openmips/id/Mmux_aluop_o2 ;
  wire \openmips/id/Mmux_aluop_o21_404 ;
  wire \clk_div/Mcount_clkdiv_cy<1>_rt_439 ;
  wire \clk_div/Mcount_clkdiv_cy<2>_rt_440 ;
  wire \clk_div/Mcount_clkdiv_cy<3>_rt_441 ;
  wire \clk_div/Mcount_clkdiv_cy<4>_rt_442 ;
  wire \clk_div/Mcount_clkdiv_cy<5>_rt_443 ;
  wire \clk_div/Mcount_clkdiv_cy<6>_rt_444 ;
  wire \clk_div/Mcount_clkdiv_cy<7>_rt_445 ;
  wire \clk_div/Mcount_clkdiv_cy<8>_rt_446 ;
  wire \clk_div/Mcount_clkdiv_cy<9>_rt_447 ;
  wire \clk_div/Mcount_clkdiv_cy<10>_rt_448 ;
  wire \clk_div/Mcount_clkdiv_cy<11>_rt_449 ;
  wire \clk_div/Mcount_clkdiv_cy<12>_rt_450 ;
  wire \clk_div/Mcount_clkdiv_cy<13>_rt_451 ;
  wire \clk_div/Mcount_clkdiv_cy<14>_rt_452 ;
  wire \clk_div/Mcount_clkdiv_cy<15>_rt_453 ;
  wire \clk_div/Mcount_clkdiv_cy<16>_rt_454 ;
  wire \clk_div/Mcount_clkdiv_cy<17>_rt_455 ;
  wire \clk_div/Mcount_clkdiv_cy<18>_rt_456 ;
  wire \anti_jitter/Mcount_counter_cy<15>_rt_457 ;
  wire \anti_jitter/Mcount_counter_cy<14>_rt_458 ;
  wire \anti_jitter/Mcount_counter_cy<13>_rt_459 ;
  wire \anti_jitter/Mcount_counter_cy<12>_rt_460 ;
  wire \anti_jitter/Mcount_counter_cy<11>_rt_461 ;
  wire \anti_jitter/Mcount_counter_cy<10>_rt_462 ;
  wire \anti_jitter/Mcount_counter_cy<9>_rt_463 ;
  wire \anti_jitter/Mcount_counter_cy<8>_rt_464 ;
  wire \anti_jitter/Mcount_counter_cy<7>_rt_465 ;
  wire \anti_jitter/Mcount_counter_cy<6>_rt_466 ;
  wire \anti_jitter/Mcount_counter_cy<5>_rt_467 ;
  wire \anti_jitter/Mcount_counter_cy<4>_rt_468 ;
  wire \anti_jitter/Mcount_counter_cy<3>_rt_469 ;
  wire \anti_jitter/Mcount_counter_cy<2>_rt_470 ;
  wire \anti_jitter/Mcount_counter_cy<1>_rt_471 ;
  wire \openmips/pc_reg/Maccum_pc_cy<30>_rt_472 ;
  wire \openmips/pc_reg/Maccum_pc_cy<29>_rt_473 ;
  wire \openmips/pc_reg/Maccum_pc_cy<28>_rt_474 ;
  wire \openmips/pc_reg/Maccum_pc_cy<27>_rt_475 ;
  wire \openmips/pc_reg/Maccum_pc_cy<26>_rt_476 ;
  wire \openmips/pc_reg/Maccum_pc_cy<25>_rt_477 ;
  wire \openmips/pc_reg/Maccum_pc_cy<24>_rt_478 ;
  wire \openmips/pc_reg/Maccum_pc_cy<23>_rt_479 ;
  wire \openmips/pc_reg/Maccum_pc_cy<22>_rt_480 ;
  wire \openmips/pc_reg/Maccum_pc_cy<21>_rt_481 ;
  wire \openmips/pc_reg/Maccum_pc_cy<20>_rt_482 ;
  wire \openmips/pc_reg/Maccum_pc_cy<19>_rt_483 ;
  wire \openmips/pc_reg/Maccum_pc_cy<18>_rt_484 ;
  wire \openmips/pc_reg/Maccum_pc_cy<17>_rt_485 ;
  wire \openmips/pc_reg/Maccum_pc_cy<16>_rt_486 ;
  wire \openmips/pc_reg/Maccum_pc_cy<15>_rt_487 ;
  wire \openmips/pc_reg/Maccum_pc_cy<14>_rt_488 ;
  wire \openmips/pc_reg/Maccum_pc_cy<13>_rt_489 ;
  wire \openmips/pc_reg/Maccum_pc_cy<12>_rt_490 ;
  wire \openmips/pc_reg/Maccum_pc_cy<11>_rt_491 ;
  wire \openmips/pc_reg/Maccum_pc_cy<10>_rt_492 ;
  wire \openmips/pc_reg/Maccum_pc_cy<9>_rt_493 ;
  wire \openmips/pc_reg/Maccum_pc_cy<8>_rt_494 ;
  wire \openmips/pc_reg/Maccum_pc_cy<7>_rt_495 ;
  wire \openmips/pc_reg/Maccum_pc_cy<6>_rt_496 ;
  wire \openmips/pc_reg/Maccum_pc_cy<5>_rt_497 ;
  wire \openmips/pc_reg/Maccum_pc_cy<4>_rt_498 ;
  wire \openmips/pc_reg/Maccum_pc_cy<3>_rt_499 ;
  wire \clk_div/Mcount_clkdiv_xor<19>_rt_500 ;
  wire \anti_jitter/Mcount_counter_xor<16>_rt_501 ;
  wire \openmips/pc_reg/Maccum_pc_xor<31>_rt_502 ;
  wire \anti_jitter/_n0054_inv1_cepot_503 ;
  wire \anti_jitter/sw_ok_1_dpot_504 ;
  wire \anti_jitter/sw_ok_6_dpot_505 ;
  wire \anti_jitter/sw_ok_7_dpot_506 ;
  wire \anti_jitter/counter_9_rstpot_507 ;
  wire \anti_jitter/counter_8_rstpot_508 ;
  wire \anti_jitter/counter_7_rstpot_509 ;
  wire \anti_jitter/counter_6_rstpot_510 ;
  wire \anti_jitter/counter_5_rstpot_511 ;
  wire \anti_jitter/counter_4_rstpot_512 ;
  wire \anti_jitter/counter_3_rstpot_513 ;
  wire \anti_jitter/counter_2_rstpot_514 ;
  wire \anti_jitter/counter_1_rstpot_515 ;
  wire \anti_jitter/counter_0_rstpot_516 ;
  wire \anti_jitter/counter_10_rstpot_517 ;
  wire \anti_jitter/counter_11_rstpot_518 ;
  wire \anti_jitter/counter_12_rstpot_519 ;
  wire \anti_jitter/counter_13_rstpot_520 ;
  wire \anti_jitter/counter_14_rstpot_521 ;
  wire \anti_jitter/counter_15_rstpot_522 ;
  wire \anti_jitter/counter_16_rstpot_523 ;
  wire N2;
  wire N4;
  wire N5;
  wire N13;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire \openmips/if_id/id_inst_5_1_533 ;
  wire \openmips/if_id/id_inst_4_1_534 ;
  wire \openmips/if_id/id_inst_3_1_535 ;
  wire \openmips/if_id/id_inst_2_1_536 ;
  wire N25;
  wire N26;
  wire N27;
  wire [31 : 2] \openmips/pc_reg/pc ;
  wire [19 : 0] \clk_div/clkdiv ;
  wire [31 : 0] inst;
  wire [3 : 0] digit;
  wire [19 : 0] Result;
  wire [0 : 0] \clk_div/Mcount_clkdiv_lut ;
  wire [18 : 0] \clk_div/Mcount_clkdiv_cy ;
  wire [15 : 0] \anti_jitter/Mcount_counter_cy ;
  wire [0 : 0] \anti_jitter/Mcount_counter_lut ;
  wire [16 : 0] \anti_jitter/Result ;
  wire [16 : 0] \anti_jitter/counter ;
  wire [7 : 0] \anti_jitter/sw_temp ;
  wire [4 : 0] \anti_jitter/btn_temp ;
  wire [30 : 2] \openmips/pc_reg/Maccum_pc_cy ;
  wire [2 : 2] \openmips/pc_reg/Maccum_pc_lut ;
  wire [31 : 2] \openmips/Result ;
  wire [7 : 0] \openmips/id_aluop_o ;
  wire [1 : 0] \openmips/ex_mem/cnt_o ;
  wire [7 : 0] \openmips/id_ex/ex_aluop ;
  wire [1 : 0] \openmips/ex/_n0550 ;
  VCC   XST_VCC (
    .P(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> )
  );
  GND   XST_GND (
    .G(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 )
  );
  FDC   \clk_div/clkdiv_0  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[0]),
    .Q(\clk_div/clkdiv [0])
  );
  FDC   \clk_div/clkdiv_1  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[1]),
    .Q(\clk_div/clkdiv [1])
  );
  FDC   \clk_div/clkdiv_2  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[2]),
    .Q(\clk_div/clkdiv [2])
  );
  FDC   \clk_div/clkdiv_3  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[3]),
    .Q(\clk_div/clkdiv [3])
  );
  FDC   \clk_div/clkdiv_4  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[4]),
    .Q(\clk_div/clkdiv [4])
  );
  FDC   \clk_div/clkdiv_5  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[5]),
    .Q(\clk_div/clkdiv [5])
  );
  FDC   \clk_div/clkdiv_6  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[6]),
    .Q(\clk_div/clkdiv [6])
  );
  FDC   \clk_div/clkdiv_7  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[7]),
    .Q(\clk_div/clkdiv [7])
  );
  FDC   \clk_div/clkdiv_8  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[8]),
    .Q(\clk_div/clkdiv [8])
  );
  FDC   \clk_div/clkdiv_9  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[9]),
    .Q(\clk_div/clkdiv [9])
  );
  FDC   \clk_div/clkdiv_10  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[10]),
    .Q(\clk_div/clkdiv [10])
  );
  FDC   \clk_div/clkdiv_11  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[11]),
    .Q(\clk_div/clkdiv [11])
  );
  FDC   \clk_div/clkdiv_12  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[12]),
    .Q(\clk_div/clkdiv [12])
  );
  FDC   \clk_div/clkdiv_13  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[13]),
    .Q(\clk_div/clkdiv [13])
  );
  FDC   \clk_div/clkdiv_14  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[14]),
    .Q(\clk_div/clkdiv [14])
  );
  FDC   \clk_div/clkdiv_15  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[15]),
    .Q(\clk_div/clkdiv [15])
  );
  FDC   \clk_div/clkdiv_16  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[16]),
    .Q(\clk_div/clkdiv [16])
  );
  FDC   \clk_div/clkdiv_17  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[17]),
    .Q(\clk_div/clkdiv [17])
  );
  FDC   \clk_div/clkdiv_18  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[18]),
    .Q(\clk_div/clkdiv [18])
  );
  FDC   \clk_div/clkdiv_19  (
    .C(clk_100mhz_BUFGP_12),
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(Result[19]),
    .Q(\clk_div/clkdiv [19])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ),
    .S(\clk_div/Mcount_clkdiv_lut [0]),
    .O(\clk_div/Mcount_clkdiv_cy [0])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .LI(\clk_div/Mcount_clkdiv_lut [0]),
    .O(Result[0])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<1>  (
    .CI(\clk_div/Mcount_clkdiv_cy [0]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<1>_rt_439 ),
    .O(\clk_div/Mcount_clkdiv_cy [1])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<1>  (
    .CI(\clk_div/Mcount_clkdiv_cy [0]),
    .LI(\clk_div/Mcount_clkdiv_cy<1>_rt_439 ),
    .O(Result[1])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<2>  (
    .CI(\clk_div/Mcount_clkdiv_cy [1]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<2>_rt_440 ),
    .O(\clk_div/Mcount_clkdiv_cy [2])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<2>  (
    .CI(\clk_div/Mcount_clkdiv_cy [1]),
    .LI(\clk_div/Mcount_clkdiv_cy<2>_rt_440 ),
    .O(Result[2])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<3>  (
    .CI(\clk_div/Mcount_clkdiv_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<3>_rt_441 ),
    .O(\clk_div/Mcount_clkdiv_cy [3])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<3>  (
    .CI(\clk_div/Mcount_clkdiv_cy [2]),
    .LI(\clk_div/Mcount_clkdiv_cy<3>_rt_441 ),
    .O(Result[3])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<4>  (
    .CI(\clk_div/Mcount_clkdiv_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<4>_rt_442 ),
    .O(\clk_div/Mcount_clkdiv_cy [4])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<4>  (
    .CI(\clk_div/Mcount_clkdiv_cy [3]),
    .LI(\clk_div/Mcount_clkdiv_cy<4>_rt_442 ),
    .O(Result[4])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<5>  (
    .CI(\clk_div/Mcount_clkdiv_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<5>_rt_443 ),
    .O(\clk_div/Mcount_clkdiv_cy [5])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<5>  (
    .CI(\clk_div/Mcount_clkdiv_cy [4]),
    .LI(\clk_div/Mcount_clkdiv_cy<5>_rt_443 ),
    .O(Result[5])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<6>  (
    .CI(\clk_div/Mcount_clkdiv_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<6>_rt_444 ),
    .O(\clk_div/Mcount_clkdiv_cy [6])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<6>  (
    .CI(\clk_div/Mcount_clkdiv_cy [5]),
    .LI(\clk_div/Mcount_clkdiv_cy<6>_rt_444 ),
    .O(Result[6])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<7>  (
    .CI(\clk_div/Mcount_clkdiv_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<7>_rt_445 ),
    .O(\clk_div/Mcount_clkdiv_cy [7])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<7>  (
    .CI(\clk_div/Mcount_clkdiv_cy [6]),
    .LI(\clk_div/Mcount_clkdiv_cy<7>_rt_445 ),
    .O(Result[7])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<8>  (
    .CI(\clk_div/Mcount_clkdiv_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<8>_rt_446 ),
    .O(\clk_div/Mcount_clkdiv_cy [8])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<8>  (
    .CI(\clk_div/Mcount_clkdiv_cy [7]),
    .LI(\clk_div/Mcount_clkdiv_cy<8>_rt_446 ),
    .O(Result[8])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<9>  (
    .CI(\clk_div/Mcount_clkdiv_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<9>_rt_447 ),
    .O(\clk_div/Mcount_clkdiv_cy [9])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<9>  (
    .CI(\clk_div/Mcount_clkdiv_cy [8]),
    .LI(\clk_div/Mcount_clkdiv_cy<9>_rt_447 ),
    .O(Result[9])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<10>  (
    .CI(\clk_div/Mcount_clkdiv_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<10>_rt_448 ),
    .O(\clk_div/Mcount_clkdiv_cy [10])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<10>  (
    .CI(\clk_div/Mcount_clkdiv_cy [9]),
    .LI(\clk_div/Mcount_clkdiv_cy<10>_rt_448 ),
    .O(Result[10])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<11>  (
    .CI(\clk_div/Mcount_clkdiv_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<11>_rt_449 ),
    .O(\clk_div/Mcount_clkdiv_cy [11])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<11>  (
    .CI(\clk_div/Mcount_clkdiv_cy [10]),
    .LI(\clk_div/Mcount_clkdiv_cy<11>_rt_449 ),
    .O(Result[11])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<12>  (
    .CI(\clk_div/Mcount_clkdiv_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<12>_rt_450 ),
    .O(\clk_div/Mcount_clkdiv_cy [12])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<12>  (
    .CI(\clk_div/Mcount_clkdiv_cy [11]),
    .LI(\clk_div/Mcount_clkdiv_cy<12>_rt_450 ),
    .O(Result[12])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<13>  (
    .CI(\clk_div/Mcount_clkdiv_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<13>_rt_451 ),
    .O(\clk_div/Mcount_clkdiv_cy [13])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<13>  (
    .CI(\clk_div/Mcount_clkdiv_cy [12]),
    .LI(\clk_div/Mcount_clkdiv_cy<13>_rt_451 ),
    .O(Result[13])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<14>  (
    .CI(\clk_div/Mcount_clkdiv_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<14>_rt_452 ),
    .O(\clk_div/Mcount_clkdiv_cy [14])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<14>  (
    .CI(\clk_div/Mcount_clkdiv_cy [13]),
    .LI(\clk_div/Mcount_clkdiv_cy<14>_rt_452 ),
    .O(Result[14])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<15>  (
    .CI(\clk_div/Mcount_clkdiv_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<15>_rt_453 ),
    .O(\clk_div/Mcount_clkdiv_cy [15])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<15>  (
    .CI(\clk_div/Mcount_clkdiv_cy [14]),
    .LI(\clk_div/Mcount_clkdiv_cy<15>_rt_453 ),
    .O(Result[15])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<16>  (
    .CI(\clk_div/Mcount_clkdiv_cy [15]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<16>_rt_454 ),
    .O(\clk_div/Mcount_clkdiv_cy [16])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<16>  (
    .CI(\clk_div/Mcount_clkdiv_cy [15]),
    .LI(\clk_div/Mcount_clkdiv_cy<16>_rt_454 ),
    .O(Result[16])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<17>  (
    .CI(\clk_div/Mcount_clkdiv_cy [16]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<17>_rt_455 ),
    .O(\clk_div/Mcount_clkdiv_cy [17])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<17>  (
    .CI(\clk_div/Mcount_clkdiv_cy [16]),
    .LI(\clk_div/Mcount_clkdiv_cy<17>_rt_455 ),
    .O(Result[17])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<18>  (
    .CI(\clk_div/Mcount_clkdiv_cy [17]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<18>_rt_456 ),
    .O(\clk_div/Mcount_clkdiv_cy [18])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<18>  (
    .CI(\clk_div/Mcount_clkdiv_cy [17]),
    .LI(\clk_div/Mcount_clkdiv_cy<18>_rt_456 ),
    .O(Result[18])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<19>  (
    .CI(\clk_div/Mcount_clkdiv_cy [18]),
    .LI(\clk_div/Mcount_clkdiv_xor<19>_rt_500 ),
    .O(Result[19])
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_2  (
    .I0(\mux8t1_4/Mmux_o_43_161 ),
    .I1(\mux8t1_4/Mmux_o_33_162 ),
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
    .O(\mux8t1_4/Mmux_o_43_161 )
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
    .O(\mux8t1_4/Mmux_o_33_162 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_1  (
    .I0(\mux8t1_4/Mmux_o_42_163 ),
    .I1(\mux8t1_4/Mmux_o_32_164 ),
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
    .O(\mux8t1_4/Mmux_o_42_163 )
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
    .O(\mux8t1_4/Mmux_o_32_164 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_0  (
    .I0(\mux8t1_4/Mmux_o_41_165 ),
    .I1(\mux8t1_4/Mmux_o_31_166 ),
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
    .O(\mux8t1_4/Mmux_o_41_165 )
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
    .O(\mux8t1_4/Mmux_o_31_166 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7  (
    .I0(\mux8t1_4/Mmux_o_4_167 ),
    .I1(\mux8t1_4/Mmux_o_3_168 ),
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
    .O(\mux8t1_4/Mmux_o_4_167 )
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
    .O(\mux8t1_4/Mmux_o_3_168 )
  );
  XORCY   \anti_jitter/Mcount_counter_xor<16>  (
    .CI(\anti_jitter/Mcount_counter_cy [15]),
    .LI(\anti_jitter/Mcount_counter_xor<16>_rt_501 ),
    .O(\anti_jitter/Result [16])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<15>  (
    .CI(\anti_jitter/Mcount_counter_cy [14]),
    .LI(\anti_jitter/Mcount_counter_cy<15>_rt_457 ),
    .O(\anti_jitter/Result [15])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<15>  (
    .CI(\anti_jitter/Mcount_counter_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<15>_rt_457 ),
    .O(\anti_jitter/Mcount_counter_cy [15])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<14>  (
    .CI(\anti_jitter/Mcount_counter_cy [13]),
    .LI(\anti_jitter/Mcount_counter_cy<14>_rt_458 ),
    .O(\anti_jitter/Result [14])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<14>  (
    .CI(\anti_jitter/Mcount_counter_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<14>_rt_458 ),
    .O(\anti_jitter/Mcount_counter_cy [14])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<13>  (
    .CI(\anti_jitter/Mcount_counter_cy [12]),
    .LI(\anti_jitter/Mcount_counter_cy<13>_rt_459 ),
    .O(\anti_jitter/Result [13])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<13>  (
    .CI(\anti_jitter/Mcount_counter_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<13>_rt_459 ),
    .O(\anti_jitter/Mcount_counter_cy [13])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<12>  (
    .CI(\anti_jitter/Mcount_counter_cy [11]),
    .LI(\anti_jitter/Mcount_counter_cy<12>_rt_460 ),
    .O(\anti_jitter/Result [12])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<12>  (
    .CI(\anti_jitter/Mcount_counter_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<12>_rt_460 ),
    .O(\anti_jitter/Mcount_counter_cy [12])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<11>  (
    .CI(\anti_jitter/Mcount_counter_cy [10]),
    .LI(\anti_jitter/Mcount_counter_cy<11>_rt_461 ),
    .O(\anti_jitter/Result [11])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<11>  (
    .CI(\anti_jitter/Mcount_counter_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<11>_rt_461 ),
    .O(\anti_jitter/Mcount_counter_cy [11])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<10>  (
    .CI(\anti_jitter/Mcount_counter_cy [9]),
    .LI(\anti_jitter/Mcount_counter_cy<10>_rt_462 ),
    .O(\anti_jitter/Result [10])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<10>  (
    .CI(\anti_jitter/Mcount_counter_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<10>_rt_462 ),
    .O(\anti_jitter/Mcount_counter_cy [10])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<9>  (
    .CI(\anti_jitter/Mcount_counter_cy [8]),
    .LI(\anti_jitter/Mcount_counter_cy<9>_rt_463 ),
    .O(\anti_jitter/Result [9])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<9>  (
    .CI(\anti_jitter/Mcount_counter_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<9>_rt_463 ),
    .O(\anti_jitter/Mcount_counter_cy [9])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<8>  (
    .CI(\anti_jitter/Mcount_counter_cy [7]),
    .LI(\anti_jitter/Mcount_counter_cy<8>_rt_464 ),
    .O(\anti_jitter/Result [8])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<8>  (
    .CI(\anti_jitter/Mcount_counter_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<8>_rt_464 ),
    .O(\anti_jitter/Mcount_counter_cy [8])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<7>  (
    .CI(\anti_jitter/Mcount_counter_cy [6]),
    .LI(\anti_jitter/Mcount_counter_cy<7>_rt_465 ),
    .O(\anti_jitter/Result [7])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<7>  (
    .CI(\anti_jitter/Mcount_counter_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<7>_rt_465 ),
    .O(\anti_jitter/Mcount_counter_cy [7])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<6>  (
    .CI(\anti_jitter/Mcount_counter_cy [5]),
    .LI(\anti_jitter/Mcount_counter_cy<6>_rt_466 ),
    .O(\anti_jitter/Result [6])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<6>  (
    .CI(\anti_jitter/Mcount_counter_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<6>_rt_466 ),
    .O(\anti_jitter/Mcount_counter_cy [6])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<5>  (
    .CI(\anti_jitter/Mcount_counter_cy [4]),
    .LI(\anti_jitter/Mcount_counter_cy<5>_rt_467 ),
    .O(\anti_jitter/Result [5])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<5>  (
    .CI(\anti_jitter/Mcount_counter_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<5>_rt_467 ),
    .O(\anti_jitter/Mcount_counter_cy [5])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<4>  (
    .CI(\anti_jitter/Mcount_counter_cy [3]),
    .LI(\anti_jitter/Mcount_counter_cy<4>_rt_468 ),
    .O(\anti_jitter/Result [4])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<4>  (
    .CI(\anti_jitter/Mcount_counter_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<4>_rt_468 ),
    .O(\anti_jitter/Mcount_counter_cy [4])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<3>  (
    .CI(\anti_jitter/Mcount_counter_cy [2]),
    .LI(\anti_jitter/Mcount_counter_cy<3>_rt_469 ),
    .O(\anti_jitter/Result [3])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<3>  (
    .CI(\anti_jitter/Mcount_counter_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<3>_rt_469 ),
    .O(\anti_jitter/Mcount_counter_cy [3])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<2>  (
    .CI(\anti_jitter/Mcount_counter_cy [1]),
    .LI(\anti_jitter/Mcount_counter_cy<2>_rt_470 ),
    .O(\anti_jitter/Result [2])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<2>  (
    .CI(\anti_jitter/Mcount_counter_cy [1]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<2>_rt_470 ),
    .O(\anti_jitter/Mcount_counter_cy [2])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<1>  (
    .CI(\anti_jitter/Mcount_counter_cy [0]),
    .LI(\anti_jitter/Mcount_counter_cy<1>_rt_471 ),
    .O(\anti_jitter/Result [1])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<1>  (
    .CI(\anti_jitter/Mcount_counter_cy [0]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<1>_rt_471 ),
    .O(\anti_jitter/Mcount_counter_cy [1])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .LI(\anti_jitter/Mcount_counter_lut [0]),
    .O(\anti_jitter/Result [0])
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ),
    .S(\anti_jitter/Mcount_counter_lut [0]),
    .O(\anti_jitter/Mcount_counter_cy [0])
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<4>_187 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<4>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<3>_188 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<4>_187 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<3>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<2>_190 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<3>_188 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<1>_193 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<2> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<2>_190 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<1>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<0>_196 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi1_195 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<1>_194 ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<1>_193 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<1>  (
    .I0(\anti_jitter/counter [11]),
    .I1(\anti_jitter/counter [12]),
    .I2(\anti_jitter/counter [13]),
    .I3(\anti_jitter/counter [10]),
    .I4(\anti_jitter/counter [14]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<1>_194 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi1  (
    .I0(\anti_jitter/counter [14]),
    .I1(\anti_jitter/counter [13]),
    .I2(\anti_jitter/counter [12]),
    .I3(\anti_jitter/counter [11]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi1_195 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi_198 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<0>_197 ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<0>_196 )
  );
  LUT5 #(
    .INIT ( 32'h00002000 ))
  \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<0>  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/counter [6]),
    .I2(\anti_jitter/counter [7]),
    .I3(\anti_jitter/counter [5]),
    .I4(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<0>_197 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/counter [7]),
    .I2(\anti_jitter/counter [6]),
    .I3(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi_198 )
  );
  FDE   \anti_jitter/sw_ok_7  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\anti_jitter/_n0054_inv1_cepot_503 ),
    .D(\anti_jitter/sw_ok_7_dpot_506 ),
    .Q(\anti_jitter/sw_ok[7] )
  );
  FDE   \anti_jitter/sw_ok_6  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\anti_jitter/_n0054_inv1_cepot_503 ),
    .D(\anti_jitter/sw_ok_6_dpot_505 ),
    .Q(\anti_jitter/sw_ok[6] )
  );
  FDE   \anti_jitter/sw_ok_1  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\anti_jitter/_n0054_inv1_cepot_503 ),
    .D(\anti_jitter/sw_ok_1_dpot_504 ),
    .Q(\anti_jitter/sw_ok[1] )
  );
  FD   \anti_jitter/sw_temp_7  (
    .C(clk_100mhz_BUFGP_12),
    .D(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\anti_jitter/sw_temp [7])
  );
  FD   \anti_jitter/sw_temp_6  (
    .C(clk_100mhz_BUFGP_12),
    .D(sw_6_IBUF_5),
    .Q(\anti_jitter/sw_temp [6])
  );
  FD   \anti_jitter/sw_temp_5  (
    .C(clk_100mhz_BUFGP_12),
    .D(sw_5_IBUF_6),
    .Q(\anti_jitter/sw_temp [5])
  );
  FD   \anti_jitter/sw_temp_4  (
    .C(clk_100mhz_BUFGP_12),
    .D(sw_4_IBUF_7),
    .Q(\anti_jitter/sw_temp [4])
  );
  FD   \anti_jitter/sw_temp_3  (
    .C(clk_100mhz_BUFGP_12),
    .D(sw_3_IBUF_8),
    .Q(\anti_jitter/sw_temp [3])
  );
  FD   \anti_jitter/sw_temp_2  (
    .C(clk_100mhz_BUFGP_12),
    .D(sw_2_IBUF_9),
    .Q(\anti_jitter/sw_temp [2])
  );
  FD   \anti_jitter/sw_temp_1  (
    .C(clk_100mhz_BUFGP_12),
    .D(sw_1_IBUF_10),
    .Q(\anti_jitter/sw_temp [1])
  );
  FD   \anti_jitter/sw_temp_0  (
    .C(clk_100mhz_BUFGP_12),
    .D(sw_0_IBUF_11),
    .Q(\anti_jitter/sw_temp [0])
  );
  FD   \anti_jitter/btn_temp_4  (
    .C(clk_100mhz_BUFGP_12),
    .D(btn_4_IBUF_0),
    .Q(\anti_jitter/btn_temp [4])
  );
  FD   \anti_jitter/btn_temp_3  (
    .C(clk_100mhz_BUFGP_12),
    .D(btn_3_IBUF_1),
    .Q(\anti_jitter/btn_temp [3])
  );
  FD   \anti_jitter/btn_temp_2  (
    .C(clk_100mhz_BUFGP_12),
    .D(btn_2_IBUF_2),
    .Q(\anti_jitter/btn_temp [2])
  );
  FD   \anti_jitter/btn_temp_1  (
    .C(clk_100mhz_BUFGP_12),
    .D(btn_1_IBUF_3),
    .Q(\anti_jitter/btn_temp [1])
  );
  FD   \anti_jitter/btn_temp_0  (
    .C(clk_100mhz_BUFGP_12),
    .D(btn_0_IBUF_4),
    .Q(\anti_jitter/btn_temp [0])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<31>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [30]),
    .LI(\openmips/pc_reg/Maccum_pc_xor<31>_rt_502 ),
    .O(\openmips/Result [31])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<30>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [29]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<30>_rt_472 ),
    .O(\openmips/Result [30])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<30>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [29]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<30>_rt_472 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [30])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<29>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [28]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<29>_rt_473 ),
    .O(\openmips/Result [29])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<29>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [28]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<29>_rt_473 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [29])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<28>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [27]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<28>_rt_474 ),
    .O(\openmips/Result [28])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<28>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [27]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<28>_rt_474 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [28])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<27>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [26]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<27>_rt_475 ),
    .O(\openmips/Result [27])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<27>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [26]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<27>_rt_475 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [27])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<26>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [25]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<26>_rt_476 ),
    .O(\openmips/Result [26])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<26>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [25]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<26>_rt_476 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [26])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<25>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [24]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<25>_rt_477 ),
    .O(\openmips/Result [25])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<25>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [24]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<25>_rt_477 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [25])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<24>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [23]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<24>_rt_478 ),
    .O(\openmips/Result [24])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<24>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [23]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<24>_rt_478 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [24])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<23>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [22]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<23>_rt_479 ),
    .O(\openmips/Result [23])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<23>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [22]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<23>_rt_479 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [23])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<22>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [21]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<22>_rt_480 ),
    .O(\openmips/Result [22])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<22>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [21]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<22>_rt_480 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [22])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<21>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [20]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<21>_rt_481 ),
    .O(\openmips/Result [21])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<21>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [20]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<21>_rt_481 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [21])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<20>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [19]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<20>_rt_482 ),
    .O(\openmips/Result [20])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<20>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [19]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<20>_rt_482 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [20])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<19>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [18]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<19>_rt_483 ),
    .O(\openmips/Result [19])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<19>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [18]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<19>_rt_483 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [19])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<18>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [17]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<18>_rt_484 ),
    .O(\openmips/Result [18])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<18>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [17]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<18>_rt_484 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [18])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<17>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [16]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<17>_rt_485 ),
    .O(\openmips/Result [17])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<17>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [16]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<17>_rt_485 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [17])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<16>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [15]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<16>_rt_486 ),
    .O(\openmips/Result [16])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<16>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [15]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<16>_rt_486 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [16])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<15>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [14]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<15>_rt_487 ),
    .O(\openmips/Result [15])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<15>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<15>_rt_487 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [15])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<14>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [13]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<14>_rt_488 ),
    .O(\openmips/Result [14])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<14>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<14>_rt_488 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [14])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<13>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [12]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<13>_rt_489 ),
    .O(\openmips/Result [13])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<13>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<13>_rt_489 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [13])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<12>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [11]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<12>_rt_490 ),
    .O(\openmips/Result [12])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<12>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<12>_rt_490 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [12])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<11>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [10]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<11>_rt_491 ),
    .O(\openmips/Result [11])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<11>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<11>_rt_491 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [11])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<10>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [9]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<10>_rt_492 ),
    .O(\openmips/Result [10])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<10>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<10>_rt_492 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [10])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<9>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [8]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<9>_rt_493 ),
    .O(\openmips/Result [9])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<9>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<9>_rt_493 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [9])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<8>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [7]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<8>_rt_494 ),
    .O(\openmips/Result [8])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<8>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<8>_rt_494 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [8])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<7>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [6]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<7>_rt_495 ),
    .O(\openmips/Result [7])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<7>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<7>_rt_495 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [7])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<6>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [5]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<6>_rt_496 ),
    .O(\openmips/Result [6])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<6>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<6>_rt_496 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [6])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<5>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [4]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<5>_rt_497 ),
    .O(\openmips/Result [5])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<5>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<5>_rt_497 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [5])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<4>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [3]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<4>_rt_498 ),
    .O(\openmips/Result [4])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<4>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<4>_rt_498 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [4])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<3>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [2]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<3>_rt_499 ),
    .O(\openmips/Result [3])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<3>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<3>_rt_499 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [3])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .LI(\openmips/pc_reg/Maccum_pc_lut [2]),
    .O(\openmips/Result [2])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ),
    .S(\openmips/pc_reg/Maccum_pc_lut [2]),
    .O(\openmips/pc_reg/Maccum_pc_cy [2])
  );
  FDRE   \openmips/pc_reg/pc_31  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [31]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [31])
  );
  FDRE   \openmips/pc_reg/pc_30  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [30]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [30])
  );
  FDRE   \openmips/pc_reg/pc_29  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [29]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [29])
  );
  FDRE   \openmips/pc_reg/pc_28  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [28]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [28])
  );
  FDRE   \openmips/pc_reg/pc_27  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [27]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [27])
  );
  FDRE   \openmips/pc_reg/pc_26  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [26]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [26])
  );
  FDRE   \openmips/pc_reg/pc_25  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [25]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [25])
  );
  FDRE   \openmips/pc_reg/pc_24  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [24]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [24])
  );
  FDRE   \openmips/pc_reg/pc_23  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [23]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [23])
  );
  FDRE   \openmips/pc_reg/pc_22  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [22]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [22])
  );
  FDRE   \openmips/pc_reg/pc_21  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [21]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [21])
  );
  FDRE   \openmips/pc_reg/pc_20  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [20]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [20])
  );
  FDRE   \openmips/pc_reg/pc_19  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [19]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [19])
  );
  FDRE   \openmips/pc_reg/pc_18  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [18]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [18])
  );
  FDRE   \openmips/pc_reg/pc_17  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [17]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [17])
  );
  FDRE   \openmips/pc_reg/pc_16  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [16]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [16])
  );
  FDRE   \openmips/pc_reg/pc_15  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [15]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [15])
  );
  FDRE   \openmips/pc_reg/pc_14  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [14]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [14])
  );
  FDRE   \openmips/pc_reg/pc_13  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [13]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [13])
  );
  FDRE   \openmips/pc_reg/pc_12  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [12]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [12])
  );
  FDRE   \openmips/pc_reg/pc_11  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [11]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [11])
  );
  FDRE   \openmips/pc_reg/pc_10  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [10]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [10])
  );
  FDRE   \openmips/pc_reg/pc_9  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [9]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [9])
  );
  FDRE   \openmips/pc_reg/pc_8  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [8]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [8])
  );
  FDRE   \openmips/pc_reg/pc_7  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [7]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [7])
  );
  FDRE   \openmips/pc_reg/pc_6  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [6]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [6])
  );
  FDRE   \openmips/pc_reg/pc_5  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [5]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [5])
  );
  FDRE   \openmips/pc_reg/pc_4  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [4]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [4])
  );
  FDRE   \openmips/pc_reg/pc_3  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [3]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [3])
  );
  FDRE   \openmips/pc_reg/pc_2  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/Result [2]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/pc_reg/pc [2])
  );
  FDRE   \openmips/if_id/id_inst_31  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[31]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[31] )
  );
  FDRE   \openmips/if_id/id_inst_30  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[30]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[30] )
  );
  FDRE   \openmips/if_id/id_inst_29  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[29]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[29] )
  );
  FDRE   \openmips/if_id/id_inst_28  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[28]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[28] )
  );
  FDRE   \openmips/if_id/id_inst_27  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[27]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[27] )
  );
  FDRE   \openmips/if_id/id_inst_26  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[26]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[26] )
  );
  FDRE   \openmips/if_id/id_inst_25  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[25]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[25] )
  );
  FDRE   \openmips/if_id/id_inst_24  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[24]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[24] )
  );
  FDRE   \openmips/if_id/id_inst_23  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[23]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[23] )
  );
  FDRE   \openmips/if_id/id_inst_22  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[22]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[22] )
  );
  FDRE   \openmips/if_id/id_inst_21  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[21]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[21] )
  );
  FDRE   \openmips/if_id/id_inst_10  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[10]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[10] )
  );
  FDRE   \openmips/if_id/id_inst_9  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[9]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[9] )
  );
  FDRE   \openmips/if_id/id_inst_8  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[8]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[8] )
  );
  FDRE   \openmips/if_id/id_inst_7  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[7]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[7] )
  );
  FDRE   \openmips/if_id/id_inst_6  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[6]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[6] )
  );
  FDRE   \openmips/if_id/id_inst_5  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[5]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[5] )
  );
  FDRE   \openmips/if_id/id_inst_4  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[4]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[4] )
  );
  FDRE   \openmips/if_id/id_inst_3  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[3]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[3] )
  );
  FDRE   \openmips/if_id/id_inst_2  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[2]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[2] )
  );
  FDRE   \openmips/if_id/id_inst_1  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[1]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[1] )
  );
  FDRE   \openmips/if_id/id_inst_0  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[0]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst[0] )
  );
  FDRE   \openmips/id_ex/ex_aluop_7  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/id_aluop_o [7]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/id_ex/ex_aluop [7])
  );
  FDRE   \openmips/id_ex/ex_aluop_6  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/id_aluop_o [6]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/id_ex/ex_aluop [6])
  );
  FDRE   \openmips/id_ex/ex_aluop_5  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/id_aluop_o [5]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/id_ex/ex_aluop [5])
  );
  FDRE   \openmips/id_ex/ex_aluop_4  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/id_aluop_o [4]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/id_ex/ex_aluop [4])
  );
  FDRE   \openmips/id_ex/ex_aluop_3  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/id_aluop_o [3]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/id_ex/ex_aluop [3])
  );
  FDRE   \openmips/id_ex/ex_aluop_2  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/id_aluop_o [2]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/id_ex/ex_aluop [2])
  );
  FDRE   \openmips/id_ex/ex_aluop_1  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/id_aluop_o [1]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/id_ex/ex_aluop [1])
  );
  FDRE   \openmips/id_ex/ex_aluop_0  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(\openmips/id_aluop_o [0]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/id_ex/ex_aluop [0])
  );
  FDR   \openmips/ex_mem/cnt_o_1  (
    .C(clk_100mhz_BUFGP_12),
    .D(\openmips/ex/cnt_o_1_308 ),
    .R(\openmips/id_ex/stall<2>_inv1 ),
    .Q(\openmips/ex_mem/cnt_o [1])
  );
  FDR   \openmips/ex_mem/cnt_o_0  (
    .C(clk_100mhz_BUFGP_12),
    .D(\openmips/ex/cnt_o_0_307 ),
    .R(\openmips/id_ex/stall<2>_inv1 ),
    .Q(\openmips/ex_mem/cnt_o [0])
  );
  LDC   \openmips/ex/cnt_o_0  (
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(\openmips/ex/_n0550 [0]),
    .G(\openmips/ex/_n0552 ),
    .Q(\openmips/ex/cnt_o_0_307 )
  );
  LDC   \openmips/ex/cnt_o_1  (
    .CLR(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .D(\openmips/ex/_n0550 [1]),
    .G(\openmips/ex/_n0552 ),
    .Q(\openmips/ex/cnt_o_1_308 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \mux4t1_4/Mram_o12  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .O(an_0_OBUF_95)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \mux4t1_4/Mram_o111  (
    .I0(\clk_div/clkdiv [18]),
    .I1(\clk_div/clkdiv [19]),
    .O(an_1_OBUF_94)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \mux4t1_4/Mram_o21  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .O(an_2_OBUF_93)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \mux4t1_4/Mram_o31  (
    .I0(\clk_div/clkdiv [18]),
    .I1(\clk_div/clkdiv [19]),
    .O(an_3_OBUF_92)
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \decoder_7seg/Mram_segment51  (
    .I0(digit[2]),
    .I1(digit[0]),
    .I2(digit[1]),
    .I3(digit[3]),
    .O(seg_5_OBUF_97)
  );
  LUT4 #(
    .INIT ( 16'h0941 ))
  \decoder_7seg/Mram_segment11  (
    .I0(digit[1]),
    .I1(digit[2]),
    .I2(digit[3]),
    .I3(digit[0]),
    .O(seg_0_OBUF_102)
  );
  LUT4 #(
    .INIT ( 16'h02BA ))
  \decoder_7seg/Mram_segment21  (
    .I0(digit[0]),
    .I1(digit[1]),
    .I2(digit[2]),
    .I3(digit[3]),
    .O(seg_2_OBUF_100)
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  Mmux_led11 (
    .I0(\anti_jitter/sw_ok[6] ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\openmips/pc_reg/pc [8]),
    .I3(\openmips/pc_reg/pc [24]),
    .I4(\openmips/pc_reg/pc [16]),
    .O(led_0_OBUF_55)
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  Mmux_led21 (
    .I0(\anti_jitter/sw_ok[6] ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\openmips/pc_reg/pc [9]),
    .I3(\openmips/pc_reg/pc [25]),
    .I4(\openmips/pc_reg/pc [17]),
    .O(led_1_OBUF_54)
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
    .O(led_2_OBUF_53)
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
    .O(led_3_OBUF_52)
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
    .O(led_4_OBUF_51)
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
    .O(led_5_OBUF_50)
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
    .O(led_6_OBUF_49)
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
    .O(led_7_OBUF_48)
  );
  LUT4 #(
    .INIT ( 16'h4190 ))
  \seg<6>1  (
    .I0(digit[1]),
    .I1(digit[3]),
    .I2(digit[0]),
    .I3(digit[2]),
    .O(seg_6_OBUF_96)
  );
  LUT4 #(
    .INIT ( 16'hA118 ))
  \seg<3>1  (
    .I0(digit[1]),
    .I1(digit[3]),
    .I2(digit[0]),
    .I3(digit[2]),
    .O(seg_3_OBUF_99)
  );
  LUT4 #(
    .INIT ( 16'hC140 ))
  \seg<4>1  (
    .I0(digit[0]),
    .I1(digit[3]),
    .I2(digit[2]),
    .I3(digit[1]),
    .O(seg_4_OBUF_98)
  );
  LUT4 #(
    .INIT ( 16'h2382 ))
  \seg<1>1  (
    .I0(digit[0]),
    .I1(digit[3]),
    .I2(digit[2]),
    .I3(digit[1]),
    .O(seg_1_OBUF_101)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \openmips/stall<0>_inv1  (
    .I0(\openmips/ex/cnt_o_0_307 ),
    .I1(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .O(\openmips/id_ex/stall<2>_inv1 )
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \openmips/id/out1511  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[4] ),
    .I3(\openmips/if_id/id_inst[5] ),
    .I4(\openmips/if_id/id_inst[1] ),
    .I5(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/out151 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \openmips/id/op3[5]_GND_6_o_equal_108_o<5>1  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[4] ),
    .I3(\openmips/if_id/id_inst[5] ),
    .I4(\openmips/if_id/id_inst[1] ),
    .I5(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/op3[5]_GND_6_o_equal_108_o )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \openmips/id/out411  (
    .I0(\openmips/if_id/id_inst_2_1_536 ),
    .I1(\openmips/if_id/id_inst_4_1_534 ),
    .I2(\openmips/if_id/id_inst_3_1_535 ),
    .I3(\openmips/if_id/id_inst[0] ),
    .O(\openmips/id/out41 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>11  (
    .I0(\openmips/if_id/id_inst[26] ),
    .I1(\openmips/if_id/id_inst[31] ),
    .I2(\openmips/if_id/id_inst[30] ),
    .I3(\openmips/if_id/id_inst[29] ),
    .I4(\openmips/if_id/id_inst[27] ),
    .I5(\openmips/if_id/id_inst[28] ),
    .O(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 )
  );
  LUT6 #(
    .INIT ( 64'h0000100000000000 ))
  \openmips/id/op[5]_GND_6_o_equal_92_o<5>1  (
    .I0(\openmips/if_id/id_inst[26] ),
    .I1(\openmips/if_id/id_inst[31] ),
    .I2(\openmips/if_id/id_inst[30] ),
    .I3(\openmips/if_id/id_inst[29] ),
    .I4(\openmips/if_id/id_inst[27] ),
    .I5(\openmips/if_id/id_inst[28] ),
    .O(\openmips/id/op[5]_GND_6_o_equal_92_o )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \openmips/id/Mmux_alusel_o11111  (
    .I0(\openmips/if_id/id_inst_5_1_533 ),
    .I1(\openmips/if_id/id_inst_3_1_535 ),
    .I2(\openmips/if_id/id_inst_4_1_534 ),
    .O(\openmips/id/Mmux_alusel_o1111 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \openmips/id/Mmux_aluop_o2141  (
    .I0(\openmips/if_id/id_inst[1] ),
    .I1(\openmips/id/op2[4]_GND_6_o_equal_53_o ),
    .I2(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/Mmux_aluop_o214 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000003133 ))
  \openmips/id/out91  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[5] ),
    .I3(\openmips/if_id/id_inst[1] ),
    .I4(\openmips/if_id/id_inst[4] ),
    .I5(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/op3[5]_INV_18_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1  (
    .I0(\openmips/if_id/id_inst[25] ),
    .I1(\openmips/if_id/id_inst[24] ),
    .I2(\openmips/if_id/id_inst[23] ),
    .I3(\openmips/if_id/id_inst[22] ),
    .I4(\openmips/if_id/id_inst[21] ),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/inst_i[31]_GND_6_o_equal_106_o )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \openmips/id/op3[5]_PWR_6_o_Select_32_o31  (
    .I0(\openmips/if_id/id_inst[4] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/op3[5]_PWR_6_o_Select_32_o3 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \openmips/id/_n04911  (
    .I0(\openmips/if_id/id_inst[30] ),
    .I1(\openmips/if_id/id_inst[31] ),
    .I2(\openmips/if_id/id_inst[29] ),
    .O(\openmips/id/_n0491 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \openmips/id/op2[4]_GND_6_o_equal_53_o<4>1  (
    .I0(\openmips/if_id/id_inst[10] ),
    .I1(\openmips/if_id/id_inst[9] ),
    .I2(\openmips/if_id/id_inst[8] ),
    .I3(\openmips/if_id/id_inst[7] ),
    .I4(\openmips/if_id/id_inst[6] ),
    .O(\openmips/id/op2[4]_GND_6_o_equal_53_o )
  );
  LUT6 #(
    .INIT ( 64'h7FDFF7FD3FCFF3FC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o1  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(sw_0_IBUF_11),
    .I2(btn_1_IBUF_3),
    .I3(\anti_jitter/sw_temp [0]),
    .I4(\anti_jitter/btn_temp [1]),
    .I5(\anti_jitter/sw_temp [7]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o1_374 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o2  (
    .I0(sw_5_IBUF_6),
    .I1(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I2(sw_6_IBUF_5),
    .I3(\anti_jitter/sw_temp [6]),
    .I4(\anti_jitter/sw_temp [5]),
    .I5(\anti_jitter/sw_temp [7]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o2_375 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o3  (
    .I0(sw_3_IBUF_8),
    .I1(sw_5_IBUF_6),
    .I2(sw_4_IBUF_7),
    .I3(\anti_jitter/sw_temp [4]),
    .I4(\anti_jitter/sw_temp [3]),
    .I5(\anti_jitter/sw_temp [5]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o3_376 )
  );
  LUT6 #(
    .INIT ( 64'h3FCFF3FCBFEFFBFE ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o4  (
    .I0(btn_4_IBUF_0),
    .I1(btn_3_IBUF_1),
    .I2(btn_2_IBUF_2),
    .I3(\anti_jitter/btn_temp [3]),
    .I4(\anti_jitter/btn_temp [2]),
    .I5(\anti_jitter/btn_temp [4]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o4_377 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o5  (
    .I0(sw_1_IBUF_10),
    .I1(sw_3_IBUF_8),
    .I2(sw_2_IBUF_9),
    .I3(\anti_jitter/sw_temp [2]),
    .I4(\anti_jitter/sw_temp [1]),
    .I5(\anti_jitter/sw_temp [3]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o5_378 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o6  (
    .I0(btn_4_IBUF_0),
    .I1(sw_1_IBUF_10),
    .I2(btn_0_IBUF_4),
    .I3(\anti_jitter/btn_temp [0]),
    .I4(\anti_jitter/btn_temp [4]),
    .I5(\anti_jitter/sw_temp [1]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o6_379 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o7  (
    .I0(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o3_376 ),
    .I1(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o2_375 ),
    .I2(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o1_374 ),
    .I3(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o4_377 ),
    .I4(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o6_379 ),
    .I5(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o5_378 ),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \openmips/id/Mmux_aluop_o71  (
    .I0(\openmips/if_id/id_inst[26] ),
    .I1(\openmips/if_id/id_inst[27] ),
    .I2(\openmips/if_id/id_inst[28] ),
    .O(\openmips/id/Mmux_aluop_o7 )
  );
  LUT6 #(
    .INIT ( 64'hFFF2FF22FF22FF22 ))
  \openmips/id/Mmux_aluop_o72  (
    .I0(\openmips/id/Mmux_aluop_o7 ),
    .I1(\openmips/id/_n0491 ),
    .I2(\openmips/id/op2[4]_GND_6_o_equal_53_o ),
    .I3(\openmips/id/op[5]_GND_6_o_equal_91_o ),
    .I4(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .I5(\openmips/id/out151 ),
    .O(\openmips/id/Mmux_aluop_o71_381 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \openmips/id/Mmux_aluop_o31  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/if_id/id_inst[1] ),
    .O(\openmips/id/Mmux_aluop_o3 )
  );
  LUT6 #(
    .INIT ( 64'hFCFCF4F0F0F0F0F0 ))
  \openmips/id/Mmux_aluop_o34  (
    .I0(\openmips/if_id/id_inst[1] ),
    .I1(\openmips/id/op2[4]_GND_6_o_equal_53_o ),
    .I2(\openmips/id/Mmux_aluop_o32_383 ),
    .I3(\openmips/id/out41 ),
    .I4(\openmips/id/Mmux_aluop_o33_384 ),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/Mmux_aluop_o34_385 )
  );
  LUT5 #(
    .INIT ( 32'h00000A20 ))
  \openmips/id/Mmux_aluop_o41  (
    .I0(\openmips/if_id/id_inst[3] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[4] ),
    .I3(\openmips/if_id/id_inst[1] ),
    .I4(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/Mmux_aluop_o4 )
  );
  LUT5 #(
    .INIT ( 32'hEECCECCC ))
  \openmips/id/Mmux_aluop_o42  (
    .I0(\openmips/id/op2[4]_GND_6_o_equal_53_o ),
    .I1(\openmips/id/Mmux_aluop_o213 ),
    .I2(\openmips/id/Mmux_aluop_o4 ),
    .I3(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .I4(\openmips/id/out151 ),
    .O(\openmips/id/Mmux_aluop_o41_387 )
  );
  LUT5 #(
    .INIT ( 32'hC4C00000 ))
  \openmips/id/Mmux_aluop_o62  (
    .I0(\openmips/if_id/id_inst[1] ),
    .I1(\openmips/id/op2[4]_GND_6_o_equal_53_o ),
    .I2(\openmips/id/Mmux_alusel_o1111 ),
    .I3(\openmips/id/out41 ),
    .I4(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/Mmux_aluop_o61 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF222 ))
  \openmips/id/Mmux_aluop_o63  (
    .I0(\openmips/if_id/id_inst[28] ),
    .I1(\openmips/id/_n0491 ),
    .I2(\openmips/id/op3[5]_INV_18_o ),
    .I3(\openmips/id/op[5]_GND_6_o_equal_92_o ),
    .I4(\openmips/id/Mmux_aluop_o213 ),
    .I5(\openmips/id/Mmux_aluop_o61 ),
    .O(\openmips/id/Mmux_aluop_o62_390 )
  );
  LUT6 #(
    .INIT ( 64'hDDCC5500DCCC5000 ))
  \openmips/id/Mmux_aluop_o65  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(\openmips/id/Mmux_aluop_o3 ),
    .I2(\openmips/id/Mmux_aluop_o63_391 ),
    .I3(\openmips/id/Mmux_aluop_o31_362 ),
    .I4(\openmips/id/Mmux_aluop_o12_360 ),
    .I5(\openmips/id/Mmux_aluop_o62_390 ),
    .O(\openmips/id_aluop_o [5])
  );
  LUT6 #(
    .INIT ( 64'hF0F0000070000000 ))
  \openmips/id/Mmux_aluop_o55  (
    .I0(\openmips/if_id/id_inst[1] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/id/op2[4]_GND_6_o_equal_53_o ),
    .I3(\openmips/id/op3[5]_PWR_6_o_Select_32_o3 ),
    .I4(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .I5(\openmips/id/out151 ),
    .O(\openmips/id/Mmux_aluop_o54_394 )
  );
  LUT6 #(
    .INIT ( 64'h0000040000004400 ))
  \openmips/id/Mmux_aluop_o8  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(\openmips/id/op[5]_GND_6_o_equal_92_o ),
    .I2(N0),
    .I3(\openmips/id/op3[5]_INV_18_o ),
    .I4(\openmips/id/op3[5]_PWR_6_o_equal_26_o<5>1 ),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o ),
    .O(\openmips/id_aluop_o [7])
  );
  LUT6 #(
    .INIT ( 64'hFCFCFCECFCFCFCCC ))
  \openmips/id/Mmux_aluop_o14  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/id/Mmux_aluop_o13_396 ),
    .I2(\openmips/id/op[5]_GND_6_o_equal_92_o ),
    .I3(\openmips/id/Mmux_aluop_o14_397 ),
    .I4(\openmips/id/op3[5]_GND_6_o_equal_108_o ),
    .I5(\openmips/id/op3[5]_PWR_6_o_equal_26_o<5>1 ),
    .O(\openmips/id/Mmux_aluop_o15_398 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \openmips/id/Mmux_aluop_o16  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/id/op2[4]_GND_6_o_equal_53_o ),
    .I2(\openmips/id/Mmux_aluop_o16_399 ),
    .I3(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/Mmux_aluop_o17_400 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \openmips/id/Mmux_aluop_o2121  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[1] ),
    .I3(\openmips/if_id/id_inst[5] ),
    .I4(\openmips/if_id/id_inst[4] ),
    .I5(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/Mmux_aluop_o2121_401 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \openmips/id/Mmux_aluop_o2122  (
    .I0(\openmips/if_id/id_inst[26] ),
    .I1(\openmips/if_id/id_inst[27] ),
    .I2(\openmips/if_id/id_inst[28] ),
    .O(\openmips/id/Mmux_aluop_o2122_402 )
  );
  LUT5 #(
    .INIT ( 32'hFFF2F2F2 ))
  \openmips/id/Mmux_aluop_o2123  (
    .I0(\openmips/id/Mmux_aluop_o2122_402 ),
    .I1(\openmips/id/_n0491 ),
    .I2(\openmips/id/op[5]_GND_6_o_equal_91_o ),
    .I3(\openmips/id/op[5]_GND_6_o_equal_92_o ),
    .I4(\openmips/id/Mmux_aluop_o2121_401 ),
    .O(\openmips/id/Mmux_aluop_o212 )
  );
  LUT5 #(
    .INIT ( 32'hFEFAEEAA ))
  \openmips/id/Mmux_aluop_o22  (
    .I0(\openmips/id/Mmux_aluop_o213 ),
    .I1(\openmips/id/op[5]_GND_6_o_equal_92_o ),
    .I2(\openmips/id/Mmux_aluop_o2 ),
    .I3(\openmips/id/op3[5]_PWR_6_o_equal_26_o<5>1 ),
    .I4(\openmips/id/Mmux_aluop_o214 ),
    .O(\openmips/id/Mmux_aluop_o21_404 )
  );
  LUT6 #(
    .INIT ( 64'hDDCC5500DCCC5000 ))
  \openmips/id/Mmux_aluop_o23  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(\openmips/if_id/id_inst[1] ),
    .I2(\openmips/id/Mmux_aluop_o212 ),
    .I3(\openmips/id/Mmux_aluop_o11 ),
    .I4(\openmips/id/Mmux_aluop_o12_360 ),
    .I5(\openmips/id/Mmux_aluop_o21_404 ),
    .O(\openmips/id_aluop_o [1])
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
    .O(\openmips/id_ex/Reset_OR_DriverANDClockEnable )
  );
  IBUF   sw_6_IBUF (
    .I(sw[6]),
    .O(sw_6_IBUF_5)
  );
  IBUF   sw_5_IBUF (
    .I(sw[5]),
    .O(sw_5_IBUF_6)
  );
  IBUF   sw_4_IBUF (
    .I(sw[4]),
    .O(sw_4_IBUF_7)
  );
  IBUF   sw_3_IBUF (
    .I(sw[3]),
    .O(sw_3_IBUF_8)
  );
  IBUF   sw_2_IBUF (
    .I(sw[2]),
    .O(sw_2_IBUF_9)
  );
  IBUF   sw_1_IBUF (
    .I(sw[1]),
    .O(sw_1_IBUF_10)
  );
  IBUF   sw_0_IBUF (
    .I(sw[0]),
    .O(sw_0_IBUF_11)
  );
  OBUF   seg_7_OBUF (
    .I(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<3> ),
    .O(seg[7])
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_96),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_97),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_98),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_99),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_100),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_101),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_102),
    .O(seg[0])
  );
  OBUF   an_3_OBUF (
    .I(an_3_OBUF_92),
    .O(an[3])
  );
  OBUF   an_2_OBUF (
    .I(an_2_OBUF_93),
    .O(an[2])
  );
  OBUF   an_1_OBUF (
    .I(an_1_OBUF_94),
    .O(an[1])
  );
  OBUF   an_0_OBUF (
    .I(an_0_OBUF_95),
    .O(an[0])
  );
  OBUF   led_7_OBUF (
    .I(led_7_OBUF_48),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(led_6_OBUF_49),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(led_5_OBUF_50),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(led_4_OBUF_51),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(led_3_OBUF_52),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(led_2_OBUF_53),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(led_1_OBUF_54),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(led_0_OBUF_55),
    .O(led[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<2>1  (
    .I0(\anti_jitter/counter [16]),
    .I1(\anti_jitter/counter [15]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lut<2> )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<1>_rt  (
    .I0(\clk_div/clkdiv [1]),
    .O(\clk_div/Mcount_clkdiv_cy<1>_rt_439 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<2>_rt  (
    .I0(\clk_div/clkdiv [2]),
    .O(\clk_div/Mcount_clkdiv_cy<2>_rt_440 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<3>_rt  (
    .I0(\clk_div/clkdiv [3]),
    .O(\clk_div/Mcount_clkdiv_cy<3>_rt_441 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<4>_rt  (
    .I0(\clk_div/clkdiv [4]),
    .O(\clk_div/Mcount_clkdiv_cy<4>_rt_442 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<5>_rt  (
    .I0(\clk_div/clkdiv [5]),
    .O(\clk_div/Mcount_clkdiv_cy<5>_rt_443 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<6>_rt  (
    .I0(\clk_div/clkdiv [6]),
    .O(\clk_div/Mcount_clkdiv_cy<6>_rt_444 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<7>_rt  (
    .I0(\clk_div/clkdiv [7]),
    .O(\clk_div/Mcount_clkdiv_cy<7>_rt_445 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<8>_rt  (
    .I0(\clk_div/clkdiv [8]),
    .O(\clk_div/Mcount_clkdiv_cy<8>_rt_446 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<9>_rt  (
    .I0(\clk_div/clkdiv [9]),
    .O(\clk_div/Mcount_clkdiv_cy<9>_rt_447 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<10>_rt  (
    .I0(\clk_div/clkdiv [10]),
    .O(\clk_div/Mcount_clkdiv_cy<10>_rt_448 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<11>_rt  (
    .I0(\clk_div/clkdiv [11]),
    .O(\clk_div/Mcount_clkdiv_cy<11>_rt_449 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<12>_rt  (
    .I0(\clk_div/clkdiv [12]),
    .O(\clk_div/Mcount_clkdiv_cy<12>_rt_450 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<13>_rt  (
    .I0(\clk_div/clkdiv [13]),
    .O(\clk_div/Mcount_clkdiv_cy<13>_rt_451 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<14>_rt  (
    .I0(\clk_div/clkdiv [14]),
    .O(\clk_div/Mcount_clkdiv_cy<14>_rt_452 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<15>_rt  (
    .I0(\clk_div/clkdiv [15]),
    .O(\clk_div/Mcount_clkdiv_cy<15>_rt_453 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<16>_rt  (
    .I0(\clk_div/clkdiv [16]),
    .O(\clk_div/Mcount_clkdiv_cy<16>_rt_454 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<17>_rt  (
    .I0(\clk_div/clkdiv [17]),
    .O(\clk_div/Mcount_clkdiv_cy<17>_rt_455 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<18>_rt  (
    .I0(\clk_div/clkdiv [18]),
    .O(\clk_div/Mcount_clkdiv_cy<18>_rt_456 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<15>_rt  (
    .I0(\anti_jitter/counter [15]),
    .O(\anti_jitter/Mcount_counter_cy<15>_rt_457 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<14>_rt  (
    .I0(\anti_jitter/counter [14]),
    .O(\anti_jitter/Mcount_counter_cy<14>_rt_458 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<13>_rt  (
    .I0(\anti_jitter/counter [13]),
    .O(\anti_jitter/Mcount_counter_cy<13>_rt_459 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<12>_rt  (
    .I0(\anti_jitter/counter [12]),
    .O(\anti_jitter/Mcount_counter_cy<12>_rt_460 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<11>_rt  (
    .I0(\anti_jitter/counter [11]),
    .O(\anti_jitter/Mcount_counter_cy<11>_rt_461 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<10>_rt  (
    .I0(\anti_jitter/counter [10]),
    .O(\anti_jitter/Mcount_counter_cy<10>_rt_462 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<9>_rt  (
    .I0(\anti_jitter/counter [9]),
    .O(\anti_jitter/Mcount_counter_cy<9>_rt_463 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<8>_rt  (
    .I0(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcount_counter_cy<8>_rt_464 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<7>_rt  (
    .I0(\anti_jitter/counter [7]),
    .O(\anti_jitter/Mcount_counter_cy<7>_rt_465 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<6>_rt  (
    .I0(\anti_jitter/counter [6]),
    .O(\anti_jitter/Mcount_counter_cy<6>_rt_466 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<5>_rt  (
    .I0(\anti_jitter/counter [5]),
    .O(\anti_jitter/Mcount_counter_cy<5>_rt_467 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<4>_rt  (
    .I0(\anti_jitter/counter [4]),
    .O(\anti_jitter/Mcount_counter_cy<4>_rt_468 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<3>_rt  (
    .I0(\anti_jitter/counter [3]),
    .O(\anti_jitter/Mcount_counter_cy<3>_rt_469 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<2>_rt  (
    .I0(\anti_jitter/counter [2]),
    .O(\anti_jitter/Mcount_counter_cy<2>_rt_470 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<1>_rt  (
    .I0(\anti_jitter/counter [1]),
    .O(\anti_jitter/Mcount_counter_cy<1>_rt_471 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<30>_rt  (
    .I0(\openmips/pc_reg/pc [30]),
    .O(\openmips/pc_reg/Maccum_pc_cy<30>_rt_472 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<29>_rt  (
    .I0(\openmips/pc_reg/pc [29]),
    .O(\openmips/pc_reg/Maccum_pc_cy<29>_rt_473 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<28>_rt  (
    .I0(\openmips/pc_reg/pc [28]),
    .O(\openmips/pc_reg/Maccum_pc_cy<28>_rt_474 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<27>_rt  (
    .I0(\openmips/pc_reg/pc [27]),
    .O(\openmips/pc_reg/Maccum_pc_cy<27>_rt_475 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<26>_rt  (
    .I0(\openmips/pc_reg/pc [26]),
    .O(\openmips/pc_reg/Maccum_pc_cy<26>_rt_476 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<25>_rt  (
    .I0(\openmips/pc_reg/pc [25]),
    .O(\openmips/pc_reg/Maccum_pc_cy<25>_rt_477 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<24>_rt  (
    .I0(\openmips/pc_reg/pc [24]),
    .O(\openmips/pc_reg/Maccum_pc_cy<24>_rt_478 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<23>_rt  (
    .I0(\openmips/pc_reg/pc [23]),
    .O(\openmips/pc_reg/Maccum_pc_cy<23>_rt_479 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<22>_rt  (
    .I0(\openmips/pc_reg/pc [22]),
    .O(\openmips/pc_reg/Maccum_pc_cy<22>_rt_480 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<21>_rt  (
    .I0(\openmips/pc_reg/pc [21]),
    .O(\openmips/pc_reg/Maccum_pc_cy<21>_rt_481 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<20>_rt  (
    .I0(\openmips/pc_reg/pc [20]),
    .O(\openmips/pc_reg/Maccum_pc_cy<20>_rt_482 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<19>_rt  (
    .I0(\openmips/pc_reg/pc [19]),
    .O(\openmips/pc_reg/Maccum_pc_cy<19>_rt_483 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<18>_rt  (
    .I0(\openmips/pc_reg/pc [18]),
    .O(\openmips/pc_reg/Maccum_pc_cy<18>_rt_484 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<17>_rt  (
    .I0(\openmips/pc_reg/pc [17]),
    .O(\openmips/pc_reg/Maccum_pc_cy<17>_rt_485 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<16>_rt  (
    .I0(\openmips/pc_reg/pc [16]),
    .O(\openmips/pc_reg/Maccum_pc_cy<16>_rt_486 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<15>_rt  (
    .I0(\openmips/pc_reg/pc [15]),
    .O(\openmips/pc_reg/Maccum_pc_cy<15>_rt_487 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<14>_rt  (
    .I0(\openmips/pc_reg/pc [14]),
    .O(\openmips/pc_reg/Maccum_pc_cy<14>_rt_488 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<13>_rt  (
    .I0(\openmips/pc_reg/pc [13]),
    .O(\openmips/pc_reg/Maccum_pc_cy<13>_rt_489 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<12>_rt  (
    .I0(\openmips/pc_reg/pc [12]),
    .O(\openmips/pc_reg/Maccum_pc_cy<12>_rt_490 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<11>_rt  (
    .I0(\openmips/pc_reg/pc [11]),
    .O(\openmips/pc_reg/Maccum_pc_cy<11>_rt_491 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<10>_rt  (
    .I0(\openmips/pc_reg/pc [10]),
    .O(\openmips/pc_reg/Maccum_pc_cy<10>_rt_492 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<9>_rt  (
    .I0(\openmips/pc_reg/pc [9]),
    .O(\openmips/pc_reg/Maccum_pc_cy<9>_rt_493 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<8>_rt  (
    .I0(\openmips/pc_reg/pc [8]),
    .O(\openmips/pc_reg/Maccum_pc_cy<8>_rt_494 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<7>_rt  (
    .I0(\openmips/pc_reg/pc [7]),
    .O(\openmips/pc_reg/Maccum_pc_cy<7>_rt_495 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<6>_rt  (
    .I0(\openmips/pc_reg/pc [6]),
    .O(\openmips/pc_reg/Maccum_pc_cy<6>_rt_496 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<5>_rt  (
    .I0(\openmips/pc_reg/pc [5]),
    .O(\openmips/pc_reg/Maccum_pc_cy<5>_rt_497 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<4>_rt  (
    .I0(\openmips/pc_reg/pc [4]),
    .O(\openmips/pc_reg/Maccum_pc_cy<4>_rt_498 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<3>_rt  (
    .I0(\openmips/pc_reg/pc [3]),
    .O(\openmips/pc_reg/Maccum_pc_cy<3>_rt_499 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_xor<19>_rt  (
    .I0(\clk_div/clkdiv [19]),
    .O(\clk_div/Mcount_clkdiv_xor<19>_rt_500 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_xor<16>_rt  (
    .I0(\anti_jitter/counter [16]),
    .O(\anti_jitter/Mcount_counter_xor<16>_rt_501 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_xor<31>_rt  (
    .I0(\openmips/pc_reg/pc [31]),
    .O(\openmips/pc_reg/Maccum_pc_xor<31>_rt_502 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \anti_jitter/_n0054_inv1_cepot  (
    .I0(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o2_375 ),
    .I1(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o3_376 ),
    .I2(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o1_374 ),
    .I3(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o5_378 ),
    .I4(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o6_379 ),
    .I5(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o4_377 ),
    .O(\anti_jitter/_n0054_inv1_cepot_503 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_1_dpot  (
    .I0(sw_1_IBUF_10),
    .I1(\anti_jitter/sw_ok[1] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/sw_ok_1_dpot_504 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_6_dpot  (
    .I0(sw_6_IBUF_5),
    .I1(\anti_jitter/sw_ok[6] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/sw_ok_6_dpot_505 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_7_dpot  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/sw_ok_7_dpot_506 )
  );
  LUT6 #(
    .INIT ( 64'h0008000000000000 ))
  \openmips/id/Mmux_aluop_o64  (
    .I0(\openmips/if_id/id_inst[1] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[2] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .I4(\openmips/id/op2[4]_GND_6_o_equal_53_o ),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/Mmux_aluop_o63_391 )
  );
  LUT5 #(
    .INIT ( 32'h005413E4 ))
  \openmips/id/Mmux_aluop_o15  (
    .I0(\openmips/if_id/id_inst[3] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[1] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .I4(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/Mmux_aluop_o16_399 )
  );
  LUT4 #(
    .INIT ( 16'h1516 ))
  \openmips/id/Mmux_aluop_o21  (
    .I0(\openmips/if_id/id_inst[4] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[2] ),
    .I3(\openmips/if_id/id_inst[5] ),
    .O(\openmips/id/Mmux_aluop_o2 )
  );
  LUT5 #(
    .INIT ( 32'h00000010 ))
  \openmips/id/Mmux_aluop_o53  (
    .I0(\openmips/if_id/id_inst[3] ),
    .I1(\openmips/if_id/id_inst[1] ),
    .I2(\openmips/if_id/id_inst[5] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .I4(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/Mmux_aluop_o52 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \openmips/id/op[5]_GND_6_o_equal_91_o<5>1  (
    .I0(\openmips/if_id/id_inst[26] ),
    .I1(\openmips/if_id/id_inst[29] ),
    .I2(\openmips/if_id/id_inst[31] ),
    .I3(\openmips/if_id/id_inst[30] ),
    .I4(\openmips/if_id/id_inst[27] ),
    .I5(\openmips/if_id/id_inst[28] ),
    .O(\openmips/id/op[5]_GND_6_o_equal_91_o )
  );
  LUT5 #(
    .INIT ( 32'h00000200 ))
  \openmips/id/Mmux_aluop_o2131  (
    .I0(\openmips/if_id/id_inst[29] ),
    .I1(\openmips/if_id/id_inst[31] ),
    .I2(\openmips/if_id/id_inst[30] ),
    .I3(\openmips/if_id/id_inst[27] ),
    .I4(\openmips/if_id/id_inst[28] ),
    .O(\openmips/id/Mmux_aluop_o213 )
  );
  LUT5 #(
    .INIT ( 32'h00000040 ))
  \openmips/id/op3[5]_PWR_6_o_equal_26_o<5>11  (
    .I0(\openmips/if_id/id_inst[3] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[1] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .I4(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/op3[5]_PWR_6_o_equal_26_o<5>1 )
  );
  LUT6 #(
    .INIT ( 64'h0008000C00000004 ))
  \openmips/id/Mmux_aluop_o32  (
    .I0(\openmips/if_id/id_inst[26] ),
    .I1(\openmips/if_id/id_inst[29] ),
    .I2(\openmips/if_id/id_inst[31] ),
    .I3(\openmips/if_id/id_inst[30] ),
    .I4(\openmips/if_id/id_inst[27] ),
    .I5(\openmips/if_id/id_inst[28] ),
    .O(\openmips/id/Mmux_aluop_o32_383 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \openmips/id/Mmux_aluop_o33  (
    .I0(\openmips/if_id/id_inst[5] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[2] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .O(\openmips/id/Mmux_aluop_o33_384 )
  );
  LUT6 #(
    .INIT ( 64'h0008000800080004 ))
  \openmips/id/Mmux_aluop_o12  (
    .I0(\openmips/if_id/id_inst[26] ),
    .I1(\openmips/if_id/id_inst[29] ),
    .I2(\openmips/if_id/id_inst[31] ),
    .I3(\openmips/if_id/id_inst[30] ),
    .I4(\openmips/if_id/id_inst[27] ),
    .I5(\openmips/if_id/id_inst[28] ),
    .O(\openmips/id/Mmux_aluop_o13_396 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000020 ))
  \openmips/id/Mmux_aluop_o13  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[5] ),
    .I3(\openmips/if_id/id_inst[1] ),
    .I4(\openmips/if_id/id_inst[4] ),
    .I5(\openmips/if_id/id_inst[2] ),
    .O(\openmips/id/Mmux_aluop_o14_397 )
  );
  FDR   \anti_jitter/counter_9  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_9_rstpot_507 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [9])
  );
  FDR   \anti_jitter/counter_8  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_8_rstpot_508 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [8])
  );
  FDR   \anti_jitter/counter_7  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_7_rstpot_509 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [7])
  );
  FDR   \anti_jitter/counter_6  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_6_rstpot_510 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [6])
  );
  FDR   \anti_jitter/counter_5  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_5_rstpot_511 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [5])
  );
  FDR   \anti_jitter/counter_4  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_4_rstpot_512 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [4])
  );
  FDR   \anti_jitter/counter_3  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_3_rstpot_513 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [3])
  );
  FDR   \anti_jitter/counter_2  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_2_rstpot_514 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [2])
  );
  FDR   \anti_jitter/counter_1  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_1_rstpot_515 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [1])
  );
  FDR   \anti_jitter/counter_0  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_0_rstpot_516 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [0])
  );
  FDR   \anti_jitter/counter_10  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_10_rstpot_517 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [10])
  );
  FDR   \anti_jitter/counter_11  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_11_rstpot_518 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [11])
  );
  FDR   \anti_jitter/counter_12  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_12_rstpot_519 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [12])
  );
  FDR   \anti_jitter/counter_13  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_13_rstpot_520 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [13])
  );
  FDR   \anti_jitter/counter_14  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_14_rstpot_521 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [14])
  );
  FDR   \anti_jitter/counter_15  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_15_rstpot_522 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [15])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_9_rstpot  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/Result [9]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_9_rstpot_507 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_8_rstpot  (
    .I0(\anti_jitter/counter [8]),
    .I1(\anti_jitter/Result [8]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_8_rstpot_508 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_7_rstpot  (
    .I0(\anti_jitter/counter [7]),
    .I1(\anti_jitter/Result [7]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_7_rstpot_509 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_6_rstpot  (
    .I0(\anti_jitter/counter [6]),
    .I1(\anti_jitter/Result [6]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_6_rstpot_510 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_5_rstpot  (
    .I0(\anti_jitter/counter [5]),
    .I1(\anti_jitter/Result [5]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_5_rstpot_511 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_4_rstpot  (
    .I0(\anti_jitter/counter [4]),
    .I1(\anti_jitter/Result [4]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_4_rstpot_512 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_3_rstpot  (
    .I0(\anti_jitter/counter [3]),
    .I1(\anti_jitter/Result [3]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_3_rstpot_513 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_2_rstpot  (
    .I0(\anti_jitter/counter [2]),
    .I1(\anti_jitter/Result [2]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_2_rstpot_514 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_1_rstpot  (
    .I0(\anti_jitter/counter [1]),
    .I1(\anti_jitter/Result [1]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_1_rstpot_515 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_0_rstpot  (
    .I0(\anti_jitter/counter [0]),
    .I1(\anti_jitter/Result [0]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_0_rstpot_516 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_10_rstpot  (
    .I0(\anti_jitter/counter [10]),
    .I1(\anti_jitter/Result [10]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_10_rstpot_517 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_11_rstpot  (
    .I0(\anti_jitter/counter [11]),
    .I1(\anti_jitter/Result [11]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_11_rstpot_518 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_12_rstpot  (
    .I0(\anti_jitter/counter [12]),
    .I1(\anti_jitter/Result [12]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_12_rstpot_519 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_13_rstpot  (
    .I0(\anti_jitter/counter [13]),
    .I1(\anti_jitter/Result [13]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_13_rstpot_520 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_14_rstpot  (
    .I0(\anti_jitter/counter [14]),
    .I1(\anti_jitter/Result [14]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_14_rstpot_521 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_15_rstpot  (
    .I0(\anti_jitter/counter [15]),
    .I1(\anti_jitter/Result [15]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_15_rstpot_522 )
  );
  FDR   \anti_jitter/counter_16  (
    .C(clk_100mhz_BUFGP_12),
    .D(\anti_jitter/counter_16_rstpot_523 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_608_o ),
    .Q(\anti_jitter/counter [16])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_16_rstpot  (
    .I0(\anti_jitter/counter [16]),
    .I1(\anti_jitter/Result [16]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_cy<5>_186 ),
    .O(\anti_jitter/counter_16_rstpot_523 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \openmips/id/Mmux_aluop_o73_SW0  (
    .I0(\openmips/if_id/id_inst[5] ),
    .I1(\openmips/if_id/id_inst[4] ),
    .I2(\openmips/if_id/id_inst[3] ),
    .I3(\openmips/if_id/id_inst[2] ),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h5505000155550000 ))
  \openmips/id/Mmux_aluop_o73  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(\openmips/if_id/id_inst[0] ),
    .I2(\openmips/if_id/id_inst[1] ),
    .I3(N2),
    .I4(\openmips/id/Mmux_aluop_o71_381 ),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o ),
    .O(\openmips/id_aluop_o [6])
  );
  LUT6 #(
    .INIT ( 64'h1111110555555500 ))
  \openmips/id/Mmux_aluop_o35  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(N5),
    .I2(N4),
    .I3(\openmips/id/Mmux_aluop_o212 ),
    .I4(\openmips/id/Mmux_aluop_o34_385 ),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o ),
    .O(\openmips/id_aluop_o [2])
  );
  LUT6 #(
    .INIT ( 64'h1111555511055500 ))
  \openmips/id/Mmux_aluop_o45  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(N5),
    .I2(N4),
    .I3(\openmips/id/Mmux_aluop_o42_388 ),
    .I4(\openmips/id/inst_i[31]_GND_6_o_equal_106_o ),
    .I5(\openmips/id/Mmux_aluop_o41_387 ),
    .O(\openmips/id_aluop_o [3])
  );
  LUT6 #(
    .INIT ( 64'h1111110555555500 ))
  \openmips/id/Mmux_aluop_o56  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(N5),
    .I2(N4),
    .I3(\openmips/id/Mmux_aluop_o53_393 ),
    .I4(\openmips/id/Mmux_aluop_o54_394 ),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o ),
    .O(\openmips/id_aluop_o [4])
  );
  LUT6 #(
    .INIT ( 64'h1111110555555500 ))
  \openmips/id/Mmux_aluop_o17  (
    .I0(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .I1(N14),
    .I2(N13),
    .I3(\openmips/id/Mmux_aluop_o17_400 ),
    .I4(\openmips/id/Mmux_aluop_o15_398 ),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o ),
    .O(\openmips/id_aluop_o [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_SW0  (
    .I0(\openmips/if_id/id_inst[25] ),
    .I1(\openmips/if_id/id_inst[24] ),
    .I2(\openmips/if_id/id_inst[23] ),
    .I3(\openmips/if_id/id_inst[22] ),
    .I4(\openmips/if_id/id_inst[21] ),
    .I5(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \openmips/id/Mmux_aluop_o121  (
    .I0(\openmips/if_id/id_inst[2] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[5] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .I4(N16),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/Mmux_aluop_o12_360 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_SW1  (
    .I0(\openmips/if_id/id_inst[21] ),
    .I1(\openmips/if_id/id_inst[22] ),
    .I2(\openmips/if_id/id_inst[23] ),
    .I3(\openmips/if_id/id_inst[24] ),
    .I4(\openmips/if_id/id_inst[25] ),
    .I5(\openmips/if_id/id_inst[0] ),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \openmips/id/Mmux_aluop_o111  (
    .I0(\openmips/if_id/id_inst[2] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[5] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .I4(N18),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/Mmux_aluop_o11 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_SW2  (
    .I0(\openmips/if_id/id_inst[25] ),
    .I1(\openmips/if_id/id_inst[21] ),
    .I2(\openmips/if_id/id_inst[22] ),
    .I3(\openmips/if_id/id_inst[23] ),
    .I4(\openmips/if_id/id_inst[24] ),
    .I5(\openmips/if_id/id_inst[1] ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \openmips/id/Mmux_aluop_o311  (
    .I0(\openmips/if_id/id_inst[2] ),
    .I1(\openmips/if_id/id_inst[3] ),
    .I2(\openmips/if_id/id_inst[5] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .I4(N20),
    .I5(\openmips/id/inst_i[31]_GND_6_o_equal_106_o<31>1_357 ),
    .O(\openmips/id/Mmux_aluop_o31_362 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000010001 ))
  \openmips/id/Mmux_aluop_o8_SW0  (
    .I0(\openmips/if_id/id_inst[5] ),
    .I1(\openmips/if_id/id_inst[4] ),
    .I2(\openmips/if_id/id_inst[3] ),
    .I3(\openmips/if_id/id_inst[2] ),
    .I4(\openmips/if_id/id_inst[1] ),
    .I5(\openmips/if_id/id_inst[0] ),
    .O(N0)
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \openmips/id/Mmux_aluop_o35_SW1  (
    .I0(\openmips/if_id/id_inst[5] ),
    .I1(\openmips/if_id/id_inst[4] ),
    .I2(\openmips/if_id/id_inst[3] ),
    .I3(\openmips/if_id/id_inst[1] ),
    .I4(\openmips/if_id/id_inst[2] ),
    .O(N5)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \openmips/id/Mmux_aluop_o17_SW1  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[4] ),
    .I3(\openmips/if_id/id_inst[3] ),
    .I4(\openmips/if_id/id_inst[2] ),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \openmips/id/Mmux_aluop_o35_SW0  (
    .I0(\openmips/if_id/id_inst[2] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[4] ),
    .I3(\openmips/if_id/id_inst[3] ),
    .I4(\openmips/if_id/id_inst[0] ),
    .I5(\openmips/if_id/id_inst[1] ),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \openmips/id/Mmux_aluop_o17_SW0  (
    .I0(\openmips/if_id/id_inst[0] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[4] ),
    .I3(\openmips/if_id/id_inst[3] ),
    .I4(\openmips/if_id/id_inst[2] ),
    .I5(\openmips/if_id/id_inst[1] ),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \openmips/ex/_n079421  (
    .I0(\openmips/id_ex/ex_aluop [1]),
    .I1(\openmips/id_ex/ex_aluop [3]),
    .I2(\openmips/id_ex/ex_aluop [5]),
    .I3(\openmips/id_ex/ex_aluop [2]),
    .I4(\openmips/id_ex/ex_aluop [6]),
    .I5(\openmips/id_ex/ex_aluop [4]),
    .O(\openmips/ex/_n07942 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFDBFFFF ))
  \openmips/ex/aluop_i[7]_reduce_nor_185_o4_SW0  (
    .I0(\openmips/id_ex/ex_aluop [2]),
    .I1(\openmips/id_ex/ex_aluop [3]),
    .I2(\openmips/id_ex/ex_aluop [1]),
    .I3(\openmips/id_ex/ex_aluop [4]),
    .I4(\openmips/id_ex/ex_aluop [5]),
    .I5(\openmips/id_ex/ex_aluop [6]),
    .O(N22)
  );
  LUT5 #(
    .INIT ( 32'h54FFFFFF ))
  \openmips/ex/Mmux__n055211  (
    .I0(\openmips/ex/_n07942 ),
    .I1(\openmips/id_ex/ex_aluop [0]),
    .I2(N22),
    .I3(\openmips/ex_mem/cnt_o [1]),
    .I4(\openmips/id_ex/ex_aluop [7]),
    .O(\openmips/ex/_n0552 )
  );
  LUT6 #(
    .INIT ( 64'h0202020200000002 ))
  \openmips/ex/_n0550<0>1  (
    .I0(\openmips/id_ex/ex_aluop [7]),
    .I1(\openmips/ex_mem/cnt_o [1]),
    .I2(\openmips/ex_mem/cnt_o [0]),
    .I3(N22),
    .I4(\openmips/id_ex/ex_aluop [0]),
    .I5(\openmips/ex/_n07942 ),
    .O(\openmips/ex/_n0550 [0])
  );
  LUT6 #(
    .INIT ( 64'hAB00AB00AB000000 ))
  \openmips/ex/Mmux__n055021  (
    .I0(\openmips/ex/_n07942 ),
    .I1(N22),
    .I2(\openmips/id_ex/ex_aluop [0]),
    .I3(\openmips/id_ex/ex_aluop [7]),
    .I4(\openmips/ex_mem/cnt_o [1]),
    .I5(\openmips/ex_mem/cnt_o [0]),
    .O(\openmips/ex/_n0550 [1])
  );
  FDRE   \openmips/if_id/id_inst_5_1  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[5]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst_5_1_533 )
  );
  FDRE   \openmips/if_id/id_inst_4_1  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[4]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst_4_1_534 )
  );
  FDRE   \openmips/if_id/id_inst_3_1  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[3]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst_3_1_535 )
  );
  FDRE   \openmips/if_id/id_inst_2_1  (
    .C(clk_100mhz_BUFGP_12),
    .CE(\openmips/id_ex/stall<2>_inv1 ),
    .D(inst[2]),
    .R(\openmips/id_ex/Reset_OR_DriverANDClockEnable ),
    .Q(\openmips/if_id/id_inst_2_1_536 )
  );
  MUXF7   \openmips/id/Mmux_aluop_o43  (
    .I0(\anti_jitter/Mcompar_counter[31]_GND_151_o_LessThan_4_o_lutdi2 ),
    .I1(N25),
    .S(\openmips/id/op[5]_GND_6_o_equal_92_o ),
    .O(\openmips/id/Mmux_aluop_o42_388 )
  );
  LUT6 #(
    .INIT ( 64'h0000000100010000 ))
  \openmips/id/Mmux_aluop_o43_G  (
    .I0(\openmips/if_id/id_inst[2] ),
    .I1(\openmips/if_id/id_inst[5] ),
    .I2(\openmips/if_id/id_inst[3] ),
    .I3(\openmips/if_id/id_inst[4] ),
    .I4(\openmips/if_id/id_inst[0] ),
    .I5(\openmips/if_id/id_inst[1] ),
    .O(N25)
  );
  MUXF7   \openmips/id/Mmux_aluop_o54  (
    .I0(N26),
    .I1(N27),
    .S(\openmips/id/Mmux_aluop_o52 ),
    .O(\openmips/id/Mmux_aluop_o53_393 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \openmips/id/Mmux_aluop_o54_F  (
    .I0(\openmips/if_id/id_inst[27] ),
    .I1(\openmips/if_id/id_inst[28] ),
    .I2(\openmips/if_id/id_inst[30] ),
    .I3(\openmips/if_id/id_inst[29] ),
    .I4(\openmips/if_id/id_inst[31] ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h0000001010000010 ))
  \openmips/id/Mmux_aluop_o54_G  (
    .I0(\openmips/if_id/id_inst[27] ),
    .I1(\openmips/if_id/id_inst[31] ),
    .I2(\openmips/if_id/id_inst[29] ),
    .I3(\openmips/if_id/id_inst[30] ),
    .I4(\openmips/if_id/id_inst[28] ),
    .I5(\openmips/if_id/id_inst[26] ),
    .O(N27)
  );
  BUFGP   clk_100mhz_BUFGP (
    .I(clk_100mhz),
    .O(clk_100mhz_BUFGP_12)
  );
  INV   \clk_div/Mcount_clkdiv_lut<0>_INV_0  (
    .I(\clk_div/clkdiv [0]),
    .O(\clk_div/Mcount_clkdiv_lut [0])
  );
  INV   \anti_jitter/Mcount_counter_lut<0>_INV_0  (
    .I(\anti_jitter/counter [0]),
    .O(\anti_jitter/Mcount_counter_lut [0])
  );
  INV   \openmips/pc_reg/Maccum_pc_lut<2>_INV_0  (
    .I(\openmips/pc_reg/pc [2]),
    .O(\openmips/pc_reg/Maccum_pc_lut [2])
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
