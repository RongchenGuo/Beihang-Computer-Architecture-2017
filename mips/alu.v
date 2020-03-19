`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:26 12/05/2017 
// Design Name: 
// Module Name:    alu 
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
`include "head.v"
module alu(
    input [31:0] A,
    input [31:0] B,
    input [4:0] ALUctrE,
	 input [4:0] shamt_E,
	 input shamtselE,
    output [31:0] ALUout,
	 output overflow,
	 output overflow2
    );
	 wire [4:0] temp;
	 wire [32:0] addexc,subexc;
	 
	 assign temp = (shamtselE==1'b1) ? shamt_E : A[4:0];
	 
	 assign ALUout = (ALUctrE == `ALU_addu) ? A+B:
	                 (ALUctrE == `ALU_subu) ? A-B:
						  (ALUctrE == `ALU_add) ? A+B:
	                 (ALUctrE == `ALU_sub) ? A-B:
						  (ALUctrE == `ALU_store) ? A+B:
						  (ALUctrE == `ALU_or) ? A|B:
						  (ALUctrE == `ALU_lui) ? {B[15:0],16'b0}:
						  (ALUctrE == `ALU_sra) ? $signed($signed(B)>>>temp):
						  (ALUctrE == `ALU_slt) ? ($signed(A)<$signed(B)):
						  (ALUctrE == `ALU_and) ? A&B:
						  (ALUctrE == `ALU_nor) ? ~(A|B):
						  (ALUctrE == `ALU_sll) ? B<<temp:
						  (ALUctrE == `ALU_srl) ? B>>temp:
						  (ALUctrE == `ALU_xor) ? A^B:
						  (ALUctrE == `ALU_sltu) ? (A<B):0;
	 
	 assign addexc = {A[31],A}+{B[31],B};
	 assign subexc = {A[31],A}-{B[31],B};
	 assign overflow = (ALUctrE == `ALU_add) ? (addexc[32]!=addexc[31]) :
	                   (ALUctrE == `ALU_sub) ? (subexc[32]!=subexc[31]) : 0;
	 assign overflow2 = (ALUctrE == `ALU_store) ? (addexc[32]!=addexc[31]) : 0;

endmodule
