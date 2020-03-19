`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:19 12/05/2017 
// Design Name: 
// Module Name:    register_file 
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
module register_file(
    input clk,
    input reset,
    input [4:0] A3_W,
    input [4:0] A1,
    input [4:0] A2,
    input RegWrW,
    input [31:0] busW,
	 input [31:0] PC_W,
	 input busW_selW,
	 input [31:0] NPC,
    output [31:0] V1,
    output [31:0] V2
    );
	 
	 reg [31:0] rf[31:1];
	 integer i;
	 wire [31:0] rfin;
	 
	 assign rfin=(busW_selW==1)?(PC_W+8):busW;
	 
	 initial begin
	   for (i=1;i<32;i=i+1) rf[i]=0;
	 end
	 
	 always @(posedge clk) begin
	 if (reset) begin
	   rf[31]<=0;
		rf[30]<=0;
		rf[29]<=0;
		rf[28]<=0;
		rf[27]<=0;
		rf[26]<=0;
		rf[25]<=0;
		rf[24]<=0;
		rf[23]<=0;
		rf[22]<=0;
		rf[21]<=0;
		rf[20]<=0;
		rf[19]<=0;
		rf[18]<=0;
		rf[17]<=0;
		rf[16]<=0;
		rf[15]<=0;
		rf[14]<=0;
		rf[13]<=0;
		rf[12]<=0;
		rf[11]<=0;
		rf[10]<=0;
		rf[9]<=0;
		rf[8]<=0;
		rf[7]<=0;
		rf[6]<=0;
		rf[5]<=0;
		rf[4]<=0;
		rf[3]<=0;
		rf[2]<=0;
		rf[1]<=0;
	 end
	 else if ((RegWrW==1'b1) && (A3_W!=0)) begin
	   rf[A3_W] <= rfin;
		$display("%d@%h: $%d <= %h",$time, NPC, A3_W,rfin);
	 end
	 else begin
	   ;
	 end
	 end
	 
	 assign V1 = (A1==0)? 32'b0 : rf[A1];
	 assign V2 = (A2==0)? 32'b0 : rf[A2];

endmodule

