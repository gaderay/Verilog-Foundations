module JK_FF(input j,k,clk,rst,output reg q);

always @(posedge clk) begin //triggers only at the rising egde

	if (rst==0)
		q<=0; // if rst is 0, output q is immediately forced to 0

	else if (j==0 && k==0)
		q<=q; //output stays same.

else if (j==0 && k==1)
	q<=0; //output is cleared to 0
else if (j==1 && k==0)
	q<=1; //output is set to 1
else q<= ~q; //toggle state

end
endmodule
