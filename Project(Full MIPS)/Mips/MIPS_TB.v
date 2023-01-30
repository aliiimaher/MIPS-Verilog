`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113 
// Final Project _ TB File
////////////////////////////////////////////////////////////////////////////////

module MIPS_TB;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk)
	);

	initial begin
		clk = 0;
	end
	
	always #5 clk = ~clk;
      
endmodule

