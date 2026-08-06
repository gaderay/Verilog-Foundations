module dec2x4_tb();
reg a,b;
wire y0,y1,y2,y3;
dec2x4 dut(a,b,y0,y1,y2,y3);
initial begin
	$monitor("a=%0d,b=%0d,y0=%0d,y1=%0d,y2=%0d,y3=%0d",a,b,y0,y1,y2,y3);a=0;b=0;
	#2 a=0; b=1;
	#2 a=1; b=0;
	#2 a=1; b=1;
end
endmodule
