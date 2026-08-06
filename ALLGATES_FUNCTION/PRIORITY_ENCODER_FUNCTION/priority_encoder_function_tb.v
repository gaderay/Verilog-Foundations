module tb_priority_encoder_function;

reg [7:0] D;

wire [2:0] Y;

//--------------------------------------

priority_encoder_function DUT(

.D(D),
.Y(Y)

);

//--------------------------------------

initial begin

    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0,tb_priority_encoder_function);

    $display("---------------------------------------------------");
    $display("Time\tInput\t\tOutput");
    $display("---------------------------------------------------");

    $monitor("%0t\t%b\t%b",
             $time,D,Y);

    //----------------------------------

    D = 8'b00000000; #10;

    D = 8'b00000001; #10;

    D = 8'b00000010; #10;

    D = 8'b00000100; #10;

    D = 8'b00001000; #10;

    D = 8'b00010000; #10;

    D = 8'b00100000; #10;

    D = 8'b01000000; #10;

    D = 8'b10000000; #10;

    //----------------------------------
    // Multiple inputs HIGH

    D = 8'b10100000; #10;

    D = 8'b00101010; #10;

    D = 8'b11111111; #10;

    //----------------------------------

    #10;

    $finish;

end

endmodule