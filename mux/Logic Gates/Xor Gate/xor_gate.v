module xor_gate(input A, B, output reg Y);

// 2x1 Multiplexer Function
function reg mux_2x1(input a, b, s);
begin
    mux_2x1 = (~s & a) | (s & b);
end
endfunction

always @(*) begin
    // When A = 0, Y = B
    // When A = 1, Y = ~B
    Y = mux_2x1(B, ~B, A);
end

endmodule
