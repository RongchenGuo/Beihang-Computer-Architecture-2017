`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:26 12/26/2017 
// Design Name: 
// Module Name:    exc 
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
module exc(
    input clk,
	 input reset,
	 input [31:0] PC,
	 input il_opcode,
	 input overflow,
	 input overflow2,
	 input [31:0] ALUout_M,
	 input intrp0,
	 input intrp1,
	 input MemWrM,
	 input [4:0] A0M,
	 input [31:0] PC_M,
	 input [31:0] F5out,
	 input [1:0] loadselM,
	 input [1:0] storeselM,
	 input nPC_sel_eretW,
	 output IFID_clr,
    output IDEX_clr,
    output EXMEM_clr,
    output MEMWB_clr,
	 output [31:0] c0out,
	 output [31:0] EPC,
	 input c0wrM,
	 input [2:0] nPC_sel_M,
	 output Exception
    );
	 
	 wire [4:0] Exc,ExcD,ExcE,ExcM;
    wire ExceptionD,ExceptionE,ExceptionM,exl,ie,overflow2M;
	 wire [5:0] im;

	 
	 excd excd(.clk(clk), .reset(reset), .PC(PC), .ExcD(ExcD), .ExceptionD(ExceptionD));
	 exce exce(.clk(clk), .reset(reset), .il_opcode(il_opcode), .ExcD(ExcD), .ExceptionD(ExceptionD), .ExcE(ExcE), .ExceptionE(ExceptionE));
	 excm excm(.clk(clk), .reset(reset), .overflow2(overflow2), .overflow2M(overflow2M), .overflow(overflow), .ExcE(ExcE), .ExceptionE(ExceptionE), .ExcM(ExcM), .ExceptionM(ExceptionM));
	 excw excw(.overflow2M(overflow2M), .ie(ie), .im(im), .exl(exl), .loadselM(loadselM), .storeselM(storeselM), .ALUout_M(ALUout_M), .intrp0(intrp0), .intrp1(intrp1), .MemWrM(MemWrM), .ExcM(ExcM), .ExceptionM(ExceptionM), .Exc(Exc), .Exception(Exception));
    logical logical(.Exception(Exception), .IFID_clr(IFID_clr), .IDEX_clr(IDEX_clr), .EXMEM_clr(EXMEM_clr), .MEMWB_clr(MEMWB_clr));
    CP0 CP0(.nPC_sel_M(nPC_sel_M), .ie(ie), .im(im), .intrp0(intrp0), .intrp1(intrp1), .exl(exl), .nPC_sel_eretW(nPC_sel_eretW), .clk(clk), .reset(reset), .A0M(A0M), .PC_M(PC_M), .F5out(F5out), .c0out(c0out), .EPC(EPC), .c0wrM(c0wrM), .Exception(Exception), .Exc(Exc));

endmodule
