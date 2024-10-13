`timescale 1ns/1ps
`include "counter.v"
module c_tb();
    parameter len = 8;
    reg clk,reset,c_en,p_load;
    reg [len-1:0] p_load_data;
    wire   [len-1:0] out;
    
    counter #(.len(len)) c1 (.clk(clk), .c_en(c_en), .reset(reset), .p_load(p_load), .p_load_data(p_load_data),.out(out));
    initial begin
        forever begin
	       	#2 clk = ~clk;
	end
    end
    initial begin 
        $dumpfile("counter_tb.vcd");
	$dumpvars(0,counter_tb);
        clk = 0;
	reset = 1;
	c_en = 0;
	p_load = 0;
	p_load_data = 6;

	#100

	reset = 0;
	c_en = 1;
	p_load = 0;
	p_load_data = 6;

        #100

	c_en = 1;
	p_load = 1;
	p_load_data = 6;

	#100
        

	reset = 1;
	c_en = 0;
	p_load = 0;
	p_load_data = 6;

	
	#50;
        $finish;
    end
endmodule
