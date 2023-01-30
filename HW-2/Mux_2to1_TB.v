`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module Mux_2to1_TB;

	// Inputs
	reg [31:0] input_0;
	reg [31:0] input_1;
	reg selector;

	// Outputs
	wire [31:0] output_0;

	// Instantiate the Unit Under Test (UUT)
	Mux_2to1 uut (
		.input_0(input_0), 
		.input_1(input_1), 
		.selector(selector), 
		.output_0(output_0)
	);

	initial begin
		// Initialize Inputs
		input_0 = 0;
		input_1 = 0;
		selector = 0;

		// Wait 100 ns for global reset to finish
		#100;
		input_0 = 13;
		input_1 = 0;
		selector = 0;
        
		// Wait 100 ns
		#100;
		input_0 = 13;
		input_1 = 0;
		selector = 1;
		
		// Wait 100 ns
		#100;
		input_0 = 13;
		input_1 = 0;
		selector = 0;


	end
      
endmodule

