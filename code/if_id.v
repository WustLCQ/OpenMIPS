`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:27 11/01/2015 
// Design Name: 
// Module Name:    if_id 
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
//��ʱ����ȡָ�׶�ȡ�õ�ָ��Լ���Ӧ��ָ���ַ������һ��ʱ�����ڴ��ݵ�����׶�
`include "defines.v"
module if_id(
	input clk,
	input rst,
	input	[5:0]				stall,
	
	input [`InstAddrBus]	if_pc,
	input [`InstBus]		if_inst,
	
	output reg[`InstAddrBus]	id_pc,
	output reg[`InstBus]			id_inst
    );
	 
	 always @(posedge clk) begin
		if(rst == `RstEnable) begin
			id_pc <= `ZeroWord;
			id_inst <= `ZeroWord;
		end else if(stall[1] == `Stop && stall[2] == `NoStop) begin
			id_pc <= `ZeroWord;
			id_inst <= `ZeroWord;
		end else if(stall[1] == `NoStop) begin
			id_pc <= if_pc;
			id_inst <= if_inst;
		end
	end
endmodule
