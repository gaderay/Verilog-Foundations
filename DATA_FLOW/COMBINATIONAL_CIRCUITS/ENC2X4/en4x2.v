module en4x2(a1,a2,a3,a4,y0,y1);
input a1,a2,a3,a4;
output y0, y1;
assign y0=a1|a3;
assign y1=a2|a3;
endmodule
