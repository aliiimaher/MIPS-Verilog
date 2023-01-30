`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module Cache(
	input [31:0] inputAddr,		// Input Address
	input [127:0] data_line,
	/*
	input [31:0] dataline_0,	// 00
	input [31:0] dataline_1,	// 01
	input [31:0] dataline_2,	// 10
	input [31:0] dataline_3,	// 11		===> This is our 128 bits dataline.
	*/
	input clk,
	output reg [31:0] outputAddr,
	output reg hitBit
    );
	 
	 reg [153:0] cache [7:0];
	 
	 // Cache Intialization 
	integer i;
	initial begin	
		for (i = 0 ; i < 8 ; i = i + 1)
		begin
			cache[i] = 0;
		end
	end
	// - - - - - - - - - - - - - 
	
	// Cache:
	// tag - index - offset - 00
	reg [24:0] tag;
	reg [2:0] index;
	reg [1:0] offset;
	reg isValid;
	
	// Filling Upper regs:
	always @(*) begin
		index = inputAddr[6:4];
		offset = inputAddr[3:2];
		isValid = cache[index][153];
		tag = cache[index][152:128];
	end
	
	// Writing in  Cache
	always @(data_line) begin
		if (data_line !== 128'bX) begin
			// validBit + tag + data_line(4 ta Address)
			cache[index] = {1'b1, inputAddr[31:7], data_line[127:0]};
		end
	end
	
	// Read from cache
	always @(posedge clk) begin
		if (inputAddr[31:7] == tag && isValid) begin
			hitBit = 1;
			
			case(offset)
					2'b00: outputAddr = cache[index][31:0];
					2'b01: outputAddr = cache[index][63:31];
					2'b10: outputAddr = cache[index][95:64];
					2'b11: outputAddr = cache[index][127:96];
			endcase
		end
		else begin
			hitBit = 0;
			outputAddr[31:0] = 32'bX;
		end
	end	

endmodule
