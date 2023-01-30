`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// 
// Ali Maher _ 9932113 _ CA Lab _ HW1
// Create Date:   07:43:17 10/25/2022
// Design Name:   Mux_2to1
// Module Name:   G:/Term5/CA Lab/HW-1/HW-1/Mux_2to1_TB.v
// Verilog Test Fixture created by ISE for module: Mux_2to1
// 
////////////////////////////////////////////////////////////////////////////////

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

