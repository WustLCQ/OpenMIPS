`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:14 12/01/2015 
// Design Name: 
// Module Name:    ctrl 
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
`include "defines.v"
module ctrl(
	input	rst,
	input	stallreq_from_id,
	input	stallreq_from_ex,
	output	reg[5:0]	stall
    );

	always @(*)	begin
		if(rst == `RstEnable) begin
			stall	<=	6'b000000;
		end else if(stallreq_from_ex == `Stop) begin
			stall <=	6'b001111;
		end else if(stallreq_from_id == `Stop) begin
			stall <=	6'b000111;
		end else begin
			stall <= 6'b000000;
		end
	end

endmodule
