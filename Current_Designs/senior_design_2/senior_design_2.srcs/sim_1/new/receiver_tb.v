`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2018 09:46:32 AM
// Design Name: 
// Module Name: receiver_tb
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


module receiver_tb;
    integer i;  // used for for loop testing
    integer count;
    // inputs
    reg clk;
    reg [7:0] cam_byte;
    reg pclk;
    reg vsync;
    reg href;
    // outputs
    wire xclk;
    wire scl;
    wire sda;
    wire [15:0] rgb_pixel;
    wire write_en;
    
    camera_top cam1
        (// inputs
         .clk(clk),
         .cam_byte(cam_byte),
         .pclk(pclk),
         .vsync(vsync),
         .href(href),
        // outputs
         .xclk(xclk),
         .scl(scl),
         .sda(sda),
         .rgb_pixel(rgb_pixel),  // pixel data to store in bram
         .write_en(write_en)    // write en for bram storage
         );
     
     initial begin
        // init inputs
        #10;
        clk <= 0;
        cam_byte <= 0;   // input pixel data from camera
        pclk <= 0;   // input pixel clk from camera
        vsync <= 1;  // valid frame when 0
        href <= 0;   // valid line when 1
        count <= 0;
        #100;
        // system testing
//        for(i = 0; i < 1_300_000; i = i + 1) begin  // run for 6.5ms; finish sccb
//          // period of sys_clk is 10ns total for 100MHz clk
//            sys_clk = ~sys_clk;
//            #5;
//        end
        vsync <= 0;  // start frame
        for(i = 0; i < 5; i = i + 1) begin
            clk <= ~clk;
            pclk <= ~pclk;
            #20;
        end
        for(i = 0; i < 1_228_800; i = i + 1) begin  // run for 24.576ms (time per frame)
        // period of clk and pclk is 40ns total for 25MHz clk
            clk <= ~clk;
            pclk <= ~pclk;
            if(pclk & ~href) begin  // start line
                href <= 1;
                count <= 0;
            end
            if(~pclk & href) begin
                cam_byte <= cam_byte + 1;    // increment new cam byte during valid line
            end
            if((count/2) == (640*2)) begin  // end line
                count <= 0;
                href <= 0;
            end
            else if(pclk) begin
                count <= count + 1; // increment count if not end of line and pixel was sent
            end
            #20;
        end
        vsync <= 1;  // end frame
     end
endmodule
