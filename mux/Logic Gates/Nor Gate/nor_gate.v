// NOR Gate using a 2x1 MUX Function

module nor_gate(input A, B, output reg Y);

// 2x1 Multiplexer Function
function reg mux_2x1(input a, b, s);
begin
    mux_2x1 = (~s & a) | (s & b);
end
endfunction

always @(*) begin
    // When A = 0, Y = ~B
    // When A = 1, Y = 0
    Y = mux_2x1(~B, 1'b0, A);
end

endmodule
