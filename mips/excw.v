`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:04 12/26/2017 
// Design Name: 
// Module Name:    excw 
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
module excw(
    input [31:0] ALUout_M,
	 input intrp0,
	 input intrp1,
    input ExceptionM,
    input [4:0] ExcM,
	 input MemWrM,
	 input [1:0] storeselM,
	 input [1:0] loadselM,
	 input exl,
	 input ie,
	 input [5:0] im,
	 input overflow2M,
    output Exception,
    output [4:0] Exc
    );

	 //wire addrexc;
	 //wire notrange;
	 //wire rangeexc;
	 wire interrupt;
	 wire range1,range2,range3,range4,range5;
	 wire shin,sbin,swin,lhin,lbin,lwin;
	 wire storeout,loadout;
	 
	 assign interrupt = (ie==1)&&(exl==0)&&(((intrp0==1)&&(im[0]==1))||((intrp1==1)&&(im[1]==1)));
	 //assign notrange = ~(((ALUout_M>=32'b0000_0000_0000_0000_0000_0000_0000_0000)&&(ALUout_M<=32'b0000_0000_0000_0000_0010_1111_1111_1111))||((ALUout_M>=32'b0000_0000_0000_0000_0111_1111_0000_0000)&&(ALUout_M<=32'b0000_0000_0000_0000_0111_1111_0000_1011))||((ALUout_M>=32'b0000_0000_0000_0000_0111_1111_0001_0000)&&(ALUout_M<=32'b0000_0000_0000_0000_0111_1111_0001_1011)));
	 //assign addrexc = (((storeselM==2'b11)&&(ALUout_M[1:0]!=2'b00))||((storeselM==2'b01)&&(ALUout_M[0]!=1'b0))||((loadselM==2'b11)&&(ALUout_M[1:0]!=2'b00))||((loadselM==2'b01)&&(ALUout_M[0]!=1'b0)));
	 //assign rangeexc = notrange & (storeselM[0] | storeselM[1] | loadselM[0] | loadselM[1]);
	 
	 assign range1 = (ALUout_M>=32'b0000_0000_0000_0000_0000_0000_0000_0000)&&(ALUout_M<=32'b0000_0000_0000_0000_0010_1111_1111_1111);
	 assign range2 = (ALUout_M>=32'b0000_0000_0000_0000_0111_1111_0000_0000)&&(ALUout_M<=32'b0000_0000_0000_0000_0111_1111_0000_1011);
	 assign range3 = (ALUout_M>=32'b0000_0000_0000_0000_0111_1111_0000_0000)&&(ALUout_M<=32'b0000_0000_0000_0000_0111_1111_0000_0111);
	 assign range4 = (ALUout_M>=32'b0000_0000_0000_0000_0111_1111_0001_0000)&&(ALUout_M<=32'b0000_0000_0000_0000_0111_1111_0001_1011);
	 assign range5 = (ALUout_M>=32'b0000_0000_0000_0000_0111_1111_0001_0000)&&(ALUout_M<=32'b0000_0000_0000_0000_0111_1111_0001_0111);
	 
	 assign shin = range1 & ~ALUout_M[0];
	 assign sbin = range1;
	 assign swin = (range1 | range3 | range5) & ~ALUout_M[1] & ~ALUout_M[0];
	 assign lhin = range1 & ~ALUout_M[0];
	 assign lbin = range1;
	 assign lwin = (range1 | range2 | range4) & ~ALUout_M[1] & ~ALUout_M[0];
	 
	 assign storeout = (~storeselM[1] & storeselM[0] & ~shin) | (~storeselM[1] & storeselM[0] & overflow2M) |
	                   (storeselM[1] & ~storeselM[0] & ~sbin) | (storeselM[1] & ~storeselM[0] & overflow2M) |
							 (storeselM[1] & storeselM[0] & ~swin) | (storeselM[1] & storeselM[0] & overflow2M);
	 assign loadout = (~loadselM[1] & loadselM[0] & ~lhin) | (~loadselM[1] & loadselM[0] & overflow2M) |
							(loadselM[1] & ~loadselM[0] & ~lbin) | (loadselM[1] & ~loadselM[0] & overflow2M) |
							(loadselM[1] & loadselM[0] & ~lwin) | (loadselM[1] & loadselM[0] & overflow2M);
	 
	 assign Exception = (storeout | loadout | interrupt | ExceptionM) & (~exl);
	 assign Exc = (interrupt) ? 5'b00000 :
	              (storeout) ? 5'b00101 :
					  (loadout) ? 5'b00100 : ExcM;
					  
endmodule
