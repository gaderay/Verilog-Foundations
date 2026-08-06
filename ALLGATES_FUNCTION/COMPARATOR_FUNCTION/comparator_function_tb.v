module tb_comparator_function;

reg [1:0] A;
reg [1:0] B;

wire Greater;
wire Equal;
wire Less;

//--------------------------------------------

comparator_function DUT(

.A(A),
.B(B),

.Greater(Greater),
.Equal(Equal),
.Less(Less)

);

//--------------------------------------------

initial begin

    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0,tb_comparator_function);

    $display("------------------------------------------------------------");
    $display("Time\tA\tB\tGreater\tEqual\tLess");
    $display("------------------------------------------------------------");

    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
             $time,A,B,Greater,Equal,Less);

    //-----------------------------------------

    A=2'b00; B=2'b00; #10;

    A=2'b01; B=2'b00; #10;

    A=2'b00; B=2'b10; #10;

    A=2'b10; B=2'b10; #10;

    A=2'b11; B=2'b01; #10;

    A=2'b01; B=2'b11; #10;

    A=2'b11; B=2'b11; #10;

    //-----------------------------------------

    #10;
    $finish;

end

endmodule