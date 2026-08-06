module and_gate(input A, B, output reg Y);

function reg mux_2x1(input a, b, s);
    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction

always @(*) begin
    // AND gate using 2x1 MUX
    Y = mux_2x1(1'b0, B, A);
end

endmodule
