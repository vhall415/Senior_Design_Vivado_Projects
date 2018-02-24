`timescale 1ns / 1ps
//`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2017 10:55:58 AM
// Design Name: 
// Module Name: camera_receiver
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


module camera_receiver (
    // Facing Camera
    input wire clk_in,
    input wire [7:0] cam_byte,
    input wire pclk,
    input wire vsync,
    input wire href,
//    output wire xclk,
    
    // Facing System
    //input wire sys_clk,	// not needed?
    input wire sccb_done,
    output reg [15:0] pixel_data_out,
    output reg write_en,
    output wire clk_out
    );
    
    parameter INIT = 0;
    parameter FRAME_START = 1;
    parameter GET_PIXEL = 2;
    parameter SEND_PIXEL = 3;

//    reg [15:0] pixel = 0;
    reg byte_num = 0;
    reg [1:0] state = INIT;
    
    assign clk_out = pclk;
	
    always @(posedge pclk) begin
        if (sccb_done) begin   // valid frames only after camera configured
            case(state)
                INIT: begin
                    pixel_data_out <= 0;
                    write_en <= 0;
                    state = FRAME_START;
                end
                
                FRAME_START: begin
                    if(vsync == 0) begin    // valid frame
                        state <= GET_PIXEL;
                        byte_num <= 0;
                    end
                end
    
                GET_PIXEL: begin
                    write_en <= 0;
                    if(vsync == 1) begin    // end frame
                        state <= FRAME_START;
                    end
                    else begin  // still in frame
                        if(href == 1) begin // valid line
                            if(byte_num == 0) begin // first byte (R3:0 G5:3)
                                pixel_data_out[15:8] <= cam_byte;
                            end
                            else begin  // second byte (G2:0 B3:0)
                                 pixel_data_out[7:0] <= cam_byte;
                                 state <= SEND_PIXEL;
                            end
                            byte_num <= ~byte_num;   // switch to next byte val
                        end
                    end
                end
                
                SEND_PIXEL: begin
                    write_en <= 1;
                    state <= GET_PIXEL;
                end
                    
            endcase
        end
    end
endmodule 