`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module InstructionMemory(
	input [31:0] inputAddress,
	input clk,
	output reg [127:0] data_line
    );

	// Memory
	reg [7:0] memory  [0:1023];
	// A reg for storing address to compare it with inputAddress
	// inorder to set or reset our counter
	reg [31:0] address = 0;
	// Counter: for simulation the cache and memory speed
	reg [2:0] counter = 0;
	
	
	// Memory Intialization 
	/* (For test)
	integer i;
	initial begin	
		for (i = 0 ; i < 128 ; i = i + 1)
		begin
			memory[i] = i;
		end
	end
	*/
	// Read from file to Intial memory.
	// the "input.txt" file should be in the same directory of the project.
	initial $readmemh("input.txt", memory);
	
	always @(posedge clk) begin
		if (address[31:4] != inputAddress[31:4]) begin
			address = {inputAddress[31:4], {4'b0000}};
			counter = counter + 1;
		end
		else if (counter == 4) begin
			data_line = {memory[address + 12], memory[address + 13], memory[address + 14], memory[address + 15],
								memory[address + 8], memory[address + 9], memory[address + 10], memory[address + 11],			
								memory[address + 4], memory[address + 5], memory[address + 6], memory[address + 7],
								memory[address], memory[address + 1], memory[address + 2], memory[address + 3]};			
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
