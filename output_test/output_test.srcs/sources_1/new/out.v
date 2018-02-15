`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2018 09:24:01 PM
// Design Name: 
// Module Name: out
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


module out(
    input wire clk,
    output reg [1:0] out_val
    );
    
    initial begin
        out_val = 0;
    end
    
    reg temp1 = 0;
    reg temp2 = 0;
    reg [1:0] count = 0;
    
    always @(posedge clk) begin
        if(count == 2) begin
            count = 0;
            temp2 = ~temp2;
        end
        else begin
            count = count + 1;
        end
        temp1 = ~temp1;
        out_val = {temp1, temp2};
    end
endmodule
