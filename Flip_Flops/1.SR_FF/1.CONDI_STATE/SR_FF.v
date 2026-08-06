module SR_FF(input s, r, clk, rst, output reg q);

always @(posedge clk) begin // Triggers only at the rising edge
    if (rst == 0)
        q <= 0; // Synchronous reset
    else if (s == 0 && r == 0)
        q <= q; // Memory state
    else if (s == 0 && r == 1)
        q <= 0; // Reset state
    else if (s == 1 && r == 0)
        q <= 1; // Set state
    else 
        q <= 1'bx; // Invalid state (S=1, R=1)
end

endmodule
