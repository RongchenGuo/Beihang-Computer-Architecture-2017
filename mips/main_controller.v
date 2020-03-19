`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:43 12/05/2017 
// Design Name: 
// Module Name:    main_controller 
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
module main_controller(
    input [5:0] opcode,
    input [5:0] func,
	 input [31:0] instr_D,
    output nPC_sel_beq,
	 output nPC_sel_jal,
	 output nPC_sel_jr,
	 output nPC_sel_blez,
	 output nPC_sel_bgez,
	 output nPC_sel_bgtz,
	 output nPC_sel_bltz,
	 output nPC_sel_bne,
    output RegWr,
    output [1:0] RegDst,
    output ExtOp,
    output ALUsrc,
    output [4:0] ALUctr,
    output MemWr,
    output MemToReg,
	 output busW_sel,
	 output [1:0] loadsel,
	 output signedsel,
	 output [1:0] storesel,
	 output shamtsel,
	 output [1:0] moveto,
	 output [1:0] movefrom,
	 output il_opcode,
	 output nPC_sel_eret,
	 output c0wr,
	 output mfc0sel
    );
	 
	 wire Rtype,addu,subu,ori,beq,lui,jal,jr,j;
	 wire srav,slti,blez;
	 wire sw,sh,sb;
	 wire lw,lh,lhu,lb,lbu;
	 wire add,addi,addiu,And,andi,Nor,Or,sll,sllv,slt,sltiu,sltu,sra,srl,srlv,sub,Xor,xori;
	 wire bgez,bgtz,bltz,bne,jalr;
	 wire div,divu,mfhi,mflo,mthi,mtlo,mult,multu;
	 wire eret,mfc0,mtc0;
	 
	 assign Rtype = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0];
	 assign addu = func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & func[0] & Rtype;
	 assign subu = func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & func[0] & Rtype;
	 assign ori = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & ~opcode[1] & opcode[0];
	 assign lw = opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
	 assign sw = opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
	 assign beq = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & ~opcode[1] & ~opcode[0];
	 assign lui = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0];
	 assign jal = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
	 assign jr = ~func[5] & ~func[4] & func[3] & ~func[2] & ~func[1] & ~func[0] & Rtype;
	 assign j = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & ~opcode[0];
	 assign srav = ~func[5] & ~func[4] & ~func[3] & func[2] & func[1] & func[0] & Rtype;
	 assign slti = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & ~opcode[0];
	 assign blez = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & opcode[1] & ~opcode[0];
	 assign lb = opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0];
	 assign sh =  opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0];
	 assign sb =  opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0];
	 assign lbu = opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & ~opcode[1] & ~opcode[0];
	 assign lh = opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0];
	 assign lhu = opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & ~opcode[1] & opcode[0];
	 assign add = func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0] & Rtype;
	 assign addi = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0];
	 assign addiu = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0];
	 assign And = func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & ~func[0] & Rtype;
	 assign andi = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & ~opcode[1] & ~opcode[0];
	 assign Nor = func[5] & ~func[4] & ~func[3] & func[2] & func[1] & func[0] & Rtype;
	 assign Or = func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & func[0] & Rtype;
	 assign sll = ~func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0] & Rtype;
	 assign sllv = ~func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & ~func[0] & Rtype;
	 assign slt = func[5] & ~func[4] & func[3] & ~func[2] & func[1] & ~func[0] & Rtype;
	 assign sltiu = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
	 assign sltu = func[5] & ~func[4] & func[3] & ~func[2] & func[1] & func[0] & Rtype;
	 assign sra = ~func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & func[0] & Rtype;
	 assign srl = ~func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & ~func[0] & Rtype;
	 assign srlv = ~func[5] & ~func[4] & ~func[3] & func[2] & func[1] & ~func[0] & Rtype;
	 assign sub = func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & ~func[0] & Rtype;
	 assign Xor = func[5] & ~func[4] & ~func[3] & func[2] & func[1] & ~func[0] & Rtype;
	 assign xori = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & opcode[1] & ~opcode[0];
	 assign bgez = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0] & instr_D[16];
	 assign bgtz = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & opcode[1] & opcode[0];
	 assign bltz = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0] & ~instr_D[16];
	 assign bne = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & ~opcode[1] & opcode[0];
	 assign jalr = ~func[5] & ~func[4] & func[3] & ~func[2] & ~func[1] & func[0] & Rtype;
	 assign div = ~func[5] & func[4] & func[3] & ~func[2] & func[1] & ~func[0] & Rtype;
	 assign divu = ~func[5] & func[4] & func[3] & ~func[2] & func[1] & func[0] & Rtype;
	 assign mult = ~func[5] & func[4] & func[3] & ~func[2] & ~func[1] & ~func[0] & Rtype;
	 assign multu = ~func[5] & func[4] & func[3] & ~func[2] & ~func[1] & func[0] & Rtype;
	 assign mfhi = ~func[5] & func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0] & Rtype;
	 assign mflo = ~func[5] & func[4] & ~func[3] & ~func[2] & func[1] & ~func[0] & Rtype;
	 assign mthi = ~func[5] & func[4] & ~func[3] & ~func[2] & ~func[1] & func[0] & Rtype;
	 assign mtlo = ~func[5] & func[4] & ~func[3] & ~func[2] & func[1] & func[0] & Rtype;
	 assign eret = ~opcode[5] & opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0] & ~func[5] & func[4] & func[3] & ~func[2] & ~func[1] & ~func[0];
	 assign mfc0 = ~opcode[5] & opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0] & ~instr_D[25] & ~instr_D[24] & ~instr_D[23] & ~instr_D[22] & ~instr_D[21] & ~instr_D[10] & ~instr_D[9] & ~instr_D[8] & ~instr_D[7] & ~instr_D[6] & ~instr_D[5] & ~instr_D[4] & ~instr_D[3] & ~instr_D[2] & ~instr_D[1] & ~instr_D[0];
	 assign mtc0 = ~opcode[5] & opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0] & ~instr_D[25] & ~instr_D[24] & instr_D[23] & ~instr_D[22] & ~instr_D[21] & ~instr_D[10] & ~instr_D[9] & ~instr_D[8] & ~instr_D[7] & ~instr_D[6] & ~instr_D[5] & ~instr_D[4] & ~instr_D[3] & ~instr_D[2] & ~instr_D[1] & ~instr_D[0];
	 
	 assign RegWr = mfc0 | addu | subu | ori | lw | lui | jal | srav | slti | lb | lbu | lh | lhu | add | addi | addiu | And | andi | Nor | Or | sll | sllv | slt | sltiu | sltu | sra | srl | srlv | sub | Xor | xori | jalr | mfhi | mflo;
	 assign ExtOp = lw | sw | slti | lb | sh | sb | lbu | lh | lhu | addi | addiu | sltiu;
	 assign ALUsrc = ori | lw | sw | lui | slti | lb | sh | sb | lbu | lh | lhu | addi | addiu | andi | sltiu | xori;
	 assign MemWr = sw | sh | sb;
	 assign MemToReg = lw | lb | lbu | lh | lhu | mfc0;
	 assign RegDst[0] = addu | subu | srav | add | And | Nor | Or | sll | sllv | slt | sltu | sra | srl | srlv | sub | Xor | jalr | mfhi | mflo;
	 assign RegDst[1] = jal;
	 assign nPC_sel_beq = beq;
	 assign nPC_sel_jal = jal | j;
	 assign nPC_sel_jr = jr | jalr;
	 assign nPC_sel_blez = blez;
	 assign ALUctr[0] = subu | beq | lui | slti | Nor | slt | sltiu | sltu | srl | srlv | sub | multu | divu;
	 assign ALUctr[1] = ori | lui | And | andi | Nor | Or | sltiu | sltu | Xor | xori | div | divu | sw | sh | sb | lw | lh | lhu | lb | lbu;
	 assign ALUctr[2] = srav | slti | And | andi | Nor | slt | sra | add | addi | sub | sw | sh | sb | lw | lh | lhu | lb | lbu;
	 assign ALUctr[3] = sll | sllv | sltiu | sltu | srl | srlv | Xor | xori | add | addi | sub | sw | sh | sb | lw | lh | lhu | lb | lbu;
	 assign ALUctr[4] = mult | multu | div | divu;
	 assign busW_sel = jal | jalr;
	 assign storesel[0] = sh | sw;
	 assign storesel[1] = sb | sw;
	 assign loadsel[0] = lh | lhu | lw;
	 assign loadsel[1] = lb | lbu | lw;
	 assign signedsel = lh | lb;
	 assign shamtsel = sll | sra | srl;
	 assign nPC_sel_bgez = bgez;
	 assign nPC_sel_bgtz = bgtz;
	 assign nPC_sel_bltz = bltz;
	 assign nPC_sel_bne = bne;
	 assign nPC_sel_eret = eret;
	 assign moveto[1] = mthi;
	 assign moveto[0] = mtlo;
	 assign movefrom[1] = mfhi;
	 assign movefrom[0] = mflo;
	 assign c0wr = mtc0;
	 assign mfc0sel = mfc0;
	 
	 assign il_opcode = ~(eret|mfc0|mtc0|addu|subu|ori|beq|lui|jal|jr|j|srav|slti|blez|sw|sh|sb|lw|lh|lhu|lb|lbu|add|addi|addiu|And|andi|Nor|Or|sll|sllv|slt|sltiu|sltu|sra|srl|srlv|sub|Xor|xori|bgez|bgtz|bltz|bne|jalr|div|divu|mfhi|mflo|mthi|mtlo|mult|multu);

endmodule

