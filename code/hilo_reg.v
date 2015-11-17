`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:25 11/11/2015 
// Design Name: 
// Module Name:    hilo_reg 
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
module hilo_reg(
	input clk,
	input	rst,
	input we,
	input	[`RegBus]	hi_i,
	input	[`RegBus]	lo_i,
	output	reg[`RegBus]	hi_o,
	output	reg[`RegBus]	lo_o
    );
	 
	 reg [`RegBus]	hi;
	 reg [`RegBus]	lo;
	 
	always @(posedge clk)	begin
		if(rst == `RstEnable) begin
			hi	<=	`ZeroWord;
			lo	<=	`ZeroWord;
		end else if (we == `WriteEnable) begin
			hi	<=	hi_i;
			lo	<=	lo_i;
		end
	end
	
	always @(*)	begin
		if(rst == `RstEnable) begin
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
		end else begin
			hi_o	<=	hi;
			lo_o	<=	lo;
		end
	end

endmodule
