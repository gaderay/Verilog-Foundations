module SR_FF_tb;
    reg s, r, clk, rst;
    wire q;

SR_FF Dut(
    .s(s), .r(r), .clk(clk), .rst(rst), .q(q) 
);

initial begin
    $monitor ("%0t, s=%0d, r=%0d, clk=%0d, rst=%0d, q=%0d", $time, s, r, clk, rst, q);
end

// Clock generation
initial begin
    forever #5 clk = ~clk;
end

initial begin
    clk = 0; rst = 0;
    #15 rst = 1;
    s = 0; r = 0;
    
    #10 s = 0; r = 1; // Reset
    #10 s = 1; r = 0; // Set
    #10 s = 1; r = 1; // Invalid state simulation
    #10 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, SR_FF_tb);
end

endmodule
