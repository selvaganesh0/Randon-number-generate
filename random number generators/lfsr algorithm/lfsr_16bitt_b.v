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

	integer file,i;	// Generate clock signal
    initial begin
        clk = 0;
        forever #0.5 clk = ~clk; // 1ns clock period
    end

    // Initial block for simulation
    initial begin
        // Open file for writing the output
        
        file = $fopen("C:\Users\ADMIN\linea_congruential\linear_out.txt","w");
        
        // Check if file is opened successfully
        if (file) begin
            $display("Opened file successfully.");
        end else begin
            $display("Error opening file.");
            $finish;
        end
        
        // Initialize reset  
        rst = 1;
        #10; 
        rst = 0;

        // Run the counter and log the output(store the output of 200 samples
        for(i=0;i<200;i=i+1)
		  begin
            #1; //same as time period 
            $fwrite(file,"%d\n",rand_out);//write output in file-decimal form
        end
        
        // Close file
        $fclose(file);
        $finish; 
    end
endmodule