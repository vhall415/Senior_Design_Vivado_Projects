`timescale 1ns / 1ps
//`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2018 12:04:50 PM
// Design Name: 
// Module Name: sccb
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


module sccb(
    input wire clk,
//    input wire reset,
    input wire start,   // start tx
    input wire done,
    input wire [15:0] addr_data,    // addr and data to tx
    output reg busy,    // sccb busy with tx
    output reg ready_out,   // ready to recieve new tx data
    output reg scl,
    inout wire sda // change to output only if causing errors
    );
    
    // sccb clk freq. must be 400KHz (done by waiting based on 24MHz clock period)
        
    localparam CAMERA_ID_W = 8'h42;    // Address to write to camera regs
    localparam IDLE = 0;
    localparam START_TX = 1;    // sda goes low
    localparam START_DATA_TX = 2;   // scl goes low
    localparam LOAD_DATA1 = 3;   // load data during scl low
    localparam LOAD_DATA2 = 4;   // load data during scl low
    localparam SEND_BIT = 5;    // scl goes high to send bit
    localparam END_BIT = 6; // scl goes low -> go to load next bit or stop data tx
    localparam STOP_DATA_TX = 7;    // scl goes high
    localparam STOP_TX = 8; // sda goes high
    localparam WAIT = 9;    // wait for a certain length of time before going to next step

    // timing vars (values based on 24MHz clock freq.)
    // see OV7670/OV7171 CMOS VGA (640x480) CAMERACHIP with OmniPixel Technology datasheet
    localparam T_LOW_BUF = 33; // time scl low or time to buffer before new tx start; min 31
    localparam T_HIGH_SETUP = 15;    // time scl high or setup start/stop; min 15
    localparam T_RISE_FALL = 2;    // time for val to become stable; max 7
    localparam T_AA = 3;   // time for scl low to data out valid; min 3, max 22
    
    reg [3:0] state = WAIT;    // FSM state; allow for initial start setup before tx-ing
    reg [3:0] state_return = IDLE; // FSM state to return to after wait
    reg [1:0] phase = 0;    // data tx phase
    reg [3:0] i = 8;    // data tx bit index
    reg [5:0] wait_time = T_LOW_BUF;    // number clk periods to wait (based on 24MHz clk)
    reg [7:0] tx_data = 0;    // store data to tx
    reg [7:0] addr = 0; // address of camera reg
    reg [7:0] data = 0; // data to modify camera reg
    reg sda_out = 1;
    reg reset = 1;

    assign sda = sda_out;   // always assign sda to whatever sda_out is
    
    always@(posedge clk) begin
        if(reset) begin
            reset <= 0;
            scl <= 1;    // start scl high
            busy <= 0;  // start not busy
            ready_out <= 0; // start as ready for tx
        end
        
        else begin
            case(state)
                IDLE: begin
                    phase <= 0; // reset phase index
                    i <= 8; // reset byte index
                    if(start & ~done) begin // start process if not done
                        state <= START_TX;   // ready to start tx
                        addr <= addr_data[15:8]; // store current reg addr
                        data <= addr_data[7:0];  // store current reg data
                        busy <= 1;  // sccb is now busy with tx
                        ready_out <= 0;
                        // need to wait 600ns before next signal (t_HD:STA)
                    end
                    else begin
                        busy <= 0;  // sccb not busy
                        ready_out <= 1;
                    end
                end
    
                START_TX: begin
                    sda_out <= 0;    // pull sda low to signal start of tx
                    wait_time <= T_RISE_FALL + T_HIGH_SETUP;  //  wait for sda_out to stabilize(max 7) and start condition hold time(min 15)
                    state <= WAIT;
                    state_return <= START_DATA_TX;
                    // need to wait (t_LOW)1.3us - t_AA before scl pulls high
                 end
    
                START_DATA_TX: begin
                    scl <= 0;    // pull scl low to signal start of data tx
                    wait_time <= T_RISE_FALL + T_AA;  // wait for scl to stabilize(max 7) and low to data out valid(3-21) minus sda stabilize(max 7)
                    state <= WAIT;
                    state_return <= LOAD_DATA1;
                    // scl stays high for 600ns (t_HIGH)
                end
    
                LOAD_DATA1: begin   // determine data from phase
                    case(phase)
                        0: tx_data <= CAMERA_ID_W;
                        1: tx_data <= addr;
                        2: tx_data <= data;
                        default: tx_data <= data;
                    endcase
                    state <= LOAD_DATA2;
                end
                
                LOAD_DATA2: begin   // load data (split in 2 states to help with sequential logic)
                    if(i > 0) begin
                        sda_out <= tx_data[i-1];
                    end
                    else begin  // sent 8 bits
                        sda_out <= sda;    // don't care bit (end of phase)
                        phase <= phase + 1;  // increment to next phase
                        i <= 9;    // reset bit index (use 9 since it's auto-decremented in next state)
                    end
                    wait_time <= T_LOW_BUF - T_AA;    // wait for sda to stabilize(max 7) and t_SU:DAT and finish scl low
                    state <= WAIT;
                    state_return <= SEND_BIT;
                end
                
                    // 238-239 cycles for full bit transmission (scl high-scl low pattern length)
                SEND_BIT: begin
                    scl <= 1;    // pull high to send bit
                    i <= i - 1;
//                    wait_time <= T_RISE_FALL + T_HIGH_SETUP;  // wait for scl to stabilize(max 7) and scl high period(min 15)
                    wait_time <= T_RISE_FALL + T_LOW_BUF;  // wait for scl to stabilize(max 7) and scl high period(min 15)
                    state <= WAIT;
                    state_return <= END_BIT;
                end
    
                END_BIT: begin
                    scl <= 0;
                    state <= WAIT;
                    if(phase < 3) begin // still in phase to tx
                        state_return <= LOAD_DATA1;
                        wait_time <= T_RISE_FALL + T_AA;  // wait for scl to stabilize(max 7) and max between t_HD:DAT and t_DH
                    end
                    else begin    // end of 3rd tx
                        state_return <= STOP_DATA_TX;
                        wait_time <= T_RISE_FALL + T_LOW_BUF;    // wait for scl to stabilize and for low portion of period
                        phase <= 0;    // reset phase val
                    end
//                    wait_time <= T_RISE_FALL + T_LOW_BUF;    // wait for scl to stabilize and for low portion of period
                end
    
                STOP_DATA_TX: begin
                    scl <= 1;    // pull high to stop data tx
                    wait_time <= T_RISE_FALL + T_HIGH_SETUP;  // wait for scl to stabilize and end of t_SU:STO
                    state <= WAIT;
                    state_return <= STOP_TX;
                end
    
                STOP_TX: begin
                    sda_out <= 1;    // pull high to stop tx
                    wait_time <= T_RISE_FALL + T_LOW_BUF;  // wait for sda to stabilize and duration of t_BUF
                    state <= WAIT;
                    state_return <= IDLE;
                end
    
                WAIT: begin
                    if(wait_time == 0) begin
                        state <= state_return;   // finished waiting; go to next step
                    end
                    else begin
                        wait_time <= wait_time - 1;    // update wait time
                    end
                end
            endcase
        end
    end
endmodule
