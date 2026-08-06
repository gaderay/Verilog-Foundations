module mux2x1_gatelevel(a,b,s,y);
input a,b,s;
output y;
not n1 (w1,s);
and a1 (w2, a,w1);
and a2 (w3,b,s);
or or1 (y, w2,w3);
endmodule
