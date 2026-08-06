module full_add(
    input A, B, Cin,
    output reg Sum, Carry
);

reg [1:0] ha1, ha2;

// Half Adder Function
function [1:0] half_adder;
    input a, b;
    begin
        half_adder = {a & b, a ^ b};
    end
endfunction

always @(*) begin

    ha1 = half_adder(A, B);
    ha2 = half_adder(ha1[0], Cin);

    Sum   = ha2[0];
    Carry = ha1[1] | ha2[1];

end

endmodule