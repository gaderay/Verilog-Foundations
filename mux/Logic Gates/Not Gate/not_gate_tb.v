module top;

reg A;
wire Y;

not_gate dut(.*);

initial begin

    $monitor("A=%b Y=%b", A, Y);

    A = 0; #2;
    A = 1; #2;

    $finish;

end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top);
end

endmodule
