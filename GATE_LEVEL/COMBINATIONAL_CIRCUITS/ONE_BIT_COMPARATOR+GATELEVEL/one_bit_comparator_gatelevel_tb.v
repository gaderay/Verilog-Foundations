module one_bit_comparator_gatelevel_tb();
reg a,b;
wire L,E,G;
one_bit_comparator_gatelevel dut(a,b,L,E,G);
initial begin
	$monitor("a=%od,b=%0d,L=%0d,E=%0d,G=%0d",a,b,L,E,G);
	a=0; b=0;
	#2 a=0; b=1;
	#2 a=1; b=0;
	#2 a=1; b=1;
	end
	initial begin
		$fsdbDumpfile("dump.fsdb");
		$fsdbDumpvars(0,one_bit_comparator_gatelevel_tb);

	end
	endmodule
