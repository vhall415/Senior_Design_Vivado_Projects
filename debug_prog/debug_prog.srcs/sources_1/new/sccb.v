`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2017 10:43 AM
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
/////////////////////////////////////////////////////////////////////////////////

module sccb (
    input wire clk_in,
    input wire [15:0] addr_data,
    output reg [7:0] reg_loc,    // location in cameraReg to get addr_data
    output reg scl, // sccb clock
    output reg sda_out, // sccb data
    output reg sccb_done
    );
    
    // sccb clk freq. must be 400KHz (done by waiting based on 24MHz clock period)
    
    localparam CAMERA_ID_W = 8'h42;    // Address to write to camera regs
    localparam IDLE = 0;
    localparam START_TX = 1;
    localparam START_DATA_TX = 2;
    localparam LOAD_DATA = 3;
    localparam SEND_BIT = 4;
	localparam END_BIT = 5;
    localparam STOP_DATA_TX = 6;
    localparam STOP_TX = 7;
    localparam WAIT = 8;

    // timing vars (values based on 24MHz clock freq.)
    // see OV7670/OV7171 CMOS VGA (640x480) CAMERACHIP with OmniPixel Technology datasheet
    localparam T_LOW_BUF = 31; // time scl low or time to buffer before new tx start; min 31
    localparam T_HIGH_SETUP = 15;    // time scl high or setup start/stop; min 15
    localparam T_RISE_FALL = 2;    // time for val to become stable; max 7
    localparam T_AA = 3;   // time for scl low to data out valid; min 3, max 21
    
    reg [3:0] state = WAIT;    // FSM state; allow for initial start setup before tx-ing
    reg [3:0] state_return = IDLE; // FSM state to return to after wait
    reg [1:0] phase = 0;    // data tx phase
    reg [3:0] i = 8;    // data tx bit index
    reg [7:0] reg_loc_val = 0;  // temp storage for reg_loc output
    reg ready = 1;
    reg [5:0] wait_time = T_LOW_BUF;    // number clk periods to wait (based on 24MHz clk)
    reg [7:0] tx_data = 0;	// store data to tx
    reg [7:0] addr = 0; // address of camera reg
    reg [7:0] data = 0; // data to modify camera reg
//    reg sda_out = 1;

    initial begin
        scl = 1;
        sda_out = 1;
		reg_loc = 0;
		sccb_done = 0;
    end

//    assign sda = sda_out;
    //assign clk_out = clk_in;
    
//    camera_reg creg(
//            .clk(clk_out),
//            .addr(reg_loc),
//            .addr_data(addr_data)
//            );
    
    always@(posedge clk_in) begin
        case(state)
            IDLE: begin
                scl = 1;
                sda_out = 1;
                reg_loc = reg_loc_val;  // set reg loc to update addr_data
                if(reg_loc_val < 73) begin // ready to send new data
                    state = START_TX;   // ready to start tx
                    reg_loc_val = reg_loc_val + 1;  // increment to next reg location
                    // need to wait 600ns before next signal (t_HD:STA)
                end
                
            end

            START_TX: begin
                sda_out = 0;    // pull sda low to signal start of tx
                wait_time = T_RISE_FALL + T_HIGH_SETUP;  //  wait for sda_out to stabilize(max 7) and start condition hold time(min 15)
                state = WAIT;
                state_return = START_DATA_TX;
                // need to wait (t_LOW)1.3us - t_AA before scl pulls high
             end

            START_DATA_TX: begin
				addr = addr_data[15:8]; // store current reg addr
                data = addr_data[7:0];  // store current reg data
                scl = 0;    // pull scl low to signal start of data tx
                wait_time = T_RISE_FALL + T_AA;  // wait for scl to stabilize(max 7) and low to data out valid(3-21) minus sda stabilize(max 7)
                state = WAIT;
                state_return = LOAD_DATA;
                // scl stays high for 600ns (t_HIGH)
            end
				
//			LOAD_FIRST_BIT: begin	// phase = 0, i = 8
//				 sda_out = CAMERA_ID_W[i-1];	// load bit 7 of ID
//				 i = i - 1;	// set to next bit
//				 wait_time = 28;	// wait for sda to stabilize(max 7) and finish scl low time
//				 state = WAIT;
//				 state_return = SEND_BIT;
//			end

            LOAD_DATA: begin
			    case(phase)
                    0: begin
                        tx_data = CAMERA_ID_W;
                    end
                    
                    1: begin
                        tx_data = addr;
                    end

                    2: begin
                        tx_data = data;
                    end
                endcase
                if(i > 0) begin
                    sda_out = tx_data[i-1];
                    i = i - 1;
                end
                else begin  // sent 8 bits
                    sda_out = 0;    // don't care bit (end of phase)
                    phase = phase + 1;	// go to next phase
					i = 8;	// reset bit index
                end
                wait_time = T_LOW_BUF - T_AA;	// wait for sda to stabilize(max 7) and t_SU:DAT and finish scl low
                state = WAIT;
                state_return = SEND_BIT;
            end
                // 238-239 cycles for full bit transmission (scl high-scl low pattern length)
            SEND_BIT: begin
				scl = 1;    // pull high to send bit
			    wait_time = T_RISE_FALL + T_HIGH_SETUP;  // wait for scl to stabilize(max 7) and scl high period(min 15)
                state = WAIT;
                state_return = END_BIT;
            end

            END_BIT: begin
                scl = 0;
                state = WAIT;
                if(phase < 3) begin // still in phase to tx
                    state_return = LOAD_DATA;
                    wait_time = T_RISE_FALL + T_AA;  // wait for scl to stabilize(max 7) and max between t_HD:DAT and t_DH
                end
                else begin    // end of 3rd tx
                    state_return = STOP_DATA_TX;
                    wait_time = T_RISE_FALL + T_LOW_BUF;    // wait for scl to stabilize and for low portion of period
					phase = 0;	// reset phase val
                end
            end

            STOP_DATA_TX: begin
                scl = 1;    // pull high to stop data tx
                wait_time = T_RISE_FALL + T_HIGH_SETUP;  // wait for scl to stabilize and end of t_SU:STO
                state = WAIT;
                state_return = STOP_TX;
            end

            STOP_TX: begin
                sda_out = 1;    // pull high to stop tx
                wait_time = T_RISE_FALL + T_LOW_BUF;  // wait for sda to stabilize and duration of t_BUF
                state = WAIT;
                state_return = IDLE;
            end

            WAIT: begin
                if(wait_time == 0) begin
                    state = state_return;   // finished waiting; go to next step
                end
                else begin
                    wait_time = wait_time - 1;    // update wait time
                end
            end
        endcase
    end
endmodule 