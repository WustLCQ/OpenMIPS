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
	
	//Ϊ���RAW��أ�������ָ����ִ�н׶εĽ��ǰ��
	input						ex_wreg_i,
	input	[`RegBus]		ex_wdata_i,
	input	[`RegAddrBus]	ex_wd_i,
	
	//Ϊ���RAW��أ���������ָ���ڷô�׶εĽ��ǰ��
	input						mem_wreg_i,
	input	[`RegBus]		mem_wdata_i,
	input	[`RegAddrBus]	mem_wd_i,
	
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
			//�ȳ�ʼ����Ȼ����ݲ����븳ֵ
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
							endcase
						end
						default:	begin
						end
					endcase
				end
				`EXE_ORI:	begin
					wreg_o	<=	`WriteEnable;			//ʹ��д
					aluop_o	<= `EXE_OR_OP;				//�����������ݸ���һ���󣬸�����һ��ֻ��Ҫ��"��"����ͺ���
					alusel_o	<=	`EXE_RES_LOGIC;
					reg1_read_o	<=	1'b1;					//��Ϊ��ori����ֻ��Ҫ��ȡ1�Ĵ���
					reg2_read_o	<=	1'b0;
					imm	<=	{16'h0,inst_i[15:0]};	//32λ������
					wd_o	<=	inst_i[20:16];				//Ŀ��Ĵ�����ַ
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
					aluop_o	<=	`EXE_RES_SHIFT;
					reg1_read_o	<=	1'b0;
					reg2_read_o	<=	1'b1;
					imm[4:0]	<=	inst_i[10:6];
					wd_o	<=	inst_i[15:11];
					instvalid	<=	`InstValid;
				end
			end
		end
	end
	
	//���Ҫ��ȡ�ļĴ�������������������ָ��Ҫд��ļĴ�������ֱ������ǰ��
	always @(*)	begin
		if(rst == `RstEnable) begin
			reg1_o	<=	`ZeroWord;
		end else if((reg1_read_o == `ReadEnable)&&(ex_wreg_i == `WriteEnable)&&(reg1_addr_o == ex_wd_i)) begin
			reg1_o	<=	ex_wdata_i;
		end else if((reg1_read_o == `ReadEnable)&&(mem_wreg_i == `WriteEnable)&&(reg1_addr_o == mem_wd_i)) begin
			reg1_o	<=	mem_wdata_i;
		end else if(reg1_read_o == `ReadEnable) begin
			reg1_o	<= reg1_data_i;				//��ȡ�Ĵ�����ֵ
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
			reg2_o	<= reg1_data_i;				//��ȡ�Ĵ�����ֵ
		end else if(reg2_read_o == `ReadDisable)	begin
			reg2_o	<=	imm;
		end else begin
			reg2_o	<=	`ZeroWord;
		end
	end

endmodule
