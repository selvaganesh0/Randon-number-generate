`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:39 05/21/2024 
// Design Name: 
// Module Name:    linear_congruential 
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
module lcg_rng (
    input wire clk,
    input wire rst,
    output reg [15:0] rand_out
);

reg [15:0] seed;

parameter A = 22697; // Multiplier
parameter C = 1;         // Increment
parameter M = 32768;     // Modulus for 16-bit (2^16)

always @(posedge clk or posedge rst) begin
    if (rst) begin
        seed <= 16'h1234; // Initial seed value
        rand_out <= 16'h0; // Reset output
    end else begin
        seed <= (A * seed + C) % M; // Linear congruential formula
        rand_out <= seed; // Output random number
    end
end

endmodule
