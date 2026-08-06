module T_FF(input t, clk, rst, output reg q);

always @(posedge clk) begin
    if (rst == 0)
        q <= 0; // Synchronous reset
    else if (t == 0)
        q <= q; // Hold state
    else 
        q <= ~q; // Toggle state
end

endmodule