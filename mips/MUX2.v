`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:40:42 12/06/2017 
// Design Name: 
// Module Name:    MUX2 
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
module MUX2(	
    input [31:0] ALUout_W,
	 input [31:0] DM_W, 
	 input [31:0] ALUout_M,
	 input [31:0] V2_E,
	 input [1:0] F_ALU_B_E,
	 output [31:0] F4out,
	 
	 input [31:0] V1_E,
	 input [1:0] F_ALU_A_E,
	 output [31:0] F3out,
	 
	 input [31:0] V1,
	 input [31:0] PC_E,
	 input [31:0] PC_M,
	 input [31:0] PC_W,
	 input [2:0] F_CMP_A_D,
	 output [31:0] F1out,
	 
	 input [31:0] V2,
	 input [2:0] F_CMP_B_D,
	 output [31:0] F2out,
	 
	 input [1:0] F_DM_Data_M,
	 input [31:0] V2_M,
	 output [31:0] F5out
    );
	 
	 
	 assign F4out = (F_ALU_B_E==2'b11)? ALUout_M :
	                (F_ALU_B_E==2'b10)? ALUout_W :
						 (F_ALU_B_E==2'b01)? DM_W : V2_E;
	 assign F3out = (F_ALU_A_E==2'b11)? ALUout_M :
	                (F_ALU_A_E==2'b10)? ALUout_W :
						 (F_ALU_A_E==2'b01)? DM_W : V1_E;
	 assign F1out = (F_CMP_A_D==3'b111)? PC_E+8 :
	                (F_CMP_A_D==3'b110)? ALUout_M :
						 (F_CMP_A_D==3'b101)? PC_M+8 :
						 (F_CMP_A_D==3'b100)? ALUout_W :
						 (F_CMP_A_D==3'b011)? PC_W+8 :
						 (F_CMP_A_D==3'b010)? DM_W : V1;
	 assign F2out = (F_CMP_B_D==3'b111)? PC_E+8 :
	                (F_CMP_B_D==3'b110)? ALUout_M :
						 (F_CMP_B_D==3'b101)? PC_M+8 :
						 (F_CMP_B_D==3'b100)? ALUout_W :
						 (F_CMP_B_D==3'b011)? PC_W+8 :
						 (F_CMP_B_D==3'b010)? DM_W : V2;
	 assign F5out = (F_DM_Data_M==2'b10)? ALUout_W :
	                (F_DM_Data_M==2'b01)? DM_W : V2_M;

endmodule	 
