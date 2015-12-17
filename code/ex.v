`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:06 11/02/2015 
// Design Name: 
// Module Name:    ex 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//执行阶段，对操作数进行运算
`include "defines.v"
module ex(
	input	rst,
	input	[`AluOpBus]		aluop_i,
	input	[`AluSelBus]	alusel_i,
	input	[`RegBus]		reg1_i,
	input	[`RegBus]		reg2_i,
	input	[`RegAddrBus]	wd_i,
	input	wreg_i,
	input	[`DoubleRegBus]	hilo_temp_i,	//第一个执行周期得到的乘法结果
	input	[1:0]	cnt_i,							//当前处于执行阶段的第几个时钟周期
	
	input	[`RegBus]		hi_i,
	input	[`RegBus]		lo_i,
	
	input	[`RegBus]		wb_hi_i,
	input	[`RegBus]		wb_lo_i,
	input						wb_whilo_i,
	
	input	[`RegBus]		mem_hi_i,
	input	[`RegBus]		mem_lo_i,
	input						mem_whilo_i,
	input	[`DoubleRegBus]	div_result_i,	//除法运算结果
	input							div_ready_i,	//除法运算是否结束
	
	output	reg[`RegBus]	hi_o,
	output	reg[`RegBus]	lo_o,
	output	reg				whilo_o,
	
	output	reg[`RegAddrBus]	wd_o,		//运算结果要写入的目标寄存器地址
	output	reg	wreg_o,					//使能写
	output	reg[`RegBus]	wdata_o,		//要写入目标寄存器的运算结果
	output	reg[`DoubleRegBus]	hilo_temp_o,
	output	reg[1:0]			cnt_o,
	output	reg	stallreq_from_ex,		//流水线暂停指令
	output	reg[`RegBus]	div_opdata1_o,
	output	reg[`RegBus]	div_opdata2_o,
	output	reg				div_start_o,
	output	reg				signed_div_o
    );
	 
	 reg[`RegBus]	logicout;				//保存逻辑运算结果
	 reg[`RegBus]	shiftres;				//保存移位运算结果
	 reg[`RegBus]	moveres;					//保存移位操作结果
	 reg[`RegBus]	HI;
	 reg[`RegBus]	LO;
	 
	 wire				ov_sum;					//保存溢出情况
	 wire				reg1_eq_reg2;			//第一个操作数是否等于第二个操作数
	 wire				reg1_lt_reg2;			//第一个操作数是否小羽第二个操作数
	 reg[`RegBus]	arithmeticres;			//保存算术运算的结果
	 wire[`RegBus]	reg2_i_mux;				//保存输入的第二个操作数的补码
	 wire[`RegBus]	reg1_i_not;				//保存输入的第一个操作数的反码
	 wire[`RegBus]	result_sum;				//保存加法结果
	 wire[`RegBus]	opdata1_mult;			//乘法操作中的被乘数
	 wire[`RegBus]	opdata2_mult;			//乘法操作中的乘数
	 wire[`DoubleRegBus]	hilo_temp;		//临时保存乘法结果，宽度为64位
	 reg[`DoubleRegBus]	mulres;			//保存乘法结果，宽度为64位
	 reg[`DoubleRegBus]	hilo_temp1;
	 reg				stallreq_for_madd_msub;
	 reg				stallreq_for_div;
	 
	 //如果是减法或者有符号比较运算，那么reg2_i_mux等于第二个操作数reg2_i的补码
	 //否则reg2_i_mux就等于第二个操作数
	 assign	reg2_i_mux	=	((aluop_i == `EXE_SUB_OP)||
									 (aluop_i == `EXE_SUBU_OP)||
									 (aluop_i == `EXE_SLT_OP))?
									(~reg2_i)+1:reg2_i;
	
	//分三种情况：
	//A、如果是加法运算，此时reg2_i_mux就是第二个操作数reg2_i
	//	所以result_sum就是加法运算的结果
	//B、如果是减法运算，此时reg2_i_mux就是第二个操作数reg2_i的补码
	//	所以result_sum就是减法运算的结果
	//C、如果是有符号比较运算，此时reg2_i_mux就是第二个操作数reg2_i的补码
	//	所以result_sum是减法运算的结果，可以通过判断减法的结果是否小于零来比较
	assign result_sum	=	reg1_i + reg2_i_mux;
	
	//在加法指令和减法指令执行的时候要判断溢出，以下两种情况会发生溢出：
	//A、reg1_i为正数，reg2_i_mux为正数，但两者之和为负数
	//B、reg1_i为负数，reg2_i_mux为负数，但两者之和为正数
	assign ov_sum = ((!reg1_i[31] && !reg2_i_mux[31]) && result_sum[31])||
							((reg1_i[31] && reg2_i_mux[31]) && (!result_sum[31]));
	
	
	//计算操作数1是否小于操作数2，分为两种情况：
	//A、aluop_i为EXE_SLT_OP表示有符号比较运算，此时又分三种情况：
	//	A1、reg1_i为负数、reg2_i为正数，显然reg1_i小于reg2_i
	//	A2、reg1_i为正数、reg2_i为正数，并且reg1_i减去reg2_i小于0,此时reg1_i小于reg2_i
	//	A3、reg1_i为负数、reg2_i为负数，并且reg1_i减去reg2_i小于0,此时reg1_i小于reg2_i
	//B、无符号数比较的时候，直接使用比较运算符比较reg1_i与reg2_i
	assign reg1_lt_reg2 = (aluop_i == `EXE_SLT_OP)?
								((reg1_i[31] && !reg2_i[31])||
								((!reg1_i[31] && !reg2_i[31]) && result_sum[31])||
								(reg1_i[31] && reg2_i[31] && result_sum[31])):
								(reg1_i < reg2_i);
	
	//第一个操作数的反码
	assign reg1_i_not = ~reg1_i;
	
	//取得乘法运算的被乘数，如果是有符号乘法且被乘数是负数，则取补码
	assign opdata1_mult = (((aluop_i == `EXE_MUL_OP)||(aluop_i == `EXE_MULT_OP)||
									(aluop_i	== `EXE_MADD_OP)||(aluop_i == `EXE_MSUB_OP)) && 
								(reg1_i[31] == 1'b1)) ? (~reg1_i + 1) : reg1_i;
	
	//取得乘法运算的乘数，如果是有符号乘法且乘数是负数，则取补码
	assign opdata2_mult = (((aluop_i == `EXE_MUL_OP)||(aluop_i == `EXE_MULT_OP)||
									(aluop_i == `EXE_MADD_OP)||(aluop_i == `EXE_MSUB_OP)) && 
								(reg2_i[31] == 1'b1)) ? (~reg2_i + 1) : reg2_i;
								
	//得到临时乘法结果，保存在变量hilo_temp中
	assign hilo_temp = opdata1_mult * opdata2_mult;
	 
	 //逻辑运算
	 always @(*) begin
		if(rst == `RstEnable) begin
			logicout	<= `ZeroWord;
		end else begin
			case	(aluop_i)
				`EXE_OR_OP:		begin
					logicout	<= reg1_i | reg2_i;	//逻辑或运算
				end
				`EXE_AND_OP: 	begin
					logicout	<=	reg1_i & reg2_i;
				end
				`EXE_NOR_OP: 	begin
					logicout	<=	~(reg1_i | reg2_i);
				end
				`EXE_XOR_OP: 	begin
					logicout	<=	reg1_i ^ reg2_i;
				end
				default:	begin
					logicout	<=	`ZeroWord;
				end
			endcase
		end
	end

	//得到最新的HI、LO寄存器的值，将访存和回写阶段HI和LO寄存器的数据前推
	always @(*) begin
		if(rst == `RstEnable)begin
			HI	<=	`ZeroWord;
			LO	<=	`ZeroWord;
		end else if(mem_whilo_i == `WriteEnable) begin
			HI <= mem_hi_i;
			LO <= mem_lo_i;
		end else if(wb_whilo_i == `WriteEnable) begin
			HI <= wb_hi_i;
			LO <= wb_lo_i;
		end else begin
			HI <= hi_i;
			LO <= lo_i;
		end
	end
	
	//移动指令
	always @(*) begin
		if(rst == `RstEnable) begin
			moveres	<=	`ZeroWord;
		end else begin
			moveres	<=	`ZeroWord;
			case(aluop_i)
				`EXE_MFHI_OP:	begin
					moveres	<=	HI;
				end
				`EXE_MFLO_OP:	begin
					moveres	<=	LO;
				end
				`EXE_MOVZ_OP:	begin
					moveres	<=	reg1_i;
				end
				`EXE_MOVN_OP:	begin
					moveres	<=	reg1_i;
				end
				default:	begin
				end
			endcase
		end
	end
	
	//移位运算
	always @(*) begin
		if(rst == `RstEnable) begin
			shiftres	<=	`ZeroWord;
		end else begin
			case (aluop_i)
				`EXE_SLL_OP:	begin			//逻辑左移
					shiftres	<=	reg2_i << reg1_i[4:0];
				end
				`EXE_SRL_OP:	begin			//逻辑右移
					shiftres	<=	reg2_i >> reg1_i[4:0];
				end
				`EXE_SRA_OP:	begin			//算数右移
					shiftres	<=	({32{reg2_i[31]}}<<(6'd32-{1'b0,reg1_i[4:0]})) | reg2_i>>reg1_i[4:0];	
				end
				default:	begin
					shiftres	<=	`ZeroWord;
				end
			endcase
		end
	end
	
	//算术运算
	always @(*) begin
		if(rst == `RstEnable) begin
			arithmeticres	<=	`ZeroWord;
		end else begin
			case (aluop_i)
				`EXE_SLT_OP,`EXE_SLTU_OP:	begin
					arithmeticres	<=	reg1_lt_reg2;
				end
				`EXE_ADD_OP,`EXE_ADDU_OP,`EXE_ADDI_OP,`EXE_ADDIU_OP:	begin
					arithmeticres	<=	result_sum;
				end
				`EXE_SUB_OP,`EXE_SUBU_OP:	begin
					arithmeticres	<=	result_sum;
				end
				`EXE_CLZ_OP:	begin
					arithmeticres	<=	reg1_i[31] ? 0 :
											reg1_i[30] ? 1	:
											reg1_i[29] ? 2 :
											reg1_i[28] ? 3	:
											reg1_i[27] ? 4 :
											reg1_i[26] ? 5	:
											reg1_i[25] ? 6 :
											reg1_i[24] ? 7	:
											reg1_i[23] ? 8 :
											reg1_i[22] ? 9	:
											reg1_i[21] ? 10 :
											reg1_i[20] ? 11 :
											reg1_i[19] ? 12 :
											reg1_i[18] ? 13 :
											reg1_i[17] ? 14 :
											reg1_i[16] ? 15 :
											reg1_i[15] ? 16 :
											reg1_i[14] ? 17 :
											reg1_i[13] ? 18 :
											reg1_i[12] ? 19 :
											reg1_i[11] ? 20 :
											reg1_i[10] ? 21 :
											reg1_i[9] ? 22 :
											reg1_i[8] ? 23	:
											reg1_i[7] ? 24 :
											reg1_i[6] ? 25	:
											reg1_i[5] ? 26 :
											reg1_i[4] ? 27 :
											reg1_i[3] ? 28 :
											reg1_i[2] ? 29 :
											reg1_i[1] ? 30 :
											reg1_i[0] ? 31 : 32;
				end
				`EXE_CLO_OP:	begin
					arithmeticres	<=	reg1_i_not[31] ? 0 :
											reg1_i_not[30] ? 1 :
											reg1_i_not[29] ? 2 :
											reg1_i_not[28] ? 3 :
											reg1_i_not[27] ? 4 :
											reg1_i_not[26] ? 5 :
											reg1_i_not[25] ? 6 :
											reg1_i_not[24] ? 7 :
											reg1_i_not[23] ? 8 :
											reg1_i_not[22] ? 9 :
											reg1_i_not[21] ? 10 :
											reg1_i_not[20] ? 11 :
											reg1_i_not[19] ? 12 :
											reg1_i_not[18] ? 13 :
											reg1_i_not[17] ? 14 :
											reg1_i_not[16] ? 15 :
											reg1_i_not[15] ? 16 :
											reg1_i_not[14] ? 17 :
											reg1_i_not[13] ? 18 :
											reg1_i_not[12] ? 19 :
											reg1_i_not[11] ? 20 :
											reg1_i_not[10] ? 21 :
											reg1_i_not[9] ? 22 :
											reg1_i_not[8] ? 23 :
											reg1_i_not[7] ? 24 :
											reg1_i_not[6] ? 25 :
											reg1_i_not[5] ? 26 :
											reg1_i_not[4] ? 27 :
											reg1_i_not[3] ? 28 :
											reg1_i_not[2] ? 29 :
											reg1_i_not[1] ? 30 :
											reg1_i_not[0] ? 31 : 32;
				end
				default:	begin
					arithmeticres	<=	`ZeroWord;
				end
			endcase
		end
	end
	
	//乘法运算
	//如果是有符号乘法mult、mul且被乘数与乘数一正一负时，需要对hilo_temp求补码
	always @(*) begin
		if(rst == `RstEnable) begin
			mulres	<=	{`ZeroWord,`ZeroWord};
		end else if ((aluop_i == `EXE_MULT_OP) || (aluop_i == `EXE_MUL_OP)||
						(aluop_i == `EXE_MADD_OP) || (aluop_i == `EXE_MSUB_OP)) begin
			if(reg1_i[31] ^ reg2_i[31] == 1'b1) begin
				mulres	<=	~hilo_temp	+	1;
			end else begin
				mulres	<=	hilo_temp;
			end
		end else begin
			mulres	<=	hilo_temp;
		end
	end
	
	//乘累加、乘累减
	always @(*) begin
		if(rst == `RstEnable) begin
			hilo_temp_o <= {`ZeroWord, `ZeroWord};
			cnt_o			<=	2'b00;
			stallreq_for_madd_msub	<=	`NoStop;
		end else begin
			case(aluop_i)
				`EXE_MADD_OP, `EXE_MADDU_OP:	begin
					if(cnt_i == 2'b00)	begin					//执行阶段的第一个时钟周期
						hilo_temp_o	<=	mulres;
						cnt_o	<=	2'b01;
						hilo_temp1	<=	{`ZeroWord,`ZeroWord};
						stallreq_for_madd_msub	<=	`Stop;
					end else if(cnt_i == 2'b01) begin		//执行阶段的第二个时钟周期
						hilo_temp_o	<=	{`ZeroWord,`ZeroWord};
						cnt_o	<=	2'b10;
						hilo_temp1	<=	hilo_temp_i + {HI,LO};
						stallreq_for_madd_msub	<=	`NoStop;
					end
				end
				`EXE_MSUB_OP, `EXE_MSUBU_OP:	begin
					if(cnt_i == 2'b00)	begin
						hilo_temp_o <= ~mulres + 1;
						cnt_o	<=	2'b01;
						hilo_temp1	<=	{`ZeroWord,`ZeroWord};
						stallreq_for_madd_msub	<=	`Stop;
					end else if(cnt_i == 2'b01)	begin
						hilo_temp_o <= {`ZeroWord,`ZeroWord};
						cnt_o	<=	2'b10;
						hilo_temp1	<=	hilo_temp_i + {HI,LO};
						stallreq_for_madd_msub	<=	`NoStop;
					end
				end
				default:	begin
					hilo_temp_o	<=	{`ZeroWord,`ZeroWord};
					cnt_o	<=	2'b00;
					stallreq_for_madd_msub	<=	`NoStop;
				end
			endcase
		end
	end
	
	//除法指令
	always @(*)	begin
		if(rst == `RstEnable)	begin
			stallreq_for_div	<=	`NoStop;
			div_opdata1_o		<=	`ZeroWord;
			div_opdata2_o		<=	`ZeroWord;
			div_start_o			<=	`DivStop;
			signed_div_o		<=	1'b0;
		end else begin
			stallreq_for_div	<=	`NoStop;
			div_opdata1_o		<=	`ZeroWord;
			div_opdata2_o		<=	`ZeroWord;
			div_start_o			<=	`DivStop;
			signed_div_o		<=	1'b0;
			case (aluop_i)
				`EXE_DIV_OP:	begin
					if(div_ready_i	==	`DivResultNotReady)	begin
						div_opdata1_o	<=	reg1_i;
						div_opdata2_o	<=	reg2_i;
						div_start_o		<=	`DivStart;
						signed_div_o	<=	1'b1;
						stallreq_for_div	<=	`Stop;
					end else if(div_ready_i	==	`DivResultReady)	begin
						div_opdata1_o	<=	reg1_i;
						div_opdata2_o	<=	reg2_i;
						div_start_o		<=	`DivStop;
						signed_div_o	<=	1'b1;
						stallreq_for_div	<=	`NoStop;
					end else	begin
						div_opdata1_o	<=	`ZeroWord;
						div_opdata2_o	<=	`ZeroWord;
						div_start_o		<=	`DivStop;
						signed_div_o	<=	1'b0;
						stallreq_for_div	<=	`NoStop;
					end
				end
				`EXE_DIVU_OP:	begin
					if(div_ready_i	==	`DivResultNotReady)	begin
						div_opdata1_o	<=	reg1_i;
						div_opdata2_o	<=	reg2_i;
						div_start_o		<=	`DivStart;
						signed_div_o	<=	1'b0;
						stallreq_for_div	<=	`Stop;
					end else if(div_ready_i	==	`DivResultReady)	begin
						div_opdata1_o	<=	reg1_i;
						div_opdata2_o	<=	reg2_i;
						div_start_o		<=	`DivStop;
						signed_div_o	<=	1'b0;
						stallreq_for_div	<=	`NoStop;
					end else	begin
						div_opdata1_o	<=	`ZeroWord;
						div_opdata2_o	<=	`ZeroWord;
						div_start_o		<=	`DivStop;
						signed_div_o	<=	1'b0;
						stallreq_for_div	<=	`NoStop;
					end
				end
			endcase
		end
	end
	
	//给暂停流水线信号赋值
	always @(*) begin
		stallreq_from_ex <=	stallreq_for_madd_msub || stallreq_for_div;
	end
	
	always @(*) begin
		wd_o	<=	wd_i;
		if(((aluop_i == `EXE_ADD_OP) || (aluop_i == `EXE_ADDI_OP) || 
			(aluop_i == `EXE_SUB_OP)) && (ov_sum == 1'b1))	begin
			wreg_o	<=	`WriteDisable;
		end else begin
			wreg_o	<=	wreg_i;
		end
		case	(alusel_i)
			`EXE_RES_LOGIC:	begin
				wdata_o	<=	logicout;
			end
			`EXE_RES_SHIFT:	begin
				wdata_o	<=	shiftres;
			end
			`EXE_RES_MOVE:	begin
				wdata_o	<=	moveres;
			end
			`EXE_RES_ARITHMETIC:	begin
				wdata_o	<=	arithmeticres;
			end
			`EXE_RES_MUL:	begin
				wdata_o	<=	mulres[31:0];
			end
			default:	begin
				wdata_o	<=	`ZeroWord;
			end
		endcase
	end
	
	//修改HI、LO寄存器的值
	always @(*) begin
		if(rst == `RstEnable) begin
			whilo_o	<=	`WriteDisable;
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
		end else if((aluop_i == `EXE_MULT_OP) || 
						(aluop_i	== `EXE_MULTU_OP))	begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	mulres[63:32];
			lo_o	<=	mulres[31:0];
		end else if(aluop_i	==	`EXE_MTHI_OP)	begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	reg1_i;
			lo_o	<=	LO;
		end else if(aluop_i	== `EXE_MTLO_OP)	begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	HI;
			lo_o	<=	reg1_i;
		end else if((aluop_i == `EXE_MSUB_OP)||(aluop_i == `EXE_MSUBU_OP)) begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	hilo_temp1[63:32];
			lo_o	<=	hilo_temp1[31:0];
		end else if((aluop_i == `EXE_MADD_OP)||(aluop_i == `EXE_MADDU_OP)) begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	hilo_temp1[63:32];
			lo_o	<=	hilo_temp1[31:0];
		end else if((aluop_i == `EXE_DIV_OP)||(aluop_i == `EXE_DIVU_OP)) begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	div_result_i[63:32];
			lo_o	<=	div_result_i[31:0];
		end else begin
			whilo_o	<=	`WriteDisable;
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
		end
	end

endmodule
