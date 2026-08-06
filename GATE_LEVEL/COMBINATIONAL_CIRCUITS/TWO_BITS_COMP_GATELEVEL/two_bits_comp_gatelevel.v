module two_bits_comp_gatelevel (a0,a1,b0,b1,L,E,G);
input a0,a1,b0,b1;
output L,E,G;
not n1 (w1, a0); //~a0
not n2(w2,a1); //~a1
not n3 (w3,b0); //~b0
not n4 (w4,b1); //~b1
and a2 (w5, w2,b1);
and a3 (w6, w1,w2,b0);
and a4 ( w7, w1,b1,b0);
or or1 (L, w5,w6,w7);
xnor xn1 (w8, a0,b0);
xnor xn2 (w9, a1,b1);
and a5 (E, w8,w9);
and a6 (w10, a1,w4);
and a7 (w11, a0,w3,w3);
and a8 (w12, a1,b0,w3);
or or2 (G, w10,w11,w12);
endmodule
