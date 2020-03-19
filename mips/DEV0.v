`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:10:34 12/28/2017 
// Design Name: 
// Module Name:    DEV0 
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
module DEV0(
    input [31:0] DEV_WD,
	 input DEV0_WE,
	 input [31:0] DEV_Addr,
	 output [31:0] DEV0_RD,
    output intrp0,
    input clk,
    input reset
    );
	 
	 TimCou dev0(.DEV_WD(DEV_WD), .DEV_WE(DEV0_WE), .DEV_Addr(DEV_Addr), .DEV_RD(DEV0_RD), .intrp(intrp0), .clk(clk), .reset(reset));

endmodule
