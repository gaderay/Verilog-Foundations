module JK_FF(input j,k,clk,rst,output reg q);

always@ (posedge clk)begin
	case({j,k})

	2'b00:q <= q ;//no change
	2'b01: q <= 1'b0;//reset
	2'b10: q <= 1'b1;//set
	2'b11: q <= ~q; //toggle
default: q <= q;
   endcase
end
endmodule
