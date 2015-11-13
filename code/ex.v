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
//ִ�н׶Σ��Բ�������������
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
	
	output	reg[`RegAddrBus]	wd_o,		//������Ҫд���Ŀ��Ĵ�����ַ
	output	reg	wreg_o,					//ʹ��д
	output	reg[`RegBus]	wdata_o		//Ҫд��Ŀ��Ĵ�����������
    );
	 
	 reg[`RegBus]	logicout;				//�����߼�������
	 reg[`RegBus]	shiftres;				//������λ������
	 reg[`RegBus]	moveres;					//������λ�������
	 reg[`RegBus]	HI;
	 reg[`RegBus]	LO;
	 
	 always @(*) begin
		if(rst == `RstEnable) begin
			logicout	<= `ZeroWord;
		end else begin
			case	(aluop_i)
				`EXE_OR_OP:		begin
					logicout	<= reg1_i | reg2_i;	//�߼�������
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

	//�õ����µ�HI��LO�Ĵ�����ֵ
	always @(*) begin
		if(rst == `RstEnable)begin
			HI	<=	`ZeroWord;
			LO	<=	`ZeroWord;
		end
	end
	
	always @(*) begin
		if(rst == `RstEnable) begin
			shiftres	<=	`ZeroWord;
		end else begin
			case (aluop_i)
				`EXE_SLL_OP:	begin			//�߼�����
					shiftres	<=	reg2_i << reg1_i[4:0];
				end
				`EXE_SRL_OP:	begin			//�߼�����
					shiftres	<=	reg2_i >> reg1_i[4:0];
				end
				`EXE_SRA_OP:	begin			//��������
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
			default:	begin
				wdata_o	<=	`ZeroWord;
			end
		endcase
	end

endmodule
