`timescale 1ns / 1ps

module full_adder(input n_1, n_2, cin, output sum, cout);
    
    assign sum = n_1 ^ n_2 ^ cin;
    assign cout = (n_1 & n_2) | ((n_1 | n_2) & cin);
   


endmodule
