`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:36 07/28/2017
// Design Name:   ORA_AND
// Module Name:   /afs/pd.inf.tu-dresden.de/users/s0549221/BIST_AND/test_ora.v
// Project Name:  BIST_AND
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ORA_AND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module test_ora;

	// Inputs
	reg resp;
	reg clk;
	reg init;
	reg en;

	// Outputs
	wire [2:0] P;
	reg [2:0] seed;

	// Instantiate the Unit Under Test (UUT)
	ORA_AND uut (
		.resp(resp), 
		.clk(clk), 
		.init(init), 
		.en(en), 
		.P(P), 
	 
		.seed(seed)
	);

	
	
initial begin
		// Initialize Inputs
			seed = 0;
		clk = 0;
		repeat(1000)
		#5  clk=~clk;
		
		end
		initial begin
		#100;
		init = 0;
		#5;
		init=1;
		#5;
		init=0;
		end
		initial begin
	    #100;
		resp=1;
		en = 0;
		#10;
		en=1;
	   #10;
		resp=0;
		#10;
		resp=1;
		#10;
		resp=0;
		#10;
		resp=1;
		#10;
		resp=0;
		
		
		
		
		end
		
	
		// Wait 100 ns for global reset to finish
	
        
		// Add stimulus here


      
endmodule

