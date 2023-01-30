`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module PC_Reg_TB;

	// Inputs
	reg [31:0] address;
	reg clk;
	reg hitBit;

	// Outputs
	wire [31:0] nextAddress;

	// Instantiate the Unit Under Test (UUT)
	PC_Reg uut (
		.address(address), 
		.clk(clk), 
		.hitBit(hitBit), 
		.nextAddress(nextAddress)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		clk = 0;
		hitBit = 0;

		// Wait 100 ns for global reset to finish
		#100;
		address = 4;
		clk = 1;
		hitBit = 1;
		
		#100
		address = 8;
		clk = 0;
		hitBit = 1;
        
		#100
		address = 12;
		clk = 1;
		hitBit = 1;
		// Add stimulus here

	end
      
endmodule

