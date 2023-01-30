`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module Decode_TB;

	// Inputs
	reg clk;
	reg [31:0] instruction;
	reg RegWrite;
	reg [4:0] write_reg;
	reg [31:0] write_data;

	// Outputs
	wire [5:0] opcode;
	wire [31:0] read_data1;
	wire [31:0] read_data2;
	wire [31:0] sign_extended_immediate;
	wire [4:0] rt;
	wire [4:0] rd;

	// Instantiate the Unit Under Test (UUT)
	Decode uut (
		.clk(clk), 
		.instruction(instruction), 
		.RegWrite(RegWrite), 
		.write_reg(write_reg), 
		.write_data(write_data), 
		.opcode(opcode), 
		.read_data1(read_data1), 
		.read_data2(read_data2), 
		.sign_extended_immediate(sign_extended_immediate), 
		.rt(rt), 
		.rd(rd)
	);

	initial begin
		clk = 0;
		instruction = 0;
		RegWrite = 0;
		write_reg = 0;
		write_data = 0;	
	end
	
	always #25 clk = ~clk;

	initial begin
		#100;
		instruction = 32'b00000000001000100001100000000000;
		RegWrite = 0;
		write_reg = 0;
		write_data = 0;
		
		#100;
		instruction = 32'b00000000001000100001100000000000;
		RegWrite = 1;
		write_reg = 0;
		write_data = 13;
		
		#100;
		instruction = 32'b00000000001000100001100000000000;
		RegWrite = 1;
		write_reg = 5;
		write_data = 13;
		
		#100;
		instruction = 32'b00000000001000111001100000000000;
		RegWrite = 1;
		write_reg = 5;
		write_data = 13;
	end
      
endmodule

