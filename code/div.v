`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:47 12/10/2015 
// Design Name: 
// Module Name:    div 
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
module div(
	input	clk,
	input	rst,
	input	signed_div_i,						//是否有符号除法
	input	[`RegBus]	opdata1_i,
	input	[`RegBus]	opdata2_i,
	input	start_i,								//是否开始除法运算
	input	annul_i,								//是否停止除法运算
	
	output	reg[`DoubleRegBus]	result_o,
	output	reg	ready_o
    );
	
	wire[32:0]	div_temp;
	reg[5:0]		cnt;							//试商法进行了几轮
	reg[64:0]	dividend;
	reg[1:0]		state;
	reg[`RegBus]	divisor;
	reg[`RegBus]	temp_op1;
	reg[`RegBus]	temp_op2;
	
	assign	div_temp	=	{1'b0,dividend[63:32]} - {1'b0,divisor};
	
	always @(posedge clk) begin
		if(rst == `RstEnable)	begin
			state	<=	`DivFree;
			ready_o	<=	`DivResultNotReady;
			result_o	<=	{`ZeroWord,`ZeroWord};
		end else begin
			case (state)
			`DivFree:	begin								//除法模块空闲
				if(start_i	==	`DivStart && annul_i == 1'b0)	begin
					if(opdata2_i == `ZeroWord)	begin
						state	<=	`DivByZero;				//除数为0
					end else begin
						state	<=	`DivOn;					//除数不为0
						cnt	<=	6'b000000;
						if(signed_div_i == 1'b1 && opdata1_i[31] == 1'b1) begin
							temp_op1	=	~opdata1_i + 1;		//被除数取补码
						end else begin
							temp_op1	=	opdata1_i;
						end
						if(signed_div_i == 1'b1 && opdata2_i[31] == 1'b1) begin
							temp_op2	=	~opdata2_i + 1;		//除数取补码
						end else begin
							temp_op2	=	opdata2_i;
						end
						dividend	<=	{`ZeroWord,`ZeroWord};
						dividend[32:1]	<=	temp_op1;			//取被除数最高位出来进行减除数
						divisor	<=	temp_op2;
					end 
				end else begin							//没有开始除法运算
					ready_o	<=	`DivResultNotReady;
					result_o	<=	{`ZeroWord,`ZeroWord};
				end
			end 
			`DivByZero:	begin							//除数为0，直接结束除法
				dividend	<=	{`ZeroWord,`ZeroWord};
				state	<=	`DivEnd;
			end
			`DivOn:	begin
				if(annul_i	==	1'b0)	begin
					if(cnt != 6'b100000)	begin		//cnt不为32,表示试商法还没有结束
						if(div_temp[32] == 1'b1) begin
							//减法结果为负数，表示商为0，同时将被除数左移一位，末位商0
							dividend	<=	{dividend[63:0],1'b0};
						end else begin
							//减法结果为正数，剩下的被除数需要减去除数，末位商1
							dividend	<=	{div_temp[31:0],dividend[31:0],1'b1};
						end
						cnt <= cnt+1;
					end else begin
						//无符号数除法，如果除数与被除数最高位不同号，则对商取补码
						if((signed_div_i == 1'b1) &&
							(opdata1_i[31] ^ opdata2_i[31] == 1'b1))	begin
							dividend[31:0]	<=	(~dividend[31:0] + 1);
						end
						//无符号数除法，如果被除数与余数最高位不同号，则对余数取补码
						if((signed_div_i == 1'b1) &&
							(opdata1_i[31] ^ dividend[64] == 1'b1))	begin
							dividend[64:33] <= (~dividend[64:33] + 1);
						end
						state	<=	`DivEnd;
						cnt	<=	6'b000000;
					end	
				end else begin
					state	<=	`DivFree;
				end
			end
			`DivEnd:	begin
				result_o	<=	{dividend[64:33], dividend[31:0]};
				ready_o	<=	`DivResultReady;
				if(start_i	== `DivStop) begin
					state	<=	`DivFree;
					ready_o	<=	`DivResultNotReady;
					result_o	<=	{`ZeroWord,`ZeroWord};
				end
			end
			endcase
		end
	end
endmodule
