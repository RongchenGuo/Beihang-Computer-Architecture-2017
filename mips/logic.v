`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:47 12/27/2017 
// Design Name: 
// Module Name:    logic 
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
module logical(
    input Exception,
    output IFID_clr,
    output IDEX_clr,
    output EXMEM_clr,
    output MEMWB_clr
    );
	 
	 assign IFID_clr=Exception;
    assign IDEX_clr=Exception;
    assign EXMEM_clr=Exception;
    assign MEMWB_clr=Exception;


endmodule
