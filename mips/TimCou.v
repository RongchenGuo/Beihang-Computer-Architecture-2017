`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:05:56 12/28/2017 
// Design Name: 
// Module Name:    TimCou 
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
module TimCou(
    input [31:0] DEV_WD,
	 input DEV_WE,
	 input [31:0] DEV_Addr,
	 output [31:0] DEV_RD,
    output reg intrp=0,
    input clk,
    input reset
    );
	 
	 reg [31:0] count;
	 reg [31:0] ctrl;
	 reg [31:0] preset;
	 
	 initial begin
	   ctrl = 0;
		preset = 0;
		count = 0;
	 end
	 
	 assign DEV_RD = (DEV_Addr[3:2]==2'b00) ? {28'b0,ctrl[3:0]} :
	                 (DEV_Addr[3:2]==2'b01) ? preset :
						  (DEV_Addr[3:2]==2'b10) ? count : 'h66666666;
	 
	 always @(posedge clk) begin
	   if (reset)
		begin
		  count <= 0;
		  preset <= 0;
		  ctrl <= 0;
		  intrp <= 0;
		end
		else 
		begin
		  if (DEV_WE)
		  begin
		    if (DEV_Addr[3:2]==2'b00) ctrl <= DEV_WD;
		    else if (DEV_Addr[3:2]==2'b01) preset <= DEV_WD;
		  end
		  else
		  begin
		    case (ctrl[2:1])
		    2'b00:begin
							if(ctrl[0])
							begin
									if(count > 32'b1)
									begin
										count <= count - 1; 
									end
									else if(count == 32'b1)	
									begin
										count <= count - 1;
										ctrl[0] <= 1'b0;
										if(ctrl[3]==1) intrp <= 1;
									end
									else	
									begin
									  count <= preset;
									  intrp <= 0;
									end
							end
							else
                     begin
							  if (ctrl[3]==1'b0) intrp <= 0;
							  else 
							  begin
							    count <= count;
								 intrp <= intrp;
							  end
                     end							
					 end
				
			 2'b01:begin
							if(ctrl[0])
							begin
									if(count > 32'b1) count <= count - 1;
									else if (count == 32'b1)
									begin
									  count <= count - 1;
									  if(ctrl[3]==1) intrp <= 1;
									end
									else 
									begin
									  count <= preset;
									  intrp <= 0;
									end
							end
							else
							begin
							  if (ctrl[3]==1'b0) intrp <= 0;
							  else 
							  begin
							    count <= count;
								 intrp <= intrp;
							  end
                     end	
					 end
			 default: begin
				           ;
						 end
			 endcase
		  end
	   end
    end


endmodule
