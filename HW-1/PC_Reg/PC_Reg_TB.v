`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// Ali Maher _ 9932113 _ CA Lab _ HW1
// Create Date:   08:44:21 10/25/2022
// Design Name:   PC_Reg
// Module Name:   G:/Term5/CA Lab/HW-1/HW-1/PC_Reg_TB.v
// Verilog Test Fixture created by ISE for module: PC_Reg
// 
////////////////////////////////////////////////////////////////////////////////

module PC_Reg_TB;

	// Inputs
	reg [31:0] address;
	reg clk;

	// Outputs
	wire [31:0] nextAddress;

	// Instantiate the Unit Under Test (UUT)
	PC_Reg uut (
		.address(address), 
		.clk(clk), 
		.nextAddress(nextAddress)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		clk = 0;
		//forever #100 clk = ~clk;
		//forever #90 address = address + 4;
		
		// Wait 50 ns
		#50
		clk = 1;
		address = 4;		

		// Wait 50 ns
		#50
		clk = 0;
		address = 8;

		// Wait 50 ns
		#50
		clk = 1;
		address = 12;
		
		// Wait 50 ns
		#50
		clk = 0;
		address = 16;
		
		// Wait 50 ns
		#50
		clk = 1;
		address = 20;

	end
      
endmodule

