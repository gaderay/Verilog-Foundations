module SR_FF(input s, r, clk, rst, output reg q);

always @(posedge clk) begin
    case({rst, s, r})
        3'b000, 3'b001, 3'b010, 3'b011: q <= 1'b0; // Synchronous reset dominant
        3'b100: q <= q;    // No change
        3'b101: q <= 1'b0; // Reset
        3'b110: q <= 1'b1; // Set
        3'b111: q <= 1'bx; // Invalid state
        default: q <= q;
    endcase
end

endmodule