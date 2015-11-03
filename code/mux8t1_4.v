`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:14 10/28/2015 
// Design Name: 
// Module Name:    mux8t1_4 
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
module mux8t1_4(
	input[3 : 0]	x0,x1,x2,x3,x4,x5,x6,x7,
	input [2 : 0]	sel,
	output reg [3 : 0] o
    );
	 
	always @(*)	begin
			case (sel)
				3'b000: o = x0;
				3'b001: o = x1;
				3'b010: o = x2;
				3'b011: o = x3;
				3'b100: o = x4;
				3'b101: o = x5;
				3'b110: o = x6;
				3'b111: o = x7;
			endcase
	end
	 
endmodule
