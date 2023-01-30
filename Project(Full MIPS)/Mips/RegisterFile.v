`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Ali Maher _ 9932113
//////////////////////////////////////////////////////////////////////////////////
module RegisterFile(
	input clk,						// Clk
	
	// Read Part 1
	input [4:0] read_reg1,		// Read Register Number 1(5 bits)
	output [31:0] read_data1,	// Read Data 1(32 bits)
	
	// Read Part 2
	input [4:0] read_reg2,		// Read Register Number 2(5 bits)
	output [31:0] read_data2,	// Read Data 2(32 bits)
	
	// Write Part
	input RegWrite, 				// RegWrite(1 bit), write signal
	input [4:0] write_reg,		// Write Register(5 bits)
	input [31:0] write_data		// Write Data(32 bits)
	 );

	// Registers
	reg [31:0] registers [31:0];
	
	// Initialize the Registers
	integer i;
	initial begin
		for (i = 0; i < 32; i = i + 1)
		begin
			registers[i] = i;
		end
	end
	
	
	// Read Data
	assign read_data1 = registers[read_reg1];
	assign read_data2 = registers[read_reg2];
	
	
	// Wirte Data	
	always @(posedge clk)
	begin
		if (write_reg == 0 && RegWrite == 1)
			begin
				$display("Can Not Change Zero Register");
			end
		else
			begin
				if (RegWrite == 1) 
					begin
						registers[write_reg] = write_data;
						$display(registers[write_reg]);
						$display("---------");
						$display(write_reg);
					end
			end
	end
		/*
	always @(posedge clk)
	begin
		if (RegWrite == 1)
			begin
				if (write_reg == 0)
					begin
						$display("Can Not Change Zero Register");
					end
				else
					begin
						registers[write_reg] = write_data;
					end
			end
		else
			begin
				$display("Permission Denid");
			end
	end
	*/

endmodule
