`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module SignExtend_TB;

	// Inputs
	reg [15:0] value;

	// Outputs
	wire [31:0] sign_extended_value;

	// Instantiate the Unit Under Test (UUT)
	SignExtend uut (
		.value(value), 
		.sign_extended_value(sign_extended_value)
	);

	initial begin
		// Initialize Inputs
		value = 0;

		// Wait 100 ns for global reset to finish
		#100;
		value = 16'b0000000000000000;
		
		#100;
		value = 16'b1000000000000000;
		
		#100;
		value = 16'b1000000000101010;
		
		#100;
		value = 16'b0110101010101010;

	end
      
endmodule

