`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2018 03:14:55 PM
// Design Name: 
// Module Name: cam1_gray_tb
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


module cam1_gray_tb;
    // inputs
    integer i;
    integer count;
    
    reg sys_clk;
    reg [7:0] cam1_byte;
    reg pclk1;
    reg vsync1;
    reg href1;
    
    // outputs
    wire xclk1;
    wire scl1;
    wire sda1;
    wire [7:0] cam1_gray_byte;
    
    top cam1
        (// inputs
         .sys_clk(sys_clk),
         // cam1 input
         .cam1_byte(cam1_byte),
         .pclk1(pclk1),
         .vsync1(vsync1),
         .href1(href1),
         // cam1 output
         .xclk1(xclk1),
         .scl1(scl1),
         .sda1(sda1),
         .cam1_gray_byte(cam1_gray_byte)
         );
    
    initial begin
        // init inputs
        sys_clk = 0;
        cam1_byte = 0;
        pclk1 = 0;
        vsync1 = 0;
        href1 = 0;
        
        count <= 0;
        #100;
        
        vsync1 <= 0;  // start frame
        for(i = 0; i < 20; i = i + 1) begin
            sys_clk <= ~sys_clk;
            pclk1 <= ~pclk1;
            #5;
        end
        for(i = 0; i < 1_228_800; i = i + 1) begin  // run for 24.576ms (time per frame)
        // period of sys_clk is 10ns for 100MHz clk and pclk is 40ns for 25MHz clk
            for(i = 0; i < 4; i = i + 1) begin  // run for half clock period of pclk
                sys_clk <= ~sys_clk;
                #5;
            end
            pclk1 <= ~pclk1;
            if(pclk1 & ~href1) begin  // start line
                href1 <= 1;
                count <= 0;
            end
            if(~pclk1 & href1) begin
                cam1_byte <= cam1_byte + 1;    // increment new cam byte during valid line
            end
            if((count/2) == (640*2)) begin  // end line
                count <= 0;
                href1 <= 0;
            end
            else if(pclk1) begin
                count <= count + 1; // increment count if not end of line and pixel was sent
            end
//            #20;
        end
        vsync1 <= 1;  // end frame
    end
endmodule
