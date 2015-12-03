`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:38 11/02/2015 
// Design Name: 
// Module Name:    mem 
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
//访存阶段，将数据写入内存中
`include "defines.v"
module mem(
	input	rst,
	input	[`RegAddrBus]	wd_i,
	input	wreg_i,
	input	[`RegBus]	wdata_i,
	input	[`RegBus]	hi_i,
	input	[`RegBus]	lo_i,
	input					whilo_i,
	input	[5:0]			stall,
	
	output	reg[`RegAddrBus]	wd_o,
	output	reg	wreg_o,
	output	reg[`RegBus]	wdata_o,
	output	reg[`RegBus]	hi_o,
	output	reg[`RegBus]	lo_o,
	output	reg				whilo_o
    );
	 
	 always @(*) begin
		if(rst == `RstEnable)	begin
			wd_o	<=	`NOPRegAddr;
			wreg_o	<=	`WriteDisable;
			wdata_o	<=	`ZeroWord;
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
			whilo_o	<=	`WriteDisable;
		end else if(stall[4] == `Stop && stall[5] == `NoStop) begin
			wd_o	<=	`NOPRegAddr;
			wreg_o	<=	`WriteDisable;
			wdata_o	<=	`ZeroWord;
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
			whilo_o	<=	`WriteDisable;
		end else if(stall[4] == `NoStop) begin
			wd_o	<=	wd_i;
			wreg_o	<=	wreg_i;
			wdata_o	<=	wdata_i;
			hi_o	<=	hi_i;
			lo_o	<=	lo_i;
			whilo_o	<=	whilo_i;
		end
	end
endmodule
