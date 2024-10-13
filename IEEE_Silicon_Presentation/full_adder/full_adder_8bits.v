`timescale 1ns / 1ps
`include "full_adder.v"
module full_adder_8bits(input [7:0]n_1,
                        input [7:0]n_2,     
                        output [7:0]sum, 
                        output cout);
                     
    wire [7:0]carry;
    
    full_adder a0(.n_1(n_1[0]), .n_2(n_2[0]), .cin(1'b0), .sum(sum[0]), .cout(carry[0]));
    
    full_adder a1(.n_1(n_1[1]), .n_2(n_2[1]), .cin(carry[0]), .sum(sum[1]), .cout(carry[1]));
    
    full_adder a2(.n_1(n_1[2]), .n_2(n_2[2]), .cin(carry[1]), .sum(sum[2]), .cout(carry[2]));
    
    full_adder a3(.n_1(n_1[3]), .n_2(n_2[3]), .cin(carry[2]), .sum(sum[3]), .cout(carry[3]));
    
    full_adder a4(.n_1(n_1[4]), .n_2(n_2[4]), .cin(carry[3]), .sum(sum[4]), .cout(carry[4]));
    
    full_adder a5(.n_1(n_1[5]), .n_2(n_2[5]), .cin(carry[4]), .sum(sum[5]), .cout(carry[5]));
   
    full_adder a6(.n_1(n_1[6]), .n_2(n_2[6]), .cin(carry[5]), .sum(sum[6]), .cout(carry[6]));
   
    full_adder a7(.n_1(n_1[7]), .n_2(n_2[7]), .cin(carry[6]), .sum(sum[7]), .cout(carry[7]));

    assign cout = carry[7];
    
    


endmodule
