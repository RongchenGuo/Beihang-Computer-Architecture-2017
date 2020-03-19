`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:41 12/05/2017 
// Design Name: 
// Module Name:    pipeWR2 
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
module pipeWR2(
	 input RegWrM,
	 input MemToRegM,
	 input busW_selM,
	 input [1:0] loadselM,
	 input signedselM,
	 input mfc0selM,
	 input nPC_sel_eretM,
	 
	 input [1:0] Res_M,
	 output reg [1:0] Res_W=`ResNW,
 
	 output reg RegWrW=0,
	 output reg MemToRegW=0,
	 output reg busW_selW=0,
	 output reg [1:0] loadselW=0,
	 output reg signedselW=0,
	 output reg mfc0selW=0,
	 output reg nPC_sel_eretW=0,
	 
	 input clk,
	 input reset,
	 input MEMWB_clr
    );
	 
	 always @(posedge clk) begin
	 if (reset|MEMWB_clr) begin
	 RegWrW <= 0;
	 MemToRegW <= 0;
	 busW_selW <= 0;
	 loadselW <= 0;
	 signedselW <= 0;
	 mfc0selW <= 0;
	 nPC_sel_eretW <= 0;
	 
	 Res_W <= `ResNW;
	 end else
	 begin	 
	 RegWrW <= RegWrM;
	 MemToRegW <= MemToRegM;
	 busW_selW <= busW_selM;
	 loadselW <= loadselM;
	 signedselW <= signedselM;
	 mfc0selW <= mfc0selM;
	 nPC_sel_eretW <= nPC_sel_eretM;
	 
	 Res_W <= Res_M;
	 end
	 end
	 

endmodule
