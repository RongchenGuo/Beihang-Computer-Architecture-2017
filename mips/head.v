`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:32 12/05/2017 
// Design Name: 
// Module Name:    head 
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
`define ALU_addu 5'b00000
`define ALU_subu 5'b00001
`define ALU_or 5'b00010
`define ALU_lui 5'b00011
`define ALU_sra 5'b00100
`define ALU_slt 5'b00101
`define ALU_and 5'b00110
`define ALU_nor 5'b00111
`define ALU_sll 5'b01000
`define ALU_srl 5'b01001
`define ALU_xor 5'b01010
`define ALU_sltu 5'b01011
`define ALU_add 5'b01100
`define ALU_sub 5'b01101
`define ALU_store 5'b01110

`define ALU_mult 5'b10000
`define ALU_multu 5'b10001
`define ALU_div 5'b10010
`define ALU_divu 5'b10011

`define PC_sel_plus4 3'b000
`define PC_sel_branch 3'b001
`define PC_sel_jal 3'b010
`define PC_sel_jr 3'b011
`define PC_sel_4180 3'b100
`define PC_sel_epc 3'b101

`define ResALU 2'b01
`define ResDM 2'b10
`define ResPC 2'b00
`define ResNW 2'b11