// author Javier Espinoza
// Description: Parametrized counter (dafault 4 bits) with sync reset and
// count enable bit

module counter #(parameter len = 4) (input clk, reset, c_en, p_load, input [len-1:0] p_load_data, output [len-1:0] out);
    //wire  [len-1:0]n_state;
    reg  [len-1:0] state; 
    always @(posedge clk) begin
	casex ({p_load, c_en, reset})
            3'b000: state <= state;
	    3'b??1: state <= 0;
	    3'b1?0: state <= p_load_data;
	    //3'b100: state <= p_load_data;
	    3'b010: state <= state + 1;
	    default: state <= 0;
	endcase
    end
    assign out = state;
endmodule
