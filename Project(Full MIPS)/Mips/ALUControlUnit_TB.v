`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module ALUControlUnit_TB;

	// Inputs
	reg [2:0] ALUOp;
	reg [5:0] funct;

	// Outputs
	wire [3:0] ALUCnt;

	// Instantiate the Unit Under Test (UUT)
	ALUControlUnit uut (
		.ALUOp(ALUOp), 
		.funct(funct), 
		.ALUCnt(ALUCnt)
	);

	initial begin
		// ADD
		ALUOp = 0;
		funct = 0;

		// SUB
		#50;
		ALUOp = 0;
		funct = 6'b000001;

		// AND
		#50;
		ALUOp = 0;
		funct = 6'b000010;

		// OR
		#50;
		ALUOp = 0;
		funct = 6'b000011;

		// SLT
		#50;
		ALUOp = 0;
		funct = 6'b000100;		

		// LSL
		#50;
		ALUOp = 0;
		funct = 6'b000101;	
		
		// LSR
		#50;
		ALUOp = 0;
		funct = 6'b000110;

		// NOT
		#50;
		ALUOp = 0;
		funct = 6'b000111;

		// Branch
		#50;
		ALUOp = 3'b001;
		
		// SLTI
		#50;
		ALUOp = 3'b010;
		
		// ADDI, LW, SW
		#50;
		ALUOp = 3'b011;
		
	end
      
endmodule

