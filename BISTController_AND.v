`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:08 07/28/2017 
// Design Name: 
// Module Name:    BISTController_AND 
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
module BISTController_AND(input Start_BIST,result,clk,
                          output reg init,en,compare,pass_fail
								 );
reg [2:0]count;
always@(posedge clk)
    begin
        if(Start_BIST)
            begin
                init=1;
                compare=0;
                en=0;
            end
        else if((Start_BIST==0) & (init==1))
            begin
                init=0;
                en=1;
                count=3;
		        compare=0;
            end
        else if((en==1)&(count!=0))
                count = count-1;
        else if((count==0)& (en==1))
                en=0;
        else if((en==0)&(compare==0))
            begin
                compare = 1;
                if(result == 1)
                    pass_fail = 0;
                else
                    pass_fail = 1;
             end
         else
                compare=0;
     end
endmodule

