`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:31:14 12/28/2017
// Design Name:   mips
// Module Name:   E:/ISEhomework/p7/mips/mips_tb2.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mips_tb2;

	// Inputs
	reg clk;
	reg reset;
	reg interrupt;
	reg [31:0] DIN;

	// Outputs
	wire [31:0] ALUout_M;
	wire [31:0] F5out;
	wire MemWrM;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset), 
		.interrupt(interrupt), 
		.DIN(DIN), 
		.ALUout_M(ALUout_M), 
		.F5out(F5out), 
		.MemWrM(MemWrM)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		interrupt = 0;
		DIN = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
	always #5 clk = ~clk;
      
endmodule

