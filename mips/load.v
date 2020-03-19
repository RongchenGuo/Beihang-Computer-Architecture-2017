`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:30:51 12/18/2017 
// Design Name: 
// Module Name:    load 
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
module load(
    input [31:0] DM_Wtemp,
	 input [31:0] c0out_W,
	 input mfc0selW,
    output [31:0] DM_W,
	 input [31:0] ALUout_W,
    input [1:0] loadselW,
    input signedselW,
	 input HitDMW,
	 input [31:0] DIN_W
    );
	 wire [31:0] datamem;
	 
	 assign DM_W = (mfc0selW) ? c0out_W:
	               (HitDMW) ? datamem : DIN_W;
	 
	 assign datamem = (loadselW==2'b11)?DM_Wtemp: 
	               ((loadselW==2'b01)&&(signedselW==1'b0)&&(ALUout_W[1]==1'b0))?{16'b0,DM_Wtemp[15:0]}:
						((loadselW==2'b01)&&(signedselW==1'b0)&&(ALUout_W[1]==1'b1))?{16'b0,DM_Wtemp[31:16]}:
						((loadselW==2'b01)&&(signedselW==1'b1)&&(ALUout_W[1]==1'b0))?{{16{DM_Wtemp[15]}},DM_Wtemp[15:0]}:
						((loadselW==2'b01)&&(signedselW==1'b1)&&(ALUout_W[1]==1'b1))?{{16{DM_Wtemp[31]}},DM_Wtemp[31:16]}:
						((loadselW==2'b10)&&(signedselW==1'b0)&&(ALUout_W[1:0]==2'b00))?{24'b0,DM_Wtemp[7:0]}:
						((loadselW==2'b10)&&(signedselW==1'b0)&&(ALUout_W[1:0]==2'b01))?{24'b0,DM_Wtemp[15:8]}:
						((loadselW==2'b10)&&(signedselW==1'b0)&&(ALUout_W[1:0]==2'b10))?{24'b0,DM_Wtemp[23:16]}:
						((loadselW==2'b10)&&(signedselW==1'b0)&&(ALUout_W[1:0]==2'b11))?{24'b0,DM_Wtemp[31:24]}:
						((loadselW==2'b10)&&(signedselW==1'b1)&&(ALUout_W[1:0]==2'b00))?{{24{DM_Wtemp[7]}},DM_Wtemp[7:0]}:
						((loadselW==2'b10)&&(signedselW==1'b1)&&(ALUout_W[1:0]==2'b01))?{{24{DM_Wtemp[15]}},DM_Wtemp[15:8]}:
						((loadselW==2'b10)&&(signedselW==1'b1)&&(ALUout_W[1:0]==2'b10))?{{24{DM_Wtemp[23]}},DM_Wtemp[23:16]}:
						((loadselW==2'b10)&&(signedselW==1'b1)&&(ALUout_W[1:0]==2'b11))?{{24{DM_Wtemp[31]}},DM_Wtemp[31:24]}:0;


endmodule
