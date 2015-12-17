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
	input	signed_div_i,						//�Ƿ��з��ų���
	input	[`RegBus]	opdata1_i,
	input	[`RegBus]	opdata2_i,
	input	start_i,								//�Ƿ�ʼ��������
	input	annul_i,								//�Ƿ�ֹͣ��������
	
	output	reg[`DoubleRegBus]	result_o,
	output	reg	ready_o
    );
	
	wire[32:0]	div_temp;
	reg[5:0]		cnt;							//���̷������˼���
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
			`DivFree:	begin								//����ģ�����
				if(start_i	==	`DivStart && annul_i == 1'b0)	begin
					if(opdata2_i == `ZeroWord)	begin
						state	<=	`DivByZero;				//����Ϊ0
					end else begin
						state	<=	`DivOn;					//������Ϊ0
						cnt	<=	6'b000000;
						if(signed_div_i == 1'b1 && opdata1_i[31] == 1'b1) begin
							temp_op1	=	~opdata1_i + 1;		//������ȡ����
						end else begin
							temp_op1	=	opdata1_i;
						end
						if(signed_div_i == 1'b1 && opdata2_i[31] == 1'b1) begin
							temp_op2	=	~opdata2_i + 1;		//����ȡ����
						end else begin
							temp_op2	=	opdata2_i;
						end
						dividend	<=	{`ZeroWord,`ZeroWord};
						dividend[32:1]	<=	temp_op1;			//ȡ���������λ�������м�����
						divisor	<=	temp_op2;
					end 
				end else begin							//û�п�ʼ��������
					ready_o	<=	`DivResultNotReady;
					result_o	<=	{`ZeroWord,`ZeroWord};
				end
			end 
			`DivByZero:	begin							//����Ϊ0��ֱ�ӽ�������
				dividend	<=	{`ZeroWord,`ZeroWord};
				state	<=	`DivEnd;
			end
			`DivOn:	begin
				if(annul_i	==	1'b0)	begin
					if(cnt != 6'b100000)	begin		//cnt��Ϊ32,��ʾ���̷���û�н���
						if(div_temp[32] == 1'b1) begin
							//�������Ϊ��������ʾ��Ϊ0��ͬʱ������������һλ��ĩλ��0
							dividend	<=	{dividend[63:0],1'b0};
						end else begin
							//�������Ϊ������ʣ�µı�������Ҫ��ȥ������ĩλ��1
							dividend	<=	{div_temp[31:0],dividend[31:0],1'b1};
						end
						cnt <= cnt+1;
					end else begin
						//�޷�������������������뱻�������λ��ͬ�ţ������ȡ����
						if((signed_div_i == 1'b1) &&
							(opdata1_i[31] ^ opdata2_i[31] == 1'b1))	begin
							dividend[31:0]	<=	(~dividend[31:0] + 1);
						end
						//�޷�����������������������������λ��ͬ�ţ��������ȡ����
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
