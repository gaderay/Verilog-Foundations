module mux4x1_function(

    input I0,
    input I1,
    input I2,
    input I3,

    input [1:0] S,

    output reg Y

);

//---------------------------------------------
// Function Definition
//---------------------------------------------
function mux;

input I0;
input I1;
input I2;
input I3;

input [1:0] S;

begin

    case(S)

        2'b00 : mux = I0;

        2'b01 : mux = I1;

        2'b10 : mux = I2;

        2'b11 : mux = I3;

        default : mux = 1'b0;

    endcase

end

endfunction

//---------------------------------------------

always @(*) begin

    Y = mux(I0,I1,I2,I3,S);

end

endmodule