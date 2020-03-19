`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:05 12/05/2017 
// Design Name: 
// Module Name:    pipeWR 
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
module pipeWR(
    input [4:0] A3_M,
    input [31:0] PC_M,
    input [31:0] ALUout_M,
    input [31:0] DataOut,
	 input HitDM,
	 input [31:0] c0out,
	 input [31:0] DIN,

    output reg [4:0] A3_W=0,
    output reg [31:0] PC_W=32'b0000_0000_0000_0000_0011_0000_0000_0000,
    output reg [31:0] ALUout_W=0,
    output reg [31:0] DM_Wtemp=0,
	 output reg HitDMW=0,
	 output reg [31:0] c0out_W=0,
	 output reg [31:0] DIN_W=0,
 
	 input clk,
	 input reset,
	 input MEMWB_clr
    );
	 
	 always @(posedge clk) begin
	 if (reset|MEMWB_clr) begin
	 A3_W <= 0;
	 PC_W <= 32'b0000_0000_0000_0000_0011_0000_0000_0000;
	 ALUout_W <= 0;
	 DM_Wtemp <= 0;
	 HitDMW <= 0;
	 c0out_W <= 0;
	 DIN_W <= 0;
	 end
	 else begin	 
	 A3_W <= A3_M;
	 PC_W <= PC_M;
	 ALUout_W <= ALUout_M;
	 DM_Wtemp <= DataOut;
	 HitDMW <= HitDM;
	 c0out_W <= c0out;
	 DIN_W <= DIN;
	 end
	 end
	 

endmodule
