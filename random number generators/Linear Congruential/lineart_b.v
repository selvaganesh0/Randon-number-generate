`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:40:27 05/21/2024
// Design Name:   lcg_rng
// Module Name:   C:/Users/ADMIN/linea_congruential/lineart_b.v
// Project Name:  linea_congruential
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lcg_rng
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lineart_b;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] rand_out;

	// Instantiate the Unit Under Test (UUT)
	lcg_rng uut (
		.clk(clk), 
		.rst(rst), 
		.rand_out(rand_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100 rst=0;
		end always begin
		#50 clk=~clk;
        
		// Add stimulus here

	end
      
endmodule

