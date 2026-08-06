module or_gate(input A, B, output reg Y);

function reg 
 	mux_2x1(input a, b, s);
begin
    mux_2x1 = (~s & a) | (s & b);

end
endfunction


always @(*) begin
    Y = mux_2x1(B, 1'b1, A);
end

endmodule
