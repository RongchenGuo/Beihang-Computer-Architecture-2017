`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:24 12/05/2017 
// Design Name: 
// Module Name:    pipeER2 
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
module pipeER2(
    input RegWr,
	 input ALUsrc,
	 input [4:0] ALUctr,
	 input MemWr,
	 input MemToReg,
	 input busW_sel,
	 input [1:0] loadsel,
	 input signedsel,
	 input [1:0] storesel,
	 input shamtsel,
	 input [1:0] moveto,
	 input [1:0] movefrom,
	 input c0wr,
	 input mfc0sel,
	 input nPC_sel_eret,
	 
	 input [1:0] Res,
	 output reg [1:0] Res_E=`ResNW,
	 
	 output reg RegWrE=0,
	 output reg ALUsrcE=0,
	 output reg [4:0] ALUctrE=0,
	 output reg MemWrE=0,
	 output reg MemToRegE=0,
	 output reg busW_selE=0,
	 output reg [1:0] loadselE=0,
	 output reg signedselE=0,
	 output reg [1:0] storeselE=0,
	 output reg shamtselE=0,
	 output reg [1:0] movetoE=0,
	 output reg [1:0] movefromE=0,
	 output reg c0wrE=0,
	 output reg mfc0selE=0,
	 output reg nPC_sel_eretE=0,
	 
    input clk,
	 input IDEX_clr2,
	 input IDEX_clr,
	 input reset
    );
	 
	 
	 always @(posedge clk) begin
	 if (reset|IDEX_clr|IDEX_clr2) begin
	 RegWrE <= 0;
	 ALUsrcE <= 0;
	 ALUctrE <= 0;
	 MemWrE <= 0;
	 MemToRegE <= 0;
	 busW_selE <= 0;
	 loadselE <= 0;
	 signedselE <= 0;
	 storeselE <= 0;
	 shamtselE <= 0;
	 movetoE <= 0;
	 movefromE <= 0;
	 c0wrE <= 0;
	 mfc0selE <= 0;
	 nPC_sel_eretE <= 0;
	 
	 Res_E <= `ResNW;
	 end
	 else begin	 
	 RegWrE <= RegWr;
	 ALUsrcE <= ALUsrc;
	 ALUctrE <= ALUctr;
	 MemWrE <= MemWr;
	 MemToRegE <= MemToReg;
	 busW_selE <= busW_sel;
	 loadselE <= loadsel;
	 signedselE <= signedsel;
	 storeselE <= storesel;
	 shamtselE <= shamtsel;
	 movetoE <= moveto;
	 movefromE <= movefrom;
	 c0wrE <= c0wr;
	 mfc0selE <= mfc0sel;
	 nPC_sel_eretE <= nPC_sel_eret;
	 
	 Res_E <= Res;
	 end
	 end
	 
endmodule


