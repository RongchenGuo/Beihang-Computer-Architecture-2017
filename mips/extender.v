`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:31 12/05/2017 
// Design Name: 
// Module Name:    extender 
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
module extender(
    input ExtOp,
    input [15:0] imm,
    output [31:0] ExtOut
    );

    assign ExtOut = ExtOp? {{16{imm[15]}},imm} : 
	                        {16'b0,imm};

endmodule