`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:27 05/25/2024 
// Design Name: 
// Module Name:    lfsr 
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
module lfsr_16bit (
    input clk,
    input reset,
    
    output reg [15:0] lfsr,
    output reg out_bit
);
    wire feedback;

    // Define the feedback polynomial: x^16 + x^14 + x^13 + x^11 + 1
    assign feedback = lfsr[15] ^ lfsr[13] ^ lfsr[12] ^ lfsr[10];

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            lfsr <= 16'h5678; // You can use any non-zero seed value
        end else begin
            lfsr <= {lfsr[14:0], feedback};
        end
    end


endmodule
