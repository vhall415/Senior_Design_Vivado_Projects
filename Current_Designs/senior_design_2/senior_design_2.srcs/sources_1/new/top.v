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
    // camera1 I/O
    input wire [7:0] cam_byte_1,
    input wire pclk_1,
    input wire vsync_1,
    input wire href_1,
    output wire xclk,
    output wire scl_1,
    output wire sda_1,
    output wire [7:0] cam_gray_byte_1
    );
      
    reg global_reset;
    wire divided_clk;
    wire gray_clk_out_1;
    wire [15:0] rgb_pixel_1; // pixel read from receiver to rgb2gray
    wire clk_out;   // clk based on pclk
    wire full_pixel;
    reg start = 1;
        
//    ila_0 debugger
//        (.clk(sys_clk),
//         .probe0(pclk_1),
//         .probe1(vsync_1),
//         .probe2(href_1),
//         .probe3(cam_byte_1),
//         .probe4(rgb_pixel_1),
//         .probe5(full_pixel),
//         .probe6(cam_gray_byte_1)
//         );
    
    clk_div #(.DIVIDER(2)) div1 // divide 100MHz clk by 4 to get 25MHz clk
        (// inputs
         .clk_in(sys_clk),
         //outputs
         .clk_out(divided_clk)
         );
         
    camera_top cam1 // camera system; output goes to bram storage and camera module
        (// inputs
         .sys_clk(sys_clk),
         .clk(divided_clk),
         .start(start),
         .cam_byte(cam_byte_1),
         .pclk(pclk_1),
         .vsync(vsync_1),
         .href(href_1),
         .xclk(xclk),
         .scl(scl_1),
         .sda(sda_1),
         .gray_byte(cam_gray_byte_1),
         .gray_clk_out(clk_out)
         );
endmodule
