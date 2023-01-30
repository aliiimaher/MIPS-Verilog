`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module MEM_WB_Reg_TB;

	// Inputs
	reg clk;
	reg hit;
	reg [31:0] readData;
	reg [31:0] ALUResult;
	reg [4:0] writeReg;
	reg RegWrite;
	reg MemtoReg;

	// Outputs
	wire [31:0] readDataOut;
	wire [31:0] ALUResultOut;
	wire [4:0] writeRegOut;
	wire RegWriteOut;
	wire MemtoRegOut;

	// Instantiate the Unit Under Test (UUT)
	MEM_WB_Reg uut (
		.clk(clk), 
		.hit(hit), 
		.readData(readData), 
		.ALUResult(ALUResult), 
		.writeReg(writeReg), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.readDataOut(readDataOut), 
		.ALUResultOut(ALUResultOut), 
		.writeRegOut(writeRegOut), 
		.RegWriteOut(RegWriteOut), 
		.MemtoRegOut(MemtoRegOut)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		hit = 0;
		readData = 0;
		ALUResult = 0;
		writeReg = 0;
		RegWrite = 0;
		MemtoReg = 0;
	end
	
	always #25 clk = ~clk;
	
	initial begin
		// Wait 50 ns
		#5;
		#50;
		hit = 1;
		readData = 1;
		ALUResult = 1;
		writeReg = 1;
		RegWrite = 1;
		MemtoReg = 1;
		
		#50;
		hit = 0;
		readData = 11;
		ALUResult = 11;
		writeReg = 11;
		RegWrite = 11;
		MemtoReg = 11;
		
	end
      
endmodule

