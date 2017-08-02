`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:50 07/28/2017 
// Design Name: 
// Module Name:    BIST_AND 
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
module BIST_AND(input clk,Start_BIST,
                input [2:0] seed1,
                input [1:0] seed2,
                input [2:0] golden_sig,
					 output pass_fail );
wire [2:0]P;
wire [1:0]Q;
wire resp,result,init,en,compare;
BISTController_AND a4 (Start_BIST,result,clk,init,en,compare,pass_fail);
TPG_AND a2(clk,en,seed2,init,Q);
and (resp,Q[0],Q[1]);
ORA_AND a1( resp,clk,init,en,seed1,P);
COMPARATOR_AND a3(P,golden_sig,compare,result);



endmodule
