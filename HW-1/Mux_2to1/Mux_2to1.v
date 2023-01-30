`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Ali Maher _ 9932113 _ CA Lab _ HW1
// Create Date: 07:37:21 10/25/2022 
// Design Name: 
// Module Name: Mux_2to1 
// Revision: 00
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_2to1(
	input [31:0] input_0,
	input [31:0] input_1,
	input selector,
	output [31:0] output_0
    );
	 
	assign output_0 = selector ? input_1 : input_0;

endmodule
