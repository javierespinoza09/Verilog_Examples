`timescale 1ns / 1ps
`include "full_adder_8bits.v"

module full_adder_8bits_tb();

    reg [7:0]n_1;
    reg [7:0]n_2;
    wire [7:0]sum;
    wire cout;
    
    full_adder_8bits a0(.n_1(n_1), .n_2(n_2), .sum(sum), .cout(cout));
    
    initial begin
        $dumpfile("full_adder_8bits_tb.vcd");
        $dumpvars(0,full_adder_8bits_tb);       
        n_1 = 2;
        n_2 = 2;
        
        #10 
        
        n_1 = 255;
        n_2 = 255;
        
        #10 
        
        n_1 = 17;
        n_2 = 20;
        
        #10;
        $finish;
    end
  
    
    
endmodule
