module not_gate(a,y);
input a;
output y;
reg y;
always@(*) begin
	y=~(a);
end
endmodule
