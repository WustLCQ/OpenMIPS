`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:29 10/31/2015 
// Design Name: 
// Module Name:    defines 
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
//ȫ��
`define RstEnable 1'b1					//��λ�ź���Ч
`define RstDisable 1'b0					//��λ�ź���Ч
`define ZeroWord 32'h00000000			//32λ��ֵ0
`define WriteEnable 1'b1				//ʹ��д
`define WriteDisable 1'b0				//��ֹд
`define ReadEnable 1'b1					//ʹ�ܶ�
`define ReadDisable 1'b0				//��ֹ��
`define AluOpBus 7:0						
`define AluSelBus 2:0
`define InstValid 1'b0					//ָ����Ч
`define InstInvalid 1'b1				//ָ����Ч
`define Stop 1'b1				
`define NoStop 1'b0
`define InDelaySlot 1'b1
`define NotInDelaySlot 1'b0
`define Branch 1'b1
`define NotBranch 1'b0
`define InterruptAssert 1'b1
`define InterruptNotAssert 1'b0
`define TrapAssert 1'b1
`define TrapNotAssert 1'b0
`define True_v 1'b1						//�߼���
`define False_v 1'b0						//�߼���
`define ChipEnable 1'b1					//оƬʹ��
`define ChipDisable 1'b0				//оƬ��ֹ


//ָ��
`define EXE_ORI  6'b001101				//ָ��ori��ָ����


`define EXE_NOP 6'b000000				//

//��Ϊmips32һ����156��ָ��������ٵ���8λ����������ʾ�����еĲ�����
//AluOp
`define EXE_OR_OP    8'b00100101
`define EXE_ORI_OP 	8'b01011010


`define EXE_NOP_OP    8'b00000000

//AluSel
`define EXE_RES_LOGIC 3'b001

`define EXE_RES_NOP 3'b000


//ָ��洢��inst_rom
`define InstAddrBus 31:0				//ROM�ĵ�ַ���߿��
`define InstBus 31:0						//ROM���������߿��
`define InstMemNum 131071				//ROM��ʵ�ʴ�СΪ128KB
`define InstMemNumLog2 17				//ROM��ʵ��ʹ�õ�ַ���


//ͨ�üĴ���regfile
`define RegAddrBus 4:0					//Regfileģ��ĵ�ַ�߿��
`define RegBus 31:0						//Regfileģ��������߿��
`define RegWidth 32						//ͨ�üĴ����Ŀ��
`define DoubleRegWidth 64				//������ͨ�üĴ����Ŀ��
`define DoubleRegBus 63:0				//������ͨ�üĴ����������߿��
`define RegNum 32							//ͨ�üĴ�������
`define RegNumLog2 5						//Ѱַͨ�üĴ���ʹ�õĵ�ַλ��
`define NOPRegAddr 5'b00000
