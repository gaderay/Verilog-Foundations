
module and_gate_tb();
reg a,b;
wire y;
and_gate dut(a,b,y);
initial begin
	$monitor("a=%0d, b=%0d, y=%d",a,b,y);
	a=1'b0; b='b0;
	#2 a=1'b0; b=1'b1;
	#2 a=1'b1; b=1'b0;
	#2 a=1'b1; b='b1;
end
endmodule
