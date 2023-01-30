`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
////////////////////////////////////////////////////////////////////////////////

module RegisterFile_TB;

	// Inputs
	reg clk;
	reg [4:0] read_reg1;
	reg [4:0] read_reg2;
	reg RegWrite;
	reg [4:0] write_reg;
	reg [31:0] write_data;

	// Outputs
	wire [31:0] read_data1;
	wire [31:0] read_data2;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.clk(clk), 
		.read_reg1(read_reg1), 
		.read_data1(read_data1), 
		.read_reg2(read_reg2), 
		.read_data2(read_data2), 
		.RegWrite(RegWrite), 
		.write_reg(write_reg), 
		.write_data(write_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		read_reg1 = 0;
		read_reg2 = 0;
		RegWrite = 0;
		write_reg = 0;
		write_data = 0;
	end
	
	always #25 clk = ~clk;
		

	initial begin
		// Wait 100 ns for global reset to finish
		#50;
		read_reg1 = 0;
		read_reg2 = 0;
		RegWrite = 0;
		write_reg = 0;
		write_data = 0;
		
		// bayad error bede
		#50;
		read_reg1 = 0;
		read_reg2 = 0;
		RegWrite = 1;
		write_reg = 0;
		write_data = 13;
		
		
		// bayad dakhel khune 2vom register 13 ro benivise.
		#50;
		read_reg1 = 0;
		read_reg2 = 0;
		RegWrite = 1;
		write_reg = 2;
		write_data = 13;
		
		
		#50;
		read_reg1 = 1;
		read_reg2 = 31;
		RegWrite = 0;
		write_reg = 0;
		write_data = 0;

	end
      
endmodule

