`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module ControlUnit_TB;

	// Inputs
	reg [5:0] Opcode;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire [2:0] ALUOp;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.Opcode(Opcode), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUOp(ALUOp)
	);

	initial begin
		// Initialize Inputs
		Opcode = 0;

		// Wait 25 ns for global reset to finish
		// R-type
		#25;
		Opcode = 6'b000000;
		
		// LW
		#25;
		Opcode = 6'b000100;
		
		// SW
		#25;
		Opcode = 6'b000101;
		
		// ADDI
		#25;
		Opcode = 6'b000111;
		
		// BEQ
		#25;
		Opcode = 6'b000110;
		
		// SLTI
		#25;
		Opcode = 6'b000001;

	end
      
endmodule

