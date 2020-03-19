`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:41:27 12/05/2017 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
    input [4:0] ALUctrE,
    input MemWrMtemp,
	 output MemWrM,
	 input [1:0] loadselW,
	 input signedselW,
	 input [1:0] storeselM,
    input ExtOp,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
	 input [4:0] A0,
    input RegWrW,
    input nPC_sel_beq,
    input nPC_sel_jal,
    input nPC_sel_jr,
	 input nPC_sel_blez,
	 input nPC_sel_bgez,
	 input nPC_sel_bgtz,
	 input nPC_sel_bltz,
	 input nPC_sel_bne,
    input MemToRegW,
    input ALUsrcE,
	 input busW_selW,
	 input shamtselE,
    input [1:0] F_ALU_A_E,
	 input [1:0] F_ALU_B_E,
	 input [2:0] F_CMP_A_D,
	 input [2:0] F_CMP_B_D,
	 input [1:0] F_DM_Data_M,
	 input [1:0] movetoE,
	 input [1:0] movefromE,
    input clk,
    input reset,
    output [5:0] opcode,
    output [5:0] func,
	 output [4:0] rs,
	 output [4:0] rt,
	 output [4:0] rd,
	 output [4:0] A1_E,
	 output [4:0] A2_E,
	 output [4:0] A3_E,
	 output [4:0] A2_M,
	 output [4:0] A3_M,
	 output [4:0] A3_W,
	 output [4:0] A0M,
	 output [31:0] instr_D,
	 output busy,
	 output start,
	 input PC_en,
	 input IR_en,
	 input IDEX_clr2,
	 input IFID_clr,
	 input IDEX_clr,
	 input EXMEM_clr,
	 input MEMWB_clr,
	 input Exception,
	 input nPC_sel_eret,
	 input [31:0] EPC,
	 output overflow,
	 output overflow2,
	 output [31:0] PC,
	 output [31:0] ALUout_M,
	 input [31:0] DIN,
	 output [31:0] F5out,
	 input [31:0] c0out,
	 input mfc0selW,
	 output [31:0] PC_M,
	 output [2:0] nPC_sel_M
    );
	 
	 wire [31:0] instr,PC_D,PC_E,PC_W,c0out_W;
	 wire [31:0] F1out,F2out,F3out,F4out;
	 wire [31:0] ALUout,ALUout_W;
	 wire [31:0] ExtOut,Ext_E,DMout,DM_W,DM_Wtemp;
	 wire [31:0] busW,B;
	 wire validbeq,validblez,validbgez,validbgtz,validbltz,validbne;
	 wire [15:0]imm;
	 wire [25:0] instr_index;
	 wire [31:0] V1,V2,V1_E,V2_E,V2_M;
	 wire [4:0] shamt,shamt_E,A0E;
	 wire [31:0] hi,lo,ALUout_temp;
	 wire HitDM,HitDMW;
	 wire [2:0] nPC_sel,nPC_sel_D,nPC_sel_E;
	 wire [31:0] DIN_W;
	 
	 //D级之前部件
	 instr_memory IM(.PC(PC), .instr(instr));
	 NPC NPC(.nPC_sel(nPC_sel), .Exception(Exception), .nPC_sel_eret(nPC_sel_eret), .EPC(EPC), .nPC_sel_bgez(nPC_sel_bgez), .nPC_sel_bgtz(nPC_sel_bgtz), .nPC_sel_bltz(nPC_sel_bltz), .nPC_sel_bne(nPC_sel_bne), .validbgez(validbgez), .validbgtz(validbgtz), .validbltz(validbltz), .validbne(validbne), .nPC_sel_blez(nPC_sel_blez), .validblez(validblez), .PC_en(PC_en), .nPC_sel_beq(nPC_sel_beq), .nPC_sel_jal(nPC_sel_jal), .nPC_sel_jr(nPC_sel_jr), .validbeq(validbeq), .PC(PC), .clk(clk), .reset(reset), .imm(imm), .instr_index(instr_index), .F1out(F1out));
	 
	 //D级流水寄存器
	 pipeDR DR(.nPC_sel(nPC_sel), .nPC_sel_D(nPC_sel_D), .nPC_sel_eret(nPC_sel_eret), .IFID_clr(IFID_clr), .reset(reset), .IR_en(IR_en), .instr(instr), .PC(PC), .instr_D(instr_D), .PC_D(PC_D), .clk(clk));
	 
	 //DE之间部件
	 instr_decoder ID(.shamt(shamt), .instr(instr_D), .opcode(opcode), .rs(rs), .rt(rt), .rd(rd), .func(func), .imm(imm), .instr_index(instr_index));
	 register_file RF(.reset(reset), .clk(clk), .A3_W(A3_W), .A1(A1), .A2(A2), .RegWrW(RegWrW), .busW(busW), .PC_W(PC_W), .busW_selW(busW_selW), .NPC(PC_W), .V1(V1), .V2(V2));
	 extender EXT(.ExtOp(ExtOp), .imm(imm), .ExtOut(ExtOut));
	 CMP CMP(.validbgez(validbgez), .validbgtz(validbgtz), .validbltz(validbltz), .validbne(validbne), .validblez(validblez), .F1out(F1out), .F2out(F2out), .validbeq(validbeq));
	 
	 //E级流水寄存器
	 pipeER ER(.nPC_sel_D(nPC_sel_D), .nPC_sel_E(nPC_sel_E), .A0(A0), .A0E(A0E), .IDEX_clr(IDEX_clr), .shamt(shamt), .shamt_E(shamt_E), .reset(reset), .IDEX_clr2(IDEX_clr2), .F1out(F1out), .F2out(F2out), .A1(A1), .A2(A2), .A3(A3), .ExtOut(ExtOut), .PC_D(PC_D), .V1_E(V1_E), .V2_E(V2_E), .A1_E(A1_E), .A2_E(A2_E), .A3_E(A3_E), .Ext_E(Ext_E), .PC_E(PC_E), .clk(clk));

	 //EM之间部件
	 alu ALU(.overflow2(overflow2), .overflow(overflow), .shamtselE(shamtselE), .shamt_E(shamt_E), .A(F3out), .B(B), .ALUctrE(ALUctrE), .ALUout(ALUout));
    multdiv HL(.Exception(Exception), .A(F3out), .B(B), .busy(busy), .start(start), .hi(hi), .lo(lo), .clk(clk), .reset(reset), .ALUctrE(ALUctrE), .movetoE(movetoE));

	 //M级流水寄存器
	 pipeMR MR(.nPC_sel_E(nPC_sel_E), .nPC_sel_M(nPC_sel_M), .A0E(A0E), .A0M(A0M), .EXMEM_clr(EXMEM_clr), .reset(reset), .F4out(F4out), .A2_E(A2_E), .ALUout_temp(ALUout_temp), .A3_E(A3_E), .PC_E(PC_E), .V2_M(V2_M), .A2_M(A2_M), .ALUout_M(ALUout_M), .A3_M(A3_M), .PC_M(PC_M), .clk(clk));

	 //MW之间部件
	 data_memory DM(.Exception(Exception), .MemWrMtemp(MemWrMtemp), .HitDM(HitDM), .storeselM(storeselM), .ALUout_M(ALUout_M), .F5out(F5out), .DataOut(DMout), .NPC(PC_M), .MemWrM(MemWrM), .clk(clk), .reset(reset));
	 
	 //W级流水寄存器
	 pipeWR WR(.DIN(DIN), .DIN_W(DIN_W), .c0out(c0out), .c0out_W(c0out_W), .MEMWB_clr(MEMWB_clr), .HitDM(HitDM), .HitDMW(HitDMW), .reset(reset), .A3_M(A3_M), .PC_M(PC_M), .ALUout_M(ALUout_M), .DataOut(DMout), .A3_W(A3_W), .PC_W(PC_W), .ALUout_W(ALUout_W), .DM_Wtemp(DM_Wtemp), .clk(clk));
	 load LOAD(.c0out_W(c0out_W), .mfc0selW(mfc0selW), .HitDMW(HitDMW), .DIN_W(DIN_W), .DM_Wtemp(DM_Wtemp), .DM_W(DM_W), .ALUout_W(ALUout_W), .loadselW(loadselW), .signedselW(signedselW));

	 //多路选择器
	 MUX MUXp4(.ALUout(ALUout), .hi(hi), .lo(lo), .movefromE(movefromE), .ALUout_temp(ALUout_temp), .ALUout_W(ALUout_W), .DM_W(DM_W), .MemToRegW(MemToRegW), .busW(busW), .F4out(F4out), .Ext_E(Ext_E), .ALUsrcE(ALUsrcE), .B(B));
	 MUX2 MUXp5(.ALUout_W(ALUout_W), .DM_W(DM_W), .ALUout_M(ALUout_M), .V2_E(V2_E), .F_ALU_B_E(F_ALU_B_E), .F4out(F4out), .V1_E(V1_E), .F_ALU_A_E(F_ALU_A_E), .F3out(F3out), .V1(V1), .PC_E(PC_E), .PC_M(PC_M), .PC_W(PC_W), .F_CMP_A_D(F_CMP_A_D), .F1out(F1out), .V2(V2), .F_CMP_B_D(F_CMP_B_D), .F2out(F2out), .F_DM_Data_M(F_DM_Data_M), .V2_M(V2_M), .F5out(F5out));

endmodule
