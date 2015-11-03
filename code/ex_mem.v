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
	
	input	[`RegAddrBus]	ex_wd,
	input						ex_wreg,
	input	[`RegBus]		ex_wdata,
	
	output	reg[`RegAddrBus]	mem_wd,
	output	reg 					mem_wreg,
	output	reg[`RegBus]		mem_wdata
    );
	 
	 always @(posedge clk)	begin
		if(rst == `RstDisable) begin
			mem_wd <= `NOPRegAddr;
			mem_wreg <= `WriteDisable;
			mem_wdata	<= `ZeroWord;
		end else begin
			mem_wd <= ex_wd;
			mem_wreg <= ex_wreg;
			mem_wdata	<= ex_wdata;
		end
	end
endmodule
