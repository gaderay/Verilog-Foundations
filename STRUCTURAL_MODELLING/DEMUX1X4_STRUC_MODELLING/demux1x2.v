module demux1x2(a,s.y0,y1);
input a,s;
output y0,y1;
assign y0=~s&a;
assign y1=s&a;
endmodule


