module xnor_gate_tb();
reg a,b;
wire y;
xnor_gate dut(a,b,y);
initial begin
	$monitor("a=%od, b=%0d, y=%0d", a,b,y);
	a=1'b0; b=1'b0;
	#2 a=1'b0; b=1'b1;
	#2 a=1'b1; b=1'b0;
	#2 a=1'b1; b=1'b1;
end
endmodule
