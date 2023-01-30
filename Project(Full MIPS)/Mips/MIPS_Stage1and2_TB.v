`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module MIPS_Stage1and2_TB;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	MIPS_Stage1and2 uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

