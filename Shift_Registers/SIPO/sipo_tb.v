module sipo_tb();

reg clk, rst, si;
wire [3:0] po;

sipo dut(clk, rst, si, po);

always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;
    si = 0;

    #10 rst = 0;

    si = 1; #10;
    si = 0; #10;
    si = 1; #10;
    si = 1; #10;
    si = 0; #10;

    $finish;

end

initial begin
    $monitor("time=%0t clk=%b rst=%b si=%b po=%b",
              $time, clk, rst, si, po);
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, sipo_tb);
end

endmodule
