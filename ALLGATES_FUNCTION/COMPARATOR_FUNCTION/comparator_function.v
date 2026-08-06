module comparator_function(

    input  [1:0] A,
    input  [1:0] B,

    output reg Greater,
    output reg Equal,
    output reg Less

);

//----------------------------------------------------
// Function
// comp[2] = Greater
// comp[1] = Equal
// comp[0] = Less
//----------------------------------------------------

function [2:0] comp;

input [1:0] A;
input [1:0] B;

begin

    if (A > B)
        comp = 3'b100;

    else if (A == B)
        comp = 3'b010;

    else
        comp = 3'b001;

end

endfunction

reg [2:0] temp;

//----------------------------------------------------

always @(*) begin

    temp = comp(A,B);

    Greater = temp[2];
    Equal   = temp[1];
    Less    = temp[0];

end

endmodule