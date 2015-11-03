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
//����׶Σ���ָ��ֽ⣬�����ݸ�ִ�н׶�
`include "defines.v"
module id(
	input rst,
	input [`InstAddrBus]	pc_i,
	input [`InstBus]		inst_i,
	//��ȡ��Regfile��ֵ
	input [`RegBus]		reg1_data_i,
	input [`RegBus]		reg2_data_i,
	
	output reg				reg1_read_o,		//��ʹ��
	output reg				reg2_read_o,
	output reg[`RegAddrBus]	reg1_addr_o,	//����ַ
	output reg[`RegAddrBus]	reg2_addr_o,

	output reg[`AluOpBus]	aluop_o,			//ָ�����	
	output reg[`AluSelBus]	alusel_o,		//ָ������
	output reg[`RegBus]		reg1_o,			//Ҫ�����������п����ǴӼĴ�����ȡ�ģ��п�����������
	output reg[`RegBus]		reg2_o,
	output reg[`RegAddrBus]	wd_o,				//д��ַ
	output reg					wreg_o			//дʹ��
    );
	 
	 wire[5:0] op = inst_i[31:26];
	 wire[4:0] op2 = inst_i[10:6];
	 wire[5:0] op3 = inst_i[5:0];
	 wire[4:0] op4 = inst_i[20:16];
	 
	 reg[`RegBus] imm;		//������	
	 
	//ָ���Ƿ���Ч
	//reg instvalid;
	
	always @(*) begin 
		if(rst == `RstEnable) begin
			aluop_o	<= `EXE_NOP_OP;
			alusel_o	<= `EXE_RES_NOP;
			wd_o		<= `NOPRegAddr;
			wreg_o	<= `WriteDisable;
	//		instvalid	<= `InstValid;
			reg1_read_o	<= 1'b0;
			reg2_read_o	<= 1'b0;
			reg1_addr_o	<= `NOPRegAddr;
			reg2_addr_o <= `NOPRegAddr;
			imm		<= `ZeroWord;
		end else begin
			//�ȳ�ʼ����Ȼ����ݲ����븳ֵ
			aluop_o	<= `EXE_NOP_OP;
			alusel_o	<=	`EXE_RES_NOP;
			wd_o		<=	inst_i[15:11];
			wreg_o	<= `WriteDisable;
	//		instvalid	<=	`InstInvalid;
			reg1_read_o	<= 1'b0;
			reg2_read_o	<= 1'b0;
			reg1_addr_o	<= inst_i[25:21];
			reg2_addr_o	<= inst_i[20:16];
			imm 		<= `ZeroWord;
			
			case (op)
				`EXE_ORI:	begin
					wreg_o	<=	`WriteEnable;			//ʹ��д
					aluop_o	<= `EXE_OR_OP;				//�����������ݸ���һ���󣬸�����һ��ֻ��Ҫ��"��"����ͺ���
					alusel_o	<=	`EXE_RES_LOGIC;
					reg1_read_o	<=	1'b1;					//��Ϊ��ori����ֻ��Ҫ��ȡ1�Ĵ���
					reg2_read_o	<=	1'b0;
					imm	<=	{16'h0,inst_i[15:0]};	//32λ������
					wd_o	<=	inst_i[20:16];				//Ŀ��Ĵ�����ַ
	//				instvalid	<=	`InstValid;
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
			reg1_o	<= reg1_data_i;				//��ȡ�Ĵ�����ֵ
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
			reg2_o	<= reg1_data_i;				//��ȡ�Ĵ�����ֵ
		end else if(reg2_read_o == 1'b0)	begin
			reg2_o	<=	imm;
		end else begin
			reg2_o	<=	`ZeroWord;
		end
	end

endmodule
