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
				default:	begin
				end
			endcase
		end
	end
	
	always @(*)	begin
		if(rst == `RstEnable) begin
			reg1_o	<=	`ZeroWord;
		end else if(reg1_read_o == 1'b1) begin
			reg1_o	<= reg1_data_i;				//读取寄存器的值
		end else if(reg1_read_o == 1'b0)	begin
			reg1_o	<=	imm;
		end else begin
			reg1_o	<=	`ZeroWord;
		end
	end
	
	always @(*)	begin
		if(rst == `RstEnable) begin
			reg2_o	<=	`ZeroWord;
		end else if(reg2_read_o == 1'b1) begin
			reg2_o	<= reg1_data_i;				//读取寄存器的值
		end else if(reg2_read_o == 1'b0)	begin
			reg2_o	<=	imm;
		end else begin
			reg2_o	<=	`ZeroWord;
		end
	end

endmodule
