`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 02:48:56 AM
// Design Name: 
// Module Name: Scaler_Streamer_Top_Block
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


module Scaler_Streamer_Top_Block(
    // FTDI Chip.
    inout wire[7:0] ftdi_d,
    input wire ftdi_rxf,
    input wire ftdi_txe,
    output wire ftdi_wr,
    output wire ftdi_rd,
    output wire ftdi_oe,
    input wire ftdi_clk,
    output wire ftdi_siwu,
    
    // Camera I/O
//    input wire start_cam,
    input wire [7:0] cam_byte,
    input wire pclk,
    input wire vsync,
    input wire href,
    output wire scl,
    output wire sda,
    output wire xclk,
    
    // Local system clocks
    input wire sys_clk,
    // Debug Variables
    output wire [3:0] STATE,
    output wire NHD,
    output wire RHD
    );
    
    wire clk_36M;
    wire clk_100M;
    wire clk_2M;
    reg global_rst;
    
    clk_div #(.DIVIDER(2))clkDiv(.clk_in(sys_clk), .clk_out(clk_36M));
                                    
    clk_div #(.DIVIDER(25))clkDiv2(.clk_in(sys_clk),.clk_out(clk_2M));
                     
    wire clk_from_data_to_controller;
    
    wire[7:0] dataBus;
    
    reg dataGood;
    
    wire[7:0] hostDataBus;
    wire newHostData;
    reg readHostData;
    
    wire txF;
    wire txE;
    
    assign ftdi_siwu = clk_2M;
    
    wire gray_clk_out;
    wire [7:0] cam_gray_byte;
    wire [15:0] rgb_pixel;
    
    camera_top cam1 // camera system; output goes to bram storage and camera module
       (.sys_clk(sys_clk),
        .clk(clk_36M), // 25MHz clk
        .start(dataGood),
        .cam_byte(cam_byte), // input byte from camera
        .pclk(pclk), // input pixel clock from camera
        .vsync(vsync),   // input vsync from camera
        .href(href), // input href from camera
        .xclk(xclk),
        .scl(scl),   // output scl to camera
        .sda(sda),   // output sda to camera
        .rgb_pixel(rgb_pixel),
        .gray_byte(cam_gray_byte),   // output grayscale pixel
        .gray_clk_out(gray_clk_out) // output clock from grayscale module (based on pclk)
        );
        
    wire[7:0] outData;
    
    wire[3:0] sync_state;
    wire temp;
    
    assign temp = dataGood;
                               
    Sync_245_Controller controller(.D(ftdi_d),
                                   .RXF(ftdi_rxf),
                                   .TXE(ftdi_txe),
                                   .WR(ftdi_wr),
                                   .RD(ftdi_rd),
                                   .OE(ftdi_oe),
                                   .CLKOUT(ftdi_clk),
                                   
                                   .inputData(cam_gray_byte),
                                   .inputClock(gray_clk_out),
                                   .inputDataGood(dataGood),
                                   
                                   .hostData(hostDataBus),
                                   .outputClock(sys_clk),
                                   .readData(readHostData),
                                   .hasData(newHostData),
                                   
                                   .reset(global_rst),
                                   .dataSent(outData),
                                   .txFULL(txF),
                                   .txEMPTY(txE),
                                   ._state(sync_state)
                                   );
                                   
                                   
    reg[3:0] state;
    parameter WAIT_FOR_START = 12,STREAMING=1, READ_HOST_DATA=2,PROCESS_HOST_DATA=3,RESET=4;
    
    reg[9:0] counter;
    
    assign STATE = state;
    assign NHD = newHostData;
    assign RHD = readHostData;
        
    ila_0 debugger(.clk(sys_clk),.probe0(temp),.probe1(cam_gray_byte),.probe2(gray_clk_out),.probe3(rgb_pixel));
        
    always@(state) begin
        case(state)
            RESET: begin
                global_rst = 1;
                dataGood = 0;
                readHostData = 0;
            end
            WAIT_FOR_START: begin
                global_rst = 0;
                dataGood = 0;
                readHostData = 0;
            end
            STREAMING: begin
                global_rst = 0;
                dataGood = 1 & href;
                readHostData = 0;
            end
            READ_HOST_DATA: begin
                readHostData = 1;
            end
            PROCESS_HOST_DATA: begin
                readHostData = 0;
            end
            default: begin
                global_rst = 1;
                dataGood = 0;
                readHostData =0;
            end
        endcase
    end
   
    
    always@(posedge sys_clk) begin
        case(state)
            default: begin
                state = RESET;
                counter = 0;
            end
            
            RESET: begin
                counter <= counter + 1;
                if(counter >= 10'h003)
                    state = WAIT_FOR_START;
            end
            
            WAIT_FOR_START: begin
                if(newHostData)
                    state = READ_HOST_DATA;
                else
                    state = WAIT_FOR_START;
            end
            
            READ_HOST_DATA: begin
                state = PROCESS_HOST_DATA;
            end
            
            PROCESS_HOST_DATA: begin
                if (hostDataBus == 8'b10101010)
                    state = STREAMING;
                else
                    state = WAIT_FOR_START;
            end
            
            STREAMING: begin
                state = STREAMING;
            end
            
        endcase
    
    end
       
endmodule
