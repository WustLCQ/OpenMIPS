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
//�Ĵ���ģ�飬ʵ����32��ͨ�üĴ�������ͬʱ���������Ĵ����Ķ�������һ���Ĵ�����д����
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
	 
	 reg [`RegBus]	regs[0:`RegNum-1];	//����32��32λ�Ĵ���
	 integer i;								
 
	 
	 //д������ʹ��д�ҵ�ַ��Ϊ0�żĴ�����ʱ��д������
	 always @(posedge clk) begin
		if (rst == `RstDisable) begin
			if ((we == `WriteEnable) && (waddr != `RegNumLog2'h0)) begin
				regs[waddr] <= wdata;
			end
		end else begin
			for(i=0;	i<	`RegNum;	i=i+1)
				regs[i]	<=	`ZeroWord;
		end
	end
	
	//��������������ַ��д��ַ��ͬ��ֱ�Ӵ�����Ҫд�������
	always @(*) begin
		if(rst == `RstEnable) begin
			rdata1 <= `ZeroWord;
		end else if(raddr1 == `RegNumLog2'h0) begin
			rdata1 <= `ZeroWord;
		end else if((raddr1 == waddr) && (we == `WriteEnable) && (re1 == `ReadEnable)) begin
			rdata1 <= wdata;
		end else if(re1 == `ReadEnable) begin
			rdata1 <= regs[raddr1];
		end else begin
			rdata1 <= `ZeroWord;
		end
	end
	
	always @(*) begin
		if(rst == `RstEnable) begin
			rdata2 <= `ZeroWord;
		end else if(raddr2 == `RegNumLog2'h0) begin
			rdata2 <= `ZeroWord;
		end else if((raddr2 == waddr) && (we == `WriteEnable) && (re2 == `ReadEnable)) begin
			rdata2 <= wdata;
		end else if(re2 == `ReadEnable) begin
			rdata2 <= regs[raddr2];
		end else begin
			rdata2 <= `ZeroWord;
		end
	end


endmodule
