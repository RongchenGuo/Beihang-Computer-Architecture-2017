`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:20 12/05/2017 
// Design Name: 
// Module Name:    stall_detector 
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
module stall_detector(
	 input [1:0] Tuse_rs,
	 input [1:0] Tuse_rt,
	 input [1:0] Res_E,
	 input [1:0] Res_M,
	 input [31:0] instr_D,
	 input [4:0] A3_E,
	 input [4:0] A3_M,
	 input RegWrE,
	 input RegWrM,
	 input busy,
	 input start,
	 input [1:0] moveto,
	 input [1:0] movefrom,
	 input nPC_sel_eret,
	 input c0wrE,
	 input c0wrM,
	 input [4:0] ALUctr,
	 output stall
	 );
	 
	 wire stall_rs0_E1,stall_rs0_E2,stall_rs0_M1,stall_rs1_E2;
	 wire stall_rt0_E1,stall_rt0_E2,stall_rt0_M1,stall_rt1_E2;
	 wire stall_rs,stall_rt,stallmultdiv,stalleret;
	 
	 assign stall_rs0_E1 = (Tuse_rs==0) && (Res_E==`ResALU) && (instr_D[25:21]==A3_E) && (RegWrE==1'b1) && (A3_E!=0);
	 assign stall_rs0_E2 = (Tuse_rs==0) && (Res_E==`ResDM) && (instr_D[25:21]==A3_E) && (RegWrE==1'b1) && (A3_E!=0);
	 assign stall_rs0_M1 = (Tuse_rs==0) && (Res_M==`ResDM) && (instr_D[25:21]==A3_M) && (RegWrM==1'b1) && (A3_M!=0);
	 assign stall_rs1_E2 = (Tuse_rs==1) && (Res_E==`ResDM) && (instr_D[25:21]==A3_E) && (RegWrE==1'b1) && (A3_E!=0);
	 
	 assign stall_rt0_E1 = (Tuse_rt==0) && (Res_E==`ResALU) && (instr_D[20:16]==A3_E) && (RegWrE==1'b1) && (A3_E!=0);
	 assign stall_rt0_E2 = (Tuse_rt==0) && (Res_E==`ResDM) && (instr_D[20:16]==A3_E) && (RegWrE==1'b1) && (A3_E!=0);
	 assign stall_rt0_M1 = (Tuse_rt==0) && (Res_M==`ResDM) && (instr_D[20:16]==A3_M) && (RegWrM==1'b1) && (A3_M!=0);
	 assign stall_rt1_E2 = (Tuse_rt==1) && (Res_E==`ResDM) && (instr_D[20:16]==A3_E) && (RegWrE==1'b1) && (A3_E!=0); 
    
	 assign stall_rs = stall_rs0_E1 | stall_rs0_E2 | stall_rs0_M1 | stall_rs1_E2;
	 assign stall_rt = stall_rt0_E1 | stall_rt0_E2 | stall_rt0_M1 | stall_rt1_E2;
	 assign stallmultdiv = (busy | start) & (moveto[1] | moveto[0] | movefrom[1] | movefrom[0] | ALUctr[4]);
	 assign stalleret = nPC_sel_eret & (c0wrE | c0wrM);
	 assign stall = stall_rs | stall_rt | stallmultdiv | stalleret;
	 
endmodule

