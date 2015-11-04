////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: openmips_min_sopc_synthesis.v
// /___/   /\     Timestamp: Wed Nov 04 19:28:21 2015
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
  clk_100mhz, rst, btn, sw, seg, an, led
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk_100mhz;
  input rst;
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
  wire rst_IBUF_14;
  wire \anti_jitter/sw_ok[1] ;
  wire \anti_jitter/sw_ok[7] ;
  wire \anti_jitter/sw_ok[6] ;
  wire \anti_jitter/rst_18 ;
  wire led_7_OBUF_51;
  wire led_6_OBUF_52;
  wire led_5_OBUF_53;
  wire led_4_OBUF_54;
  wire led_3_OBUF_55;
  wire led_2_OBUF_56;
  wire led_1_OBUF_57;
  wire led_0_OBUF_58;
  wire an_3_OBUF_95;
  wire an_2_OBUF_96;
  wire an_1_OBUF_97;
  wire an_0_OBUF_98;
  wire seg_6_OBUF_99;
  wire seg_5_OBUF_100;
  wire seg_4_OBUF_101;
  wire seg_3_OBUF_102;
  wire seg_2_OBUF_103;
  wire seg_1_OBUF_104;
  wire seg_0_OBUF_105;
  wire \openmips/pc_reg/ce_106 ;
  wire \openmips/rom_ce_o_inv ;
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
  wire \mux8t1_4/Mmux_o_43_226 ;
  wire \mux8t1_4/Mmux_o_33_227 ;
  wire \mux8t1_4/Mmux_o_42_228 ;
  wire \mux8t1_4/Mmux_o_32_229 ;
  wire \mux8t1_4/Mmux_o_41_230 ;
  wire \mux8t1_4/Mmux_o_31_231 ;
  wire \mux8t1_4/Mmux_o_4_232 ;
  wire \mux8t1_4/Mmux_o_3_233 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<3>_263 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<3>_264 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi2_265 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<2>_266 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<2>_267 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi1_268 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<1>_269 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<1>_270 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<0>_271 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<0>_272 ;
  wire \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi_273 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<4>_292 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<3>_293 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<2>_295 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<2> ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<1>_298 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<1>_299 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi1_300 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<0>_301 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<0>_302 ;
  wire \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi_303 ;
  wire \anti_jitter/Result<16>1 ;
  wire \anti_jitter/Result<15>1 ;
  wire \anti_jitter/Result<14>1 ;
  wire \anti_jitter/Result<13>1 ;
  wire \anti_jitter/Result<12>1 ;
  wire \anti_jitter/Result<11>1 ;
  wire \anti_jitter/Result<10>1 ;
  wire \anti_jitter/Result<9>1 ;
  wire \anti_jitter/Result<8>1 ;
  wire \anti_jitter/Result<7>1 ;
  wire \anti_jitter/Result<6>1 ;
  wire \anti_jitter/Result<5>1 ;
  wire \anti_jitter/Result<4>1 ;
  wire \anti_jitter/Result<3>1 ;
  wire \anti_jitter/Result<2>1 ;
  wire \anti_jitter/Result<1>1 ;
  wire \anti_jitter/Result<0>1 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o1_408 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o2_409 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o3_410 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o4_411 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o5_412 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o6_413 ;
  wire \clk_div/Mcount_clkdiv_cy<1>_rt_449 ;
  wire \clk_div/Mcount_clkdiv_cy<2>_rt_450 ;
  wire \clk_div/Mcount_clkdiv_cy<3>_rt_451 ;
  wire \clk_div/Mcount_clkdiv_cy<4>_rt_452 ;
  wire \clk_div/Mcount_clkdiv_cy<5>_rt_453 ;
  wire \clk_div/Mcount_clkdiv_cy<6>_rt_454 ;
  wire \clk_div/Mcount_clkdiv_cy<7>_rt_455 ;
  wire \clk_div/Mcount_clkdiv_cy<8>_rt_456 ;
  wire \clk_div/Mcount_clkdiv_cy<9>_rt_457 ;
  wire \clk_div/Mcount_clkdiv_cy<10>_rt_458 ;
  wire \clk_div/Mcount_clkdiv_cy<11>_rt_459 ;
  wire \clk_div/Mcount_clkdiv_cy<12>_rt_460 ;
  wire \clk_div/Mcount_clkdiv_cy<13>_rt_461 ;
  wire \clk_div/Mcount_clkdiv_cy<14>_rt_462 ;
  wire \clk_div/Mcount_clkdiv_cy<15>_rt_463 ;
  wire \clk_div/Mcount_clkdiv_cy<16>_rt_464 ;
  wire \clk_div/Mcount_clkdiv_cy<17>_rt_465 ;
  wire \clk_div/Mcount_clkdiv_cy<18>_rt_466 ;
  wire \openmips/pc_reg/Maccum_pc_cy<3>_rt_467 ;
  wire \openmips/pc_reg/Maccum_pc_cy<4>_rt_468 ;
  wire \openmips/pc_reg/Maccum_pc_cy<5>_rt_469 ;
  wire \openmips/pc_reg/Maccum_pc_cy<6>_rt_470 ;
  wire \openmips/pc_reg/Maccum_pc_cy<7>_rt_471 ;
  wire \openmips/pc_reg/Maccum_pc_cy<8>_rt_472 ;
  wire \openmips/pc_reg/Maccum_pc_cy<9>_rt_473 ;
  wire \openmips/pc_reg/Maccum_pc_cy<10>_rt_474 ;
  wire \openmips/pc_reg/Maccum_pc_cy<11>_rt_475 ;
  wire \openmips/pc_reg/Maccum_pc_cy<12>_rt_476 ;
  wire \openmips/pc_reg/Maccum_pc_cy<13>_rt_477 ;
  wire \openmips/pc_reg/Maccum_pc_cy<14>_rt_478 ;
  wire \openmips/pc_reg/Maccum_pc_cy<15>_rt_479 ;
  wire \openmips/pc_reg/Maccum_pc_cy<16>_rt_480 ;
  wire \openmips/pc_reg/Maccum_pc_cy<17>_rt_481 ;
  wire \openmips/pc_reg/Maccum_pc_cy<18>_rt_482 ;
  wire \openmips/pc_reg/Maccum_pc_cy<19>_rt_483 ;
  wire \openmips/pc_reg/Maccum_pc_cy<20>_rt_484 ;
  wire \openmips/pc_reg/Maccum_pc_cy<21>_rt_485 ;
  wire \openmips/pc_reg/Maccum_pc_cy<22>_rt_486 ;
  wire \openmips/pc_reg/Maccum_pc_cy<23>_rt_487 ;
  wire \openmips/pc_reg/Maccum_pc_cy<24>_rt_488 ;
  wire \openmips/pc_reg/Maccum_pc_cy<25>_rt_489 ;
  wire \openmips/pc_reg/Maccum_pc_cy<26>_rt_490 ;
  wire \openmips/pc_reg/Maccum_pc_cy<27>_rt_491 ;
  wire \openmips/pc_reg/Maccum_pc_cy<28>_rt_492 ;
  wire \openmips/pc_reg/Maccum_pc_cy<29>_rt_493 ;
  wire \openmips/pc_reg/Maccum_pc_cy<30>_rt_494 ;
  wire \anti_jitter/Mcount_rst_counter_cy<26>_rt_495 ;
  wire \anti_jitter/Mcount_rst_counter_cy<25>_rt_496 ;
  wire \anti_jitter/Mcount_rst_counter_cy<24>_rt_497 ;
  wire \anti_jitter/Mcount_rst_counter_cy<23>_rt_498 ;
  wire \anti_jitter/Mcount_rst_counter_cy<22>_rt_499 ;
  wire \anti_jitter/Mcount_rst_counter_cy<21>_rt_500 ;
  wire \anti_jitter/Mcount_rst_counter_cy<20>_rt_501 ;
  wire \anti_jitter/Mcount_rst_counter_cy<19>_rt_502 ;
  wire \anti_jitter/Mcount_rst_counter_cy<18>_rt_503 ;
  wire \anti_jitter/Mcount_rst_counter_cy<17>_rt_504 ;
  wire \anti_jitter/Mcount_rst_counter_cy<16>_rt_505 ;
  wire \anti_jitter/Mcount_rst_counter_cy<15>_rt_506 ;
  wire \anti_jitter/Mcount_rst_counter_cy<14>_rt_507 ;
  wire \anti_jitter/Mcount_rst_counter_cy<13>_rt_508 ;
  wire \anti_jitter/Mcount_rst_counter_cy<12>_rt_509 ;
  wire \anti_jitter/Mcount_rst_counter_cy<11>_rt_510 ;
  wire \anti_jitter/Mcount_rst_counter_cy<10>_rt_511 ;
  wire \anti_jitter/Mcount_rst_counter_cy<9>_rt_512 ;
  wire \anti_jitter/Mcount_rst_counter_cy<8>_rt_513 ;
  wire \anti_jitter/Mcount_rst_counter_cy<7>_rt_514 ;
  wire \anti_jitter/Mcount_rst_counter_cy<6>_rt_515 ;
  wire \anti_jitter/Mcount_rst_counter_cy<5>_rt_516 ;
  wire \anti_jitter/Mcount_rst_counter_cy<4>_rt_517 ;
  wire \anti_jitter/Mcount_rst_counter_cy<3>_rt_518 ;
  wire \anti_jitter/Mcount_rst_counter_cy<2>_rt_519 ;
  wire \anti_jitter/Mcount_rst_counter_cy<1>_rt_520 ;
  wire \anti_jitter/Mcount_counter_cy<15>_rt_521 ;
  wire \anti_jitter/Mcount_counter_cy<14>_rt_522 ;
  wire \anti_jitter/Mcount_counter_cy<13>_rt_523 ;
  wire \anti_jitter/Mcount_counter_cy<12>_rt_524 ;
  wire \anti_jitter/Mcount_counter_cy<11>_rt_525 ;
  wire \anti_jitter/Mcount_counter_cy<10>_rt_526 ;
  wire \anti_jitter/Mcount_counter_cy<9>_rt_527 ;
  wire \anti_jitter/Mcount_counter_cy<8>_rt_528 ;
  wire \anti_jitter/Mcount_counter_cy<7>_rt_529 ;
  wire \anti_jitter/Mcount_counter_cy<6>_rt_530 ;
  wire \anti_jitter/Mcount_counter_cy<5>_rt_531 ;
  wire \anti_jitter/Mcount_counter_cy<4>_rt_532 ;
  wire \anti_jitter/Mcount_counter_cy<3>_rt_533 ;
  wire \anti_jitter/Mcount_counter_cy<2>_rt_534 ;
  wire \anti_jitter/Mcount_counter_cy<1>_rt_535 ;
  wire \clk_div/Mcount_clkdiv_xor<19>_rt_536 ;
  wire \openmips/pc_reg/Maccum_pc_xor<31>_rt_537 ;
  wire \anti_jitter/Mcount_rst_counter_xor<27>_rt_538 ;
  wire \anti_jitter/Mcount_counter_xor<16>_rt_539 ;
  wire \openmips/pc_reg/ce_rstpot ;
  wire \anti_jitter/_n0072_inv1_cepot_541 ;
  wire \anti_jitter/sw_ok_1_dpot_542 ;
  wire \anti_jitter/sw_ok_6_dpot_543 ;
  wire \anti_jitter/sw_ok_7_dpot_544 ;
  wire \anti_jitter/rst_counter_0_dpot_545 ;
  wire \anti_jitter/rst_counter_1_dpot_546 ;
  wire \anti_jitter/rst_counter_2_dpot_547 ;
  wire \anti_jitter/rst_counter_3_dpot_548 ;
  wire \anti_jitter/rst_counter_4_dpot_549 ;
  wire \anti_jitter/rst_counter_5_dpot_550 ;
  wire \anti_jitter/rst_counter_6_dpot_551 ;
  wire \anti_jitter/rst_counter_7_dpot_552 ;
  wire \anti_jitter/rst_counter_8_dpot_553 ;
  wire \anti_jitter/rst_counter_9_dpot_554 ;
  wire \anti_jitter/rst_counter_10_dpot_555 ;
  wire \anti_jitter/rst_counter_11_dpot_556 ;
  wire \anti_jitter/rst_counter_12_dpot_557 ;
  wire \anti_jitter/rst_counter_13_dpot_558 ;
  wire \anti_jitter/rst_counter_14_dpot_559 ;
  wire \anti_jitter/rst_counter_15_dpot_560 ;
  wire \anti_jitter/rst_counter_16_dpot_561 ;
  wire \anti_jitter/rst_counter_17_dpot_562 ;
  wire \anti_jitter/rst_counter_18_dpot_563 ;
  wire \anti_jitter/rst_counter_19_dpot_564 ;
  wire \anti_jitter/rst_counter_20_dpot_565 ;
  wire \anti_jitter/rst_counter_21_dpot_566 ;
  wire \anti_jitter/rst_counter_22_dpot_567 ;
  wire \anti_jitter/rst_counter_23_dpot_568 ;
  wire \anti_jitter/rst_counter_24_dpot_569 ;
  wire \anti_jitter/rst_counter_25_dpot_570 ;
  wire \anti_jitter/rst_counter_26_dpot_571 ;
  wire \anti_jitter/rst_counter_27_dpot_572 ;
  wire \anti_jitter/rst_dpot_573 ;
  wire \anti_jitter/counter_9_rstpot_574 ;
  wire \anti_jitter/counter_8_rstpot_575 ;
  wire \anti_jitter/counter_7_rstpot_576 ;
  wire \anti_jitter/counter_6_rstpot_577 ;
  wire \anti_jitter/counter_5_rstpot_578 ;
  wire \anti_jitter/counter_4_rstpot_579 ;
  wire \anti_jitter/counter_3_rstpot_580 ;
  wire \anti_jitter/counter_2_rstpot_581 ;
  wire \anti_jitter/counter_1_rstpot_582 ;
  wire \anti_jitter/counter_0_rstpot_583 ;
  wire \anti_jitter/counter_10_rstpot_584 ;
  wire \anti_jitter/counter_11_rstpot_585 ;
  wire \anti_jitter/counter_12_rstpot_586 ;
  wire \anti_jitter/counter_13_rstpot_587 ;
  wire \anti_jitter/counter_14_rstpot_588 ;
  wire \anti_jitter/counter_15_rstpot_589 ;
  wire \anti_jitter/counter_16_rstpot_590 ;
  wire \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ;
  wire [31 : 2] \openmips/pc_reg/pc ;
  wire [19 : 0] \clk_div/clkdiv ;
  wire [31 : 0] inst;
  wire [3 : 0] digit;
  wire [31 : 2] Result;
  wire [0 : 0] \clk_div/Mcount_clkdiv_lut ;
  wire [18 : 0] \clk_div/Mcount_clkdiv_cy ;
  wire [2 : 2] \openmips/pc_reg/Maccum_pc_lut ;
  wire [30 : 2] \openmips/pc_reg/Maccum_pc_cy ;
  wire [26 : 0] \anti_jitter/Mcount_rst_counter_cy ;
  wire [0 : 0] \anti_jitter/Mcount_rst_counter_lut ;
  wire [15 : 0] \anti_jitter/Mcount_counter_cy ;
  wire [0 : 0] \anti_jitter/Mcount_counter_lut ;
  wire [27 : 0] \anti_jitter/Result ;
  wire [27 : 0] \anti_jitter/rst_counter ;
  wire [16 : 0] \anti_jitter/counter ;
  wire [7 : 0] \anti_jitter/sw_temp ;
  wire [4 : 0] \anti_jitter/btn_temp ;
  VCC   XST_VCC (
    .P(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> )
  );
  GND   XST_GND (
    .G(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 )
  );
  FDR   \openmips/pc_reg/pc_2  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[2]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [2])
  );
  FDR   \openmips/pc_reg/pc_3  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[3]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [3])
  );
  FDR   \openmips/pc_reg/pc_4  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[4]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [4])
  );
  FDR   \openmips/pc_reg/pc_5  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[5]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [5])
  );
  FDR   \openmips/pc_reg/pc_6  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[6]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [6])
  );
  FDR   \openmips/pc_reg/pc_7  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[7]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [7])
  );
  FDR   \openmips/pc_reg/pc_8  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[8]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [8])
  );
  FDR   \openmips/pc_reg/pc_9  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[9]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [9])
  );
  FDR   \openmips/pc_reg/pc_10  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[10]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [10])
  );
  FDR   \openmips/pc_reg/pc_11  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[11]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [11])
  );
  FDR   \openmips/pc_reg/pc_12  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[12]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [12])
  );
  FDR   \openmips/pc_reg/pc_13  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[13]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [13])
  );
  FDR   \openmips/pc_reg/pc_14  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[14]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [14])
  );
  FDR   \openmips/pc_reg/pc_15  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[15]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [15])
  );
  FDR   \openmips/pc_reg/pc_16  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[16]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [16])
  );
  FDR   \openmips/pc_reg/pc_17  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[17]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [17])
  );
  FDR   \openmips/pc_reg/pc_18  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[18]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [18])
  );
  FDR   \openmips/pc_reg/pc_19  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[19]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [19])
  );
  FDR   \openmips/pc_reg/pc_20  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[20]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [20])
  );
  FDR   \openmips/pc_reg/pc_21  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[21]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [21])
  );
  FDR   \openmips/pc_reg/pc_22  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[22]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [22])
  );
  FDR   \openmips/pc_reg/pc_23  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[23]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [23])
  );
  FDR   \openmips/pc_reg/pc_24  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[24]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [24])
  );
  FDR   \openmips/pc_reg/pc_25  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[25]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [25])
  );
  FDR   \openmips/pc_reg/pc_26  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[26]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [26])
  );
  FDR   \openmips/pc_reg/pc_27  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[27]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [27])
  );
  FDR   \openmips/pc_reg/pc_28  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[28]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [28])
  );
  FDR   \openmips/pc_reg/pc_29  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[29]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [29])
  );
  FDR   \openmips/pc_reg/pc_30  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[30]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [30])
  );
  FDR   \openmips/pc_reg/pc_31  (
    .C(clk_100mhz_BUFGP_13),
    .D(Result[31]),
    .R(\openmips/rom_ce_o_inv ),
    .Q(\openmips/pc_reg/pc [31])
  );
  FDC   \clk_div/clkdiv_0  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<0>1 ),
    .Q(\clk_div/clkdiv [0])
  );
  FDC   \clk_div/clkdiv_1  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<1>1 ),
    .Q(\clk_div/clkdiv [1])
  );
  FDC   \clk_div/clkdiv_2  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<2>1 ),
    .Q(\clk_div/clkdiv [2])
  );
  FDC   \clk_div/clkdiv_3  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<3>1 ),
    .Q(\clk_div/clkdiv [3])
  );
  FDC   \clk_div/clkdiv_4  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<4>1 ),
    .Q(\clk_div/clkdiv [4])
  );
  FDC   \clk_div/clkdiv_5  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<5>1 ),
    .Q(\clk_div/clkdiv [5])
  );
  FDC   \clk_div/clkdiv_6  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<6>1 ),
    .Q(\clk_div/clkdiv [6])
  );
  FDC   \clk_div/clkdiv_7  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<7>1 ),
    .Q(\clk_div/clkdiv [7])
  );
  FDC   \clk_div/clkdiv_8  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<8>1 ),
    .Q(\clk_div/clkdiv [8])
  );
  FDC   \clk_div/clkdiv_9  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<9>1 ),
    .Q(\clk_div/clkdiv [9])
  );
  FDC   \clk_div/clkdiv_10  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<10>1 ),
    .Q(\clk_div/clkdiv [10])
  );
  FDC   \clk_div/clkdiv_11  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<11>1 ),
    .Q(\clk_div/clkdiv [11])
  );
  FDC   \clk_div/clkdiv_12  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<12>1 ),
    .Q(\clk_div/clkdiv [12])
  );
  FDC   \clk_div/clkdiv_13  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<13>1 ),
    .Q(\clk_div/clkdiv [13])
  );
  FDC   \clk_div/clkdiv_14  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<14>1 ),
    .Q(\clk_div/clkdiv [14])
  );
  FDC   \clk_div/clkdiv_15  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<15>1 ),
    .Q(\clk_div/clkdiv [15])
  );
  FDC   \clk_div/clkdiv_16  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<16>1 ),
    .Q(\clk_div/clkdiv [16])
  );
  FDC   \clk_div/clkdiv_17  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<17>1 ),
    .Q(\clk_div/clkdiv [17])
  );
  FDC   \clk_div/clkdiv_18  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<18>1 ),
    .Q(\clk_div/clkdiv [18])
  );
  FDC   \clk_div/clkdiv_19  (
    .C(clk_100mhz_BUFGP_13),
    .CLR(\anti_jitter/rst_18 ),
    .D(\Result<19>1 ),
    .Q(\clk_div/clkdiv [19])
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .S(\clk_div/Mcount_clkdiv_lut [0]),
    .O(\clk_div/Mcount_clkdiv_cy [0])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .LI(\clk_div/Mcount_clkdiv_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<1>  (
    .CI(\clk_div/Mcount_clkdiv_cy [0]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<1>_rt_449 ),
    .O(\clk_div/Mcount_clkdiv_cy [1])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<1>  (
    .CI(\clk_div/Mcount_clkdiv_cy [0]),
    .LI(\clk_div/Mcount_clkdiv_cy<1>_rt_449 ),
    .O(\Result<1>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<2>  (
    .CI(\clk_div/Mcount_clkdiv_cy [1]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<2>_rt_450 ),
    .O(\clk_div/Mcount_clkdiv_cy [2])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<2>  (
    .CI(\clk_div/Mcount_clkdiv_cy [1]),
    .LI(\clk_div/Mcount_clkdiv_cy<2>_rt_450 ),
    .O(\Result<2>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<3>  (
    .CI(\clk_div/Mcount_clkdiv_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<3>_rt_451 ),
    .O(\clk_div/Mcount_clkdiv_cy [3])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<3>  (
    .CI(\clk_div/Mcount_clkdiv_cy [2]),
    .LI(\clk_div/Mcount_clkdiv_cy<3>_rt_451 ),
    .O(\Result<3>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<4>  (
    .CI(\clk_div/Mcount_clkdiv_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<4>_rt_452 ),
    .O(\clk_div/Mcount_clkdiv_cy [4])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<4>  (
    .CI(\clk_div/Mcount_clkdiv_cy [3]),
    .LI(\clk_div/Mcount_clkdiv_cy<4>_rt_452 ),
    .O(\Result<4>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<5>  (
    .CI(\clk_div/Mcount_clkdiv_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<5>_rt_453 ),
    .O(\clk_div/Mcount_clkdiv_cy [5])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<5>  (
    .CI(\clk_div/Mcount_clkdiv_cy [4]),
    .LI(\clk_div/Mcount_clkdiv_cy<5>_rt_453 ),
    .O(\Result<5>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<6>  (
    .CI(\clk_div/Mcount_clkdiv_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<6>_rt_454 ),
    .O(\clk_div/Mcount_clkdiv_cy [6])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<6>  (
    .CI(\clk_div/Mcount_clkdiv_cy [5]),
    .LI(\clk_div/Mcount_clkdiv_cy<6>_rt_454 ),
    .O(\Result<6>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<7>  (
    .CI(\clk_div/Mcount_clkdiv_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<7>_rt_455 ),
    .O(\clk_div/Mcount_clkdiv_cy [7])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<7>  (
    .CI(\clk_div/Mcount_clkdiv_cy [6]),
    .LI(\clk_div/Mcount_clkdiv_cy<7>_rt_455 ),
    .O(\Result<7>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<8>  (
    .CI(\clk_div/Mcount_clkdiv_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<8>_rt_456 ),
    .O(\clk_div/Mcount_clkdiv_cy [8])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<8>  (
    .CI(\clk_div/Mcount_clkdiv_cy [7]),
    .LI(\clk_div/Mcount_clkdiv_cy<8>_rt_456 ),
    .O(\Result<8>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<9>  (
    .CI(\clk_div/Mcount_clkdiv_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<9>_rt_457 ),
    .O(\clk_div/Mcount_clkdiv_cy [9])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<9>  (
    .CI(\clk_div/Mcount_clkdiv_cy [8]),
    .LI(\clk_div/Mcount_clkdiv_cy<9>_rt_457 ),
    .O(\Result<9>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<10>  (
    .CI(\clk_div/Mcount_clkdiv_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<10>_rt_458 ),
    .O(\clk_div/Mcount_clkdiv_cy [10])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<10>  (
    .CI(\clk_div/Mcount_clkdiv_cy [9]),
    .LI(\clk_div/Mcount_clkdiv_cy<10>_rt_458 ),
    .O(\Result<10>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<11>  (
    .CI(\clk_div/Mcount_clkdiv_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<11>_rt_459 ),
    .O(\clk_div/Mcount_clkdiv_cy [11])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<11>  (
    .CI(\clk_div/Mcount_clkdiv_cy [10]),
    .LI(\clk_div/Mcount_clkdiv_cy<11>_rt_459 ),
    .O(\Result<11>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<12>  (
    .CI(\clk_div/Mcount_clkdiv_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<12>_rt_460 ),
    .O(\clk_div/Mcount_clkdiv_cy [12])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<12>  (
    .CI(\clk_div/Mcount_clkdiv_cy [11]),
    .LI(\clk_div/Mcount_clkdiv_cy<12>_rt_460 ),
    .O(\Result<12>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<13>  (
    .CI(\clk_div/Mcount_clkdiv_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<13>_rt_461 ),
    .O(\clk_div/Mcount_clkdiv_cy [13])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<13>  (
    .CI(\clk_div/Mcount_clkdiv_cy [12]),
    .LI(\clk_div/Mcount_clkdiv_cy<13>_rt_461 ),
    .O(\Result<13>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<14>  (
    .CI(\clk_div/Mcount_clkdiv_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<14>_rt_462 ),
    .O(\clk_div/Mcount_clkdiv_cy [14])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<14>  (
    .CI(\clk_div/Mcount_clkdiv_cy [13]),
    .LI(\clk_div/Mcount_clkdiv_cy<14>_rt_462 ),
    .O(\Result<14>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<15>  (
    .CI(\clk_div/Mcount_clkdiv_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<15>_rt_463 ),
    .O(\clk_div/Mcount_clkdiv_cy [15])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<15>  (
    .CI(\clk_div/Mcount_clkdiv_cy [14]),
    .LI(\clk_div/Mcount_clkdiv_cy<15>_rt_463 ),
    .O(\Result<15>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<16>  (
    .CI(\clk_div/Mcount_clkdiv_cy [15]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<16>_rt_464 ),
    .O(\clk_div/Mcount_clkdiv_cy [16])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<16>  (
    .CI(\clk_div/Mcount_clkdiv_cy [15]),
    .LI(\clk_div/Mcount_clkdiv_cy<16>_rt_464 ),
    .O(\Result<16>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<17>  (
    .CI(\clk_div/Mcount_clkdiv_cy [16]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<17>_rt_465 ),
    .O(\clk_div/Mcount_clkdiv_cy [17])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<17>  (
    .CI(\clk_div/Mcount_clkdiv_cy [16]),
    .LI(\clk_div/Mcount_clkdiv_cy<17>_rt_465 ),
    .O(\Result<17>1 )
  );
  MUXCY   \clk_div/Mcount_clkdiv_cy<18>  (
    .CI(\clk_div/Mcount_clkdiv_cy [17]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\clk_div/Mcount_clkdiv_cy<18>_rt_466 ),
    .O(\clk_div/Mcount_clkdiv_cy [18])
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<18>  (
    .CI(\clk_div/Mcount_clkdiv_cy [17]),
    .LI(\clk_div/Mcount_clkdiv_cy<18>_rt_466 ),
    .O(\Result<18>1 )
  );
  XORCY   \clk_div/Mcount_clkdiv_xor<19>  (
    .CI(\clk_div/Mcount_clkdiv_cy [18]),
    .LI(\clk_div/Mcount_clkdiv_xor<19>_rt_536 ),
    .O(\Result<19>1 )
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .S(\openmips/pc_reg/Maccum_pc_lut [2]),
    .O(\openmips/pc_reg/Maccum_pc_cy [2])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .LI(\openmips/pc_reg/Maccum_pc_lut [2]),
    .O(Result[2])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<3>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<3>_rt_467 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [3])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<3>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [2]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<3>_rt_467 ),
    .O(Result[3])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<4>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<4>_rt_468 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [4])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<4>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [3]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<4>_rt_468 ),
    .O(Result[4])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<5>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<5>_rt_469 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [5])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<5>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [4]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<5>_rt_469 ),
    .O(Result[5])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<6>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<6>_rt_470 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [6])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<6>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [5]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<6>_rt_470 ),
    .O(Result[6])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<7>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<7>_rt_471 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [7])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<7>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [6]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<7>_rt_471 ),
    .O(Result[7])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<8>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<8>_rt_472 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [8])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<8>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [7]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<8>_rt_472 ),
    .O(Result[8])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<9>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<9>_rt_473 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [9])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<9>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [8]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<9>_rt_473 ),
    .O(Result[9])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<10>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<10>_rt_474 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [10])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<10>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [9]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<10>_rt_474 ),
    .O(Result[10])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<11>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<11>_rt_475 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [11])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<11>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [10]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<11>_rt_475 ),
    .O(Result[11])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<12>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<12>_rt_476 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [12])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<12>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [11]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<12>_rt_476 ),
    .O(Result[12])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<13>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<13>_rt_477 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [13])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<13>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [12]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<13>_rt_477 ),
    .O(Result[13])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<14>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<14>_rt_478 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [14])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<14>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [13]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<14>_rt_478 ),
    .O(Result[14])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<15>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<15>_rt_479 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [15])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<15>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [14]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<15>_rt_479 ),
    .O(Result[15])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<16>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [15]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<16>_rt_480 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [16])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<16>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [15]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<16>_rt_480 ),
    .O(Result[16])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<17>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [16]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<17>_rt_481 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [17])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<17>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [16]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<17>_rt_481 ),
    .O(Result[17])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<18>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [17]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<18>_rt_482 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [18])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<18>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [17]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<18>_rt_482 ),
    .O(Result[18])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<19>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [18]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<19>_rt_483 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [19])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<19>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [18]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<19>_rt_483 ),
    .O(Result[19])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<20>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [19]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<20>_rt_484 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [20])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<20>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [19]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<20>_rt_484 ),
    .O(Result[20])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<21>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [20]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<21>_rt_485 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [21])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<21>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [20]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<21>_rt_485 ),
    .O(Result[21])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<22>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [21]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<22>_rt_486 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [22])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<22>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [21]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<22>_rt_486 ),
    .O(Result[22])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<23>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [22]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<23>_rt_487 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [23])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<23>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [22]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<23>_rt_487 ),
    .O(Result[23])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<24>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [23]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<24>_rt_488 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [24])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<24>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [23]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<24>_rt_488 ),
    .O(Result[24])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<25>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [24]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<25>_rt_489 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [25])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<25>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [24]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<25>_rt_489 ),
    .O(Result[25])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<26>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [25]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<26>_rt_490 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [26])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<26>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [25]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<26>_rt_490 ),
    .O(Result[26])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<27>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [26]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<27>_rt_491 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [27])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<27>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [26]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<27>_rt_491 ),
    .O(Result[27])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<28>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [27]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<28>_rt_492 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [28])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<28>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [27]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<28>_rt_492 ),
    .O(Result[28])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<29>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [28]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<29>_rt_493 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [29])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<29>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [28]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<29>_rt_493 ),
    .O(Result[29])
  );
  MUXCY   \openmips/pc_reg/Maccum_pc_cy<30>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [29]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\openmips/pc_reg/Maccum_pc_cy<30>_rt_494 ),
    .O(\openmips/pc_reg/Maccum_pc_cy [30])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<30>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [29]),
    .LI(\openmips/pc_reg/Maccum_pc_cy<30>_rt_494 ),
    .O(Result[30])
  );
  XORCY   \openmips/pc_reg/Maccum_pc_xor<31>  (
    .CI(\openmips/pc_reg/Maccum_pc_cy [30]),
    .LI(\openmips/pc_reg/Maccum_pc_xor<31>_rt_537 ),
    .O(Result[31])
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_2  (
    .I0(\mux8t1_4/Mmux_o_43_226 ),
    .I1(\mux8t1_4/Mmux_o_33_227 ),
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
    .O(\mux8t1_4/Mmux_o_43_226 )
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
    .O(\mux8t1_4/Mmux_o_33_227 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_1  (
    .I0(\mux8t1_4/Mmux_o_42_228 ),
    .I1(\mux8t1_4/Mmux_o_32_229 ),
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
    .O(\mux8t1_4/Mmux_o_42_228 )
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
    .O(\mux8t1_4/Mmux_o_32_229 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7_0  (
    .I0(\mux8t1_4/Mmux_o_41_230 ),
    .I1(\mux8t1_4/Mmux_o_31_231 ),
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
    .O(\mux8t1_4/Mmux_o_41_230 )
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
    .O(\mux8t1_4/Mmux_o_31_231 )
  );
  MUXF7   \mux8t1_4/Mmux_o_2_f7  (
    .I0(\mux8t1_4/Mmux_o_4_232 ),
    .I1(\mux8t1_4/Mmux_o_3_233 ),
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
    .O(\mux8t1_4/Mmux_o_4_232 )
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
    .O(\mux8t1_4/Mmux_o_3_233 )
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<27>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [26]),
    .LI(\anti_jitter/Mcount_rst_counter_xor<27>_rt_538 ),
    .O(\anti_jitter/Result [27])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<26>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [25]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<26>_rt_495 ),
    .O(\anti_jitter/Result [26])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<26>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [25]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<26>_rt_495 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [26])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<25>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [24]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<25>_rt_496 ),
    .O(\anti_jitter/Result [25])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<25>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [24]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<25>_rt_496 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [25])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<24>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [23]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<24>_rt_497 ),
    .O(\anti_jitter/Result [24])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<24>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [23]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<24>_rt_497 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [24])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<23>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [22]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<23>_rt_498 ),
    .O(\anti_jitter/Result [23])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<23>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [22]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<23>_rt_498 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [23])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<22>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [21]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<22>_rt_499 ),
    .O(\anti_jitter/Result [22])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<22>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [21]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<22>_rt_499 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [22])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<21>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [20]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<21>_rt_500 ),
    .O(\anti_jitter/Result [21])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<21>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [20]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<21>_rt_500 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [21])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<20>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [19]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<20>_rt_501 ),
    .O(\anti_jitter/Result [20])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<20>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [19]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<20>_rt_501 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [20])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<19>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [18]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<19>_rt_502 ),
    .O(\anti_jitter/Result [19])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<19>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [18]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<19>_rt_502 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [19])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<18>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [17]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<18>_rt_503 ),
    .O(\anti_jitter/Result [18])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<18>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [17]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<18>_rt_503 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [18])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<17>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [16]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<17>_rt_504 ),
    .O(\anti_jitter/Result [17])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<17>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [16]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<17>_rt_504 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [17])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<16>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [15]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<16>_rt_505 ),
    .O(\anti_jitter/Result [16])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<16>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [15]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<16>_rt_505 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [16])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<15>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [14]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<15>_rt_506 ),
    .O(\anti_jitter/Result [15])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<15>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<15>_rt_506 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [15])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<14>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [13]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<14>_rt_507 ),
    .O(\anti_jitter/Result [14])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<14>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<14>_rt_507 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [14])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<13>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [12]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<13>_rt_508 ),
    .O(\anti_jitter/Result [13])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<13>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<13>_rt_508 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [13])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<12>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [11]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<12>_rt_509 ),
    .O(\anti_jitter/Result [12])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<12>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<12>_rt_509 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [12])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<11>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [10]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<11>_rt_510 ),
    .O(\anti_jitter/Result [11])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<11>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<11>_rt_510 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [11])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<10>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [9]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<10>_rt_511 ),
    .O(\anti_jitter/Result [10])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<10>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<10>_rt_511 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [10])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<9>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [8]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<9>_rt_512 ),
    .O(\anti_jitter/Result [9])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<9>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<9>_rt_512 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [9])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<8>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [7]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<8>_rt_513 ),
    .O(\anti_jitter/Result [8])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<8>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<8>_rt_513 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [8])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<7>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [6]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<7>_rt_514 ),
    .O(\anti_jitter/Result [7])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<7>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<7>_rt_514 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [7])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<6>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [5]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<6>_rt_515 ),
    .O(\anti_jitter/Result [6])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<6>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<6>_rt_515 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [6])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<5>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [4]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<5>_rt_516 ),
    .O(\anti_jitter/Result [5])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<5>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<5>_rt_516 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [5])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<4>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [3]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<4>_rt_517 ),
    .O(\anti_jitter/Result [4])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<4>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<4>_rt_517 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [4])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<3>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [2]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<3>_rt_518 ),
    .O(\anti_jitter/Result [3])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<3>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<3>_rt_518 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [3])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<2>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [1]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<2>_rt_519 ),
    .O(\anti_jitter/Result [2])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<2>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [1]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<2>_rt_519 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [2])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<1>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [0]),
    .LI(\anti_jitter/Mcount_rst_counter_cy<1>_rt_520 ),
    .O(\anti_jitter/Result [1])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<1>  (
    .CI(\anti_jitter/Mcount_rst_counter_cy [0]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_rst_counter_cy<1>_rt_520 ),
    .O(\anti_jitter/Mcount_rst_counter_cy [1])
  );
  XORCY   \anti_jitter/Mcount_rst_counter_xor<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .LI(\anti_jitter/Mcount_rst_counter_lut [0]),
    .O(\anti_jitter/Result [0])
  );
  MUXCY   \anti_jitter/Mcount_rst_counter_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .S(\anti_jitter/Mcount_rst_counter_lut [0]),
    .O(\anti_jitter/Mcount_rst_counter_cy [0])
  );
  MUXCY   \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>  (
    .CI(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<3>_263 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 )
  );
  MUXCY   \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<3>  (
    .CI(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<2>_266 ),
    .DI(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi2_265 ),
    .S(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<3>_264 ),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<3>_263 )
  );
  LUT5 #(
    .INIT ( 32'h00002000 ))
  \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<3>  (
    .I0(\anti_jitter/rst_counter [25]),
    .I1(\anti_jitter/rst_counter [26]),
    .I2(\anti_jitter/rst_counter [24]),
    .I3(\anti_jitter/rst_counter [27]),
    .I4(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<3>_264 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi2  (
    .I0(\anti_jitter/rst_counter [27]),
    .I1(\anti_jitter/rst_counter [26]),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi2_265 )
  );
  MUXCY   \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<2>  (
    .CI(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<1>_269 ),
    .DI(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi1_268 ),
    .S(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<2>_267 ),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<2>_266 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<2>  (
    .I0(\anti_jitter/rst_counter [20]),
    .I1(\anti_jitter/rst_counter [19]),
    .I2(\anti_jitter/rst_counter [21]),
    .I3(\anti_jitter/rst_counter [22]),
    .I4(\anti_jitter/rst_counter [23]),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<2>_267 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi1  (
    .I0(\anti_jitter/rst_counter [23]),
    .I1(\anti_jitter/rst_counter [22]),
    .I2(\anti_jitter/rst_counter [21]),
    .I3(\anti_jitter/rst_counter [20]),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi1_268 )
  );
  MUXCY   \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<1>  (
    .CI(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<0>_271 ),
    .DI(\anti_jitter/rst_counter [18]),
    .S(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<1>_270 ),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<1>_269 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<1>  (
    .I0(\anti_jitter/rst_counter [18]),
    .I1(\anti_jitter/rst_counter [15]),
    .I2(\anti_jitter/rst_counter [16]),
    .I3(\anti_jitter/rst_counter [17]),
    .I4(\anti_jitter/rst_counter [14]),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<1>_270 )
  );
  MUXCY   \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .DI(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi_273 ),
    .S(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<0>_272 ),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<0>_271 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<0>  (
    .I0(\anti_jitter/rst_counter [10]),
    .I1(\anti_jitter/rst_counter [11]),
    .I2(\anti_jitter/rst_counter [12]),
    .I3(\anti_jitter/rst_counter [9]),
    .I4(\anti_jitter/rst_counter [13]),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lut<0>_272 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi  (
    .I0(\anti_jitter/rst_counter [13]),
    .I1(\anti_jitter/rst_counter [12]),
    .I2(\anti_jitter/rst_counter [11]),
    .I3(\anti_jitter/rst_counter [10]),
    .O(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_lutdi_273 )
  );
  XORCY   \anti_jitter/Mcount_counter_xor<16>  (
    .CI(\anti_jitter/Mcount_counter_cy [15]),
    .LI(\anti_jitter/Mcount_counter_xor<16>_rt_539 ),
    .O(\anti_jitter/Result<16>1 )
  );
  XORCY   \anti_jitter/Mcount_counter_xor<15>  (
    .CI(\anti_jitter/Mcount_counter_cy [14]),
    .LI(\anti_jitter/Mcount_counter_cy<15>_rt_521 ),
    .O(\anti_jitter/Result<15>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<15>  (
    .CI(\anti_jitter/Mcount_counter_cy [14]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<15>_rt_521 ),
    .O(\anti_jitter/Mcount_counter_cy [15])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<14>  (
    .CI(\anti_jitter/Mcount_counter_cy [13]),
    .LI(\anti_jitter/Mcount_counter_cy<14>_rt_522 ),
    .O(\anti_jitter/Result<14>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<14>  (
    .CI(\anti_jitter/Mcount_counter_cy [13]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<14>_rt_522 ),
    .O(\anti_jitter/Mcount_counter_cy [14])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<13>  (
    .CI(\anti_jitter/Mcount_counter_cy [12]),
    .LI(\anti_jitter/Mcount_counter_cy<13>_rt_523 ),
    .O(\anti_jitter/Result<13>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<13>  (
    .CI(\anti_jitter/Mcount_counter_cy [12]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<13>_rt_523 ),
    .O(\anti_jitter/Mcount_counter_cy [13])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<12>  (
    .CI(\anti_jitter/Mcount_counter_cy [11]),
    .LI(\anti_jitter/Mcount_counter_cy<12>_rt_524 ),
    .O(\anti_jitter/Result<12>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<12>  (
    .CI(\anti_jitter/Mcount_counter_cy [11]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<12>_rt_524 ),
    .O(\anti_jitter/Mcount_counter_cy [12])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<11>  (
    .CI(\anti_jitter/Mcount_counter_cy [10]),
    .LI(\anti_jitter/Mcount_counter_cy<11>_rt_525 ),
    .O(\anti_jitter/Result<11>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<11>  (
    .CI(\anti_jitter/Mcount_counter_cy [10]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<11>_rt_525 ),
    .O(\anti_jitter/Mcount_counter_cy [11])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<10>  (
    .CI(\anti_jitter/Mcount_counter_cy [9]),
    .LI(\anti_jitter/Mcount_counter_cy<10>_rt_526 ),
    .O(\anti_jitter/Result<10>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<10>  (
    .CI(\anti_jitter/Mcount_counter_cy [9]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<10>_rt_526 ),
    .O(\anti_jitter/Mcount_counter_cy [10])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<9>  (
    .CI(\anti_jitter/Mcount_counter_cy [8]),
    .LI(\anti_jitter/Mcount_counter_cy<9>_rt_527 ),
    .O(\anti_jitter/Result<9>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<9>  (
    .CI(\anti_jitter/Mcount_counter_cy [8]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<9>_rt_527 ),
    .O(\anti_jitter/Mcount_counter_cy [9])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<8>  (
    .CI(\anti_jitter/Mcount_counter_cy [7]),
    .LI(\anti_jitter/Mcount_counter_cy<8>_rt_528 ),
    .O(\anti_jitter/Result<8>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<8>  (
    .CI(\anti_jitter/Mcount_counter_cy [7]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<8>_rt_528 ),
    .O(\anti_jitter/Mcount_counter_cy [8])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<7>  (
    .CI(\anti_jitter/Mcount_counter_cy [6]),
    .LI(\anti_jitter/Mcount_counter_cy<7>_rt_529 ),
    .O(\anti_jitter/Result<7>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<7>  (
    .CI(\anti_jitter/Mcount_counter_cy [6]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<7>_rt_529 ),
    .O(\anti_jitter/Mcount_counter_cy [7])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<6>  (
    .CI(\anti_jitter/Mcount_counter_cy [5]),
    .LI(\anti_jitter/Mcount_counter_cy<6>_rt_530 ),
    .O(\anti_jitter/Result<6>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<6>  (
    .CI(\anti_jitter/Mcount_counter_cy [5]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<6>_rt_530 ),
    .O(\anti_jitter/Mcount_counter_cy [6])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<5>  (
    .CI(\anti_jitter/Mcount_counter_cy [4]),
    .LI(\anti_jitter/Mcount_counter_cy<5>_rt_531 ),
    .O(\anti_jitter/Result<5>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<5>  (
    .CI(\anti_jitter/Mcount_counter_cy [4]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<5>_rt_531 ),
    .O(\anti_jitter/Mcount_counter_cy [5])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<4>  (
    .CI(\anti_jitter/Mcount_counter_cy [3]),
    .LI(\anti_jitter/Mcount_counter_cy<4>_rt_532 ),
    .O(\anti_jitter/Result<4>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<4>  (
    .CI(\anti_jitter/Mcount_counter_cy [3]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<4>_rt_532 ),
    .O(\anti_jitter/Mcount_counter_cy [4])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<3>  (
    .CI(\anti_jitter/Mcount_counter_cy [2]),
    .LI(\anti_jitter/Mcount_counter_cy<3>_rt_533 ),
    .O(\anti_jitter/Result<3>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<3>  (
    .CI(\anti_jitter/Mcount_counter_cy [2]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<3>_rt_533 ),
    .O(\anti_jitter/Mcount_counter_cy [3])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<2>  (
    .CI(\anti_jitter/Mcount_counter_cy [1]),
    .LI(\anti_jitter/Mcount_counter_cy<2>_rt_534 ),
    .O(\anti_jitter/Result<2>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<2>  (
    .CI(\anti_jitter/Mcount_counter_cy [1]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<2>_rt_534 ),
    .O(\anti_jitter/Mcount_counter_cy [2])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<1>  (
    .CI(\anti_jitter/Mcount_counter_cy [0]),
    .LI(\anti_jitter/Mcount_counter_cy<1>_rt_535 ),
    .O(\anti_jitter/Result<1>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<1>  (
    .CI(\anti_jitter/Mcount_counter_cy [0]),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcount_counter_cy<1>_rt_535 ),
    .O(\anti_jitter/Mcount_counter_cy [1])
  );
  XORCY   \anti_jitter/Mcount_counter_xor<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .LI(\anti_jitter/Mcount_counter_lut [0]),
    .O(\anti_jitter/Result<0>1 )
  );
  MUXCY   \anti_jitter/Mcount_counter_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .S(\anti_jitter/Mcount_counter_lut [0]),
    .O(\anti_jitter/Mcount_counter_cy [0])
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<4>_292 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<4>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<3>_293 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<4>_292 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<3>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<2>_295 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<3>_293 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<2>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<1>_298 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi2 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<2> ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<2>_295 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<1>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<0>_301 ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi1_300 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<1>_299 ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<1>_298 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<1>  (
    .I0(\anti_jitter/counter [11]),
    .I1(\anti_jitter/counter [12]),
    .I2(\anti_jitter/counter [13]),
    .I3(\anti_jitter/counter [10]),
    .I4(\anti_jitter/counter [14]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<1>_299 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi1  (
    .I0(\anti_jitter/counter [14]),
    .I1(\anti_jitter/counter [13]),
    .I2(\anti_jitter/counter [12]),
    .I3(\anti_jitter/counter [11]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi1_300 )
  );
  MUXCY   \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<0>  (
    .CI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .DI(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi_303 ),
    .S(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<0>_302 ),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<0>_301 )
  );
  LUT5 #(
    .INIT ( 32'h00002000 ))
  \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<0>  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/counter [6]),
    .I2(\anti_jitter/counter [7]),
    .I3(\anti_jitter/counter [5]),
    .I4(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<0>_302 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/counter [7]),
    .I2(\anti_jitter/counter [6]),
    .I3(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lutdi_303 )
  );
  FDRE   \anti_jitter/rst_counter_27  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_27_dpot_572 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [27])
  );
  FDRE   \anti_jitter/rst_counter_26  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_26_dpot_571 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [26])
  );
  FDRE   \anti_jitter/rst_counter_25  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_25_dpot_570 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [25])
  );
  FDRE   \anti_jitter/rst_counter_24  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_24_dpot_569 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [24])
  );
  FDRE   \anti_jitter/rst_counter_23  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_23_dpot_568 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [23])
  );
  FDRE   \anti_jitter/rst_counter_22  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_22_dpot_567 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [22])
  );
  FDRE   \anti_jitter/rst_counter_21  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_21_dpot_566 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [21])
  );
  FDRE   \anti_jitter/rst_counter_20  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_20_dpot_565 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [20])
  );
  FDRE   \anti_jitter/rst_counter_19  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_19_dpot_564 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [19])
  );
  FDRE   \anti_jitter/rst_counter_18  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_18_dpot_563 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [18])
  );
  FDRE   \anti_jitter/rst_counter_17  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_17_dpot_562 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [17])
  );
  FDRE   \anti_jitter/rst_counter_16  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_16_dpot_561 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [16])
  );
  FDRE   \anti_jitter/rst_counter_15  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_15_dpot_560 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [15])
  );
  FDRE   \anti_jitter/rst_counter_14  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_14_dpot_559 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [14])
  );
  FDRE   \anti_jitter/rst_counter_13  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_13_dpot_558 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [13])
  );
  FDRE   \anti_jitter/rst_counter_12  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_12_dpot_557 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [12])
  );
  FDRE   \anti_jitter/rst_counter_11  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_11_dpot_556 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [11])
  );
  FDRE   \anti_jitter/rst_counter_10  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_10_dpot_555 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [10])
  );
  FDRE   \anti_jitter/rst_counter_9  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_9_dpot_554 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [9])
  );
  FDRE   \anti_jitter/rst_counter_8  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_8_dpot_553 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [8])
  );
  FDRE   \anti_jitter/rst_counter_7  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_7_dpot_552 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [7])
  );
  FDRE   \anti_jitter/rst_counter_6  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_6_dpot_551 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [6])
  );
  FDRE   \anti_jitter/rst_counter_5  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_5_dpot_550 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [5])
  );
  FDRE   \anti_jitter/rst_counter_4  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_4_dpot_549 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [4])
  );
  FDRE   \anti_jitter/rst_counter_3  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_3_dpot_548 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [3])
  );
  FDRE   \anti_jitter/rst_counter_2  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_2_dpot_547 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [2])
  );
  FDRE   \anti_jitter/rst_counter_1  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_1_dpot_546 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [1])
  );
  FDRE   \anti_jitter/rst_counter_0  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .D(\anti_jitter/rst_counter_0_dpot_545 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o ),
    .Q(\anti_jitter/rst_counter [0])
  );
  FDE   \anti_jitter/rst  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/_n0072_inv1_cepot_541 ),
    .D(\anti_jitter/rst_dpot_573 ),
    .Q(\anti_jitter/rst_18 )
  );
  FDE   \anti_jitter/sw_ok_7  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/_n0072_inv1_cepot_541 ),
    .D(\anti_jitter/sw_ok_7_dpot_544 ),
    .Q(\anti_jitter/sw_ok[7] )
  );
  FDE   \anti_jitter/sw_ok_6  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/_n0072_inv1_cepot_541 ),
    .D(\anti_jitter/sw_ok_6_dpot_543 ),
    .Q(\anti_jitter/sw_ok[6] )
  );
  FDE   \anti_jitter/sw_ok_1  (
    .C(clk_100mhz_BUFGP_13),
    .CE(\anti_jitter/_n0072_inv1_cepot_541 ),
    .D(\anti_jitter/sw_ok_1_dpot_542 ),
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
    .O(an_0_OBUF_98)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \mux4t1_4/Mram_o111  (
    .I0(\clk_div/clkdiv [18]),
    .I1(\clk_div/clkdiv [19]),
    .O(an_1_OBUF_97)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \mux4t1_4/Mram_o21  (
    .I0(\clk_div/clkdiv [19]),
    .I1(\clk_div/clkdiv [18]),
    .O(an_2_OBUF_96)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \mux4t1_4/Mram_o31  (
    .I0(\clk_div/clkdiv [18]),
    .I1(\clk_div/clkdiv [19]),
    .O(an_3_OBUF_95)
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \decoder_7seg/Mram_segment51  (
    .I0(digit[2]),
    .I1(digit[0]),
    .I2(digit[1]),
    .I3(digit[3]),
    .O(seg_5_OBUF_100)
  );
  LUT4 #(
    .INIT ( 16'h0941 ))
  \decoder_7seg/Mram_segment11  (
    .I0(digit[1]),
    .I1(digit[2]),
    .I2(digit[3]),
    .I3(digit[0]),
    .O(seg_0_OBUF_105)
  );
  LUT4 #(
    .INIT ( 16'h02BA ))
  \decoder_7seg/Mram_segment21  (
    .I0(digit[0]),
    .I1(digit[1]),
    .I2(digit[2]),
    .I3(digit[3]),
    .O(seg_2_OBUF_103)
  );
  LUT5 #(
    .INIT ( 32'hE6C4A280 ))
  Mmux_led21 (
    .I0(\anti_jitter/sw_ok[7] ),
    .I1(\anti_jitter/sw_ok[6] ),
    .I2(\openmips/pc_reg/pc [25]),
    .I3(\openmips/pc_reg/pc [17]),
    .I4(\openmips/pc_reg/pc [9]),
    .O(led_1_OBUF_57)
  );
  LUT5 #(
    .INIT ( 32'hE6C4A280 ))
  Mmux_led11 (
    .I0(\anti_jitter/sw_ok[7] ),
    .I1(\anti_jitter/sw_ok[6] ),
    .I2(\openmips/pc_reg/pc [24]),
    .I3(\openmips/pc_reg/pc [16]),
    .I4(\openmips/pc_reg/pc [8]),
    .O(led_0_OBUF_58)
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
    .O(led_2_OBUF_56)
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
    .O(led_3_OBUF_55)
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
    .O(led_4_OBUF_54)
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
    .O(led_5_OBUF_53)
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
    .O(led_6_OBUF_52)
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
    .O(led_7_OBUF_51)
  );
  LUT4 #(
    .INIT ( 16'h4190 ))
  \seg<6>1  (
    .I0(digit[1]),
    .I1(digit[3]),
    .I2(digit[0]),
    .I3(digit[2]),
    .O(seg_6_OBUF_99)
  );
  LUT4 #(
    .INIT ( 16'hA118 ))
  \seg<3>1  (
    .I0(digit[1]),
    .I1(digit[3]),
    .I2(digit[0]),
    .I3(digit[2]),
    .O(seg_3_OBUF_102)
  );
  LUT4 #(
    .INIT ( 16'hC140 ))
  \seg<4>1  (
    .I0(digit[0]),
    .I1(digit[3]),
    .I2(digit[2]),
    .I3(digit[1]),
    .O(seg_4_OBUF_101)
  );
  LUT4 #(
    .INIT ( 16'h2382 ))
  \seg<1>1  (
    .I0(digit[0]),
    .I1(digit[3]),
    .I2(digit[2]),
    .I3(digit[1]),
    .O(seg_1_OBUF_104)
  );
  LUT6 #(
    .INIT ( 64'h7FDFF7FD3FCFF3FC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o1  (
    .I0(sw_7_IBUF_5),
    .I1(sw_0_IBUF_12),
    .I2(btn_1_IBUF_3),
    .I3(\anti_jitter/sw_temp [0]),
    .I4(\anti_jitter/btn_temp [1]),
    .I5(\anti_jitter/sw_temp [7]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o1_408 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o2  (
    .I0(sw_5_IBUF_7),
    .I1(sw_7_IBUF_5),
    .I2(sw_6_IBUF_6),
    .I3(\anti_jitter/sw_temp [6]),
    .I4(\anti_jitter/sw_temp [5]),
    .I5(\anti_jitter/sw_temp [7]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o2_409 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o3  (
    .I0(sw_3_IBUF_9),
    .I1(sw_5_IBUF_7),
    .I2(sw_4_IBUF_8),
    .I3(\anti_jitter/sw_temp [4]),
    .I4(\anti_jitter/sw_temp [3]),
    .I5(\anti_jitter/sw_temp [5]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o3_410 )
  );
  LUT6 #(
    .INIT ( 64'h3FCFF3FCBFEFFBFE ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o4  (
    .I0(btn_4_IBUF_0),
    .I1(btn_3_IBUF_1),
    .I2(btn_2_IBUF_2),
    .I3(\anti_jitter/btn_temp [3]),
    .I4(\anti_jitter/btn_temp [2]),
    .I5(\anti_jitter/btn_temp [4]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o4_411 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o5  (
    .I0(sw_1_IBUF_11),
    .I1(sw_3_IBUF_9),
    .I2(sw_2_IBUF_10),
    .I3(\anti_jitter/sw_temp [2]),
    .I4(\anti_jitter/sw_temp [1]),
    .I5(\anti_jitter/sw_temp [3]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o5_412 )
  );
  LUT6 #(
    .INIT ( 64'h5FF50FF0DFFDCFFC ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o6  (
    .I0(btn_4_IBUF_0),
    .I1(sw_1_IBUF_11),
    .I2(btn_0_IBUF_4),
    .I3(\anti_jitter/btn_temp [0]),
    .I4(\anti_jitter/btn_temp [4]),
    .I5(\anti_jitter/sw_temp [1]),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o6_413 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7  (
    .I0(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o2_409 ),
    .I1(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o3_410 ),
    .I2(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o1_408 ),
    .I3(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o5_412 ),
    .I4(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o6_413 ),
    .I5(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o4_411 ),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o )
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
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_14)
  );
  OBUF   seg_7_OBUF (
    .I(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<3> ),
    .O(seg[7])
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_99),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_100),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_101),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_102),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_103),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_104),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_105),
    .O(seg[0])
  );
  OBUF   an_3_OBUF (
    .I(an_3_OBUF_95),
    .O(an[3])
  );
  OBUF   an_2_OBUF (
    .I(an_2_OBUF_96),
    .O(an[2])
  );
  OBUF   an_1_OBUF (
    .I(an_1_OBUF_97),
    .O(an[1])
  );
  OBUF   an_0_OBUF (
    .I(an_0_OBUF_98),
    .O(an[0])
  );
  OBUF   led_7_OBUF (
    .I(led_7_OBUF_51),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(led_6_OBUF_52),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(led_5_OBUF_53),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(led_4_OBUF_54),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(led_3_OBUF_55),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(led_2_OBUF_56),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(led_1_OBUF_57),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(led_0_OBUF_58),
    .O(led[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<2>1  (
    .I0(\anti_jitter/counter [16]),
    .I1(\anti_jitter/counter [15]),
    .O(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_lut<2> )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<1>_rt  (
    .I0(\clk_div/clkdiv [1]),
    .O(\clk_div/Mcount_clkdiv_cy<1>_rt_449 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<2>_rt  (
    .I0(\clk_div/clkdiv [2]),
    .O(\clk_div/Mcount_clkdiv_cy<2>_rt_450 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<3>_rt  (
    .I0(\clk_div/clkdiv [3]),
    .O(\clk_div/Mcount_clkdiv_cy<3>_rt_451 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<4>_rt  (
    .I0(\clk_div/clkdiv [4]),
    .O(\clk_div/Mcount_clkdiv_cy<4>_rt_452 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<5>_rt  (
    .I0(\clk_div/clkdiv [5]),
    .O(\clk_div/Mcount_clkdiv_cy<5>_rt_453 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<6>_rt  (
    .I0(\clk_div/clkdiv [6]),
    .O(\clk_div/Mcount_clkdiv_cy<6>_rt_454 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<7>_rt  (
    .I0(\clk_div/clkdiv [7]),
    .O(\clk_div/Mcount_clkdiv_cy<7>_rt_455 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<8>_rt  (
    .I0(\clk_div/clkdiv [8]),
    .O(\clk_div/Mcount_clkdiv_cy<8>_rt_456 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<9>_rt  (
    .I0(\clk_div/clkdiv [9]),
    .O(\clk_div/Mcount_clkdiv_cy<9>_rt_457 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<10>_rt  (
    .I0(\clk_div/clkdiv [10]),
    .O(\clk_div/Mcount_clkdiv_cy<10>_rt_458 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<11>_rt  (
    .I0(\clk_div/clkdiv [11]),
    .O(\clk_div/Mcount_clkdiv_cy<11>_rt_459 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<12>_rt  (
    .I0(\clk_div/clkdiv [12]),
    .O(\clk_div/Mcount_clkdiv_cy<12>_rt_460 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<13>_rt  (
    .I0(\clk_div/clkdiv [13]),
    .O(\clk_div/Mcount_clkdiv_cy<13>_rt_461 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<14>_rt  (
    .I0(\clk_div/clkdiv [14]),
    .O(\clk_div/Mcount_clkdiv_cy<14>_rt_462 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<15>_rt  (
    .I0(\clk_div/clkdiv [15]),
    .O(\clk_div/Mcount_clkdiv_cy<15>_rt_463 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<16>_rt  (
    .I0(\clk_div/clkdiv [16]),
    .O(\clk_div/Mcount_clkdiv_cy<16>_rt_464 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<17>_rt  (
    .I0(\clk_div/clkdiv [17]),
    .O(\clk_div/Mcount_clkdiv_cy<17>_rt_465 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_cy<18>_rt  (
    .I0(\clk_div/clkdiv [18]),
    .O(\clk_div/Mcount_clkdiv_cy<18>_rt_466 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<3>_rt  (
    .I0(\openmips/pc_reg/pc [3]),
    .O(\openmips/pc_reg/Maccum_pc_cy<3>_rt_467 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<4>_rt  (
    .I0(\openmips/pc_reg/pc [4]),
    .O(\openmips/pc_reg/Maccum_pc_cy<4>_rt_468 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<5>_rt  (
    .I0(\openmips/pc_reg/pc [5]),
    .O(\openmips/pc_reg/Maccum_pc_cy<5>_rt_469 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<6>_rt  (
    .I0(\openmips/pc_reg/pc [6]),
    .O(\openmips/pc_reg/Maccum_pc_cy<6>_rt_470 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<7>_rt  (
    .I0(\openmips/pc_reg/pc [7]),
    .O(\openmips/pc_reg/Maccum_pc_cy<7>_rt_471 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<8>_rt  (
    .I0(\openmips/pc_reg/pc [8]),
    .O(\openmips/pc_reg/Maccum_pc_cy<8>_rt_472 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<9>_rt  (
    .I0(\openmips/pc_reg/pc [9]),
    .O(\openmips/pc_reg/Maccum_pc_cy<9>_rt_473 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<10>_rt  (
    .I0(\openmips/pc_reg/pc [10]),
    .O(\openmips/pc_reg/Maccum_pc_cy<10>_rt_474 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<11>_rt  (
    .I0(\openmips/pc_reg/pc [11]),
    .O(\openmips/pc_reg/Maccum_pc_cy<11>_rt_475 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<12>_rt  (
    .I0(\openmips/pc_reg/pc [12]),
    .O(\openmips/pc_reg/Maccum_pc_cy<12>_rt_476 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<13>_rt  (
    .I0(\openmips/pc_reg/pc [13]),
    .O(\openmips/pc_reg/Maccum_pc_cy<13>_rt_477 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<14>_rt  (
    .I0(\openmips/pc_reg/pc [14]),
    .O(\openmips/pc_reg/Maccum_pc_cy<14>_rt_478 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<15>_rt  (
    .I0(\openmips/pc_reg/pc [15]),
    .O(\openmips/pc_reg/Maccum_pc_cy<15>_rt_479 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<16>_rt  (
    .I0(\openmips/pc_reg/pc [16]),
    .O(\openmips/pc_reg/Maccum_pc_cy<16>_rt_480 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<17>_rt  (
    .I0(\openmips/pc_reg/pc [17]),
    .O(\openmips/pc_reg/Maccum_pc_cy<17>_rt_481 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<18>_rt  (
    .I0(\openmips/pc_reg/pc [18]),
    .O(\openmips/pc_reg/Maccum_pc_cy<18>_rt_482 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<19>_rt  (
    .I0(\openmips/pc_reg/pc [19]),
    .O(\openmips/pc_reg/Maccum_pc_cy<19>_rt_483 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<20>_rt  (
    .I0(\openmips/pc_reg/pc [20]),
    .O(\openmips/pc_reg/Maccum_pc_cy<20>_rt_484 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<21>_rt  (
    .I0(\openmips/pc_reg/pc [21]),
    .O(\openmips/pc_reg/Maccum_pc_cy<21>_rt_485 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<22>_rt  (
    .I0(\openmips/pc_reg/pc [22]),
    .O(\openmips/pc_reg/Maccum_pc_cy<22>_rt_486 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<23>_rt  (
    .I0(\openmips/pc_reg/pc [23]),
    .O(\openmips/pc_reg/Maccum_pc_cy<23>_rt_487 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<24>_rt  (
    .I0(\openmips/pc_reg/pc [24]),
    .O(\openmips/pc_reg/Maccum_pc_cy<24>_rt_488 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<25>_rt  (
    .I0(\openmips/pc_reg/pc [25]),
    .O(\openmips/pc_reg/Maccum_pc_cy<25>_rt_489 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<26>_rt  (
    .I0(\openmips/pc_reg/pc [26]),
    .O(\openmips/pc_reg/Maccum_pc_cy<26>_rt_490 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<27>_rt  (
    .I0(\openmips/pc_reg/pc [27]),
    .O(\openmips/pc_reg/Maccum_pc_cy<27>_rt_491 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<28>_rt  (
    .I0(\openmips/pc_reg/pc [28]),
    .O(\openmips/pc_reg/Maccum_pc_cy<28>_rt_492 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<29>_rt  (
    .I0(\openmips/pc_reg/pc [29]),
    .O(\openmips/pc_reg/Maccum_pc_cy<29>_rt_493 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_cy<30>_rt  (
    .I0(\openmips/pc_reg/pc [30]),
    .O(\openmips/pc_reg/Maccum_pc_cy<30>_rt_494 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<26>_rt  (
    .I0(\anti_jitter/rst_counter [26]),
    .O(\anti_jitter/Mcount_rst_counter_cy<26>_rt_495 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<25>_rt  (
    .I0(\anti_jitter/rst_counter [25]),
    .O(\anti_jitter/Mcount_rst_counter_cy<25>_rt_496 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<24>_rt  (
    .I0(\anti_jitter/rst_counter [24]),
    .O(\anti_jitter/Mcount_rst_counter_cy<24>_rt_497 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<23>_rt  (
    .I0(\anti_jitter/rst_counter [23]),
    .O(\anti_jitter/Mcount_rst_counter_cy<23>_rt_498 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<22>_rt  (
    .I0(\anti_jitter/rst_counter [22]),
    .O(\anti_jitter/Mcount_rst_counter_cy<22>_rt_499 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<21>_rt  (
    .I0(\anti_jitter/rst_counter [21]),
    .O(\anti_jitter/Mcount_rst_counter_cy<21>_rt_500 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<20>_rt  (
    .I0(\anti_jitter/rst_counter [20]),
    .O(\anti_jitter/Mcount_rst_counter_cy<20>_rt_501 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<19>_rt  (
    .I0(\anti_jitter/rst_counter [19]),
    .O(\anti_jitter/Mcount_rst_counter_cy<19>_rt_502 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<18>_rt  (
    .I0(\anti_jitter/rst_counter [18]),
    .O(\anti_jitter/Mcount_rst_counter_cy<18>_rt_503 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<17>_rt  (
    .I0(\anti_jitter/rst_counter [17]),
    .O(\anti_jitter/Mcount_rst_counter_cy<17>_rt_504 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<16>_rt  (
    .I0(\anti_jitter/rst_counter [16]),
    .O(\anti_jitter/Mcount_rst_counter_cy<16>_rt_505 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<15>_rt  (
    .I0(\anti_jitter/rst_counter [15]),
    .O(\anti_jitter/Mcount_rst_counter_cy<15>_rt_506 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<14>_rt  (
    .I0(\anti_jitter/rst_counter [14]),
    .O(\anti_jitter/Mcount_rst_counter_cy<14>_rt_507 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<13>_rt  (
    .I0(\anti_jitter/rst_counter [13]),
    .O(\anti_jitter/Mcount_rst_counter_cy<13>_rt_508 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<12>_rt  (
    .I0(\anti_jitter/rst_counter [12]),
    .O(\anti_jitter/Mcount_rst_counter_cy<12>_rt_509 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<11>_rt  (
    .I0(\anti_jitter/rst_counter [11]),
    .O(\anti_jitter/Mcount_rst_counter_cy<11>_rt_510 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<10>_rt  (
    .I0(\anti_jitter/rst_counter [10]),
    .O(\anti_jitter/Mcount_rst_counter_cy<10>_rt_511 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<9>_rt  (
    .I0(\anti_jitter/rst_counter [9]),
    .O(\anti_jitter/Mcount_rst_counter_cy<9>_rt_512 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<8>_rt  (
    .I0(\anti_jitter/rst_counter [8]),
    .O(\anti_jitter/Mcount_rst_counter_cy<8>_rt_513 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<7>_rt  (
    .I0(\anti_jitter/rst_counter [7]),
    .O(\anti_jitter/Mcount_rst_counter_cy<7>_rt_514 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<6>_rt  (
    .I0(\anti_jitter/rst_counter [6]),
    .O(\anti_jitter/Mcount_rst_counter_cy<6>_rt_515 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<5>_rt  (
    .I0(\anti_jitter/rst_counter [5]),
    .O(\anti_jitter/Mcount_rst_counter_cy<5>_rt_516 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<4>_rt  (
    .I0(\anti_jitter/rst_counter [4]),
    .O(\anti_jitter/Mcount_rst_counter_cy<4>_rt_517 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<3>_rt  (
    .I0(\anti_jitter/rst_counter [3]),
    .O(\anti_jitter/Mcount_rst_counter_cy<3>_rt_518 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<2>_rt  (
    .I0(\anti_jitter/rst_counter [2]),
    .O(\anti_jitter/Mcount_rst_counter_cy<2>_rt_519 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_cy<1>_rt  (
    .I0(\anti_jitter/rst_counter [1]),
    .O(\anti_jitter/Mcount_rst_counter_cy<1>_rt_520 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<15>_rt  (
    .I0(\anti_jitter/counter [15]),
    .O(\anti_jitter/Mcount_counter_cy<15>_rt_521 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<14>_rt  (
    .I0(\anti_jitter/counter [14]),
    .O(\anti_jitter/Mcount_counter_cy<14>_rt_522 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<13>_rt  (
    .I0(\anti_jitter/counter [13]),
    .O(\anti_jitter/Mcount_counter_cy<13>_rt_523 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<12>_rt  (
    .I0(\anti_jitter/counter [12]),
    .O(\anti_jitter/Mcount_counter_cy<12>_rt_524 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<11>_rt  (
    .I0(\anti_jitter/counter [11]),
    .O(\anti_jitter/Mcount_counter_cy<11>_rt_525 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<10>_rt  (
    .I0(\anti_jitter/counter [10]),
    .O(\anti_jitter/Mcount_counter_cy<10>_rt_526 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<9>_rt  (
    .I0(\anti_jitter/counter [9]),
    .O(\anti_jitter/Mcount_counter_cy<9>_rt_527 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<8>_rt  (
    .I0(\anti_jitter/counter [8]),
    .O(\anti_jitter/Mcount_counter_cy<8>_rt_528 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<7>_rt  (
    .I0(\anti_jitter/counter [7]),
    .O(\anti_jitter/Mcount_counter_cy<7>_rt_529 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<6>_rt  (
    .I0(\anti_jitter/counter [6]),
    .O(\anti_jitter/Mcount_counter_cy<6>_rt_530 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<5>_rt  (
    .I0(\anti_jitter/counter [5]),
    .O(\anti_jitter/Mcount_counter_cy<5>_rt_531 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<4>_rt  (
    .I0(\anti_jitter/counter [4]),
    .O(\anti_jitter/Mcount_counter_cy<4>_rt_532 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<3>_rt  (
    .I0(\anti_jitter/counter [3]),
    .O(\anti_jitter/Mcount_counter_cy<3>_rt_533 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<2>_rt  (
    .I0(\anti_jitter/counter [2]),
    .O(\anti_jitter/Mcount_counter_cy<2>_rt_534 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_cy<1>_rt  (
    .I0(\anti_jitter/counter [1]),
    .O(\anti_jitter/Mcount_counter_cy<1>_rt_535 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_div/Mcount_clkdiv_xor<19>_rt  (
    .I0(\clk_div/clkdiv [19]),
    .O(\clk_div/Mcount_clkdiv_xor<19>_rt_536 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \openmips/pc_reg/Maccum_pc_xor<31>_rt  (
    .I0(\openmips/pc_reg/pc [31]),
    .O(\openmips/pc_reg/Maccum_pc_xor<31>_rt_537 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_rst_counter_xor<27>_rt  (
    .I0(\anti_jitter/rst_counter [27]),
    .O(\anti_jitter/Mcount_rst_counter_xor<27>_rt_538 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \anti_jitter/Mcount_counter_xor<16>_rt  (
    .I0(\anti_jitter/counter [16]),
    .O(\anti_jitter/Mcount_counter_xor<16>_rt_539 )
  );
  FD   \openmips/pc_reg/ce  (
    .C(clk_100mhz_BUFGP_13),
    .D(\openmips/pc_reg/ce_rstpot ),
    .Q(\openmips/pc_reg/ce_106 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \anti_jitter/_n0072_inv1_cepot  (
    .I0(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o1_408 ),
    .I1(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o4_411 ),
    .I2(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o6_413 ),
    .I3(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o5_412 ),
    .I4(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o3_410 ),
    .I5(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o2_409 ),
    .O(\anti_jitter/_n0072_inv1_cepot_541 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_1_dpot  (
    .I0(sw_1_IBUF_11),
    .I1(\anti_jitter/sw_ok[1] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/sw_ok_1_dpot_542 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_6_dpot  (
    .I0(sw_6_IBUF_6),
    .I1(\anti_jitter/sw_ok[6] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/sw_ok_6_dpot_543 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/sw_ok_7_dpot  (
    .I0(sw_7_IBUF_5),
    .I1(\anti_jitter/sw_ok[7] ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/sw_ok_7_dpot_544 )
  );
  FDR   \anti_jitter/counter_9  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_9_rstpot_574 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [9])
  );
  FDR   \anti_jitter/counter_8  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_8_rstpot_575 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [8])
  );
  FDR   \anti_jitter/counter_7  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_7_rstpot_576 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [7])
  );
  FDR   \anti_jitter/counter_6  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_6_rstpot_577 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [6])
  );
  FDR   \anti_jitter/counter_5  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_5_rstpot_578 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [5])
  );
  FDR   \anti_jitter/counter_4  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_4_rstpot_579 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [4])
  );
  FDR   \anti_jitter/counter_3  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_3_rstpot_580 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [3])
  );
  FDR   \anti_jitter/counter_2  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_2_rstpot_581 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [2])
  );
  FDR   \anti_jitter/counter_1  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_1_rstpot_582 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [1])
  );
  FDR   \anti_jitter/counter_0  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_0_rstpot_583 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [0])
  );
  FDR   \anti_jitter/counter_10  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_10_rstpot_584 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [10])
  );
  FDR   \anti_jitter/counter_11  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_11_rstpot_585 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [11])
  );
  FDR   \anti_jitter/counter_12  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_12_rstpot_586 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [12])
  );
  FDR   \anti_jitter/counter_13  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_13_rstpot_587 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [13])
  );
  FDR   \anti_jitter/counter_14  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_14_rstpot_588 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [14])
  );
  FDR   \anti_jitter/counter_15  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_15_rstpot_589 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [15])
  );
  LUT4 #(
    .INIT ( 16'hA8CC ))
  \anti_jitter/rst_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_18 ),
    .I2(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .I3(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/rst_dpot_573 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_9_rstpot  (
    .I0(\anti_jitter/counter [9]),
    .I1(\anti_jitter/Result<9>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_9_rstpot_574 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_8_rstpot  (
    .I0(\anti_jitter/counter [8]),
    .I1(\anti_jitter/Result<8>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_8_rstpot_575 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_7_rstpot  (
    .I0(\anti_jitter/counter [7]),
    .I1(\anti_jitter/Result<7>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_7_rstpot_576 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_6_rstpot  (
    .I0(\anti_jitter/counter [6]),
    .I1(\anti_jitter/Result<6>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_6_rstpot_577 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_5_rstpot  (
    .I0(\anti_jitter/counter [5]),
    .I1(\anti_jitter/Result<5>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_5_rstpot_578 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_4_rstpot  (
    .I0(\anti_jitter/counter [4]),
    .I1(\anti_jitter/Result<4>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_4_rstpot_579 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_3_rstpot  (
    .I0(\anti_jitter/counter [3]),
    .I1(\anti_jitter/Result<3>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_3_rstpot_580 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_2_rstpot  (
    .I0(\anti_jitter/counter [2]),
    .I1(\anti_jitter/Result<2>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_2_rstpot_581 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_1_rstpot  (
    .I0(\anti_jitter/counter [1]),
    .I1(\anti_jitter/Result<1>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_1_rstpot_582 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_0_rstpot  (
    .I0(\anti_jitter/counter [0]),
    .I1(\anti_jitter/Result<0>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_0_rstpot_583 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_10_rstpot  (
    .I0(\anti_jitter/counter [10]),
    .I1(\anti_jitter/Result<10>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_10_rstpot_584 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_11_rstpot  (
    .I0(\anti_jitter/counter [11]),
    .I1(\anti_jitter/Result<11>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_11_rstpot_585 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_12_rstpot  (
    .I0(\anti_jitter/counter [12]),
    .I1(\anti_jitter/Result<12>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_12_rstpot_586 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_13_rstpot  (
    .I0(\anti_jitter/counter [13]),
    .I1(\anti_jitter/Result<13>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_13_rstpot_587 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_14_rstpot  (
    .I0(\anti_jitter/counter [14]),
    .I1(\anti_jitter/Result<14>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_14_rstpot_588 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_15_rstpot  (
    .I0(\anti_jitter/counter [15]),
    .I1(\anti_jitter/Result<15>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_15_rstpot_589 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_0_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [0]),
    .I2(\anti_jitter/Result [0]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_0_dpot_545 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_1_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [1]),
    .I2(\anti_jitter/Result [1]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_1_dpot_546 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_2_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [2]),
    .I2(\anti_jitter/Result [2]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_2_dpot_547 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_3_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [3]),
    .I2(\anti_jitter/Result [3]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_3_dpot_548 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_4_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [4]),
    .I2(\anti_jitter/Result [4]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_4_dpot_549 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_5_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [5]),
    .I2(\anti_jitter/Result [5]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_5_dpot_550 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_6_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [6]),
    .I2(\anti_jitter/Result [6]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_6_dpot_551 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_7_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [7]),
    .I2(\anti_jitter/Result [7]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_7_dpot_552 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_8_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [8]),
    .I2(\anti_jitter/Result [8]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_8_dpot_553 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_9_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [9]),
    .I2(\anti_jitter/Result [9]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_9_dpot_554 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_10_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [10]),
    .I2(\anti_jitter/Result [10]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_10_dpot_555 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_11_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [11]),
    .I2(\anti_jitter/Result [11]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_11_dpot_556 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_12_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [12]),
    .I2(\anti_jitter/Result [12]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_12_dpot_557 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_13_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [13]),
    .I2(\anti_jitter/Result [13]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_13_dpot_558 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_14_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [14]),
    .I2(\anti_jitter/Result [14]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_14_dpot_559 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_15_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [15]),
    .I2(\anti_jitter/Result [15]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_15_dpot_560 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_16_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [16]),
    .I2(\anti_jitter/Result [16]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_16_dpot_561 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_17_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [17]),
    .I2(\anti_jitter/Result [17]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_17_dpot_562 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_18_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [18]),
    .I2(\anti_jitter/Result [18]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_18_dpot_563 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_19_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [19]),
    .I2(\anti_jitter/Result [19]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_19_dpot_564 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_20_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [20]),
    .I2(\anti_jitter/Result [20]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_20_dpot_565 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_21_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [21]),
    .I2(\anti_jitter/Result [21]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_21_dpot_566 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_22_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [22]),
    .I2(\anti_jitter/Result [22]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_22_dpot_567 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_23_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [23]),
    .I2(\anti_jitter/Result [23]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_23_dpot_568 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_24_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [24]),
    .I2(\anti_jitter/Result [24]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_24_dpot_569 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_25_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [25]),
    .I2(\anti_jitter/Result [25]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_25_dpot_570 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_26_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [26]),
    .I2(\anti_jitter/Result [26]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_26_dpot_571 )
  );
  LUT4 #(
    .INIT ( 16'hCCE4 ))
  \anti_jitter/rst_counter_27_dpot  (
    .I0(btn_3_IBUF_1),
    .I1(\anti_jitter/rst_counter [27]),
    .I2(\anti_jitter/Result [27]),
    .I3(\anti_jitter/Mcompar_rst_counter[31]_GND_80_o_LessThan_7_o_cy<4>_262 ),
    .O(\anti_jitter/rst_counter_27_dpot_572 )
  );
  FDR   \anti_jitter/counter_16  (
    .C(clk_100mhz_BUFGP_13),
    .D(\anti_jitter/counter_16_rstpot_590 ),
    .R(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 ),
    .Q(\anti_jitter/counter [16])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \anti_jitter/counter_16_rstpot  (
    .I0(\anti_jitter/counter [16]),
    .I1(\anti_jitter/Result<16>1 ),
    .I2(\anti_jitter/Mcompar_counter[31]_GND_80_o_LessThan_4_o_cy<5>_291 ),
    .O(\anti_jitter/counter_16_rstpot_590 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_1  (
    .I0(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o2_409 ),
    .I1(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o3_410 ),
    .I2(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o1_408 ),
    .I3(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o5_412 ),
    .I4(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o6_413 ),
    .I5(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o4_411 ),
    .O(\anti_jitter/btn_temp[4]_sw_temp[7]_OR_63_o7_591 )
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
  INV   \anti_jitter/Mcount_rst_counter_lut<0>_INV_0  (
    .I(\anti_jitter/rst_counter [0]),
    .O(\anti_jitter/Mcount_rst_counter_lut [0])
  );
  INV   \anti_jitter/Mcount_counter_lut<0>_INV_0  (
    .I(\anti_jitter/counter [0]),
    .O(\anti_jitter/Mcount_counter_lut [0])
  );
  INV   \openmips/rom_ce_o_inv1_INV_0  (
    .I(\openmips/pc_reg/ce_106 ),
    .O(\openmips/rom_ce_o_inv )
  );
  INV   \openmips/pc_reg/ce_rstpot1_INV_0  (
    .I(rst_IBUF_14),
    .O(\openmips/pc_reg/ce_rstpot )
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
