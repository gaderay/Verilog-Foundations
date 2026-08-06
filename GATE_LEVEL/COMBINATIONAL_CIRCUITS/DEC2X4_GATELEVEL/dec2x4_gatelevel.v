module dec2x4_gatelevel(a,b,y0,y1,y2,y3);
input a,b;
output y0,y1,y2,y3;
not n1 (w1, a);
not n2 (w2, b);
and a1 (y0,w1,w2);
and a2 (y1, w1,b);
and a3 (y2, a, w2);
and a4 (y3,a,b);
endmodule
