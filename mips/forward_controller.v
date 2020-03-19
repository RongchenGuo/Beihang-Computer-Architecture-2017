`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:37:09 12/05/2017 
// Design Name: 
// Module Name:    forward_controller 
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
module forward_controller(
	 input [4:0] A1,
	 input [4:0] A2,
	 input [4:0] A1_E,
    input [4:0] A2_E,
	 input [4:0] A2_M,
	 input [4:0] A3_E,
    input [4:0] A3_M,
    input [4:0] A3_W,
	 input [1:0] Res_E,
    input [1:0] Res_M,
    input [1:0] Res_W,
	 input RegWrE,
	 input RegWrM,
	 input RegWrW,
    output [1:0] F_ALU_B_E,
	 output [1:0] F_ALU_A_E,
	 output [2:0] F_CMP_A_D,
	 output [2:0] F_CMP_B_D,
	 output [1:0] F_DM_Data_M
    );
	 
	 assign F_ALU_B_E = ((A2_E==A3_M)&&(Res_M==`ResALU)&&(A3_M!=0)&&(RegWrM==1'b1))?2'b11:
	                    ((A2_E==A3_W)&&(Res_W==`ResALU)&&(A3_W!=0)&&(RegWrW==1'b1))?2'b10:
							  ((A2_E==A3_W)&&(Res_W==`ResDM)&&(A3_W!=0)&&(RegWrW==1'b1))?2'b01: 2'b00;
							 
	 assign F_ALU_A_E = ((A1_E==A3_M)&&(Res_M==`ResALU)&&(A3_M!=0)&&(RegWrM==1'b1))?2'b11:
	                    ((A1_E==A3_W)&&(Res_W==`ResALU)&&(A3_W!=0)&&(RegWrW==1'b1))?2'b10:
							  ((A1_E==A3_W)&&(Res_W==`ResDM)&&(A3_W!=0)&&(RegWrW==1'b1))?2'b01: 2'b00;
	 
	 assign F_CMP_A_D = ((A1==A3_E)&&(Res_E==`ResPC)&&(A3_E!=0)&&(RegWrE==1'b1))?3'b111:
							  ((A1==A3_M)&&(Res_M==`ResALU)&&(A3_M!=0)&&(RegWrM==1'b1))?3'b110:
							  ((A1==A3_M)&&(Res_M==`ResPC)&&(A3_M!=0)&&(RegWrM==1'b1))?3'b101:
	                    ((A1==A3_W)&&(Res_W==`ResALU)&&(A3_W!=0)&&(RegWrW==1'b1))?3'b100:
							  ((A1==A3_W)&&(Res_W==`ResPC)&&(A3_W!=0)&&(RegWrW==1'b1))?3'b011:
							  ((A1==A3_W)&&(Res_W==`ResDM)&&(A3_W!=0)&&(RegWrW==1'b1))?3'b010: 2'b00;
	 
	 assign F_CMP_B_D = ((A2==A3_E)&&(Res_E==`ResPC)&&(A3_E!=0)&&(RegWrE==1'b1))?3'b111:
							  ((A2==A3_M)&&(Res_M==`ResALU)&&(A3_M!=0)&&(RegWrM==1'b1))?3'b110:
							  ((A2==A3_M)&&(Res_M==`ResPC)&&(A3_M!=0)&&(RegWrM==1'b1))?3'b101:
	                    ((A2==A3_W)&&(Res_W==`ResALU)&&(A3_W!=0)&&(RegWrW==1'b1))?3'b100:
							  ((A2==A3_W)&&(Res_W==`ResPC)&&(A3_W!=0)&&(RegWrW==1'b1))?3'b011:
							  ((A2==A3_W)&&(Res_W==`ResDM)&&(A3_W!=0)&&(RegWrW==1'b1))?3'b010: 2'b00;
	 
	 assign F_DM_Data_M = ((A2_M==A3_W)&&(Res_W==`ResALU)&&(A3_W!=0)&&(RegWrW==1'b1))?2'b10:
	                      ((A2_M==A3_W)&&(Res_W==`ResDM)&&(A3_W!=0)&&(RegWrW==1'b1))?2'b01: 2'b00;


endmodule

