module one_bit_comparator_gatelevel(a,b,L,E,G);
input a,b;
output L,E,G;
not n1 (w1 ,a);
not n2 (w2,b);
and a1 (L,w1,b);
xnor xn1 (E,a,b);
and a2 (G,a,w2);
endmodule


