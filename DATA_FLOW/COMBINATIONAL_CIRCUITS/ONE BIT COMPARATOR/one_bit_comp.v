module one_bit_comp(a,b,L,E,G);
input a,b;
output L,E,G;
assign L=(~a&b); //(a<b)
assign E=~(a^b); //(a=b)
assign G=(a&~b); //(a>b)
endmodule


