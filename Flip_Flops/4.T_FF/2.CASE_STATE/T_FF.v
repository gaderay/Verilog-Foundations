module T_FF(input t, clk, rst, output reg q);

always @(posedge clk) begin
    case({rst, t})
        2'b00, 2'b01: q <= 1'b0; // Synchronous reset dominant
        2'b10:        q <= q;    // No change (Hold)
        2'b11:        q <= ~q;   // Toggle
        default:      q <= q;
    endcase
end

endmodule