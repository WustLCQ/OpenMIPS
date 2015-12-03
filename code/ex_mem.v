`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:13 11/02/2015 
// Design Name: 
// Module Name:    ex_mem 
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
//��ʱ����ִ�н׶ε����ݣ�����һ��ʱ�����ڴ��ݸ��ô�׶�
`include "defines.v"
module ex_mem(
	input	clk,
	input	rst,
	input	[5:0]	stall,
	
	input	[`RegAddrBus]	ex_wd,
	input						ex_wreg,
	input	[`RegBus]		ex_wdata,
	input	[`RegBus]		ex_hi,
	input	[`RegBus]		ex_lo,
	input						ex_whilo,
	
	output	reg[`RegAddrBus]	mem_wd,
	output	reg 					mem_wreg,
	output	reg[`RegBus]		mem_wdata,
	output	reg[`RegBus]		mem_hi,
	output	reg[`RegBus]		mem_lo,
	output	reg					mem_whilo
    );
	 
	 always @(posedge clk)	begin
		if(rst == `RstEnable) begin
			mem_wd <= `NOPRegAddr;
			mem_wreg <= `WriteDisable;
			mem_wdata	<= `ZeroWord;
			mem_hi	<=	`ZeroWord;
			mem_lo	<=	`ZeroWord;
			mem_whilo	<=	`WriteDisable;
		end else if(stall[3] == `Stop && stall[4] == `NoStop) begin
			mem_wd <= `NOPRegAddr;
			mem_wreg <= `WriteDisable;
			mem_wdata	<= `ZeroWord;
			mem_hi	<=	`ZeroWord;
			mem_lo	<=	`ZeroWord;
			mem_whilo	<=	`WriteDisable;
		end else if(stall[3] == `NoStop) begin
			mem_wd <= ex_wd;
			mem_wreg <= ex_wreg;
			mem_wdata	<= ex_wdata;
			mem_hi	<=	ex_hi;
			mem_lo	<=	ex_lo;
			mem_whilo	<=	ex_whilo;
		end
	end
endmodule
