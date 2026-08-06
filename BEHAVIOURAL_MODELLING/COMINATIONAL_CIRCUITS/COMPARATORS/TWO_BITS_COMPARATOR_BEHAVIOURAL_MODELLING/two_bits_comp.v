module two_bits_comp(a0,a1,b0,b1,L,E,G);
input a0,a1,b0,b1;
output L,E,G;
reg L,E,G;
always@(*)begin
 L=((~a1&b1)|(~a1&~b1&b0) |(~a0&~b1&b0));
 E=( ~(a0^b0) & ~(a1^b1) );
 G=( a1&~b1 | a0&~b1&~b0 | a1&a0&~b0);
 end
endmodule

