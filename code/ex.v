`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:06 11/02/2015 
// Design Name: 
// Module Name:    ex 
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
//ִ�н׶Σ��Բ�������������
`include "defines.v"
module ex(
	input	rst,
	input	[`AluOpBus]		aluop_i,
	input	[`AluSelBus]	alusel_i,
	input	[`RegBus]		reg1_i,
	input	[`RegBus]		reg2_i,
	input	[`RegAddrBus]	wd_i,
	input	wreg_i,
	
	input	[`RegBus]		hi_i,
	input	[`RegBus]		lo_i,
	
	input	[`RegBus]		wb_hi_i,
	input	[`RegBus]		wb_lo_i,
	input						wb_whilo_i,
	
	input	[`RegBus]		mem_hi_i,
	input	[`RegBus]		mem_lo_i,
	input						mem_whilo_i,
	
	output	reg[`RegBus]	hi_o,
	output	reg[`RegBus]	lo_o,
	output	reg				whilo_o,
	
	output	reg[`RegAddrBus]	wd_o,		//������Ҫд���Ŀ��Ĵ�����ַ
	output	reg	wreg_o,					//ʹ��д
	output	reg[`RegBus]	wdata_o,		//Ҫд��Ŀ��Ĵ�����������
	output	reg	stallreq_from_ex		//��ˮ����ָͣ��
    );
	 
	 reg[`RegBus]	logicout;				//�����߼�������
	 reg[`RegBus]	shiftres;				//������λ������
	 reg[`RegBus]	moveres;					//������λ�������
	 reg[`RegBus]	HI;
	 reg[`RegBus]	LO;
	 
	 wire				ov_sum;					//����������
	 wire				reg1_eq_reg2;			//��һ���������Ƿ���ڵڶ���������
	 wire				reg1_lt_reg2;			//��һ���������Ƿ�С��ڶ���������
	 reg[`RegBus]	arithmeticres;			//������������Ľ��
	 wire[`RegBus]	reg2_i_mux;				//��������ĵڶ����������Ĳ���
	 wire[`RegBus]	reg1_i_not;				//��������ĵ�һ���������ķ���
	 wire[`RegBus]	result_sum;				//����ӷ����
	 wire[`RegBus]	opdata1_mult;			//�˷������еı�����
	 wire[`RegBus]	opdata2_mult;			//�˷������еĳ���
	 wire[`DoubleRegBus]	hilo_temp;		//��ʱ����˷���������Ϊ64λ
	 reg[`DoubleRegBus]	mulres;			//����˷���������Ϊ64λ
	 
	 //����Ǽ��������з��űȽ����㣬��ôreg2_i_mux���ڵڶ���������reg2_i�Ĳ���
	 //����reg2_i_mux�͵��ڵڶ���������
	 assign	reg2_i_mux	=	((aluop_i == `EXE_SUB_OP)||
									 (aluop_i == `EXE_SUBU_OP)||
									 (aluop_i == `EXE_SLT_OP))?
									(~reg2_i)+1:reg2_i;
	
	//�����������
	//A������Ǽӷ����㣬��ʱreg2_i_mux���ǵڶ���������reg2_i
	//	����result_sum���Ǽӷ�����Ľ��
	//B������Ǽ������㣬��ʱreg2_i_mux���ǵڶ���������reg2_i�Ĳ���
	//	����result_sum���Ǽ�������Ľ��
	//C��������з��űȽ����㣬��ʱreg2_i_mux���ǵڶ���������reg2_i�Ĳ���
	//	����result_sum�Ǽ�������Ľ��������ͨ���жϼ����Ľ���Ƿ�С�������Ƚ�
	assign result_sum	=	reg1_i + reg2_i_mux;
	
	//�ڼӷ�ָ��ͼ���ָ��ִ�е�ʱ��Ҫ�ж������������������ᷢ�������
	//A��reg1_iΪ������reg2_i_muxΪ������������֮��Ϊ����
	//B��reg1_iΪ������reg2_i_muxΪ������������֮��Ϊ����
	assign ov_sum = ((!reg1_i[31] && !reg2_i_mux[31]) && result_sum[31])||
							((reg1_i[31] && reg2_i_mux[31]) && (!result_sum[31]));
	
	
	//���������1�Ƿ�С�ڲ�����2����Ϊ���������
	//A��aluop_iΪEXE_SLT_OP��ʾ�з��űȽ����㣬��ʱ�ַ����������
	//	A1��reg1_iΪ������reg2_iΪ��������Ȼreg1_iС��reg2_i
	//	A2��reg1_iΪ������reg2_iΪ����������reg1_i��ȥreg2_iС��0,��ʱreg1_iС��reg2_i
	//	A3��reg1_iΪ������reg2_iΪ����������reg1_i��ȥreg2_iС��0,��ʱreg1_iС��reg2_i
	//B���޷������Ƚϵ�ʱ��ֱ��ʹ�ñȽ�������Ƚ�reg1_i��reg2_i
	assign reg1_lt_reg2 = (aluop_i == `EXE_SLT_OP)?
								((reg1_i[31] && !reg2_i[31])||
								((!reg1_i[31] && !reg2_i[31]) && result_sum[31])||
								(reg1_i[31] && reg2_i[31] && result_sum[31])):
								(reg1_i < reg2_i);
	
	//��һ���������ķ���
	assign reg1_i_not = ~reg1_i;
	
	//ȡ�ó˷�����ı�������������з��ų˷��ұ������Ǹ�������ȡ����
	assign opdata1_mult = (((aluop_i == `EXE_MUL_OP)||(aluop_i == `EXE_MULT_OP)) && 
								(reg1_i[31] == 1'b1)) ? (~reg1_i + 1) : reg1_i;
	
	//ȡ�ó˷�����ĳ�����������з��ų˷��ҳ����Ǹ�������ȡ����
	assign opdata2_mult = (((aluop_i == `EXE_MUL_OP)||(aluop_i == `EXE_MULT_OP)) && 
								(reg2_i[31] == 1'b1)) ? (~reg2_i + 1) : reg2_i;
								
	//�õ���ʱ�˷�����������ڱ���hilo_temp��
	assign hilo_temp = opdata1_mult * opdata2_mult;
	 
	 //�߼�����
	 always @(*) begin
		if(rst == `RstEnable) begin
			logicout	<= `ZeroWord;
		end else begin
			case	(aluop_i)
				`EXE_OR_OP:		begin
					logicout	<= reg1_i | reg2_i;	//�߼�������
				end
				`EXE_AND_OP: 	begin
					logicout	<=	reg1_i & reg2_i;
				end
				`EXE_NOR_OP: 	begin
					logicout	<=	~(reg1_i | reg2_i);
				end
				`EXE_XOR_OP: 	begin
					logicout	<=	reg1_i ^ reg2_i;
				end
				default:	begin
					logicout	<=	`ZeroWord;
				end
			endcase
		end
	end

	//�õ����µ�HI��LO�Ĵ�����ֵ�����ô�ͻ�д�׶�HI��LO�Ĵ���������ǰ��
	always @(*) begin
		if(rst == `RstEnable)begin
			HI	<=	`ZeroWord;
			LO	<=	`ZeroWord;
		end else if(mem_whilo_i == `WriteEnable) begin
			HI <= mem_hi_i;
			LO <= mem_lo_i;
		end else if(wb_whilo_i == `WriteEnable) begin
			HI <= wb_hi_i;
			LO <= wb_lo_i;
		end else begin
			HI <= hi_i;
			LO <= lo_i;
		end
	end
	
	//�ƶ�ָ��
	always @(*) begin
		if(rst == `RstEnable) begin
			moveres	<=	`ZeroWord;
		end else begin
			moveres	<=	`ZeroWord;
			case(aluop_i)
				`EXE_MFHI_OP:	begin
					moveres	<=	HI;
				end
				`EXE_MFLO_OP:	begin
					moveres	<=	LO;
				end
				`EXE_MOVZ_OP:	begin
					moveres	<=	reg1_i;
				end
				`EXE_MOVN_OP:	begin
					moveres	<=	reg1_i;
				end
				default:	begin
				end
			endcase
		end
	end
	
	//��λ����
	always @(*) begin
		if(rst == `RstEnable) begin
			shiftres	<=	`ZeroWord;
		end else begin
			case (aluop_i)
				`EXE_SLL_OP:	begin			//�߼�����
					shiftres	<=	reg2_i << reg1_i[4:0];
				end
				`EXE_SRL_OP:	begin			//�߼�����
					shiftres	<=	reg2_i >> reg1_i[4:0];
				end
				`EXE_SRA_OP:	begin			//��������
					shiftres	<=	({32{reg2_i[31]}}<<(6'd32-{1'b0,reg1_i[4:0]})) | reg2_i>>reg1_i[4:0];	
				end
				default:	begin
					shiftres	<=	`ZeroWord;
				end
			endcase
		end
	end
	
	//��������
	always @(*) begin
		if(rst == `RstEnable) begin
			arithmeticres	<=	`ZeroWord;
		end else begin
			case (aluop_i)
				`EXE_SLT_OP,`EXE_SLTU_OP:	begin
					arithmeticres	<=	reg1_lt_reg2;
				end
				`EXE_ADD_OP,`EXE_ADDU_OP,`EXE_ADDI_OP,`EXE_ADDIU_OP:	begin
					arithmeticres	<=	result_sum;
				end
				`EXE_SUB_OP,`EXE_SUBU_OP:	begin
					arithmeticres	<=	result_sum;
				end
				`EXE_CLZ_OP:	begin
					arithmeticres	<=	reg1_i[31] ? 0 :
											reg1_i[30] ? 1	:
											reg1_i[29] ? 2 :
											reg1_i[28] ? 3	:
											reg1_i[27] ? 4 :
											reg1_i[26] ? 5	:
											reg1_i[25] ? 6 :
											reg1_i[24] ? 7	:
											reg1_i[23] ? 8 :
											reg1_i[22] ? 9	:
											reg1_i[21] ? 10 :
											reg1_i[20] ? 11 :
											reg1_i[19] ? 12 :
											reg1_i[18] ? 13 :
											reg1_i[17] ? 14 :
											reg1_i[16] ? 15 :
											reg1_i[15] ? 16 :
											reg1_i[14] ? 17 :
											reg1_i[13] ? 18 :
											reg1_i[12] ? 19 :
											reg1_i[11] ? 20 :
											reg1_i[10] ? 21 :
											reg1_i[9] ? 22 :
											reg1_i[8] ? 23	:
											reg1_i[7] ? 24 :
											reg1_i[6] ? 25	:
											reg1_i[5] ? 26 :
											reg1_i[4] ? 27 :
											reg1_i[3] ? 28 :
											reg1_i[2] ? 29 :
											reg1_i[1] ? 30 :
											reg1_i[0] ? 31 : 32;
				end
				`EXE_CLO_OP:	begin
					arithmeticres	<=	reg1_i_not[31] ? 0 :
											reg1_i_not[30] ? 1 :
											reg1_i_not[29] ? 2 :
											reg1_i_not[28] ? 3 :
											reg1_i_not[27] ? 4 :
											reg1_i_not[26] ? 5 :
											reg1_i_not[25] ? 6 :
											reg1_i_not[24] ? 7 :
											reg1_i_not[23] ? 8 :
											reg1_i_not[22] ? 9 :
											reg1_i_not[21] ? 10 :
											reg1_i_not[20] ? 11 :
											reg1_i_not[19] ? 12 :
											reg1_i_not[18] ? 13 :
											reg1_i_not[17] ? 14 :
											reg1_i_not[16] ? 15 :
											reg1_i_not[15] ? 16 :
											reg1_i_not[14] ? 17 :
											reg1_i_not[13] ? 18 :
											reg1_i_not[12] ? 19 :
											reg1_i_not[11] ? 20 :
											reg1_i_not[10] ? 21 :
											reg1_i_not[9] ? 22 :
											reg1_i_not[8] ? 23 :
											reg1_i_not[7] ? 24 :
											reg1_i_not[6] ? 25 :
											reg1_i_not[5] ? 26 :
											reg1_i_not[4] ? 27 :
											reg1_i_not[3] ? 28 :
											reg1_i_not[2] ? 29 :
											reg1_i_not[1] ? 30 :
											reg1_i_not[0] ? 31 : 32;
				end
				default:	begin
					arithmeticres	<=	`ZeroWord;
				end
			endcase
		end
	end
	
	//�˷�����
	//������з��ų˷�mult��mul�ұ����������һ��һ��ʱ����Ҫ��hilo_temp����
	always @(*) begin
		if(rst == `RstEnable) begin
			mulres	<=	{`ZeroWord,`ZeroWord};
		end else if ((aluop_i == `EXE_MULT_OP) || (aluop_i == `EXE_MUL_OP)) begin
			if(reg1_i[31] ^ reg2_i[31] == 1'b1) begin
				mulres	<=	~hilo_temp	+	1;
			end else begin
				mulres	<=	hilo_temp;
			end
		end else begin
			mulres	<=	hilo_temp;
		end
	end
	
	always @(*) begin
		wd_o	<=	wd_i;
		if(((aluop_i == `EXE_ADD_OP) || (aluop_i == `EXE_ADDI_OP) || 
			(aluop_i == `EXE_SUB_OP)) && (ov_sum == 1'b1))	begin
			wreg_o	<=	`WriteDisable;
		end else begin
			wreg_o	<=	wreg_i;
		end
		case	(alusel_i)
			`EXE_RES_LOGIC:	begin
				wdata_o	<=	logicout;
			end
			`EXE_RES_SHIFT:	begin
				wdata_o	<=	shiftres;
			end
			`EXE_RES_MOVE:	begin
				wdata_o	<=	moveres;
			end
			`EXE_RES_ARITHMETIC:	begin
				wdata_o	<=	arithmeticres;
			end
			`EXE_RES_MUL:	begin
				wdata_o	<=	mulres[31:0];
			end
			default:	begin
				wdata_o	<=	`ZeroWord;
			end
		endcase
	end
	
	//MTHI��MTLOָ��
	always @(*) begin
		if(rst == `RstEnable) begin
			whilo_o	<=	`WriteDisable;
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
		end else if((aluop_i == `EXE_MULT_OP) || 
						(aluop_i	== `EXE_MULTU_OP))	begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	mulres[63:32];
			lo_o	<=	mulres[31:0];
		end else if(aluop_i	==	`EXE_MTHI_OP)	begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	reg1_i;
			lo_o	<=	LO;
		end else if(aluop_i	== `EXE_MTLO_OP)	begin
			whilo_o	<=	`WriteEnable;
			hi_o	<=	HI;
			lo_o	<=	reg1_i;
		end else begin
			whilo_o	<=	`WriteDisable;
			hi_o	<=	`ZeroWord;
			lo_o	<=	`ZeroWord;
		end
	end

endmodule
