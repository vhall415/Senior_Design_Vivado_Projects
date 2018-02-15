`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 10:21:58 AM
// Design Name: 
// Module Name: sim_sccb1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_sccb1;
    integer i;
	// Inputs
	reg sys_clk;
	
	// Outputs
	wire scl;
	wire sda_out;
	
	//wire [15:0] addr_data_out;

	// Instantiate the Unit Under Test (UUT)
	
	top top1
	   (.sys_clk(sys_clk),
        .scl(scl),
        .sda(sda_out));
	
	

	initial begin
		// Initialize Inputs
		#10;
		sys_clk = 0;

		// Wait 100 ns for global reset to finish
		#100;

		for(i = 0; i < 1_200_000; i = i + 1) begin  // run for 6ms
		  // period of sys_clk is 10ns total for 100MHz clk
			sys_clk = ~sys_clk;
			#5;
		end

	end
      
endmodule
