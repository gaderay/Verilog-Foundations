module enc4x2_gatelevel(a0,a1,a2,a3,y0,y1);
input a0,a1,a2,a3;
output y0,y1;
or or1 (y0, a1,a3);
or or2 (y1, a2,a3);
endmodule
