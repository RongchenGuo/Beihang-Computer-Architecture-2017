`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:14:03 12/05/2017
// Design Name:   pipeMR
// Module Name:   E:/ISEhomework/p5/mips/pipeMR_tb.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeMR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipeMR_tb;

	// Inputs
	reg [31:0] V2_E;
	reg [4:0] A2_E;
	reg [31:0] ALUout;
	reg [4:0] A3_E;
	reg [31:0] plus4_E;
	reg clk;

	// Outputs
	wire [31:0] V2_M;
	wire [4:0] A2_M;
	wire [31:0] ALUout_M;
	wire [4:0] A3_M;
	wire [31:0] plus4_M;

	// Instantiate the Unit Under Test (UUT)
	pipeMR uut (
		.V2_E(V2_E), 
		.A2_E(A2_E), 
		.ALUout(ALUout), 
		.A3_E(A3_E), 
		.plus4_E(plus4_E), 
		.V2_M(V2_M), 
		.A2_M(A2_M), 
		.ALUout_M(ALUout_M), 
		.A3_M(A3_M), 
		.plus4_M(plus4_M), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		V2_E = 0;
		A2_E = 0;
		ALUout = 0;
		A3_E = 0;
		plus4_E = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		V2_E = 1;
		A2_E = 2;
		ALUout = 3;
		A3_E = 12;
		plus4_E = 2;
		#10;
		V2_E = 2;
		A2_E = 3;
		ALUout = 4;
		A3_E = 10;
		plus4_E = 1;
		#10;
		V2_E = 1;
		A2_E = 2;
		ALUout = 3;
		A3_E = 12;
		plus4_E = 2;
		#10;


	end
	always #5 clk = ~clk;
      
endmodule

