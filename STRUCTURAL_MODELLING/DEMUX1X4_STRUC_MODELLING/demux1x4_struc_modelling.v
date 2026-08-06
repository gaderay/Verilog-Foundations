
module demux1x4_struc_modelling (a,s0.s1.yo,y1,y2,y3);
input a,s0,s1;
output y0,y1,y2,y3;
wire w1,w2;
demux1x2 demux1(w1,w2,a,s1);
demux1x2 demux2(y0,y1,w1,s0);
demux1x2 demux3(y2,y3,w2,s0);
endmodule



