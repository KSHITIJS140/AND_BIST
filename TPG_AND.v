`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:21 07/28/2017 
// Design Name: 
// Module Name:    TPG_AND 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments   //
/////////////////////////////////////////////////////////////////////////////////

module TPG_AND(input clk,
         
               input enable,
               input [1:0]seed,
               input init,
			   output reg [1:0] Q);
	
always@(posedge clk)
begin
    if(init)
	   Q <= seed;
	else if(enable)
        begin
            Q[1]<= Q[0];
            Q[0]<= ~(Q[0]&Q[1]);
        end
	else 
	   Q <= Q;
end
	   
endmodule 	 
	
	
   



