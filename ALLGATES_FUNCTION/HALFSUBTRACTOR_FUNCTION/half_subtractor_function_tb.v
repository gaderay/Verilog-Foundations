module tb_half_subtractor_function;

reg A;
reg B;

wire Difference;
wire Borrow;

//----------------------------------------
// DUT Instantiation
//----------------------------------------

half_subtractor_function DUT(

.A(A),
.B(B),
.Difference(Difference),
.Borrow(Borrow)

);

//----------------------------------------

initial begin

    // Waveform

    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0,tb_half_subtractor_function);

    $display("--------------------------------------------");
    $display("Time\tA\tB\tDifference\tBorrow");
    $display("--------------------------------------------");

    $monitor("%0t\t%b\t%b\t%b\t\t%b",
              $time,A,B,Difference,Borrow);

    //----------------------------------------

    A=0; B=0; #10;

    A=0; B=1; #10;

    A=1; B=0; #10;

    A=1; B=1; #10;

    //----------------------------------------

    #10;

    $finish;

end

endmodule