`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module Decode(
	input clk,											// Clk
	input [31:0] instruction,						// Instruction(32 bits)
	
	// These are temporary
	input RegWrite,									// Writing singal
	input [4:0] write_reg,							// Register Number
	input	[31:0] write_data,						// Writing Data
	//
	
	output reg [5:0] opcode,						// Opcode(6 bits)
	output [31:0] read_data1,						// Read Data 1(32 bits)
	output [31:0] read_data2, 						// Read Data 2(32 bits)
	output [31:0] sign_extended_immediate,		// Sign Extended Immediate(32 bits)
	output reg [4:0] rt,								// rt part
	output reg [4:0] rd								// rd part
    );
	
	reg [15:0] value;
	reg [4:0] rs;
	 
	always @(posedge clk) begin
		opcode <= instruction[31:26];
		rs <= instruction[25:21];
		rt <= instruction[20:16];
		rd <= instruction[15:11];
		value <= instruction[15:0];
	end

RegisterFile registerFile (
    .clk(clk), 					
    .read_reg1(rs), 			
    .read_data1(read_data1), 	
    .read_reg2(rt), 				
    .read_data2(read_data2), 	
    .RegWrite(RegWrite), 		
    .write_reg(write_reg), 	
    .write_data(write_data)
    );
	 
SignExtend signExtend (
    .value(value), 
    .sign_extended_value(sign_extended_immediate)
    );

endmodule
