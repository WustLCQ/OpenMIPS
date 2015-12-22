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
//pc模块，给出指令地址
`include "defines.v"
module pc_reg(
	input clk,
	input rst,
	input [5:0]	stall,
	input	branch_flag_i,
	input	[`RegBus]	branch_target_address_i,
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
		//书上是if(ce == `ChipDisable)，但这样在复位后还需要再等一个时钟周期pc才开始变化
		//个人认为改成rst == `RstEnable要好一些
		if (rst == `RstEnable) begin
			pc <= `ZeroWord;
		end else if(stall[0] == `NoStop) begin
			if(branch_flag_i	==	`Branch)	begin
				pc	<=	branch_target_address_i;
			end else begin
				pc <= pc + 4'h4;
			end
		end
	end

endmodule
