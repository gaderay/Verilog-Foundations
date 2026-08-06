module not_gatelevel_tb();
reg a;
wire y;
not_gatelevel dut(a,y);
initial begin
	$monitor("a=%0d,y=%0d",a,y);
	a=1'b0;
	#2 a=1'b1;
end 
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,not_gatelevel_tb);
end
endmodule
