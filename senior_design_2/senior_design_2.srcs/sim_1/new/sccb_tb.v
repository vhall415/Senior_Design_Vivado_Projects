`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 10:21:58 AM
// Design Name: 
// Module Name: sccb_tb
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


module sccb_tb;
    integer i;  // used for for loop testing
	// Inputs
	reg sys_clk;
	
	// Outputs
	wire scl;
	wire sda;
	
	// inner system wire connections
    wire sccb_busy; // sccb output to cam config input
    wire sccb_ready;    // sccb output to cam config input
    wire [15:0] cam_reg_data;  // cam reg output to cam reg input
    wire sccb_done; // cam config output to sccb input
    wire sccb_start;    // cam config output to sccb input
    wire [7:0] reg_data_loc;  // cam config output to cam reg input
    wire [15:0] sccb_reg_data; // addr and data value to tx; cam config output to sccb input
    wire divided_clk;
	
	//wire [15:0] addr_data_out;

	// Instantiate the Unit Under Test (UUT)
	// instantiate sccb system (sccb, cam reg, cam config, clk div)
	
    clk_div #(.DIVIDER(2)) div1 // divide 100MHz clk by 4 to get 25MHz clk
        (// inputs
         .clk_in(sys_clk),
         //outputs
         .clk_out(divided_clk)
         );
         
    cam_reg_config config1
       (// inputs
        .clk(divided_clk),
        .sccb_busy(sccb_busy),   // sccb busy tx-ing
        .sccb_ready(sccb_ready),
        .reg_data(cam_reg_data), // reg data to send to cam through sccb; [15:0]
        // outputs
        .done(sccb_done),    // sccb done configuring camera
        .sccb_start(sccb_start),  // signal sccb to start
        .reg_loc(reg_data_loc),   // loc for reg data; [7:0]
        .addr_data(sccb_reg_data) // reg data to send to cam through sccb; connected from here to sccb
        );
                
    camera_reg reg1
        (// inputs
         .clk(divided_clk),
         .addr(reg_data_loc),   // [7:0]
         // outputs
         .addr_data(cam_reg_data)   // connected from here to reg config
         );
        
    sccb sccb1
        (// inputs
         .clk(divided_clk),
         .start(sccb_start),   // start tx
         .done(sccb_done),
         .addr_data(sccb_reg_data),    // addr and data to tx; [15:0]
         // outputs
         .busy(sccb_busy),    // sccb busy with tx
         .ready_out(sccb_ready),   // ready to recieve new tx data
         .scl(scl),
         .sda(sda) // change to output only if causing errors
         );
	
	

	initial begin
		// Initialize Inputs
		#10;
		sys_clk = 0;

		// Wait 100 ns for global reset to finish
		#100;

		for(i = 0; i < 1_300_000; i = i + 1) begin  // run for 6.5ms
		  // period of sys_clk is 10ns total for 100MHz clk
			sys_clk = ~sys_clk;
			#5;
		end

	end
      
endmodule
