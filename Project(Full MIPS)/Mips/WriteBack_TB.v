`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module WriteBack_TB;

	// Inputs
	reg MemtoReg;
	reg [31:0] readData;
	reg [31:0] ALUResult;

	// Outputs
	wire [31:0] writeData;

	// Instantiate the Unit Under Test (UUT)
	WriteBack uut (
		.MemtoReg(MemtoReg), 
		.readData(readData), 
		.ALUResult(ALUResult), 
		.writeData(writeData)
	);

	initial begin
		// Initialize Inputs
		MemtoReg = 0;
		readData = 0;
		ALUResult = 0;

		// Wait 100 ns		
		#100;
		MemtoReg = 0;
		readData = 13;
		ALUResult = 23;
		
		#100;
		MemtoReg = 1;
		readData = 13;
		ALUResult = 23;

	end
      
endmodule

