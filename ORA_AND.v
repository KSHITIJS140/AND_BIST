`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:45 07/28/2017 
// Design Name: 
// Module Name:    ORA_AND 
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
module ORA_AND(input resp,
               input clk,init,en,
					input [2:0] seed,
				   output reg [2:0] P);
always@(posedge clk)
begin
	if(init==1)P <= seed;
	else if(en==1)
	begin
	   
      P[0] <=resp+P[2];
		P[1] <= P[0]+P[2];
      P[2] <= P[1];	
	end
	else P <= P;
   
end
endmodule						




