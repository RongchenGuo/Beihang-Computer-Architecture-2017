`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:49:34 12/26/2017 
// Design Name: 
// Module Name:    exce 
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
module exce(
    input clk,
    input reset,
    input il_opcode,
    input ExceptionD,
    input [4:0] ExcD,
    output reg ExceptionE=0,
    output reg [4:0] ExcE=0
    );
	 wire Exception;
	 wire [4:0] Exc;
	 
	 assign Exc = (il_opcode)?5'b01010:ExcD;
	 assign Exception = il_opcode | ExceptionD;
	 
	 always @(posedge clk) begin
	 if (reset) begin
	   ExcE <= 0;
	   ExceptionE <= 0;
	 end
	 else begin
	   ExceptionE <= Exception;
		ExcE <= Exc;
	 end
	 end
	 


endmodule
