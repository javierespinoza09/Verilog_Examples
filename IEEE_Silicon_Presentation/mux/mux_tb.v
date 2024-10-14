
`timescale 1ns / 1ps
`include "mux.v"

module mux_tb();
    parameter default_width = 4;
    parameter custom_width = 8;
    reg [default_width-1:0] def_in_0;
    reg [default_width-1:0] def_in_1;
    reg [default_width-1:0] def_in_2;
    reg [default_width-1:0] def_in_3;

    reg [1:0] sel;

    wire [default_width-1:0] def_out;
    

    reg [custom_width-1:0] custom_in_0;
    reg [custom_width-1:0] custom_in_1;
    reg [custom_width-1:0] custom_in_2;
    reg [custom_width-1:0] custom_in_3;

    wire [custom_width-1:0] custom_out;

    mux mux_default ( .in_0(def_in_0),
                      .in_1(def_in_1),
                      .in_2(def_in_2),
                      .in_3(def_in_3),
                      .sel(sel),
                      .out(def_out)
                    );
    mux #(.width(custom_width)) mux_custom (
                      .in_0(custom_in_0),
                      .in_1(custom_in_1),
                      .in_2(custom_in_2),
                      .in_3(custom_in_3),
                      .sel(sel),
                      .out(custom_out)
                    );
    initial begin
        $dumpfile("mux_tb.vcd");
        $dumpvars(0,mux_tb);       
        sel = 0;
        def_in_0 = 4'b0000;
        def_in_1 = 4'b0010;
        def_in_2 = 4'b0100;
        def_in_3 = 4'b1000;

        custom_in_0 = 8'b00000010;
        custom_in_1 = 8'b00001000;
        custom_in_2 = 8'b00100000;
        custom_in_3 = 8'b10000000;
        
        #10 
        sel = 1;
        #10 
        sel = 2;
        #10;
        sel = 3;
        #10;
        $finish;
    end
  
    
    
endmodule
