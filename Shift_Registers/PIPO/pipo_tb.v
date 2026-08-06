module pipo_tb();

reg clk,rst;
reg [3:0] pi;

wire [3:0] po;

pipo dut(clk,rst,pi,po);//position instantiation

initial begin
    pi=4'b1000;
    
    // Adding more variations so i can see changes in my waveform
    #20;
    pi=4'b1101;
    #10;
    pi=4'b0011;
end

initial begin
    rst=1'b1;
    #3;
    rst=1'b0;
end

// Clock Generation (Toggles every 5 time units)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    #80 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, pipo_tb);
end

endmodule
