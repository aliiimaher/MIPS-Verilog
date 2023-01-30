`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module DataMemory(
	input clk,
	input [31:0] address,
	input [31:0] writeData,
	input MemRead,
	input MemWrite,
	
	output reg [31:0] readData = 0
    );

	// Memory
	reg [7:0] memory  [0:1023];
	
	// Memory Intialization (for test)
	/*
	integer i;
	initial begin	
		for (i = 0 ; i < 128 ; i = i + 1)
		begin
			memory[i] = i;
		end
	end
	*/
	
	// Choose between reading or writing
	always @(posedge clk)
	begin
		if (MemRead == 1'b1) 
			begin
				readData = memory[address];
			end
		if (MemWrite == 1'b1)
			begin
				memory[address] = writeData;
			end
	end
	
endmodule
