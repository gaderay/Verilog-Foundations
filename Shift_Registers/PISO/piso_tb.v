module piso_tb();

reg clk,mode;
reg [3:0] pi;

wire sout;

piso dut(clk,pi,mode,sout);

initial begin
    pi=4'b1100;
    mode=0;
    #10;
    mode=1;
end

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    #100 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, piso_tb);
end

endmodule
