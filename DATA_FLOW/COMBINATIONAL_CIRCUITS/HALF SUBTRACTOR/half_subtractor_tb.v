module half_subtractor_tb();
reg a,b;
wire diff, borrow;
half_subtractor dut(a,b,diff,borrow);
initial begin
	$monitor("a=%0d,b=%0d,diff=%0d,borrow=%0d",a,b,diff,borrow);
	a=0; b=0;
	#2 a=0; b=1;
	#2 a=1; b=0;
	#2 a=1; b=1;
end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,half_subtractor_tb);
end
endmodule

