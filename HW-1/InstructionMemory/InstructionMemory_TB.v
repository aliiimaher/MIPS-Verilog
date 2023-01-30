`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:13:18 10/28/2022
// Design Name:   InstructionMemory
// Module Name:   G:/Term5/CA Lab/HW-1/HW-1/InstructionMemory_TB.v
// Project Name:  HW-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstructionMemory_TB;

	// Inputs
	reg [31:0] inputAddress;
	reg clk;

	// Outputs
	wire [31:0] output_0;
	wire [31:0] output_1;
	wire [31:0] output_2;
	wire [31:0] output_3;

	// Instantiate the Unit Under Test (UUT)
	InstructionMemory uut (
		.inputAddress(inputAddress), 
		.clk(clk), 
		.output_0(output_0), 
		.output_1(output_1), 
		.output_2(output_2), 
		.output_3(output_3)
	);

	initial begin
		clk = 0;
	end
		
	always #25 clk = ~clk;
	initial begin
		#5
		// 0
		inputAddress = 32'b00000000000000000000000000000000;
		
		#50
		inputAddress = 32'b00000000000000000000000000000000;
		
		#50
		inputAddress = 32'b00000000000000000000000000000000;
		
		#50
		inputAddress = 32'b00000000000000000000000000000000;
		
		#50
		inputAddress = 32'b00000000000000000000000000000000;
		
		#50
		inputAddress = 32'b00000000000000000000000000000000;
		
		// 16
		#50
		inputAddress = 32'b00000000000000000000000000010000;
		
		#50
		inputAddress = 32'b00000000000000000000000000010000;
		
		#50
		inputAddress = 32'b00000000000000000000000000010000;
		
		#50
		inputAddress = 32'b00000000000000000000000000010000;
		
		#50
		inputAddress = 32'b00000000000000000000000000010000;
		
		#50
		inputAddress = 32'b00000000000000000000000000010000;
		
		// 10
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		#50
		inputAddress = 32'b00000000000000000000000000001010;
		
		// 15
		#50
		inputAddress = 32'b00000000000000000000000000001111;
		
		#50
		inputAddress = 32'b00000000000000000000000000001111;
		
		#50
		inputAddress = 32'b00000000000000000000000000001111;
		
		#50
		inputAddress = 32'b00000000000000000000000000001111;
		
		#50
		inputAddress = 32'b00000000000000000000000000001111;
		
	end
      
endmodule

