`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Ali Maher _ 9932113 _ CA Lab _ HW1
// Create Date:    08:32:06 10/25/2022 
// Design Name: PC Register
// Module Name:    PC_Reg 
// Revision: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_Reg(
	input [31:0] address,
	input clk,
	output reg [31:0] nextAddress
    );
	 
	always @(posedge clk) begin
		nextAddress = address + 4;
	end

endmodule
