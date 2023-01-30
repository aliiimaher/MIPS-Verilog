`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module SignExtend(
	input [15:0] value,						// Value(16 bits)
	output [31:0] sign_extended_value	// Sign Extended Value(32 bits)
    );

	assign sign_extended_value = {{16{value[15]}}, value[15:0]};
	
endmodule
