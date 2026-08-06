module top;

reg A, B;
wire Y;

xor_gate dut(.*);

initial begin

    $monitor("A=%b B=%b Y=%b", A, B, Y);

    A = 0; B = 0; #2;
    A = 0; B = 1; #2;
    A = 1; B = 0; #2;
    A = 1; B = 1; #2;

    $finish;

end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top);
end

endmodule
