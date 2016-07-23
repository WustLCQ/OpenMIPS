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
//暂时保存译码阶段的数据，在下一个时钟周期传递给执行阶段
`include "defines.v"
module id_ex(
	input	rst,
	input	clk,
	input	[5:0]				stall,
	
	input	[`AluOpBus]		id_aluop,
	input	[`AluSelBus]	id_alusel,
	input	[`RegBus]		id_reg1,
	input	[`RegBus]		id_reg2,
	input	[`RegAddrBus]	id_wd,
	input	id_wreg,	
	input	[`RegBus]		id_link_address,
	input						id_is_in_delayslot,
	input						next_inst_in_delayslot_i,
	
	output	reg[`AluOpBus]		ex_aluop,
	output	reg[`AluSelBus]	ex_alusel,
	output	reg[`RegBus]		ex_reg1,
	output	reg[`RegBus]		ex_reg2,
	output	reg[`RegAddrBus]	ex_wd,
	output	reg					ex_wreg,
	output	reg[`RegBus]		ex_link_address,
	output	reg					ex_is_in_delayslot,
	output	reg					is_in_delayslot_o
    );

	always @(posedge clk) begin
		if(rst == `RstEnable) begin
			ex_aluop <= `EXE_NOP_OP;
			ex_alusel	<=	`EXE_RES_NOP;
			ex_reg1	<=	`ZeroWord;
			ex_reg2	<= `ZeroWord;
			ex_wd		<=	`NOPRegAddr;
			ex_wreg	<=	`WriteDisable;
			ex_link_address	<=	`ZeroWord;
			ex_is_in_delayslot	<=	`NotInDelaySlot;
			is_in_delayslot_o	<=	`NotInDelaySlot;
		end else if(stall[2] == `Stop && stall[3] == `NoStop) begin
			ex_aluop <= `EXE_NOP_OP;
			ex_alusel	<=	`EXE_RES_NOP;
			ex_reg1	<=	`ZeroWord;
			ex_reg2	<= `ZeroWord;
			ex_wd		<=	`NOPRegAddr;
			ex_wreg	<=	`WriteDisable;
			ex_link_address	<=	`ZeroWord;
			ex_is_in_delayslot	<=	`NotInDelaySlot;
		end else if(stall[2] == `NoStop) begin
			ex_aluop <= id_aluop;
			ex_alusel	<=	id_alusel;
			ex_reg1	<=	id_reg1;
			ex_reg2	<= id_reg2;
			ex_wd	<=	id_wd;
			ex_wreg	<=	id_wreg;
			ex_link_address	<=	id_link_address;
			ex_is_in_delayslot	<=	id_is_in_delayslot;
			is_in_delayslot_o	<=	next_inst_in_delayslot_i;
		end
	end

endmodule
