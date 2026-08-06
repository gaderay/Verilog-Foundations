module half_subtractor_bhv_modelling(a,b,diff,borrow);
input a,b;
output diff,borrow;
reg diff,borrow;
always@(*)begin
	diff=a^b;
	borrow=~a&b;
end
endmodule
