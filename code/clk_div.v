`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:12 10/27/2015 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(
	input wire clk,
	input wire rst,
	input wire sw2,
	output reg [31:0] clkdiv,
	output wire clk_cpu
	);

	always @ (posedge clk or posedge rst) begin
		if (rst) begin
			clkdiv <= 0;
		end else begin
			clkdiv <= clkdiv + 1'b1;
		end
	end

	assign clk_cpu = sw2 ? clkdiv[24] : clkdiv[1];	// SW2 Ñ¡ÔñÊ±ÖÓ

endmodule
