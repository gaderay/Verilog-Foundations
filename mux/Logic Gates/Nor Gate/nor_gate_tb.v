module top;

reg A, B;
wire Y;

// Instantiate the OR gate
nor_gate dut(.*);

initial begin

    // Display inputs and output whenever they change
    $monitor("A=%b B=%b Y=%b", A, B, Y);

    // Test all possible input combinations
    A = 0; B = 0; #2;
    A = 0; B = 1; #2;
    A = 1; B = 0; #2;
    A = 1; B = 1; #2;

    $finish;

end

// Generate waveform for GTKWave
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top);
end

endmodule
