module D_FF(input d, clk, rst, output reg q);

always @(posedge clk) begin
    case({rst, d})
        2'b00, 2'b01: q <= 1'b0; // Synchronous reset dominant
        2'b10:        q <= 1'b0; // Load 0
        2'b11:        q <= 1'b1; // Load 1
        default:      q <= q;
    endcase
end

endmodule