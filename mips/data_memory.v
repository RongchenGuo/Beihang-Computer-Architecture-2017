`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:05 12/05/2017 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory(
    input [31:0] ALUout_M,
    input [31:0] F5out,
    output [31:0] DataOut,
	 input [31:0] NPC,
    input MemWrMtemp,
	 input [1:0] storeselM,
    input clk,
	 input reset,
	 input Exception,
	 output HitDM,
	 output MemWrM
    );
	 wire [11:0] DMaddr;
	 wire [31:0] displayaddr;
	 
	 reg [31:0] array[4095:0];
	 integer i;
	 assign DMaddr = ALUout_M[13:2];
	 assign DataOut = array[DMaddr];
	 assign displayaddr={18'b0,DMaddr,2'b0};
	 assign HitDM = ((ALUout_M[31:14]==18'b0000_0000_0000_0000_00)&&(ALUout_M[13:12]<=2'b10));
	 assign MemWrM = MemWrMtemp & ~Exception;
	 
	 initial begin
	 for (i=0;i<4096;i=i+1) array[i] = 0;
	 end
	 
	 always @(posedge clk) begin
	 if (reset) begin
	 for (i=0;i<4096;i=i+1) array[i] <= 0;
	 end
	 else if ((MemWrM&HitDM)) begin

      if (storeselM==2'b11) begin
	   array[DMaddr] <= F5out;
		$display("%d@%h: *%h <= %h",$time,NPC, displayaddr,F5out);
		end
		else if ((storeselM==2'b01)&&(ALUout_M[1]==1'b1)) begin
		array[DMaddr][31:16] <= F5out[15:0];
		$display("%d@%h: *%h <= %h",$time,NPC, displayaddr,{F5out[15:0],array[DMaddr][15:0]});
		end
		else if ((storeselM==2'b01)&&(ALUout_M[1]==1'b0)) begin
		array[DMaddr][15:0] <= F5out[15:0];
		$display("%d@%h: *%h <= %h",$time,NPC, displayaddr,{array[DMaddr][31:16],F5out[15:0]});
		end
		else if ((storeselM==2'b10)&&(ALUout_M[1:0]==2'b00)) begin
		array[DMaddr][7:0] <= F5out[7:0];
		$display("%d@%h: *%h <= %h",$time,NPC, displayaddr,{array[DMaddr][31:8],F5out[7:0]});
		end
		else if ((storeselM==2'b10)&&(ALUout_M[1:0]==2'b01)) begin
		array[DMaddr][15:8] <= F5out[7:0];
		$display("%d@%h: *%h <= %h",$time,NPC, displayaddr,{array[DMaddr][31:16],F5out[7:0],array[DMaddr][7:0]});
		end
		else if ((storeselM==2'b10)&&(ALUout_M[1:0]==2'b10)) begin
		array[DMaddr][23:16] <= F5out[7:0];
		$display("%d@%h: *%h <= %h",$time,NPC, displayaddr,{array[DMaddr][31:24],F5out[7:0],array[DMaddr][15:0]});
		end
		else if ((storeselM==2'b10)&&(ALUout_M[1:0]==2'b11)) begin
		array[DMaddr][31:24] <= F5out[7:0];
		$display("%d@%h: *%h <= %h",$time,NPC, displayaddr,{F5out[7:0],array[DMaddr][23:0]});
		end
		else begin
		  ;
		end

		end
	 end	 

endmodule
