`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:55 12/27/2017 
// Design Name: 
// Module Name:    bridge 
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
module bridge(
    input [31:0] PrAddr,
    output [31:0] PrRD,
    input [31:0] PrWD,
    output [31:0] DEV_Addr,
    output [31:0] DEV_WD,
    input [31:0] DEV0_RD,
    input [31:0] DEV1_RD,
    input MemWrM,
    output DEV0_WE,
    output DEV1_WE
    );
	 
	 wire HitDEV0,HitDEV1;
	 
	 assign HitDEV0 = ((PrAddr[31:4]=='h00007f0)&&(PrAddr[3:0]<='hb));
	 assign HitDEV1 = ((PrAddr[31:4]=='h00007f1)&&(PrAddr[3:0]<='hb));
	 assign DEV_WD = PrWD;
	 assign DEV_Addr = PrAddr;
	 assign PrRD = (HitDEV0) ? DEV0_RD :
	               (HitDEV1) ? DEV1_RD : 'h12345678;
	 assign DEV0_WE = MemWrM & HitDEV0;
	 assign DEV1_WE = MemWrM & HitDEV1;


endmodule
