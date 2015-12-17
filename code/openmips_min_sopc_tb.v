`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:10:18 11/04/2015
// Design Name:   openmips_min_sopc
// Module Name:   E:/Workspace/ISE/OpenMIPS/code/openmips_min_sopc_tb.v
// Project Name:  OpenMIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: openmips_min_sopc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`include "defines.v"
module openmips_min_sopc_tb;

	// Inputs
	reg clk_100mhz;
//	reg rst;
	reg [4:0] btn;
	reg [7:0] sw;

	// Outputs
	wire [7:0] seg;
	wire [3:0] an;
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	openmips_min_sopc uut (
		.clk_100mhz(clk_100mhz), 
	//	.rst(rst), 
		.btn(btn), 
		.sw(sw), 
		.seg(seg), 
		.an(an), 
		.led(led)
	);
	
	initial	begin
		clk_100mhz = 1'b0;
		forever #10	clk_100mhz	=	~clk_100mhz;
	end
	initial begin
		// Initialize Inputs
		
		btn = 5'b00000;
		sw = 8'b10000000;
		// Wait 100 ns for global reset to finish
		#200	sw	=	8'b00000000;
		#3000	$stop;
		// Add stimulus here
	end
      
endmodule

