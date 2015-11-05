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
	
	output	reg[`RegAddrBus]	wd_o,		//������Ҫд���Ŀ��Ĵ�����ַ
	output	reg	wreg_o,					//ʹ��д
	output	reg[`RegBus]	wdata_o		//Ҫд��Ŀ��Ĵ�����������
    );
	 
	 reg[`RegBus]	logicout;
	 
	 always @(*) begin
		if(rst == `RstEnable) begin
			logicout	<= `ZeroWord;
		end else begin
			case	(aluop_i)
				`EXE_OR_OP:	begin
					logicout	<= reg1_i | reg2_i;	//�߼�������
				end
				default:	begin
					logicout	<=	`ZeroWord;
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
			default:	begin
				wdata_o	<=	`ZeroWord;
			end
		endcase
	end

endmodule
