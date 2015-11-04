`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:15 11/03/2015 
// Design Name: 
// Module Name:    openmips_min_sopc 
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
module openmips_min_sopc(
	input wire clk_100mhz,
	input	wire	rst,
	input [4:0]btn,
	input [7:0]sw,
	output reg 	[7:0]seg,
	output reg 	[3:0]an,
	output reg	[7:0]led
    );
	 
	wire[`InstAddrBus]	inst_addr;
	wire[`InstBus]			inst;
	wire						rom_ce;
	wire [31:0]				clkdiv;
	wire 						clk_cpu;
	wire [2:0]				sel;
	wire [3:0]				digit;
	wire [4:0]				btn_out;
	wire [4:0]				btn_pulse;
	wire [7:0]				sw_ok;
	wire [7:0]				seg_tmp;
	wire [3:0]				an_tmp;
	wire						rst_tmp;
	wire						clk;
	
	assign clk = btn[4];
	openmips openmips(
		.clk(clk_100mhz),
		.rst(rst),
		.rom_addr_o(inst_addr),
		.rom_data_i(inst),
		.rom_ce_o(rom_ce));
		
	inst_rom inst_rom(
		.a(inst_addr[11:2]),
		.spo(inst));
		
	decoder_7seg decoder_7seg(
		.digit(digit[3:0]),
		.segment(seg_tmp[7:0]));
		
	mux8t1_4 mux8t1_4(
		.x0(inst[3:0]),
		.x1(inst[7:4]),
		.x2(inst[11:8]),
		.x3(inst[15:12]),
		.x4(inst[19:16]),
		.x5(inst[23:20]),
		.x6(inst[27:24]),
		.x7(inst[31:28]),
		.sel({sw_ok[1],clkdiv[19:18]}),
		.o(digit[3:0]));

		
	mux4t1_4 mux4t1_4(
		.x0(`Seg0),
		.x1(`Seg1),
		.x2(`Seg2),
		.x3(`Seg3),
		.sel(clkdiv[19:18]),
		.o(an_tmp[3:0]));

	anti_jitter anti_jitter(
		.clk(clk_100mhz),
		.btn(btn[4:0]),
		.sw(sw[7:0]),
		.rst(rst_tmp),
		.btn_out(btn_out[4:0]),
		.btn_pulse(btn_pulse[4:0]),
		.sw_ok(sw_ok[7:0]));
		
	clk_div clk_div(
		.clk(clk_100mhz),
		.rst(rst_tmp),
		.sw2(sw_ok[2]),
		.clk_cpu(clk_cpu),
		.clkdiv(clkdiv[31:0]));
	
	always @(*) begin
		an	<=	an_tmp;
		seg	<=	seg_tmp;
		
		case (sw_ok[7:6])
			2'b00:	begin
				led	<=	inst_addr[7:0];
			end
			2'b01:	begin
				led	<=	inst_addr[15:8];
			end
			2'b10:	begin
				led	<= inst_addr[23:16];
			end
			2'b11:	begin
				led	<=	inst_addr[31:24];
			end
		endcase
	end

endmodule
