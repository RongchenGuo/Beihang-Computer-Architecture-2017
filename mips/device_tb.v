`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:32:26 01/03/2018
// Design Name:   DEV0
// Module Name:   E:/ISEhomework/p7/mips/device_tb.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DEV0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module device_tb;

	// Inputs
	reg [31:0] DEV_WD;
	reg DEV0_WE;
	reg [31:0] DEV_Addr;
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] DEV0_RD;
	wire intrp0;

	// Instantiate the Unit Under Test (UUT)
	DEV0 uut (
		.DEV_WD(DEV_WD), 
		.DEV0_WE(DEV0_WE), 
		.DEV_Addr(DEV_Addr), 
		.DEV0_RD(DEV0_RD), 
		.intrp0(intrp0), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		DEV_WD = 0;
		DEV0_WE = 0;
		DEV_Addr = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		#15;
		DEV0_WE=1;
		DEV_Addr='h7f04;
		DEV_WD=7;
		#10;
		DEV0_WE=0;
		
		

	end
	always #5 clk = ~clk;
      
endmodule

