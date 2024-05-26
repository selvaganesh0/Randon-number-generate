`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:42:14 05/21/2024
// Design Name:   mid_square_rng
// Module Name:   C:/Users/ADMIN/mid-square/midt_b.v
// Project Name:  mid-square
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mid_square_rng
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module midt_b;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] rand_out;

	// Instantiate the Unit Under Test (UUT)
	mid_square_rng uut (
		.clk(clk), 
		.rst(rst), 
		.rand_out(rand_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1; 
      #100 rst=0;
		// Wait 100 ns for global reset to finish
		end always
		begin
		
		#10 clk=~clk;
        
		// Add stimulus here

	end
      
endmodule

