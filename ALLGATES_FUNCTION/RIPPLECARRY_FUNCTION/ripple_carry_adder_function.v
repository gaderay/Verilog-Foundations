module ripple_carry_adder_function(
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output reg [3:0] Sum,
    output reg       Cout
);

reg c1, c2, c3;
reg [1:0] temp;

//---------------------------------------------------
// Function Definition
// Returns:
//   temp[0] = Sum
//   temp[1] = Carry
//---------------------------------------------------
function [1:0] full_adder;

    input a;
    input b;
    input cin;

    begin
        full_adder[0] = a ^ b ^ cin;
        full_adder[1] = (a & b) | (cin & (a ^ b));
    end

endfunction


//---------------------------------------------------
// Ripple Carry Adder Logic
//---------------------------------------------------
always @(*) begin

    // Bit 0
    temp = full_adder(A[0], B[0], Cin);
    Sum[0] = temp[0];
    c1     = temp[1];

    // Bit 1
    temp = full_adder(A[1], B[1], c1);
    Sum[1] = temp[0];
    c2     = temp[1];

    // Bit 2
    temp = full_adder(A[2], B[2], c2);
    Sum[2] = temp[0];
    c3     = temp[1];

    // Bit 3
    temp = full_adder(A[3], B[3], c3);
    Sum[3] = temp[0];
    Cout   = temp[1];

end

endmodule