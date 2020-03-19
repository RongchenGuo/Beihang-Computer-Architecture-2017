`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:04 12/05/2017 
// Design Name: 
// Module Name:    AT_controller 
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
module AT_controller(
    input [5:0] opcode,
    input [5:0] func,
	 input [31:0] instr_D,
	 input [4:0] rs,
	 input [4:0] rt,
	 input [4:0] rd,
	 input [1:0] RegDst,

	 output [4:0] A1,
	 output [4:0] A2,
	 output [4:0] A3,
	 output [4:0] A0,
	 
	 output [1:0] Tuse_rs,
	 output [1:0] Tuse_rt,
	 output [1:0] Res
    );
	 
	 wire Rtype,addu,subu,ori,beq,lui,jal,jr,j;
	 wire srav,slti,blez;
	 wire sw,sh,sb;
	 wire lw,lb,lbu,lh,lhu;
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
	 	 
	 assign Tuse_rs = (addu | subu | ori | lw | sw | srav | slti | lb | sb | sh | lbu | lh | lhu | add | addi | addiu | And | andi | Nor | Or | sllv | slt | sltiu | sltu | srlv | sub | Xor | xori | mult | multu | div | divu | mthi | mtlo)? 2'b01 :
	                  (beq | jr | blez | bgez | bgtz | bltz | bne | jalr)? 2'b00 : 2'b11 ;
	 assign Tuse_rt = (sw | sh | sb | mtc0)? 2'b10 :
	                  (addu | subu | srav | add | And | Nor | Or | sll | sllv | slt | sltu | sra | srl | srlv | sub | Xor | mult | multu | div | divu)? 2'b01 :
							(beq | bne)? 2'b00 : 2'b11 ;
	 assign Res = (lw | lb | lbu | lh | lhu | mfc0)? `ResDM :
	               (addu | subu | ori | lui | srav | slti | add | addi | addiu | And | andi | Nor | Or | sll | sllv | slt | sltiu | sltu | sra | srl | srlv | sub | Xor | xori | mflo | mfhi)? `ResALU :
						(jal | jalr)? `ResPC : `ResNW ;
	
	 
	 assign A1 = rs;
	 assign A2 = rt;
	 assign A3 = (RegDst==2'b00)?rt:
	             (RegDst==2'b01)?rd:
					 5'b11111;
	 assign A0 = rd;

endmodule
