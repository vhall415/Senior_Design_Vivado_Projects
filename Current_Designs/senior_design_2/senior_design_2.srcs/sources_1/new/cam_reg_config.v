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
    input wire sys_clk,
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
    
    parameter INIT = 0;
    parameter IDLE = 1;
    parameter SEND_DATA = 2;
    parameter DONE = 3;
    parameter WAIT = 4;
    
    reg [7:0] wait_time = 7'd1;
    reg [2:0] state = INIT;
    reg [1:0] state_return = IDLE;
    reg [7:0] loc = 0;
    reg start = 1;  // use to signal the start of the register locations
    
//    ila_0 debugger
//        (.clk(sys_clk),
//         .probe0(sccb_busy), // sys cl
//         .probe1(sccb_ready),
//         .probe2(reg_data),
//         .probe3(done),
//         .probe4(sccb_start),
//         .probe5(reg_loc),
//         .probe6(addr_data)
//         );
    
    always@(posedge clk) begin
        case(state)
            INIT: begin
                done <= 0;   // not done
                sccb_start <= 0; // don't start
                reg_loc <= loc;    // first reg loc
                addr_data <= 0;  // no addr or data
                state = WAIT;
                state_return = IDLE;
            end
            
            IDLE: begin
                sccb_start <= 0;    // move to wait state if timing doesn't match
                if((sccb_busy == 0) && (sccb_ready == 1)) begin
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
endmodule
