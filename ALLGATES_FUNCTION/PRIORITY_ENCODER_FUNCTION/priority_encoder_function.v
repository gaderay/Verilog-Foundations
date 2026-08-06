module priority_encoder_function(

    input  [7:0] D,
    output reg [2:0] Y

);

//--------------------------------------
// Function Definition
//--------------------------------------
function [2:0] priority_encode;

input [7:0] D;

begin

    casex(D)

        8'b1xxxxxxx : priority_encode = 3'b111;

        8'b01xxxxxx : priority_encode = 3'b110;

        8'b001xxxxx : priority_encode = 3'b101;

        8'b0001xxxx : priority_encode = 3'b100;

        8'b00001xxx : priority_encode = 3'b011;

        8'b000001xx : priority_encode = 3'b010;

        8'b0000001x : priority_encode = 3'b001;

        8'b00000001 : priority_encode = 3'b000;

        default     : priority_encode = 3'b000;

    endcase

end

endfunction

//--------------------------------------

always @(*) begin

    Y = priority_encode(D);

end

endmodule