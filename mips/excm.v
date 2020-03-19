`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:48 12/26/2017 
// Design Name: 
// Module Name:    excm 
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
module excm(
    input clk,
    input reset,
    input overflow,
	 input overflow2,
    input ExceptionE,
    input [4:0] ExcE,
    output reg ExceptionM=0,
    output reg [4:0] ExcM=0,
	 output reg overflow2M=0
    );
	 wire Exception;
	 wire [4:0] Exc;
	 
	 assign Exc = (overflow)?5'b01100:ExcE;
	 assign Exception = overflow | ExceptionE;
	 
	 always @(posedge clk) begin
	 if (reset) begin
	   ExcM <= 0;
	   ExceptionM <= 0;
		overflow2M <= 0;
	 end
	 else begin
	   ExceptionM <= Exception;
		ExcM <= Exc;
		overflow2M <= overflow2;
	 end
	 end
	 


endmodule

