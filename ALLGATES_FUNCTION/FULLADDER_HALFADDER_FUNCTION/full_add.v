module full_add_tb;

    reg A, B, Cin;
    wire Sum, Carry;

    // DUT Instantiation
    full_add dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin

        // Waveform dump
 
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,full_add_tb);

        // Uncomment these two lines if using Verdi
        // $fsdbDumpfile("dump.fsdb");
        // $fsdbDumpvars(0, full_add_tb);

        $display(" A B Cin | Sum Carry");
        $monitor(" %b %b  %b  |  %b    %b",
                  A, B, Cin, Sum, Carry);

        A=0; B=0; Cin=0;
        #1;

        A=0; B=0; Cin=1;
        #1;

        A=0; B=1; Cin=0;
        #1;

        A=0; B=1; Cin=1;
        #1;

        A=1; B=0; Cin=0;
        #1;

        A=1; B=0; Cin=1;
        #1;

        A=1; B=1; Cin=0;
        #1;

        A=1; B=1; Cin=1;
        #1;

        $finish;

    end

endmodule