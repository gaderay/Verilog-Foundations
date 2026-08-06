module sipo(
    input clk,
    input rst,
    input si,
    output [3:0] po
);

reg [3:0] q;

always @(posedge clk) begin
    if (rst)
        q <= 4'b0000;
    else
        q <= {si, q[3:1]};
end

assign po = q;

endmodule
