`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:12 12/05/2017 
// Design Name: 
// Module Name:    instr_memory 
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
module instr_memory(
    input [31:0] PC,
    output [31:0] instr
    );
	 
	 reg [31:0] array2[4095:0];
	 wire [11:0] IMAddr;
	 integer i;
	 assign IMAddr=PC[13:2]-12'b1100_0000_0000;
	 assign instr = array2[IMAddr];
	 
	 initial begin
      $readmemh("code.txt",array2);
		$readmemh("code_handler.txt",array2,1120,2047);
	 end

endmodule
