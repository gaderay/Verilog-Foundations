module D_FF_tb;
    reg d, clk, rst;
    wire q;

D_FF Dut(
    .d(d), .clk(clk), .rst(rst), .q(q) 
);

initial begin
    $monitor ("%0t, d=%0d, clk=%0d, rst=%0d, q=%0d", $time, d, clk, rst, q);
end

// Clock generation
initial begin
    forever #5 clk = ~clk;
end

initial begin
    clk = 0; rst = 0;
    #15 rst = 1;
    d = 0;
    
    #10 d = 1;
    #10 d = 0;
    #20 d = 1;
    #10 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, D_FF_tb);
end

endmodule
