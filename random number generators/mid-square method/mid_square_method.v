`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:34 05/21/2024 
// Design Name: 
// Module Name:    mid_square_method 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mid_square_rng (
    input wire clk,
    input wire rst,
    output reg [15:0] rand_out
);

reg [15:0] seed;
reg [31:0] squared;
reg [15:0] next_seed;

always @(posedge clk or posedge rst) begin
    if (rst) begin
	     rand_out<=16'h5678;
        seed <= 16'h5678; // Initial seed value
                             
    end else begin
	     rand_out<=seed; 
        squared = seed * seed; // Square the seed to get a 32-bit result
        next_seed = squared[23:8]; // Extract the middle 16 bits from the 32-bit result
        seed <= next_seed; // Use the middle 16 bits as the next seed
             end
end

endmodule
