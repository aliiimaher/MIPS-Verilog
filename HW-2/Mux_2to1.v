`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module Mux_2to1(
	input [31:0] input_0,	// PC
	input [31:0] input_1,	// Branch Target
	input selector,			// PC Source
	output [31:0] output_0	// Output Addr
    );
	 
	assign output_0 = selector ? input_1 : input_0;

endmodule
