module mux #(parameter width = 4) (input [width-1:0] in_0,
                                   input [width-1:0] in_1,
                                   input [width-1:0] in_2,
                                   input [width-1:0] in_3,
                                   input [1:0] sel,
                                   output reg [width-1:0] out
                                  );

always @(*) begin
    case(sel)
        0: out = in_0;
        1: out = in_1;
        2: out = in_2; 
        3: out = in_3;
        default: out = 4'b0;
    endcase
end

endmodule
