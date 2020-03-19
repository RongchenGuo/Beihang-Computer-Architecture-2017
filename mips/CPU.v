`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:24:17 01/01/2018 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
    input clk,
    input reset,
	 input intrp0,
	 input intrp1,
	 input [31:0] DIN,
	 output [31:0] ALUout_M,
	 output [31:0] F5out,
	 output MemWrM
	 );
	 
	 wire Exception;
	 wire IFID_clr;
	 wire IDEX_clr;
	 wire EXMEM_clr;
	 wire MEMWB_clr;
	 wire il_opcode;
	 wire overflow;
    wire overflow2;	 
	 wire [31:0] PC;	 
	 wire [4:0] ALUctrE;
	 wire [1:0] loadselW;
	 wire [1:0] loadselM;
	 wire signedselW;
	 wire [1:0] storeselM;
    wire ExtOp;
    wire [4:0] A1;
    wire [4:0] A2;
    wire [4:0] A3;
    wire RegWrW;
    wire nPC_sel_beq;
    wire nPC_sel_jal;
    wire nPC_sel_jr;
	 wire nPC_sel_blez;
	 wire nPC_sel_bgez;
	 wire nPC_sel_bgtz;
	 wire nPC_sel_bltz;
	 wire nPC_sel_bne;
	 wire nPC_sel_eret;
    wire MemToRegW;
    wire ALUsrcE;
	 wire busy;
	 wire start;
	 wire [1:0] movetoE;
	 wire [1:0] movefromE;
	 wire busW_selW;
	 wire shamtselE;
    wire [1:0] F_ALU_A_E;
	 wire [1:0] F_ALU_B_E;
	 wire [2:0] F_CMP_A_D;
	 wire [2:0] F_CMP_B_D;
	 wire [1:0] F_DM_Data_M;
    wire [5:0] opcode;
    wire [5:0] func;
	 wire [4:0] rs;
	 wire [4:0] rt;
	 wire [4:0] rd;
	 wire [4:0] A1_E;
	 wire [4:0] A2_E;
	 wire [4:0] A3_E;
	 wire [4:0] A2_M;
	 wire [4:0] A3_M;
	 wire [4:0] A3_W;
	 wire [4:0] A0;
	 wire [4:0] A0M;
	 wire [31:0] instr_D;
	 wire [31:0] PC_M;
	 wire PC_en;
	 wire IR_en;
	 wire IDEX_clr2;
	 wire c0wrM;
	 wire [31:0] c0out;
	 wire [31:0] EPC;
	 wire mfc0selW;
	 wire nPC_sel_eretW;
	 wire [2:0] nPC_sel_M;
	 wire MemWrMtemp;

    datapath DaPa(.overflow2(overflow2), .MemWrM(MemWrM), .nPC_sel_M(nPC_sel_M), .mfc0selW(mfc0selW), .c0out(c0out), .EPC(EPC), .nPC_sel_eret(nPC_sel_eret), .Exception(Exception), .A0(A0), .A0M(A0M), .PC_M(PC_M), .IFID_clr(IFID_clr), .IDEX_clr(IDEX_clr), .EXMEM_clr(EXMEM_clr), .MEMWB_clr(MEMWB_clr), .F5out(F5out), .DIN(DIN), .PC(PC), .ALUout_M(ALUout_M), .overflow(overflow), .busy(busy), .start(start), .movetoE(movetoE), .movefromE(movefromE), .nPC_sel_bgez(nPC_sel_bgez), .nPC_sel_bgtz(nPC_sel_bgtz), .nPC_sel_bltz(nPC_sel_bltz), .nPC_sel_bne(nPC_sel_bne), .shamtselE(shamtselE), .storeselM(storeselM), .signedselW(signedselW), .loadselW(loadselW), .nPC_sel_blez(nPC_sel_blez), .ALUctrE(ALUctrE), .MemWrMtemp(MemWrMtemp), .ExtOp(ExtOp), .A1(A1), .A2(A2), .A3(A3), .RegWrW(RegWrW), .nPC_sel_beq(nPC_sel_beq), .nPC_sel_jal(nPC_sel_jal), .nPC_sel_jr(nPC_sel_jr), .MemToRegW(MemToRegW), .ALUsrcE(ALUsrcE), .busW_selW(busW_selW), .F_ALU_A_E(F_ALU_A_E), .F_ALU_B_E(F_ALU_B_E), .F_CMP_A_D(F_CMP_A_D), .F_CMP_B_D(F_CMP_B_D), .F_DM_Data_M(F_DM_Data_M), .opcode(opcode), .func(func), .rs(rs), .rt(rt), .rd(rd), .A1_E(A1_E), .A2_E(A2_E), .A3_E(A3_E), .A2_M(A2_M), .A3_M(A3_M), .A3_W(A3_W), .instr_D(instr_D), .PC_en(PC_en), .IR_en(IR_en), .IDEX_clr2(IDEX_clr2), .clk(clk), .reset(reset));
	 controller CTR(.nPC_sel_eretW(nPC_sel_eretW), .mfc0selW(mfc0selW), .c0wrM(c0wrM), .loadselM(loadselM), .nPC_sel_eret(nPC_sel_eret), .A0(A0), .IDEX_clr(IDEX_clr), .EXMEM_clr(EXMEM_clr), .MEMWB_clr(MEMWB_clr), .il_opcode(il_opcode), .busy(busy), .start(start), .movetoE(movetoE), .movefromE(movefromE), .nPC_sel_bgez(nPC_sel_bgez), .nPC_sel_bgtz(nPC_sel_bgtz), .nPC_sel_bltz(nPC_sel_bltz), .nPC_sel_bne(nPC_sel_bne), .shamtselE(shamtselE), .storeselM(storeselM), .signedselW(signedselW), .loadselW(loadselW), .nPC_sel_blez(nPC_sel_blez), .ALUctrE(ALUctrE), .MemWrMtemp(MemWrMtemp), .ExtOp(ExtOp), .A1(A1), .A2(A2), .A3(A3), .RegWrW(RegWrW), .nPC_sel_beq(nPC_sel_beq), .nPC_sel_jal(nPC_sel_jal), .nPC_sel_jr(nPC_sel_jr), .MemToRegW(MemToRegW), .ALUsrcE(ALUsrcE), .busW_selW(busW_selW), .F_ALU_A_E(F_ALU_A_E), .F_ALU_B_E(F_ALU_B_E), .F_CMP_A_D(F_CMP_A_D), .F_CMP_B_D(F_CMP_B_D), .F_DM_Data_M(F_DM_Data_M), .opcode(opcode), .func(func), .rs(rs), .rt(rt), .rd(rd), .A1_E(A1_E), .A2_E(A2_E), .A3_E(A3_E), .A2_M(A2_M), .A3_M(A3_M), .A3_W(A3_W), .instr_D(instr_D), .PC_en(PC_en), .IR_en(IR_en), .IDEX_clr2(IDEX_clr2), .clk(clk), .reset(reset));
    exc exc(.overflow2(overflow2), .nPC_sel_M(nPC_sel_M), .nPC_sel_eretW(nPC_sel_eretW), .Exception(Exception), .clk(clk), .reset(reset), .PC(PC), .il_opcode(il_opcode), .overflow(overflow), .ALUout_M(ALUout_M), .intrp0(intrp0), .intrp1(intrp1), .MemWrM(MemWrM), .A0M(A0M), .PC_M(PC_M), .F5out(F5out), .loadselM(loadselM), .storeselM(storeselM), .IFID_clr(IFID_clr), .IDEX_clr(IDEX_clr), .EXMEM_clr(EXMEM_clr), .MEMWB_clr(MEMWB_clr), .c0out(c0out), .EPC(EPC), .c0wrM(c0wrM));

endmodule
