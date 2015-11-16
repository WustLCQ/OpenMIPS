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
	
	input	[`RegBus]		hi_i,
	input	[`RegBus]		lo_i,
	
	input	[`RegBus]		wb_hi_i,
	input	[`RegBus]		wb_lo_i,
	input						wb_whilo_i,
	
	input	[`RegBus]		mem_hi_i,
	input	[`RegBus]		mem_lo_i,
	input						mem_whilo_i,
	
	output	reg[`RegBus]	hi_o,
	output	reg[`RegBus]	lo_o,
	output	reg				whilo_o,
	
	output	reg[`RegAddrBus]	wd_o,		//运算结果要写入的目标寄存器地址
	output	reg	wreg_o,					//使能写
	output	reg[`RegBus]	wdata_o		//要写入目标寄存器的运算结果
    );
	 
	 reg[`RegBus]	logicout;				//保存逻辑运算结果
	 reg[`RegBus]	shiftres;				//保存移位运算结果
	 reg[`RegBus]	moveres;					//保存移位操作结果
	 reg[`RegBus]	HI;
	 reg[`RegBus]	LO;
	 
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
	
	always @(*) begin
		wd_o	<=	wd_i;
		wreg_o	<=	wreg_i;
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
			default:	begin
				wdata_o	<=	`ZeroWord;
			end
		endcase
	end
	
	//MTHI和MTLO指令
	always @(*) begin
		if(rst == `RstEnable) begin
			whilo_o	<=	`WriteDisable;
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
		end else if(aluop_i	==	`EXE_MTHI_OP)	begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	reg1_i;
			lo_o	<=	LO;
		end else if(aluop_i	== `EXE_MTLO_OP)	begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	HI;
			lo_o	<=	reg1_i;
		end else begin
			whilo_o	<=	`WriteDisable;
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
		end
	end

endmodule
