`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:48 10/28/2015 
// Design Name: 
// Module Name:    mux4t1_4 
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
module mux4t1_4(
	input [3:0]x0,
	input [3:0]x1,
	input [3:0]x2,
	input [3:0]x3,
	input [1:0]sel,
	output reg [3:0]o
    );
	 always @(*) begin
		case(sel)
			2'b00: o = x0;
			2'b01: o = x1;
			2'b10: o = x2;
			2'b11: o = x3;
		endcase
	end
endmodule
