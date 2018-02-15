`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 08:50:22 AM
// Design Name: 
// Module Name: top
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


module top(
    input wire sys_clk,
    output wire scl,
    inout wire sda
    );
    
    wire divided_clk;
    wire sccb_busy;
    wire sccb_ready;
    wire [15:0] cam_reg_data;
    wire sccb_done;
    wire sccb_start;
    wire [7:0] reg_data_loc;
    wire [15:0] sccb_reg_data;
    
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
        
    sccb_interface sccb1
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
endmodule
