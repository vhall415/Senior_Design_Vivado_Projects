`timescale 1ns / 1ps
//`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2018 02:37:43 PM
// Design Name: 
// Module Name: cam_reg_config
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


module cam_reg_config(
    input wire clk,
//    input wire reset,
    input wire sccb_busy,   // sccb busy tx-ing
    input wire sccb_ready,
    input wire [15:0] reg_data, // reg data to send to cam through sccb
    output reg done,    // sccb done configuring camera
    output reg sccb_start,  // signal sccb to start
    output reg [7:0] reg_loc,   // loc for reg data
    output reg [15:0] addr_data // reg data to send to cam through sccb
    );
    
    localparam IDLE = 0;
    localparam SEND_DATA = 1;
    localparam DONE = 2;
    localparam WAIT = 3;
    
    reg [7:0] wait_time = 7'd1;
    reg [1:0] state = WAIT;
    reg [1:0] state_return = IDLE;
    reg [7:0] loc = 0;
    reg start = 1;  // use to signal the start of the register locations
    reg reset = 1;
    
    always@(posedge clk) begin
        if(reset) begin
            reset <= 0;
            done <= 0;   // not done
            sccb_start <= 0; // don't start
            reg_loc <= 0;    // first reg loc
            addr_data <= 0;  // no addr or data
        end
        
        else begin
            case(state)
                IDLE: begin
                    sccb_start <= 0;    // move to wait state if timing doesn't match
                    if(~sccb_busy & sccb_ready) begin
                        state <= SEND_DATA;
                    end
                end
                
                SEND_DATA: begin
                    case(reg_data)
                        16'hFF_FF: begin
                            state <= DONE;
                        end
                        
                        16'hFF_F0: begin
                            wait_time <= 7'h78;  // wait 5us
                            loc <= loc + 1;
                            state <= WAIT;
                        end
                        
                        default: begin  // run for all other reg_data vals
                            addr_data <= reg_data;
                            sccb_start <= 1;
                            loc <= loc + 1;
                            wait_time <= 7'h64; // allow sccb to become busy
                            state <= WAIT;
                        end
                    endcase
                end
                
                DONE: begin
                    done <= 1;
                end
                
                WAIT: begin
                    if(wait_time == 0) begin
                        state <= state_return;   // finished waiting; go to next step
                    end
                    else begin
                        wait_time <= wait_time - 1;    // update wait time
                    end
                    reg_loc <= loc;
                end
            endcase
        end
    end
endmodule
