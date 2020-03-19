`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:44 12/27/2017 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input [4:0] A0M,
    input [31:0] PC_M,
    input [31:0] F5out,
    output [31:0] c0out,
	 output [31:0] EPC,
	 output exl,
	 output ie,
	 output [5:0] im,
	 input c0wrM,
	 input Exception,
	 input [4:0] Exc,
	 input nPC_sel_eretW,
	 input intrp0,
	 input intrp1,
	 input [2:0] nPC_sel_M,
	 input clk,
	 input reset
    );

    reg [31:0] cp[31:0];
	 integer i;
	 assign c0out = cp[A0M];
	 assign EPC = cp[14];
	 assign exl = cp[12][1];
	 assign ie = cp[12][0];
	 assign im = cp[12][15:10];
	 
	 initial begin
		cp[31]<=0;
		cp[30]<=0;
		cp[29]<=0;
		cp[28]<=0;
		cp[27]<=0;
		cp[26]<=0;
		cp[25]<=0;
		cp[24]<=0;
		cp[23]<=0;
		cp[22]<=0;
		cp[21]<=0;
		cp[20]<=0;
		cp[19]<=0;
		cp[18]<=0;
		cp[17]<=0;
		cp[16]<=0;
		cp[15]<=0;
		cp[14]<=0;
		cp[13]<=0;
		cp[12]<=0;
		cp[11]<=0;
		cp[10]<=0;
		cp[9]<=0;
		cp[8]<=0;
		cp[7]<=0;
		cp[6]<=0;
		cp[5]<=0;
		cp[4]<=0;
		cp[3]<=0;
		cp[2]<=0;
		cp[1]<=0;
		cp[0]<=0;
	 end
	 
	 always @(posedge clk) begin
	 if (reset) begin
		cp[31]<=0;
		cp[30]<=0;
		cp[29]<=0;
		cp[28]<=0;
		cp[27]<=0;
		cp[26]<=0;
		cp[25]<=0;
		cp[24]<=0;
		cp[23]<=0;
		cp[22]<=0;
		cp[21]<=0;
		cp[20]<=0;
		cp[19]<=0;
		cp[18]<=0;
		cp[17]<=0;
		cp[16]<=0;
		cp[15]<=0;
		cp[14]<=0;
		cp[13]<=0;
		cp[12]<=0;
		cp[11]<=0;
		cp[10]<=0;
		cp[9]<=0;
		cp[8]<=0;
		cp[7]<=0;
		cp[6]<=0;
		cp[5]<=0;
		cp[4]<=0;
		cp[3]<=0;
		cp[2]<=0;
		cp[1]<=0;
		cp[0]<=0;
	 end
	 else if (c0wrM) begin
	   cp[A0M] <= F5out;
	 end
	 else if (nPC_sel_eretW) begin
	   cp[12][1] <= 1'b0;
	 end
	 else if (Exception) begin
	   if ((nPC_sel_M==3'b001)||(nPC_sel_M==3'b010)||(nPC_sel_M==3'b011))
		begin
	   cp[14] <= PC_M - 4;
		cp[13][6:2] <= Exc;
		cp[13][31] <= 1;
		cp[12][1] <= 1'b1;
		cp[13][10] <= intrp0;
		cp[13][11] <= intrp1;
		end
		else
		begin
		cp[14] <= PC_M;
		cp[13][6:2] <= Exc;
		cp[13][31] <= 0;
		cp[12][1] <= 1'b1;
		cp[13][10] <= intrp0;
		cp[13][11] <= intrp1;
		end
	 end
	 else begin
	   ;
	 end
	 end

endmodule
