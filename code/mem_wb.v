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
	
	input	[`RegAddrBus]	mem_wd,
	input	mem_wreg,
	input	[`RegBus]	mem_wdata,
	
	output	reg[`RegAddrBus]	wb_wd,
	output	reg	wb_wreg,
	output	reg[`RegBus]	wb_wdata
    );
	 
	 always @(posedge clk) begin
		if(rst == `RstEnable)	begin
			wb_wd <= `NOPRegAddr;
			wb_wreg <= `WriteDisable;
			wb_wdata <= `ZeroWord;
		end else begin
			wb_wd	<=	mem_wd;
			wb_wreg	<=	mem_wreg;
			wb_wdata	<=	mem_wdata;
		end
	end

endmodule
