`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:04 12/05/2017 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input nPC_sel_beq,
	 input nPC_sel_jal,
	 input nPC_sel_jr,
	 input nPC_sel_blez,
	 input nPC_sel_bgez,
	 input nPC_sel_bgtz,
	 input nPC_sel_bltz,
	 input nPC_sel_bne,
	 input validblez,
	 input validbeq,
	 input validbgez,
	 input validbgtz,
	 input validbltz,
	 input validbne,
    output reg [31:0] PC=32'b0000_0000_0000_0000_0011_0000_0000_0000,
    input clk,
    input reset,
	 input [15:0] imm,
	 input [25:0] instr_index,
	 input [31:0] F1out,
	 input PC_en,
	 input Exception,
	 input nPC_sel_eret,
	 input [31:0] EPC,
	 output [2:0] nPC_sel
    );
	 
	 assign nPC_sel = (Exception == 1)? `PC_sel_4180:
	                  (nPC_sel_eret == 1)? `PC_sel_epc:
							(nPC_sel_jal == 1)? `PC_sel_jal:
	                  (nPC_sel_jr == 1)? `PC_sel_jr:
							(((nPC_sel_beq==1)&&(validbeq==1))||((nPC_sel_blez==1)&&(validblez==1))||((nPC_sel_bgez==1)&&(validbgez==1))||((nPC_sel_bgtz==1)&&(validbgtz==1))||((nPC_sel_bltz==1)&&(validbltz==1))||((nPC_sel_bne==1)&&(validbne==1)))? `PC_sel_branch : `PC_sel_plus4;
	 
	 always @(posedge clk) begin
	 if (reset) PC<=32'b0000_0000_0000_0000_0011_0000_0000_0000;
	 else if(PC_en|Exception) begin
	   case (nPC_sel)
	   `PC_sel_plus4: PC <= PC + 4;
	   `PC_sel_branch: PC <= PC + {{14{imm[15]}},imm,2'b0};
	   `PC_sel_jal: PC <= {4'b0,instr_index,2'b0};
	   `PC_sel_jr: PC <= F1out;
	   `PC_sel_4180: PC <= 'h00004180;
	   `PC_sel_epc: PC <= EPC;
	   default: PC <= 'h12345678;
	   endcase
	 end
	 else begin
	   PC <= PC;
	 end
	 end

endmodule
