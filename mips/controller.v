`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:23:07 12/06/2017 
// Design Name: 
// Module Name:    controller 
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
module controller(
    output [4:0] ALUctrE,
    output MemWrMtemp,
    output ExtOp,
    output [4:0] A1,
    output [4:0] A2,
    output [4:0] A3,
	 output [4:0] A0,
    output RegWrW,
    output nPC_sel_beq,
    output nPC_sel_jal,
    output nPC_sel_jr,
	 output nPC_sel_blez,
	 output nPC_sel_bgez,
	 output nPC_sel_bgtz,
	 output nPC_sel_bltz,
	 output nPC_sel_bne,
    output MemToRegW,
	 output [1:0] storeselM,
	 output [1:0] loadselM,
    output ALUsrcE,
	 output busW_selW,
	 output [1:0] loadselW,
	 output signedselW,
	 output c0wrM,
	 output shamtselE,
	 output [1:0] movetoE,
	 output [1:0] movefromE,
    output [1:0] F_ALU_A_E,
	 output [1:0] F_ALU_B_E,
	 output [2:0] F_CMP_A_D,
	 output [2:0] F_CMP_B_D,
	 output [1:0] F_DM_Data_M,
    input clk,
    input [5:0] opcode,
    input [5:0] func,
	 input [4:0] rs,
	 input [4:0] rt,
	 input [4:0] rd,
	 input [4:0] A1_E,
	 input [4:0] A2_E,
	 input [4:0] A3_E,
	 input [4:0] A2_M,
	 input [4:0] A3_M,
	 input [4:0] A3_W,
	 input [31:0] instr_D,
	 input busy,
	 input start,
	 output PC_en,
	 output IR_en,
	 output IDEX_clr2,
	 input IDEX_clr,
	 input EXMEM_clr,
	 input MEMWB_clr,
	 input reset,
	 output il_opcode,
	 output nPC_sel_eret,
	 output mfc0selW,
	 output nPC_sel_eretW
	 );
	 
	 wire RegWr,RegWrE,RegWrM,ALUsrc,MemWr,MemWrE,MemToReg,MemToRegE,MemToRegM,busW_sel,busW_selE,busW_selM;
	 wire c0wr,c0wrE;
	 wire nPC_sel_eretE,nPC_sel_eretM;
	 wire [1:0] loadsel,loadselE;
	 wire signedsel,signedselE,signedselM,shamtsel;
	 wire [1:0] RegDst,storesel,storeselE;
	 wire [4:0] ALUctr;
	 wire [1:0] Res,Res_E,Res_M,Res_W,Tuse_rs,Tuse_rt;
	 wire stall;
	 wire [1:0] moveto,movefrom;
	 
	 main_controller MainCtr(.mfc0sel(mfc0sel), .nPC_sel_eret(nPC_sel_eret), .c0wr(c0wr), .il_opcode(il_opcode), .moveto(moveto), .movefrom(movefrom), .instr_D(instr_D), .nPC_sel_bgez(nPC_sel_bgez), .nPC_sel_bgtz(nPC_sel_bgtz), .nPC_sel_bltz(nPC_sel_bltz), .nPC_sel_bne(nPC_sel_bne), .shamtsel(shamtsel), .signedsel(signedsel), .storesel(storesel), .nPC_sel_blez(nPC_sel_blez), .loadsel(loadsel), .opcode(opcode), .func(func), .nPC_sel_beq(nPC_sel_beq), .nPC_sel_jal(nPC_sel_jal), .nPC_sel_jr(nPC_sel_jr), .RegWr(RegWr), .RegDst(RegDst), .ExtOp(ExtOp), .ALUsrc(ALUsrc), .ALUctr(ALUctr), .MemWr(MemWr), .MemToReg(MemToReg), .busW_sel(busW_sel));
	 AT_controller ATCtr(.A0(A0), .instr_D(instr_D), .opcode(opcode), .func(func), .rs(rs), .rt(rt), .rd(rd), .RegDst(RegDst), .A1(A1), .A2(A2), .A3(A3), .Tuse_rs(Tuse_rs), .Tuse_rt(Tuse_rt), .Res(Res));
	 stall_detector StDet(.ALUctr(ALUctr), .nPC_sel_eret(nPC_sel_eret), .c0wrE(c0wrE), .c0wrM(c0wrM), .busy(busy), .start(start), .moveto(moveto), .movefrom(movefrom), .Tuse_rs(Tuse_rs), .Tuse_rt(Tuse_rt), .Res_E(Res_E), .Res_M(Res_M), .instr_D(instr_D), .A3_E(A3_E), .A3_M(A3_M), .RegWrE(RegWrE), .RegWrM(RegWrM), .stall(stall));
	 stall_controller StaCtr(.stall(stall), .PC_en(PC_en), .IR_en(IR_en), .IDEX_clr2(IDEX_clr2));
	 forward_controller ForCtr(.RegWrE(RegWrE), .RegWrM(RegWrM), .RegWrW(RegWrW), .A1(A1), .A2(A2), .A1_E(A1_E), .A2_E(A2_E), .A2_M(A2_M), .A3_E(A3_E), .A3_M(A3_M), .A3_W(A3_W), .Res_E(Res_E), .Res_M(Res_M), .Res_W(Res_W), .F_ALU_B_E(F_ALU_B_E), .F_ALU_A_E(F_ALU_A_E), .F_CMP_A_D(F_CMP_A_D), .F_CMP_B_D(F_CMP_B_D), .F_DM_Data_M(F_DM_Data_M));
	 
	 pipeER2 ER2(.nPC_sel_eret(nPC_sel_eret), .nPC_sel_eretE(nPC_sel_eretE), .mfc0sel(mfc0sel), .mfc0selE(mfc0selE), .c0wr(c0wr), .c0wrE(c0wrE), .IDEX_clr(IDEX_clr), .moveto(moveto), .movefrom(movefrom), .movetoE(movetoE), .movefromE(movefromE), .shamtsel(shamtsel), .shamtselE(shamtselE), .signedsel(signedsel), .signedselE(signedselE), .storesel(storesel), .storeselE(storeselE), .loadsel(loadsel), .loadselE(loadselE), .reset(reset), .IDEX_clr2(IDEX_clr2), .RegWr(RegWr), .ALUsrc(ALUsrc), .ALUctr(ALUctr), .MemWr(MemWr), .MemToReg(MemToReg), .busW_sel(busW_sel), .Res(Res), .Res_E(Res_E), .RegWrE(RegWrE), .ALUsrcE(ALUsrcE), .ALUctrE(ALUctrE), .MemWrE(MemWrE), .MemToRegE(MemToRegE), .busW_selE(busW_selE), .clk(clk));
	 pipeMR2 MR2(.nPC_sel_eretE(nPC_sel_eretE), .nPC_sel_eretM(nPC_sel_eretM), .mfc0selE(mfc0selE), .mfc0selM(mfc0selM), .c0wrE(c0wrE), .c0wrM(c0wrM), .EXMEM_clr(EXMEM_clr), .signedselE(signedselE), .signedselM(signedselM), .storeselE(storeselE), .storeselM(storeselM), .loadselE(loadselE), .loadselM(loadselM), .reset(reset), .RegWrE(RegWrE), .MemWrE(MemWrE), .MemToRegE(MemToRegE), .busW_selE(busW_selE), .Res_E(Res_E), .Res_M(Res_M), .RegWrM(RegWrM), .MemWrMtemp(MemWrMtemp), .MemToRegM(MemToRegM), .busW_selM(busW_selM), .clk(clk));
	 pipeWR2 WR2(.nPC_sel_eretM(nPC_sel_eretM), .nPC_sel_eretW(nPC_sel_eretW), .mfc0selM(mfc0selM), .mfc0selW(mfc0selW), .MEMWB_clr(MEMWB_clr), .signedselM(signedselM), .signedselW(signedselW), .loadselM(loadselM), .loadselW(loadselW), .reset(reset), .RegWrM(RegWrM), .MemToRegM(MemToRegM), .busW_selM(busW_selM), .Res_M(Res_M), .Res_W(Res_W), .RegWrW(RegWrW), .MemToRegW(MemToRegW), .busW_selW(busW_selW), .clk(clk));
	 
endmodule
