`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:36 10/27/2015 
// Design Name: 
// Module Name:    anti_jitter 
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
module anti_jitter(
   input	clk, 
	input	[4:0]  btn, 
	input	[7:0]  sw, 
	output  reg  [4:0]  btn_out, 
	output  reg  [4:0]  btn_pulse, 
	output  reg  [7:0]  sw_ok 
	); 

	reg  [31:0]  counter; 
	reg  [4:0]  btn_temp; 
	reg  [7:0]  sw_temp; 
	reg  pulse; 
	always  @  (posedge  clk)  begin 
		btn_temp  <=  btn; 
		sw_temp  <=  sw; 
		if  (btn_temp  !=  btn  ||  sw_temp  !=  sw)  begin 
			counter  <=  32'h0000_0000; 
			pulse  <=  0; 
		end  else  if  (counter<100000)  begin 
			counter<=counter+1; 
		end  else  begin 
			btn_out  <=  btn; 
			sw_ok  <=  sw; 
			pulse  <=  1; 
			if  (!pulse)  begin 
				btn_pulse  <=  btn; 
			end  else  begin 
				btn_pulse  <=  0; 
			end 
		end
	end

endmodule
