`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:32 12/05/2017 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] F1out,
    input [31:0] F2out,
    output validbeq,
	 output validblez,
	 output validbgez,
	 output validbgtz,
	 output validbltz,
	 output validbne
    );
	 assign validbeq = (F1out==F2out);
	 assign validblez = ($signed(F1out)<=0);
	 assign validbgez = ($signed(F1out)>=0);
	 assign validbgtz = ($signed(F1out)>0);
	 assign validbltz = ($signed(F1out)<0);
	 assign validbne = (F1out!=F2out);

endmodule
