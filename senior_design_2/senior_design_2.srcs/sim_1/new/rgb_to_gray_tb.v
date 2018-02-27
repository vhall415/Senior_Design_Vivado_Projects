`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 01:45:13 PM
// Design Name: 
// Module Name: rgb_to_gray_tb
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


module rgb_to_gray_tb;
    integer i;
    integer count;
    
    reg pclk;
    reg vsync;
    reg href;
    reg [7:0] cam_byte;
    reg sccb_done;
    
    wire [15:0] pixel_data_out;
    wire clk_out;
    wire full_pixel_tx;
    wire [7:0] gray_pixel;
    wire clk_out2;
    
    camera_receiver receiver1
        (.pclk(pclk),
         .vsync(vsync),
         .href(href),
         .cam_byte(cam_byte),
    
    //    output wire xclk,
        
        // Facing System
        //input wire sys_clk,	// not needed?
         .sccb_done(sccb_done),
         .pixel_data_out(pixel_data_out),
         .clk_out(clk_out),
         .full_pixel_tx(full_pixel_tx) // signal if pixel ready for transmission
         );
         
    rgb2gray gray1
        (.pixel_data_in(pixel_data_out),
         .clk_in(clk_out),
         .full_pixel_rx(full_pixel_tx),
         
         .gray(gray_pixel),
     //    output reg new_gray_pixel,
         .clk_out(clk_out2)
         );
    
    initial begin
        count <= 0;
        pclk <= 0;
        vsync <= 1;
        href <= 0;
        cam_byte <= 0;
        sccb_done <= 0;
        
        #100;
        sccb_done <= 1;
        #10;
        
        for(i = 0; i < 100_000; i = i + 1) begin
            pclk = ~pclk;
            
            if(count >= 5 && vsync) begin
                vsync <= 0;
                count <= 0;
            end
            
            if(count >= 5 && ~vsync) begin
                href <= 1;
                count <= 0;
            end
            
            if(pclk && href) begin
                cam_byte <= cam_byte + 1;
            end
            
            count <= count + 1;
            #20;
        end
    end
endmodule
