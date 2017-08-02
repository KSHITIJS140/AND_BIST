`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:15:09 07/28/2017
// Design Name:   BIST_AND
// Module Name:   /afs/pd.inf.tu-dresden.de/users/s0549221/BIST_AND/test_BIST.v
// Project Name:  BIST_AND
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BIST_AND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_BIST;

	// Inputs
	reg clk;
	reg Start_BIST;
	reg [2:0] seed1;
	reg [1:0] seed2;
	reg [2:0] golden_sig;
	

	// Outputs
	wire pass_fail;

	// Instantiate the Unit Under Test (UUT)
	BIST_AND uut (
		.clk(clk), 
		.Start_BIST(Start_BIST),
	    .seed1(seed1), 
		.seed2(seed2), 
		.golden_sig(golden_sig),
		.pass_fail(pass_fail)
	);

	initial begin
		// Initialize Inputs
		seed1 = 0;
		golden_sig = 2;
		seed2 = 0;
		Start_BIST = 0;
      #100
      Start_BIST = 1;
              #10;
           Start_BIST = 0;
		
		end
		// Wait 100 ns for global reset to finish
	
        
		// Add stimulus here

  initial begin
			
		clk = 0;
		repeat(1000)
		#5  clk=~clk;
		
		end
	
		
		
	
		// Wait 100 ns for global reset to finish
	
        
		// Add stimulus here


       

endmodule

