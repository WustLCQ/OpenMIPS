`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:15 11/01/2015 
// Design Name: 
// Module Name:    regfile 
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
//寄存器模块，实现了32个通用寄存器，可同时进行两个寄存器的读操作和一个寄存器的写操作
`include "defines.v"
module regfile(
	input clk,
	input rst,
	input we,
	input [`RegAddrBus]	waddr,
	input [`RegBus]		wdata,
	input re1,
	input [`RegAddrBus]	raddr1,
	output reg[`RegBus]		rdata1,
	input re2,
	input [`RegAddrBus]	raddr2,
	output reg[`RegBus]		rdata2
    );
	 
	 reg [`RegBus]	regs[0:`RegNum-1];	//定义32个32位寄存器
	 
	 //写操作，使能写且地址不为0号寄存器的时候，写入数据
	 always @(posedge clk) begin
		if (rst == `RstDisable) begin
			if ((we == `WriteEnable) && (waddr != `RegNumLog2'h0)) begin
				regs[waddr] <= wdata;
			end
		end
	end
	
	//读操作，若读地址与写地址相同，直接传出将要写入的数据
	always @(posedge clk) begin
		if(rst == RstEnable) begin
			rdata1 <= `ZeroWord;
		end else if(raddr1 == `RegNumLog2'h0) begin
			rdata1 <= `ZeroWord;
		end else if((raddr1 == waddr) && (we == `WriteEnable) && (re1 == `ReadEnable)) begin
			rdata1 <= wdata;
		end else if(re1 == `ReadEnable) begin
			rdata1 <= regs[raddr1];
		end else begin
			radata1 <= `ZeroWord;
		end
	end
	
	always @(posedge clk) begin
		if(rst == RstEnable) begin
			rdata2 <= `ZeroWord;
		end else if(raddr2 == `RegNumLog2'h0) begin
			rdata2 <= `ZeroWord;
		end else if((raddr2 == waddr) && (we == `WriteEnable) && (re2 == `ReadEnable)) begin
			rdata2 <= wdata;
		end else if(re2 == `ReadEnable) begin
			rdata2 <= regs[raddr2];
		end else begin
			radata2 <= `ZeroWord;
		end
	end


endmodule
