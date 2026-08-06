
module mux4x1_struc_modelling(a0,a1,a2,a3,s0,s1,y1);
input a0,a1,a2,a3,s0,s1;
output y1;
wire w1,w2;
mux2x1 m1 (w1,a0,a1,s0);
mux2x1 m2 (w2,a2,a3,s0);
mux2x1 m3 (y1,w1,w2,s1);
endmodule


