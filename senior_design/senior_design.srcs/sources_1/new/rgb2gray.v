`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 02:28:27 PM
// Design Name: 
// Module Name: 565_To_Grayscale
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module takes 565 RGB and converts it to Grayscale. It does this using the following scheme
//              Assume the following 5 bits for R: (10101) this becomes (10101101) when it is taken from 5 bits to 8 bits.
//              This is not a linear transformation but it works.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module rgb2gray (
    input wire [15:0] pixel_data_in,
    input wire clk_in,
    output reg [7:0] gray,
    output reg [10:0] read_reg_loc,
    output wire clk_out
    );
    
    wire [7:0] red;
    wire [7:0] green;
    wire [7:0] blue;
    reg [10:0] read_loc = 0;
    reg [1:0] count = 0;
    
    initial begin
        read_reg_loc = 0;
    end
    
    assign clk_out = clk_in;
    
    // Apply MSB to top bits
    assign red[7:3] = pixel_data_in[15:11];
    // Append MSB of R pixel Data to LSB of Red
    assign red[2:0] = pixel_data_in[15:13];
    
    // Now do the green
    assign green[7:2] = pixel_data_in[10:5];
    assign green[1:0] = pixel_data_in[10:9];
    // Now the blue
    assign blue[7:3] = pixel_data_in[5:0];
    assign blue[2:0] = pixel_data_in[5:3];
        
    always @(posedge clk_in)
    begin
        if(count == 0) begin
            count = count + 1;
        end
        else begin
            count = 0;
            gray <= ((red + blue + green) / 3);
            if(read_loc == 2000) begin
                read_loc = 0;
            end
            else begin
                read_loc = read_loc + 1;
            end
            read_reg_loc = read_loc;
         end
    end
endmodule 