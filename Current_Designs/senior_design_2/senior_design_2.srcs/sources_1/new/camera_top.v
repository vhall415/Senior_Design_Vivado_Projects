`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2018 09:48:35 AM
// Design Name: 
// Module Name: camera_top
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


module camera_top(
    input wire sys_clk,
    input wire clk, // divided clk for system 25MHz
    input wire start,
    input wire [7:0] cam_byte,
    input wire pclk,
    input wire vsync,
    input wire href,
    output wire xclk,
    output wire scl,
    inout wire sda,
    output wire [15:0] rgb_pixel,
    output wire [7:0] gray_byte,
    output wire gray_clk_out
    );
    
    // inner system wire connections
    wire sccb_busy; // sccb output to cam config input
    wire sccb_ready;    // sccb output to cam config input
    wire [15:0] cam_reg_data;  // cam reg output to cam reg input
    wire sccb_done; // cam config output to sccb input
    wire sccb_start;    // cam config output to sccb input
    wire [7:0] reg_data_loc;  // cam config output to cam reg input
    wire [15:0] sccb_reg_data; // addr and data value to tx; cam config output to sccb input
//    wire [15:0] rgb_pixel;
    wire clk_out;
    wire full_pixel;
    
    assign xclk = start ? clk : 1'b0;
    
    cam_reg_config config1
       (// inputs
        .sys_clk(sys_clk),
        .clk(clk),
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
         .clk(clk),
         .addr(reg_data_loc),   // [7:0]
         // outputs
         .addr_data(cam_reg_data)   // connected from here to reg config
         );
        
    sccb sccb1
        (// inputs
         .sys_clk(sys_clk),
         .clk(clk),
         .start(sccb_start),   // start tx
         .done(sccb_done),
         .addr_data(sccb_reg_data),    // addr and data to tx; [15:0]
         // outputs
         .busy(sccb_busy),    // sccb busy with tx
         .ready_out(sccb_ready),   // ready to recieve new tx data
         .scl(scl),
         .sda(sda) // change to output only if causing errors
         );
         
     camera_receiver receive1
        (// Facing camera
         .pclk(pclk), 
         .vsync(vsync),
         .href(href),
         .cam_byte(cam_byte),
//         .xclk(xclk),
         // Facing system
         .sccb_done(sccb_done),
         .pixel_data_out(rgb_pixel),
         .clk_out(clk_out),
         .full_pixel_tx(full_pixel)
         );
         
         rgb2gray gray1
             (// Inputs
              .pixel_data_in(rgb_pixel),
              .clk_in(clk_out),  // pclk
              .full_pixel_rx(full_pixel),
              // Outputs
              .gray(gray_byte),
              .clk_out(gray_clk_out)
              );
         
endmodule
