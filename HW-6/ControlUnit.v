`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit(
	input [5:0] Opcode,			// Opcode(6 bits)
	
	output RegDst,					// RegDst(1 bit)
	output ALUSrc,					// ALUSrc(1 bit)
	output MemtoReg,				// MemtoReg(1 bit)
	output RegWrite,				// RegWrite(1 bit)
	output MemRead,				// MemRead(1 bit)
	output MemWrite, 				// MemWrite(1 bit)
	output Branch,					// Branch(1 bit)
	output [2:0] ALUOp			// ALUOp(3 bits) In CA we red 2 bits :/
    );

	assign RegDst = (Opcode == 6'b000000) ? 1:0;
	assign ALUSrc = (Opcode == 6'b000000 || Opcode == 6'b000110) ? 0:1;
	assign MemtoReg = (Opcode == 6'b000100) ? 1:0;
	assign RegWrite = (Opcode == 6'b000101 || Opcode == 6'b000110) ? 0:1;
	assign MemRead = (Opcode == 6'b000100) ? 1:0;
	assign MemWrite = (Opcode == 6'b000101) ? 1:0;
	assign Branch = (Opcode == 6'b000110) ? 1:0;
	// Assigning each of three bits seperately
	assign ALUOp[0] = (Opcode == 6'b000000 || Opcode == 6'b000001) ? 0:1;
	assign ALUOp[1] = (Opcode == 6'b000000 || Opcode == 6'b000110) ? 0:1;
	assign ALUOp[2] = 0;

endmodule
