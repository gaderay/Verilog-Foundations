module xnor_gatelevel(a,b,y);
input a,b;
output y;
xnor xn1 (y, a,b); //(a^b);
endmodule
