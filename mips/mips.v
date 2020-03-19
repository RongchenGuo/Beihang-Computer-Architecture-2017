`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:53 12/06/2017 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
	 );
	 
	 wire intrp0,intrp1,MemWrM,DEV0_WE;
	 wire [31:0] DIN,ALUout_M,F5out,DEV_WD,DEV_Addr,DEV0_RD,DEV1_RD;
	 
	 CPU CPU(.clk(clk), .reset(reset), .intrp0(intrp0), .intrp1(intrp1), .DIN(DIN), .ALUout_M(ALUout_M), .F5out(F5out), .MemWrM(MemWrM));
    bridge bridge(.PrAddr(ALUout_M), .PrRD(DIN), .PrWD(F5out), .DEV_Addr(DEV_Addr), .DEV_WD(DEV_WD), .DEV0_RD(DEV0_RD), .DEV1_RD(DEV1_RD), .MemWrM(MemWrM), .DEV0_WE(DEV0_WE), .DEV1_WE(DEV1_WE));
    DEV0 DEV0(.DEV_WD(DEV_WD), .DEV0_WE(DEV0_WE), .DEV_Addr(DEV_Addr), .DEV0_RD(DEV0_RD), .intrp0(intrp0), .clk(clk), .reset(reset));
	 DEV1 DEV1(.DEV_WD(DEV_WD), .DEV1_WE(DEV1_WE), .DEV_Addr(DEV_Addr), .DEV1_RD(DEV1_RD), .intrp1(intrp1), .clk(clk), .reset(reset));
	 
endmodule
