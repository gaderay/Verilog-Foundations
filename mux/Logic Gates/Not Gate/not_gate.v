module not_gate(input A, output reg Y);

// 2x1 Multiplexer Function
function reg mux_2x1(input a, b, s);
begin
    mux_2x1 = (~s & a) | (s & b);
end
endfunction

always @(*) begin
    // When A = 0, Y = 1
    // When A = 1, Y = 0
    Y = mux_2x1(1'b1, 1'b0, A);
end

endmodule
