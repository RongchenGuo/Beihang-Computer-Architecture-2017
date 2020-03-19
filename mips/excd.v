`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:57 12/26/2017 
// Design Name: 
// Module Name:    excd 
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
module excd(
    input clk,
    input reset,
    input [31:0] PC,
    output reg [4:0] ExcD=0,
    output reg ExceptionD=0
    );
	 wire Exception;
	 wire [4:0] Exc;
	 wire wrongaddr;
	 
	 
	 
	 assign wrongaddr = ((PC<32'b0000_0000_0000_0000_0011_0000_0000_0000)||(PC>32'b0000_0000_0000_0000_0100_1111_1111_1111));
	 assign Exception = wrongaddr | PC[1] | PC[0];
	 assign Exc = (Exception)?5'b00100:5'b00000;
	 
	 always @(posedge clk) begin
	 if (reset) begin
	   ExcD <= 0;
	   ExceptionD <= 0;
	 end
	 else begin
	   ExceptionD <= Exception;
		ExcD <= Exc;
	 end
	 end

endmodule
