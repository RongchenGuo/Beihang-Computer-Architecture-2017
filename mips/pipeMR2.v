`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:49 12/05/2017 
// Design Name: 
// Module Name:    pipeMR2 
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
module pipeMR2(
	 input RegWrE,
	 input MemWrE,
	 input MemToRegE,
	 input busW_selE,
	 input [1:0] loadselE,
	 input signedselE,
	 input [1:0] storeselE,
	 input c0wrE,
	 input mfc0selE,
	 input nPC_sel_eretE,
	 
	 input [1:0] Res_E,
	 output reg [1:0] Res_M=`ResNW,

	 output reg RegWrM=0,
	 output reg MemWrMtemp=0,
	 output reg MemToRegM=0,
	 output reg busW_selM=0,
	 output reg [1:0] loadselM=0,
	 output reg signedselM=0,
	 output reg [1:0] storeselM=0,
	 output reg c0wrM=0,
	 output reg mfc0selM=0,
	 output reg nPC_sel_eretM=0,
	 
	 input clk,
	 input reset,
	 input EXMEM_clr
    );
	 
	 always @(posedge clk) begin
	 if (reset|EXMEM_clr) begin
	 RegWrM <= 0;
	 MemWrMtemp <= 0;
	 MemToRegM <= 0;
	 busW_selM <= 0;
	 loadselM <= 0;
	 signedselM <= 0;
	 storeselM <= 0;
	 c0wrM <= 0;
	 mfc0selM <= 0;
	 nPC_sel_eretM <= 0;
	 
	 Res_M <= `ResNW;
	 end
	 else begin
	 RegWrM <= RegWrE;
	 MemWrMtemp <= MemWrE;
	 MemToRegM <= MemToRegE;
	 busW_selM <= busW_selE;
	 loadselM <= loadselE;
	 signedselM <= signedselE;
	 storeselM <= storeselE;
	 c0wrM <= c0wrE;
	 mfc0selM <= mfc0selE;
	 nPC_sel_eretM <= nPC_sel_eretE;
	 
	 Res_M <= Res_E;
	 end
	 end

endmodule

