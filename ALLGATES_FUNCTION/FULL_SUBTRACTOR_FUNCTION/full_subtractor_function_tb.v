module tb_full_subtractor_function;

reg A;
reg B;
reg Bin;

wire Difference;
wire Borrow;

//---------------------------------------------

full_subtractor_function DUT(

.A(A),
.B(B),
.Bin(Bin),
.Difference(Difference),
.Borrow(Borrow)

);

//---------------------------------------------

initial begin

    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0,tb_full_subtractor_function);

    $display("------------------------------------------------------");
    $display("Time\tA\tB\tBin\tDifference\tBorrow");
    $display("------------------------------------------------------");

    $monitor("%0t\t%b\t%b\t%b\t%b\t\t%b",
             $time,A,B,Bin,Difference,Borrow);

    //-----------------------------------------

    A=0; B=0; Bin=0; #10;

    A=0; B=0; Bin=1; #10;

    A=0; B=1; Bin=0; #10;

    A=0; B=1; Bin=1; #10;

    A=1; B=0; Bin=0; #10;

    A=1; B=0; Bin=1; #10;

    A=1; B=1; Bin=0; #10;

    A=1; B=1; Bin=1; #10;

    //-----------------------------------------

    #10;
    $finish;

end

endmodule