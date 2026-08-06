module xnor_gate(a,b,y);
input a,b;
output y;
reg y;
always@(*)begin
	y=~(a^b);
end
endmodule
