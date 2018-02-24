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
    input wire [7:0] cam1_byte,
    input wire pclk1,
    input wire vsync1,
    input wire href1,
    output wire xclk1,
    output wire scl1,
    inout wire sda1,
    output wire [7:0] cam1_gray_byte
    );
    
    reg global_reset = 0;
    wire divided_clk;
    wire [15:0] cam1_rgb_pixel; // cam pixel output to bram
    wire cam1_write_en;
    wire gray1_clk_out;
    wire gray1_read_en;
    wire bram1_empty;
    wire bram1_full;
    wire [15:0] bram_pixel; // pixel read from bram to rgb2gray
    wire clk_out;   // clk based on pclk
        
    ila_0 debugger
        (.clk(sys_clk),
         .probe0(cam1_byte), // sys clk
         .probe1(cam1_rgb_pixel), // div clk
         .probe2(bram_pixel),
         .probe3(cam1_write_en),
         .probe4(gray1_read_en),
         .probe5(cam1_gray_byte)
         );
    
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
         .cam_byte(cam1_byte),
         .pclk(pclk1),
         .vsync(vsync1),
         .href(href1),
         .xclk(xclk1),
         .scl(scl1),
         .sda(sda1),
         .rgb_pixel(cam1_rgb_pixel),  // pixel data to store in bram
         .write_en(cam1_write_en),    // write en for bram storage
         .clk_out(clk_out)
         );
         
     async_fifo #(.datawidth(16), .DATADEPTH(128)) bram1    // depth to hold one frame
        (.reset(global_reset),
         // Reading by rgb2gray
         .read_clk(divided_clk),
         .read_en(gray1_read_en),
         .outputData(bram_pixel),
         // Writing by camera receiver
         .write_clk(clk_out),
         .write_en(cam1_write_en),
         .inputData(cam1_rgb_pixel),
         // Fifo specific
         .full(bram1_full),
         .empty(bram1_empty)
         );
         
     rgb2gray gray1
        (// Inputs
         .pixel_data_in(bram_pixel),
         .clk_in(divided_clk),
         .empty(bram1_empty),
         // Outputs
         .gray(cam1_gray_byte),
         .read_en(gray1_read_en),
         .clk_out(gray1_clk_out)
         );
endmodule
