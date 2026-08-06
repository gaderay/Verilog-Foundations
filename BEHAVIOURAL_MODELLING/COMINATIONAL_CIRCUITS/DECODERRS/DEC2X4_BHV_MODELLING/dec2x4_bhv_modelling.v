module dec2x4_bhv_modelling(a,b,y0,y1,y2,y3);
input a,b;
output y0,y1,y2,y3;
reg y0,y1,y2,y3;
always@(*)begin
	y0=(~a&~b);
	y1=(~a&b);
	y2=(a&~b);
	y3=(a&b);
end
endmodule
