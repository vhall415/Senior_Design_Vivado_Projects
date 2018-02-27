`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 03:29:34 PM
// Design Name: 
// Module Name: cam_sys_tb
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


module cam_sys_tb;
    integer i;
    integer pcount;
    
    reg sys_clk;
    reg [7:0] cam_byte;
    reg pclk;
    reg vsync;
    reg href;
    
    wire xclk;
    wire scl;
    wire sda;
    wire [7:0] cam_gray_byte;
    
    top cam1
        (.sys_clk(sys_clk),
         .cam_byte_1(cam_byte),
         .pclk_1(pclk),
         .vsync_1(vsync),
         .href_1(href),
         .scl_1(scl),
         .sda_1(sda),
         .cam_gray_byte_1(cam_gray_byte)
         );
         
    initial begin
        sys_clk = 0;
        cam_byte = 0;
        pclk = 0;
        vsync = 1;
        href = 0;
        pcount = 0;
        #100;
        
        vsync = 0;
        #10;
        href = 1;
        #10;
        
        for(i = 0; i <  1_800_000; i = i + 1) begin
            sys_clk = ~sys_clk;
            if(pcount == 4 || pcount == 8) begin
                pclk = ~pclk;
                if(pcount == 4) begin
                    cam_byte = cam_byte + 1;
                end
                else
                    pcount = 0;
            end
            pcount = pcount + 1;
            #5;
        end
    end
endmodule
