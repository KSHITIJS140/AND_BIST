`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:01 07/28/2017 
// Design Name: 
// Module Name:    COMPARATOR_AND 
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
module COMPARATOR_AND(input[2:0] signature, golden_sig, 
                      input compare,
							 output reg result);

always@(posedge compare)
    begin
        if(golden_sig == signature)
            result=0;
        else
            result=1;
    end
endmodule
