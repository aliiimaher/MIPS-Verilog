`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module ALU(
	input [3:0] ALUCnt,
	input [31:0] input1,
	input [31:0] input2,
	input [4:0] shamt,
	
	output [31:0] result,
	output zero
    );

	assign result = ALUCnt === 4'b0000 ? input1 + input2:				// ADD
						 ALUCnt === 4'b0001 ? input1 - input2:				// SUB
						 ALUCnt === 4'b0010 ? ~input1:						// NOT
						 ALUCnt === 4'b0011 ? input1 << shamt:				// LSL
						 ALUCnt === 4'b0100 ? input1 >> shamt:				// LSR
						 ALUCnt === 4'b0101 ? input1 & input2:				// AND
						 ALUCnt === 4'b0110 ? input1 | input2:				// OR
						 ALUCnt === 4'b0111 ? (input1 < input2) ? 1:0 	// SLT
																						:32'bX;
	
	// Set Zero Flag
	assign zero = result === 0 ? 1 : 0; 
	
endmodule
