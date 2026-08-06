module full_adder_structural_modelling (a,b,Cin,sum,carry);
input a,b,Cin;
output sum,carry;
wire( w1, w2,w3);
half_adder ha1(w1,w2,a,b);
half_adder ha2(sum,w3,w2, Cin);
or or1(carry ,w1,w3);
endmodule
