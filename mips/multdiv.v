`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:45 12/19/2017 
// Design Name: 
// Module Name:    multdiv 
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
`include "head.v"
module multdiv(
    input [31:0] A,
    input [31:0] B,
    output reg busy=0,
    output start,
    output reg [31:0] hi=0,
    output reg [31:0] lo=0,
    input clk,
    input reset,
	 input Exception,
    input [4:0] ALUctrE,
	 input [1:0] movetoE
    );
	 reg [4:0] count=0;
	 reg [31:0] hihi=0;
	 reg [31:0] lolo=0;
	 reg [4:0] begintime=0;
	 
	 assign start = ((ALUctrE==`ALU_mult)||(ALUctrE==`ALU_multu)||(ALUctrE==`ALU_div)||(ALUctrE==`ALU_divu));
	 
	 always @(posedge clk) begin
	   if (reset) begin
		  busy <= 0;
		  hi <= 0;
		  lo <= 0;
		  count <= 0;
		  hihi <= 0;
		  lolo <= 0;
		  begintime <= 0;
		end
		else if ((Exception==1'b1)&&((begintime==5'b00000)||(begintime==5'b00001))) begin
		  count <= 0;
		  busy <= 0;
		  hihi <= 0;
		  lolo <= 0;
		  begintime <= 0;
		end
		else begin
		  if (ALUctrE==`ALU_mult) begin
		    count <= 5'b00101;
			 begintime <= 5'b00001;
			 busy <= 1'b1;
			 {hihi,lolo} <= $signed(A)*$signed(B);			 
		  end
		  else if (ALUctrE==`ALU_multu) begin
		    count <= 5'b00101;
			 begintime <= 5'b00001;
			 busy <= 1'b1;
			 {hihi,lolo} <= {1'b0,A}*{1'b0,B};			 
		  end
		  else if (ALUctrE==`ALU_div) begin
		    count <= 5'b01010;
			 begintime <= 5'b00001;
			 busy <= 1'b1;
			 hihi <= $signed(A)%$signed(B);
          lolo <= $signed(A)/$signed(B);			 
		  end
		  else if (ALUctrE==`ALU_divu) begin
		    count <= 5'b01010;
			 begintime <= 5'b00001;
			 busy <= 1'b1;
			 hihi <= {1'b0,A}%{1'b0,B};
          lolo <= {1'b0,A}/{1'b0,B};			 
		  end
		  else begin
		    if (count>1) 
			 begin
			   count <= count-1;
				begintime <= begintime+1;
			 end
			 else if (count==1) begin
			   count <= count-1;
				hi <= hihi;
				lo <= lolo;
				hihi <= 0;
				lolo <= 0;
				busy <= 0;
				begintime <= 0;
			 end
			 else begin
			   if (movetoE==2'b10) hi <= A;
				else if (movetoE==2'b01) lo <= A;
				else begin
				  ;
				end
			 end
		  end
		
		
		end
	 end
	 


endmodule
