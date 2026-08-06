module nand_gate(input A, B, output reg Y);

// 2x1 Multiplexer Function
function reg mux_2x1(input a, b, s);
begin
    mux_2x1 = (~s & a) | (s & b);
end
endfunction

always @(*) begin
    // When A = 0, Y = 1
    // When A = 1, Y = ~B
    Y = mux_2x1(1'b1, ~B, A);
end

endmodule
