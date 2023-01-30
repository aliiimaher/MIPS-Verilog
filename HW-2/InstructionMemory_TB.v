`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module InstructionMemory_TB;

	// Inputs
	reg [31:0] inputAddress;
	reg clk;

	// Outputs
	wire [127:0] data_line;

	// Instantiate the Unit Under Test (UUT)
	InstructionMemory uut (
		.inputAddress(inputAddress), 
		.clk(clk), 
		.data_line(data_line)
	);

	initial begin
		clk = 0;
	end
	
	always #25 clk = ~clk;
	initial begin

		#5
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		// ------
		#50
		inputAddress = 32'b00000000000000000000000000001111;

	end
      
endmodule