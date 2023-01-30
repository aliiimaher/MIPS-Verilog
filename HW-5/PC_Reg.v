`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module PC_Reg(
	input [31:0] address,					// Input Addr
	input clk,									// Clk
	input hitBit,								// Hit Bit
	output reg [31:0] nextAddress	= 0	// Output Addr
    );
	 
	always @(negedge clk) begin
		if (hitBit == 1) begin
			nextAddress = address;
		end
	end

endmodule
