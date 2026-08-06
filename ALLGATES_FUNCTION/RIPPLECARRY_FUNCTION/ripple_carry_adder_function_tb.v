module tb_ripple_carry_adder_function;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

// DUT Instantiation
ripple_carry_adder_function DUT (

    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)

);

initial begin

    // Waveform Dump
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, tb_ripple_carry_adder_function);

    $display("------------------------------------------------------------");
    $display("Time\tA\tB\tCin\tSum\tCout");
    $display("------------------------------------------------------------");

    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
              $time,A,B,Cin,Sum,Cout);

    //-------------------------------------------------
    // Test Cases
    //-------------------------------------------------

    A=4'b0000; B=4'b0000; Cin=0; #10;

    A=4'b0011; B=4'b0101; Cin=0; #10;

    A=4'b0110; B=4'b0011; Cin=0; #10;

    A=4'b1111; B=4'b0001; Cin=0; #10;

    A=4'b1010; B=4'b0101; Cin=1; #10;

    A=4'b1111; B=4'b1111; Cin=1; #10;

    #10;
    $finish;

end

endmodule