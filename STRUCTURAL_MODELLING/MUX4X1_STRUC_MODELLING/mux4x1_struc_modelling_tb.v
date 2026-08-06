module mux4x1_struc_modelling_tb();
reg a0,a1,a2,a3,s0,s1;
wire y1;
mux4x1_struc_modelling dut(a0,a1,a2,a3,s0,s1,y1);
initial begin
	repeat(64)
	begin
	$monitor("a0=%0d, a1=%0d,a2=%0d,a3=%0d s0=%0d,s1=%0d, y1=%0d",a0,a1,a2,a3,s0,s1,y1);
	{a0,a1,a2,a3,s0,s1}=$random;
	#10;
end
end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,mux4x1_struc_modelling_tb);
end

endmodule
