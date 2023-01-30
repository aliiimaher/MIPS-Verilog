`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Ali Maher _ 9932113 _ CA Lab _ HW1
// Create Date:    13:41:53 10/25/2022 
// Design Name: Instruction Memory
// Module Name:    PC_Reg 
// Revision: 00
//
//////////////////////////////////////////////////////////////////////////////////
module InstructionMemory(
	input [31:0] inputAddress,
	input clk,
	output reg [31:0] output_0,
	output reg [31:0] output_1,
	output reg [31:0] output_2,
	output reg [31:0] output_3
    );

	// Memory
	reg [7:0] memory  [1023:0];
	// A reg for storing address to compare it with inputAddress
	// inorder to set or reset our counter
	reg [31:0] address = 0;
	// Counter: for simulation the cache and memory speed
	reg [2:0] counter = 0;
	
	
	// Memory Intialization 
	integer i;
	initial begin	
		for (i = 0 ; i < 128 ; i = i + 1)
		begin
			memory[i] = i;
		end
	end
	
	
	
	always @(posedge clk) begin
		if (address[31:4] != inputAddress[31:4]) begin
			address = {inputAddress[31:4], {4'b0000}};
			counter = counter + 1;
		end
		else if (counter == 5) begin
			output_0 = {memory[address + 3], memory[address + 2], memory[address + 1], memory[address]};
			output_1 = {memory[address + 7], memory[address + 6], memory[address + 5], memory[address + 4]};
			output_2 = {memory[address + 11], memory[address + 10], memory[address + 9], memory[address + 8]};
			output_3 = {memory[address + 15], memory[address + 14], memory[address + 13], memory[address + 12]};
			counter = 0;
		end
		else begin
			counter = counter + 1;
		end
	end
	
	// Here we check if the input address changed then we reset the counter
	always @(inputAddress) begin
		counter = 0;
	end
	
endmodule
