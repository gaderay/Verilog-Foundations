module mux2x1_bhv_modelling_tb();
reg a,b,s;
wire y;
mux2x1_bhv_modelling dut(a,b,s,y);
initial begin
	$monitor("a=%0d, b=%0d, s=%0d, y=%0d",a,b,s,y);
a=0; b=0; s=0;
#2  a=0; b=0; s=1;// 3 inputs,we have 8 combinations 
#2 a=0; b=1; s=0;
#2 a=0; b=1; s=1;
#2 a=1; b=0; s=0;
#2 a=1; b=0; s=1;
#2 a=1; b=1; s=0;
#2 a=1; b=1; s=1;
end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,mux2x1_bhv_modelling_tb);
end

endmodule
