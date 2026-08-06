module full_subtractor_function(

    input  A,
    input  B,
    input  Bin,

    output reg Difference,
    output reg Borrow

);

//---------------------------------------------
// Function
// function[0] = Difference
// function[1] = Borrow
//---------------------------------------------

function [1:0] full_sub;

input A;
input B;
input Bin;

begin

    // Difference
    full_sub[0] = A ^ B ^ Bin;

    // Borrow
    full_sub[1] = (~A & B) |
                  (~A & Bin) |
                  (B & Bin);

end

endfunction

reg [1:0] temp;

//---------------------------------------------

always @(*) begin

    temp = full_sub(A,B,Bin);

    Difference = temp[0];
    Borrow     = temp[1];

end

endmodule