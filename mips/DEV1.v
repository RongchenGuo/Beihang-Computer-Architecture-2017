`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:07:06 12/28/2017 
// Design Name: 
// Module Name:    DEV1 
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
module DEV1(
    input [31:0] DEV_WD,
	 input DEV1_WE,
	 input [31:0] DEV_Addr,
	 output [31:0] DEV1_RD,
    output intrp1,
    input clk,
    input reset
    );
	 
	 TimCou dev1(.DEV_WD(DEV_WD), .DEV_WE(DEV1_WE), .DEV_Addr(DEV_Addr), .DEV_RD(DEV1_RD), .intrp(intrp1), .clk(clk), .reset(reset));

endmodule
