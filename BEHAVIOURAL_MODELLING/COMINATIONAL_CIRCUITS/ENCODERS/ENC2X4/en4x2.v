module en4x2(a1,a2,a3,a4,y0,y1);
input a1,a2,a3,a4;
output y0, y1;
reg y0,y1;
always@(*)begin
	y0=a1|a3;
       	y1=a2|a3;
end
endmodule
