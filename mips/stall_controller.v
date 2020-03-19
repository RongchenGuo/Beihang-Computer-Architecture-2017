`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:51 12/05/2017 
// Design Name: 
// Module Name:    stall_controller 
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
module stall_controller(
    input stall,
    output PC_en,
    output IR_en,
    output IDEX_clr2
    );
	 
	 assign PC_en = ~stall;
	 assign IR_en = ~stall;
	 assign IDEX_clr2 = stall;


endmodule

