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
//暂时保存取指阶段取得的指令，以及对应的指令地址，在下一个时钟周期传递到译码阶段
`include "defines.v"
module if_id(
	input clk,
	input rst,
	
	input [`InstAddrBus]	if_pc,
	input [`InstBus]		if_inst,
	
	output reg[`InstAddrBus]	id_pc,
	output reg[`InstBus]			id_inst
    );
	 
	 always @(posedge clk) begin
		if(rst == `RstEnable) begin
			id_pc <= `ZeroWord;
			id_inst <= `ZeroWord;
		end else begin
			id_pc <= if_pc;
			id_inst <= if_inst;
		end
	end
endmodule
