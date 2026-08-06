module demu1x4_struc_modelling_tb();
reg a,s0,s1;
wire y0,y1,y2,y3;
demux1x4_struc_modelling dut(a,s0,,s1,y0,y1,y2,y3);
initial begin
	$monitor("a=%0d, s0=%0d, s1=%0d,y0=%0d, y1=%0d,y2=%0d,y3=%0d",a,s0,s1,y0,y1,y2,y3);
	a=0; s0=0; s1=0;
	#2 a=0; s0=0; s1=1;
	#2 a=0; s0=1; s1-0;
        #2 a=0; s0=1; s1=1;
	#2 a=1; s0=0; s1=0;
	#2 a=1; s0=0; s1=1;
	#2 a=1; s0=1; s1=0;
	#2 a=1; s0=1; s1=1;

end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,demux1x4_struc_modelling_tb);
end
endmodule
