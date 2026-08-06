module siso_tb();

reg clk, rst, si;
wire so;

siso dut(clk, rst, si, so);

initial begin
    $monitor("time=%0t clk=%b rst=%b si=%b so=%b",
             $time, clk, rst, si, so);
end

// Stimulus
initial begin
    clk = 0;
    rst = 0;

    si = 1; #5;
    si = 0; #5;
    si = 1; #5;
    si = 1; #5;

    #20;
    $finish;
end

// Clock generation
initial begin
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, siso_tb);
end

endmodule
