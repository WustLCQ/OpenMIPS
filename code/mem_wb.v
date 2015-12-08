`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:14 11/02/2015 
// Design Name: 
// Module Name:    mem_wb 
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
`include "defines.v"
module mem_wb(
	input	clk,
	input	rst,
	input	[5:0]	stall,
	
	input	[`RegAddrBus]	mem_wd,
	input	mem_wreg,
	input	[`RegBus]	mem_wdata,
	input	[`RegBus]	mem_hi,
	input	[`RegBus]	mem_lo,
	input					mem_whilo,
	
	output	reg[`RegAddrBus]	wb_wd,
	output	reg	wb_wreg,
	output	reg[`RegBus]	wb_wdata,
	output	reg[`RegBus]	wb_hi,
	output	reg[`RegBus]	wb_lo,
	output	reg[`RegBus]	wb_whilo
    );
	 
	 always @(posedge clk) begin
		if(rst == `RstEnable)	begin
			wb_wd <= `NOPRegAddr;
			wb_wreg <= `WriteDisable;
			wb_wdata <= `ZeroWord;
			wb_hi	<=	`ZeroWord;
			wb_lo	<=	`ZeroWord;
			wb_whilo	<=	`WriteDisable;
		end else if(stall[4] == `Stop && stall[5] == `NoStop) begin
			wb_wd <= `NOPRegAddr;
			wb_wreg <= `WriteDisable;
			wb_wdata <= `ZeroWord;
			wb_hi	<=	`ZeroWord;
			wb_lo	<=	`ZeroWord;
			wb_whilo	<=	`WriteDisable;
		end else if(stall[4] == `NoStop) begin
			wb_wd	<=	mem_wd;
			wb_wreg	<=	mem_wreg;
			wb_wdata	<=	mem_wdata;
			wb_hi	<=	mem_hi;
			wb_lo	<=	mem_lo;
			wb_whilo	<=	mem_whilo;
		end
	end

endmodule
