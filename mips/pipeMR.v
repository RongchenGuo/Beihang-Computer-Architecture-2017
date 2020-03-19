`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:01 12/05/2017 
// Design Name: 
// Module Name:    pipeMR 
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
module pipeMR(
    input [31:0] F4out,
    input [4:0] A2_E,
    input [31:0] ALUout_temp,
    input [4:0] A3_E,
    input [31:0] PC_E,
	 input [4:0] A0E,
	 input [2:0] nPC_sel_E,

    output reg [31:0] V2_M=0,
    output reg [4:0] A2_M=0,
    output reg [31:0] ALUout_M=0,
    output reg [4:0] A3_M=0,
	 output reg [4:0] A0M=0,
    output reg [31:0] PC_M=32'b0000_0000_0000_0000_0011_0000_0000_0000,
	 output reg [2:0] nPC_sel_M=0,

	 input clk,
	 input reset,
	 input EXMEM_clr
    );
	 
	 always @(posedge clk) begin
	 if (reset|EXMEM_clr) begin
	 V2_M <= 0;
	 A2_M <= 0;
	 ALUout_M <= 0;
	 A3_M <= 0;
	 A0M <= 0;
	 PC_M <= 32'b0000_0000_0000_0000_0011_0000_0000_0000;
	 nPC_sel_M <= 0;
	 end
	 else begin	 
	 V2_M <= F4out;
	 A2_M <= A2_E;
	 ALUout_M <= ALUout_temp;
	 A3_M <= A3_E;
	 PC_M <= PC_E;
	 A0M <= A0E;
	 nPC_sel_M <= nPC_sel_E;
	 end
	 end

endmodule
