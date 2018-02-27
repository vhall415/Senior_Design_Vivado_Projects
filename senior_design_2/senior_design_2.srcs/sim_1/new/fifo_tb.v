`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 10:46:59 AM
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb;
    integer i;
    integer count;

    reg pclk;
    reg [7:0] cam_byte;
    reg vsync;
    reg href;
    reg sccb_done;
    reg global_reset;
    reg read_en;
    
    wire clk_out;
    wire write_en;
    wire [15:0] bram_pixel_in;
    wire [15:0] bram_pixel_out;
    wire full;
    wire empty;
    wire half_pclk;
    
    reg val_written;
    
    camera_receiver receiver1(
        // Facing Camera
        .cam_byte(cam_byte),
        .pclk(pclk),
        .vsync(vsync),
        .href(href),
    //    output wire xclk,
        
        // Facing System
        //input wire sys_clk,    // not needed?
        .sccb_done(sccb_done),
        .pixel_data_out(bram_pixel_in),
        .write_en(write_en),
        .clk_out(clk_out),
        .half_pclk(half_pclk)
        );
    
    async_fifo #(.datawidth(16), .DATADEPTH(100_000)) bram1    // depth to hold one frame
        (.reset(global_reset),
         // Reading by rgb2gray
         .read_clk(clk_out),
         .read_en(read_en),
         .outputData(bram_pixel_out),
         // Writing by camera receiver
         .write_clk(half_pclk),
         .write_en(write_en),
         .inputData(bram_pixel_in),
         // Fifo specific
         .full(full),
         .empty(empty)
         );

    initial begin
        pclk <= 0;
        cam_byte <= 0;   // goes up to 65_535
        vsync <= 1;
        href <= 0;
        sccb_done <= 0;
        global_reset <= 1;
        read_en <= 0;
        count <= 0;
        val_written <= 0;
        #100;
        global_reset <= 0;
        #50;
        sccb_done <= 1;
        vsync <= 0;
        href <= 1;
        for(i = 0; i < 65_535; i = i + 1) begin
            pclk = ~pclk;
            
            if(write_en) begin
                val_written <= 1;
            end
            
            if(count == 639 && href && pclk) begin // end line
                href = 0;
                count = 0;
            end
            
            if(pclk && href && ~read_en && val_written) begin
                read_en = 1;
            end
            else begin
                read_en = 0;
            end
            
            if(pclk & ~vsync & href) begin
                cam_byte = cam_byte + 1;
            end
            count = count + 1;
            #20;
        end
    end
endmodule
