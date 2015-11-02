`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:33 11/02/2015 
// Design Name: 
// Module Name:    id_ex 
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
//��ʱ��������׶ε����ݣ�����һ��ʱ�����ڴ��ݸ�ִ�н׶�
`include "defines.v"
module id_ex(
	input	rst,
	input	clk,
	input	[`AluOpBus]		id_aluop,
	input	[`AluSelBus]	id_alusel,
	input	[`RegBus]		id_reg1,
	input	[`RegBus]		id_reg2,
	input	[`RegAddrBus]	id_wd,
	input	id_wreg,
	
	output	reg[`AluOpBus]		ex_aluop,
	output	reg[`AluSelBus]	ex_alusel,
	output	reg[`RegBus]		ex_reg1,
	output	reg[`RegBus]		ex_reg2,
	output	reg[`RegAddrBus]	ex_wd,
	output	ex_wreg
    );

	always @(posedge clk) begin
		if(rst == `RstEnable) begin
			ex_aluop <= `EXE_NOP_OP;
			ex_alusel	<=	`EXE_RES_NOP;
			ex_reg1	<=	`ZeroWord;
			ex_reg2	<= `ZeroWord;
			ex_wd	<=	`WriteDisable;
		end else begin
			ex_aluop <= id_aluop;
			ex_alusel	<=	id_alusel;
			ex_reg1	<=	id_reg1;
			ex_reg2	<= id_reg2;
			ex_wd	<=	id_wreg;
		end
	end

endmodule
