`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:42 11/02/2015 
// Design Name: 
// Module Name:    id 
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
//译码阶段，将指令分解，并传递给执行阶段
`include "defines.v"
module id(
	input rst,
	input [`InstAddrBus]	pc_i,
	input [`InstBus]		inst_i,
	//读取的Regfile的值
	input [`RegBus]		reg1_data_i,
	input [`RegBus]		reg2_data_i,
	
	//为解决RAW相关，将上条指令在执行阶段的结果前推
	input						ex_wreg_i,
	input	[`RegBus]		ex_wdata_i,
	input	[`RegAddrBus]	ex_wd_i,
	
	//为解决RAW相关，将上上条指令在访存阶段的结果前推
	input						mem_wreg_i,
	input	[`RegBus]		mem_wdata_i,
	input	[`RegAddrBus]	mem_wd_i,
	
	output reg				reg1_read_o,		//读使能
	output reg				reg2_read_o,
	output reg[`RegAddrBus]	reg1_addr_o,	//读地址
	output reg[`RegAddrBus]	reg2_addr_o,

	output reg[`AluOpBus]	aluop_o,			//指令编码	
	output reg[`AluSelBus]	alusel_o,		//指令类型
	output reg[`RegBus]		reg1_o,			//要操作的数，有可能是从寄存器读取的，有可能是立即数
	output reg[`RegBus]		reg2_o,
	output reg[`RegAddrBus]	wd_o,				//写地址
	output reg					wreg_o			//写使能
    );
	 
	 wire[5:0] op = inst_i[31:26];
	 wire[4:0] op2 = inst_i[10:6];
	 wire[5:0] op3 = inst_i[5:0];
	 wire[4:0] op4 = inst_i[20:16];
	 
	 reg[`RegBus] imm;		//立即数	
	 
	//指令是否有效
	reg instvalid;
	
	always @(*) begin 
		if(rst == `RstEnable) begin
			aluop_o	<= `EXE_NOP_OP;
			alusel_o	<= `EXE_RES_NOP;
			wd_o		<= `NOPRegAddr;
			wreg_o	<= `WriteDisable;
			instvalid	<= `InstValid;
			reg1_read_o	<= 1'b0;
			reg2_read_o	<= 1'b0;
			reg1_addr_o	<= `NOPRegAddr;
			reg2_addr_o <= `NOPRegAddr;
			imm		<= `ZeroWord;
		end else begin
			//先初始化，然后根据操作码赋值
			aluop_o	<= `EXE_NOP_OP;
			alusel_o	<=	`EXE_RES_NOP;
			wd_o		<=	inst_i[15:11];
			wreg_o	<= `WriteDisable;
			instvalid	<=	`InstInvalid;
			reg1_read_o	<= 1'b0;
			reg2_read_o	<= 1'b0;
			reg1_addr_o	<= inst_i[25:21];
			reg2_addr_o	<= inst_i[20:16];
			imm 		<= `ZeroWord;
			
			case (op)
				`EXE_SPECIAL_INST:	begin
					case(op2)
						5'b00000:	begin
							case(op3)
								`EXE_OR:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_OR_OP;
									alusel_o	<=	`EXE_RES_LOGIC;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
								end
								`EXE_AND:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_AND_OP;
									alusel_o	<=	`EXE_RES_LOGIC;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
								end
								`EXE_XOR:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_XOR_OP;
									alusel_o	<=	`EXE_RES_LOGIC;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
								end
								`EXE_NOR:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_NOR_OP;
									alusel_o	<=	`EXE_RES_LOGIC;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
								end
								`EXE_SLLV:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_SLL_OP;
									alusel_o	<=	`EXE_RES_SHIFT;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=1'b1;
									instvalid	<=	`InstValid;
								end
								`EXE_SRLV:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_SRL_OP;
									alusel_o	<=	`EXE_RES_SHIFT;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
								end
								`EXE_SRAV:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_SRA_OP;
									alusel_o	<=	`EXE_RES_SHIFT;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
								end
								`EXE_SYNC:	begin
									wreg_o	<=	`WriteDisable;
									aluop_o	<=	`EXE_NOP_OP;
									alusel_o	<=	`EXE_RES_NOP;
									reg1_read_o	<=	1'b0;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
								end
								`EXE_MFHI:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_MFHI_OP;
									alusel_o	<=	`EXE_RES_MOVE;
									reg1_read_o	<=	1'b0;
									reg2_read_o	<=	1'b0;
									instvalid	<=	`InstValid;
								end
								`EXE_MFLO:	begin
									wreg_o	<=	`WriteEnable;
									aluop_o	<=	`EXE_MFLO_OP;
									alusel_o	<=	`EXE_RES_MOVE;
									reg1_read_o	<=	1'b0;
									reg2_read_o	<=	1'b0;
									instvalid	<=	`InstValid;
								end
								`EXE_MTHI:	begin
									wreg_o	<=	`WriteDisable;
									aluop_o	<=	`EXE_MTHI_OP;
									alusel_o	<=	`EXE_RES_MOVE;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b0;
									instvalid	<=	`InstValid;
								end
								`EXE_MTLO:	begin
									wreg_o	<=	`WriteDisable;
									aluop_o	<=	`EXE_MTLO_OP;
									alusel_o	<=	`EXE_RES_MOVE;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b0;
									instvalid	<=	`InstValid;
								end
								`EXE_MOVN:	begin
									aluop_o	<=	`EXE_MOVN_OP;
									alusel_o	<=	`EXE_RES_MOVE;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
									if(reg2_o != `ZeroWord) begin
										wreg_o	<=	`WriteEnable;
									end else begin
										wreg_o	<=	`WriteDisable;
									end
								end
								`EXE_MOVZ:	begin
									aluop_o	<=	`EXE_MOVZ_OP;
									alusel_o	<=	`EXE_RES_MOVE;
									reg1_read_o	<=	1'b1;
									reg2_read_o	<=	1'b1;
									instvalid	<=	`InstValid;
									if(reg2_o == `ZeroWord) begin
										wreg_o	<=	`WriteEnable;
									end else begin
										wreg_o	<=	`WriteDisable;
									end
								end
								default:	begin
								end
							endcase
						end
						default:	begin
						end
					endcase
				end
				`EXE_ORI:	begin
					wreg_o	<=	`WriteEnable;			//使能写
					aluop_o	<= `EXE_OR_OP;				//将操作数传递给下一步后，告诉下一步只需要做"或"运算就好了
					alusel_o	<=	`EXE_RES_LOGIC;
					reg1_read_o	<=	1'b1;					//因为是ori，故只需要读取1寄存器
					reg2_read_o	<=	1'b0;
					imm	<=	{16'h0,inst_i[15:0]};	//32位立即数
					wd_o	<=	inst_i[20:16];				//目标寄存器地址
					instvalid	<=	`InstValid;
				end
				`EXE_ANDI:	begin
					wreg_o	<=	`WriteEnable;
					aluop_o	<=	`EXE_AND_OP;
					alusel_o	<=	`EXE_RES_LOGIC;
					reg1_read_o	<=	1'b1;
					reg2_read_o	<=	1'b0;
					imm	<=	{16'h0,inst_i[15:0]};
					wd_o	<=	inst_i[20:16];
					instvalid	<=	`InstValid;
				end
				`EXE_XORI:	begin
					wreg_o	<=	`WriteEnable;
					aluop_o	<=	`EXE_XOR_OP;
					alusel_o	<=	`EXE_RES_LOGIC;
					reg1_read_o	<=	1'b1;
					reg2_read_o	<=	1'b0;
					imm	<=	{16'h0,inst_i[15:0]};
					wd_o	<=	inst_i[20:16];
					instvalid	<=`InstValid;
				end
				`EXE_LUI:	begin
					wreg_o	<=	`WriteEnable;
					aluop_o	<=	`EXE_OR_OP;
					alusel_o	<=	`EXE_RES_LOGIC;
					reg1_read_o	<=	1'b1;
					reg2_read_o	<=	1'b0;
					imm	<=	{inst_i[15:0],16'h0};
					wd_o	<=	inst_i[20:16];
					instvalid	<=	`InstValid;
				end
				`EXE_PREF:	begin
					wreg_o	<=	`WriteDisable;
					aluop_o	<=	`EXE_NOP_OP;
					alusel_o	<=	`EXE_RES_NOP;
					reg1_read_o	<=	1'b0;
					reg2_read_o	<=	1'b0;
					instvalid	<=	`InstValid;
				end
				default:	begin
				end
			endcase
			
			if (inst_i[31:21] == 11'b00000000000) begin
				if(op3 == `EXE_SLL) begin
					wreg_o	<=	`WriteEnable;
					aluop_o	<=	`EXE_SLL_OP;
					alusel_o	<=	`EXE_RES_SHIFT;
					reg1_read_o	<=	1'b0;
					reg2_read_o	<=	1'b1;
					imm[4:0]	<=	inst_i[10:6];
					wd_o	<=	inst_i[15:11];
					instvalid	<=	`InstValid;
				end else if(op3 == `EXE_SRL) begin
					wreg_o	<=	`WriteEnable;
					aluop_o	<=	`EXE_SRL_OP;
					alusel_o	<=	`EXE_RES_SHIFT;
					reg1_read_o	<=	1'b0;
					reg2_read_o	<=	1'b1;
					imm[4:0]	<=	inst_i[10:6];
					wd_o	<=	inst_i[15:11];
					instvalid	<=	`InstValid;
				end else if(op3 == `EXE_SRA)	begin
					wreg_o	<=	`WriteEnable;
					aluop_o	<=	`EXE_SRA_OP;
					alusel_o	<=	`EXE_RES_SHIFT;
					reg1_read_o	<=	1'b0;
					reg2_read_o	<=	1'b1;
					imm[4:0]	<=	inst_i[10:6];
					wd_o	<=	inst_i[15:11];
					instvalid	<=	`InstValid;
				end
			end
		end
	end
	
	//如果要读取的寄存器是上条或者上上条指令要写入的寄存器，则直接数据前推
	always @(*)	begin
		if(rst == `RstEnable) begin
			reg1_o	<=	`ZeroWord;
		end else if((reg1_read_o == `ReadEnable)&&(ex_wreg_i == `WriteEnable)&&(reg1_addr_o == ex_wd_i)) begin
			reg1_o	<=	ex_wdata_i;
		end else if((reg1_read_o == `ReadEnable)&&(mem_wreg_i == `WriteEnable)&&(reg1_addr_o == mem_wd_i)) begin
			reg1_o	<=	mem_wdata_i;
		end else if(reg1_read_o == `ReadEnable) begin
			reg1_o	<= reg1_data_i;				//读取寄存器的值
		end else if(reg1_read_o == `ReadDisable)	begin
			reg1_o	<=	imm;
		end else begin
			reg1_o	<=	`ZeroWord;
		end
	end
	
	always @(*)	begin
		if(rst == `RstEnable) begin
			reg2_o	<=	`ZeroWord;
		end else if((reg2_read_o == `ReadEnable)&&(ex_wreg_i == `WriteEnable)&&(reg2_addr_o == ex_wd_i)) begin
			reg2_o	<=	ex_wdata_i;
		end else if((reg2_read_o == `ReadEnable)&&(mem_wreg_i == `WriteEnable)&&(reg2_addr_o == mem_wd_i)) begin
			reg2_o	<=	mem_wdata_i;
		end else if(reg2_read_o == `ReadEnable) begin
			reg2_o	<= reg2_data_i;				//读取寄存器的值
		end else if(reg2_read_o == `ReadDisable)	begin
			reg2_o	<=	imm;
		end else begin
			reg2_o	<=	`ZeroWord;
		end
	end

endmodule
