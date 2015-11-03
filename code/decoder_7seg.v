`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:40:18 10/27/2015 
// Design Name: 
// Module Name:    decoder_7seg 
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
module decoder_7seg(
	input [3:0]digit,
	output reg[7:0]segment
    );
	always @(*) begin
		case(digit)
			4'h0: segment = 8'b10000001;
			4'h1: segment = 8'b11001111;
			4'h2: segment = 8'b10010010;
			4'h3: segment = 8'b10000110;
			4'h4: segment = 8'b11001100;
			4'h5: segment = 8'b10100100;
			4'h6: segment = 8'b10100000;
			4'h7: segment = 8'b10001111;
			4'h8: segment = 8'b10000000;
			4'h9: segment = 8'b10000100;
			4'hA: segment = 8'b10001000;
			4'hB: segment = 8'b11100000;
			4'hC: segment = 8'b10110001;
			4'hD: segment = 8'b11000010;
			4'hE: segment = 8'b10110000;
			4'hF: segment = 8'b10111000;
		endcase
	end

endmodule
