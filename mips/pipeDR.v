`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:57 12/05/2017 
// Design Name: 
// Module Name:    pipeDR 
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
module pipeDR(
    input [31:0] instr,
	 input [31:0] PC,
    output reg [31:0] instr_D=0,
	 output reg [31:0] PC_D=32'b0000_0000_0000_0000_0011_0000_0000_0000,
	 output reg [2:0] nPC_sel_D=0,
    input clk,
	 input IR_en,
	 input reset,
	 input IFID_clr,
	 input nPC_sel_eret,
	 input [2:0] nPC_sel
    );
	 
	 
	 always @(posedge clk) begin
	 if (reset|IFID_clr|(nPC_sel_eret&IR_en)) begin
	 instr_D <= 0;
	 PC_D <= 32'b0000_0000_0000_0000_0011_0000_0000_0000;
	 nPC_sel_D <= 0;
	 end
	 else if (IR_en) begin
	 instr_D <= instr;
	 PC_D <= PC;
	 nPC_sel_D <= nPC_sel;
	 end
	 else begin
	   ;
	 end
	 end
	 
endmodule
