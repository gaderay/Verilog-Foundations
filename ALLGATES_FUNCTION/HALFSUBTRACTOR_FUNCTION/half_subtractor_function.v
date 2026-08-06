module half_subtractor_function(

    input  A,
    input  B,

    output reg Difference,
    output reg Borrow

);

//----------------------------------------
// Function
// function[0] = Difference
// function[1] = Borrow
//----------------------------------------

function [1:0] half_sub;

input A;
input B;

begin

    half_sub[0] = A ^ B;
    half_sub[1] = (~A) & B;

end

endfunction

reg [1:0] temp;

//----------------------------------------

always @(*) begin

    temp = half_sub(A,B);

    Difference = temp[0];
    Borrow     = temp[1];

end

endmodule