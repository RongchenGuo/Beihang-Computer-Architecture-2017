`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:15 12/05/2017 
// Design Name: 
// Module Name:    pipeER 
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
module pipeER(
    input [31:0] F1out,
	 input [31:0] F2out,
	 input [4:0] A1,
	 input [4:0] A2,
	 input [4:0] A3,
	 input [4:0] A0,
	 input [31:0] ExtOut,
	 input [31:0] PC_D,
	 input [4:0] shamt,
	 input [2:0] nPC_sel_D,
	 
    output reg [31:0] V1_E=0,
	 output reg [31:0] V2_E=0,
	 output reg [4:0] A1_E=0,
	 output reg [4:0] A2_E=0,
	 output reg [4:0] A3_E=0,
	 output reg [4:0] A0E=0,
	 output reg [31:0] Ext_E=0,
	 output reg [31:0] PC_E=32'b0000_0000_0000_0000_0011_0000_0000_0000,
	 output reg [4:0] shamt_E=0,
	 output reg [2:0] nPC_sel_E=0,
	 
    input clk,
	 input IDEX_clr2,
	 input IDEX_clr,
	 input reset
    );
	 
	 
	 always @(posedge clk, posedge reset) begin
	 if (reset) begin
	 V1_E <= 0;
	 V2_E <= 0;
	 A1_E <= 0;
	 A2_E <= 0;
	 A3_E <= 0;
	 A0E <= 0;
	 Ext_E <= 0;
	 PC_E <= 32'b0000_0000_0000_0000_0011_0000_0000_0000;
	 shamt_E <= 0;
	 nPC_sel_E <= 0;
	 end
	 else if(IDEX_clr|IDEX_clr2)
	 begin
	 V1_E <= 0;
	 V2_E <= 0;
	 A1_E <= 0;
	 A2_E <= 0;
	 A3_E <= 0;
	 A0E <= 0;
	 Ext_E <= 0;
	 PC_E <= PC_D;
	 shamt_E <= 0;
	 nPC_sel_E <= 0;
	 end
	 else begin
	 V1_E <= F1out;
	 V2_E <= F2out;
	 A1_E <= A1;
	 A2_E <= A2;
	 A3_E <= A3;
	 A0E <= A0;
	 Ext_E <= ExtOut;
	 PC_E <= PC_D;
	 shamt_E <= shamt;
	 nPC_sel_E <= nPC_sel_D;
	 end
	 end
	 
endmodule

