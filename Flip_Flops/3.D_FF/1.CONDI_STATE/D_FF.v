module D_FF(input d, clk, rst, output reg q);

always @(posedge clk) begin
    if (rst == 0)
        q <= 0; // Synchronous reset
    else if (d == 0)
        q <= 0; // Captures 0
    else 
        q <= 1; // Captures 1
end

endmodule