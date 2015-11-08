`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:33:25 10/31/2015 
// Design Name: 
// Module Name:    pc_reg 
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
//pcģ�飬����ָ���ַ
`include "defines.v"
module pc_reg(
	input clk,
	input rst,
	output reg[`InstAddrBus] pc,
	output reg	ce
    );

	always @(posedge clk) begin
		if (rst == `RstEnable) begin
			ce <= `ChipDisable;
		end else begin
			ce <= `ChipEnable;
		end
	end
	
	always @(posedge clk) begin
		//������if(ce == `ChipDisable)���������ڸ�λ����Ҫ�ٵ�һ��ʱ������pc�ſ�ʼ�仯
		//������Ϊ�ĳ�rst == `RstEnableҪ��һЩ
		if (rst == `RstEnable) begin
			pc <= `ZeroWord;
		end else begin
			pc <= pc + 4'h4;
		end
	end

endmodule
