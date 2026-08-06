//======================================================
// Full Adder (structural building block)
//======================================================
module full_adder(
    input  a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

//======================================================
// DUT: Ripple Carry Adder using a TASK to perform addition
//======================================================
module ripple_carry_adder #(parameter N = 4) (
    input  [N-1:0] A, B,
    input          Cin,
    output reg [N-1:0] Sum,
    output reg          Cout
);

    // Task performs the ripple-carry addition behaviorally
    task automatic ripple_add;
        input  [N-1:0] a, b;
        input          cin;
        output [N-1:0] sum;
        output         cout;
        integer i;
        reg carry;
        reg [N-1:0] temp_sum;
        begin
            carry = cin;
            for (i = 0; i < N; i = i + 1) begin
                temp_sum[i] = a[i] ^ b[i] ^ carry;
                carry       = (a[i] & b[i]) | (b[i] & carry) | (a[i] & carry);
            end
            sum  = temp_sum;
            cout = carry;
        end
    endtask

    always @(*) begin
        ripple_add(A, B, Cin, Sum, Cout);
    end

endmodule

//======================================================
// Testbench
//======================================================
module tb_ripple_carry_adder;
    parameter N = 4;
    reg  [N-1:0] A, B;
    reg          Cin;
    wire [N-1:0] Sum;
    wire         Cout;

    ripple_carry_adder #(N) DUT (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        $display("  A     B   Cin | Sum  Cout");
        A = 4'b0011; B = 4'b0001; Cin = 0; #10;
        $display("%b  %b   %b  |  %b   %b", A, B, Cin, Sum, Cout);

        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        $display("%b  %b   %b  |  %b   %b", A, B, Cin, Sum, Cout);

        A = 4'b0110; B = 4'b0101; Cin = 1; #10;
        $display("%b  %b   %b  |  %b   %b", A, B, Cin, Sum, Cout);

        $finish;
    end
endmodule