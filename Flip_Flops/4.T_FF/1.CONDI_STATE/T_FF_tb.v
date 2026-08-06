module T_FF_tb;
    reg t, clk, rst;
    wire q;

T_FF Dut(
    .t(t), .clk(clk), .rst(rst), .q(q) 
);

initial begin
    $monitor ("%0t, t=%0d, clk=%0d, rst=%0d, q=%0d", $time, t, clk, rst, q);
end

// Clock generation
initial begin
    forever #5 clk = ~clk;
end

initial begin
    clk = 0; rst = 0;
    #15 rst = 1;
    t = 0; // Hold
    
    #10 t = 1; // Toggle
    #20 t = 0; // Hold again
    #10 t = 1; // Toggle again
    #10 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, T_FF_tb);
end

endmodule
