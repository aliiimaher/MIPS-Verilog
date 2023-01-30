`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module DataMemory_TB;

	// Inputs
	reg clk;
	reg [31:0] address;
	reg [31:0] writeData;
	reg MemRead;
	reg MemWrite;

	// Outputs
	wire [31:0] readData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.clk(clk), 
		.address(address), 
		.writeData(writeData), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.readData(readData)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		address = 0;
		writeData = 0;
		MemRead = 0;
		MemWrite = 0;
	end
		
	always #25 clk = ~clk;
	
	initial begin
		#50;
		address = 4;
		MemRead = 1;
		
		#50;
		address = 1;
		
		#50;
		writeData = 23;
		MemRead = 0;
      MemWrite = 1;
		
		#50;
		MemRead = 1;
      MemWrite = 0;
	end
      
endmodule

