`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module ALUControlUnit(
	input [2:0] ALUOp,
	input [5:0] funct,
	
	output [3:0] ALUCnt
    );
	
	assign ALUCnt = ALUOp === 3'b000 ? (											// R-type
												  funct == 6'b000000 ? 4'b0000:		// ADD
												  funct == 6'b000001 ? 4'b0001:		// SUB
												  funct == 6'b000010 ? 4'b0101:		// AND
												  funct == 6'b000011 ? 4'b0110: 		// OR
												  funct == 6'b000100 ? 4'b0111:		// SLT
												  funct == 6'b000101 ? 4'b0011:		// LSL
												  funct == 6'b000110 ? 4'b0100: 		// LSR
												  funct == 6'b000111 ? 4'b0010:		// NOT
														4'bX):
												
						 ALUOp === 3'b001 ? 4'b0001:									// BEQ
						 ALUOp === 3'b010 ? 4'b0111:									// SLTI
						 ALUOp === 3'b011 ? 4'b0000: 4'bX;							// ADDI, LW, SW
									
endmodule
