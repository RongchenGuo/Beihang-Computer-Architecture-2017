`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:54 12/05/2017 
// Design Name: 
// Module Name:    MUX 
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
module MUX(
	 input [31:0] ALUout_W,
	 input [31:0] DM_W,
	 input MemToRegW,
	 output [31:0] busW,
	 
	 input [31:0] F4out,
	 input [31:0] Ext_E,
	 input ALUsrcE,
	 output [31:0] B,
	 
	 input [31:0] ALUout,
	 input [31:0] hi,
	 input [31:0] lo,
	 input [1:0] movefromE,
	 output [31:0] ALUout_temp
    );
	 
	 
	 assign busW = (MemToRegW==1'b0)? ALUout_W : DM_W;
	 assign B = (ALUsrcE==1'b0)? F4out : Ext_E;
	 assign ALUout_temp = (movefromE==2'b10)?hi :
	                      (movefromE==2'b01)?lo : ALUout;

endmodule	 