`timescale 1ns / 1ps
`include "full_adder.v"

module full_adder_tb();

    reg n_1, n_2, cin;
    wire sum, cout;
    
    full_adder a0(.n_1(n_1), .n_2(n_2), .cin(cin), .sum(sum), .cout(cout));
    
    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0,full_adder_tb);       
        n_1 = 1'b0;
        n_2 = 1'b0;
        cin = 1'b0;
        
        #10 
        
        n_1 = 1'b0;
        n_2 = 1'b1;
        cin = 1'b1;
        
        #10 
        
        n_1 = 1'b1;
        n_2 = 1'b1;
        cin = 1'b1;
        
        #10;
        $finish;
    end
  
    
    
endmodule
