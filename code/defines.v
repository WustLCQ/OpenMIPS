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
//全局
`define RstEnable 1'b1					//复位信号有效
`define RstDisable 1'b0					//复位信号无效
`define ZeroWord 32'h00000000			//32位数值0
`define WriteEnable 1'b1				//使能写
`define WriteDisable 1'b0				//禁止写
`define ReadEnable 1'b1					//使能读
`define ReadDisable 1'b0				//禁止读
`define AluOpBus 7:0						
`define AluSelBus 2:0
`define InstValid 1'b0					//指令有效
`define InstInvalid 1'b1				//指令无效
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
`define True_v 1'b1						//逻辑真
`define False_v 1'b0						//逻辑假
`define ChipEnable 1'b1					//芯片使能
`define ChipDisable 1'b0				//芯片禁止


//指令
`define EXE_AND  6'b100100
`define EXE_OR   6'b100101
`define EXE_XOR 6'b100110
`define EXE_NOR 6'b100111
`define EXE_ANDI 6'b001100
`define EXE_ORI  6'b001101
`define EXE_XORI 6'b001110
`define EXE_LUI 6'b001111

`define EXE_MOVZ 6'b001010
`define EXE_MOVN 6'b001011
`define EXE_MFHI 6'b010000
`define EXE_MTHI 6'b010001
`define EXE_MFLO 6'b010010
`define EXE_MTLO 6'b010011
`define EXE_SLL  6'b000000
`define EXE_SLLV  6'b000100
`define EXE_SRL  6'b000010
`define EXE_SRLV  6'b000110
`define EXE_SRA  6'b000011
`define EXE_SRAV  6'b000111
`define EXE_SYNC  6'b001111
`define EXE_PREF  6'b110011

`define EXE_NOP 6'b000000
`define SSNOP 32'b00000000000000000000000001000000

`define EXE_SPECIAL_INST 6'b000000
`define EXE_REGIMM_INST 6'b000001
`define EXE_SPECIAL2_INST 6'b011100

//因为mips32一共有156条指令，所以至少得用8位进制数来表示出所有的操作码
//AluOp
`define EXE_AND_OP   8'b00100100
`define EXE_OR_OP    8'b00100101
`define EXE_XOR_OP  8'b00100110
`define EXE_NOR_OP  8'b00100111
`define EXE_ANDI_OP  8'b01011001
`define EXE_ORI_OP  8'b01011010
`define EXE_XORI_OP  8'b01011011
`define EXE_LUI_OP  8'b01011100   

`define EXE_SLL_OP  8'b01111100
`define EXE_SLLV_OP  8'b00000100
`define EXE_SRL_OP  8'b00000010
`define EXE_SRLV_OP  8'b00000110
`define EXE_SRA_OP  8'b00000011
`define EXE_SRAV_OP  8'b00000111

`define EXE_NOP_OP    8'b00000000

//AluSel
`define EXE_RES_LOGIC 3'b001
`define EXE_RES_SHIFT 3'b010

`define EXE_RES_NOP 3'b000


//指令存储器inst_rom
`define InstAddrBus 31:0				//ROM的地址总线宽度
`define InstBus 31:0						//ROM的数据总线宽度
`define InstMemNum 131071				//ROM的实际大小为128KB
`define InstMemNumLog2 17				//ROM的实际使用地址宽度


//通用寄存器regfile
`define RegAddrBus 4:0					//Regfile模块的地址线宽度
`define RegBus 31:0						//Regfile模块的数据线宽度
`define RegWidth 32						//通用寄存器的宽度
`define DoubleRegWidth 64				//两倍的通用寄存器的宽度
`define DoubleRegBus 63:0				//两倍的通用寄存器的数据线宽度
`define RegNum 32							//通用寄存器数量
`define RegNumLog2 5						//寻址通用寄存器使用的地址位数
`define NOPRegAddr 5'b00000

//七位数码管选择信号
`define Seg0 4'b1110
`define Seg1 4'b1101
`define Seg2 4'b1011
`define Seg3 4'b0111