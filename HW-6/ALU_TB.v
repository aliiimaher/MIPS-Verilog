`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [3:0] ALUCnt;
	reg [31:0] input1;
	reg [31:0] input2;
	reg [4:0] shamt;

	// Outputs
	wire [31:0] result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUCnt(ALUCnt), 
		.input1(input1), 
		.input2(input2), 
		.shamt(shamt), 
		.result(result), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		ALUCnt = 0;
		input1 = 0;
		input2 = 0;
		shamt = 0;

		// ADD
		#100;
		ALUCnt = 4'b0000;
		input1 = 6;
		input2 = 7;
		
		// SUB
		#100;
		ALUCnt = 4'b0001;
		input1 = 7;
		input2 = 7;		
        
		// NOT
		#100;
		ALUCnt = 4'b0010;
		input1 = 32'hffffffff;
		
		// LSL
		#100;
		ALUCnt = 4'b0011;
		input1 = 1;
		shamt = 2;
		
		// LSR
		#100;
		ALUCnt = 4'b0100;
		input1 = 4;
		shamt = 2;
		
		// AND
		#100;
		ALUCnt = 4'b0101;
		input1 = 8'b00000111;
		input2 = 8'b00000101;
		
		// OR
		#100;
		ALUCnt = 4'b0110;
		input1 = 8'b00001111;
		input2 = 8'b11100000;
		
		// SLT
		#100;
		ALUCnt = 4'b0111;
		input1 = 0;
		input2 = 27;
		
		// SLT
		#100;
		ALUCnt = 4'b0111;
		input1 = 27;
		input2 = 13;

	end
      
endmodule

