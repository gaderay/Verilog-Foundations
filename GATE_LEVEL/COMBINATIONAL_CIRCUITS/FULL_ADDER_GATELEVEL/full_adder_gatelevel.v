module full_adder_gatelevel(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
xor x1 (w1,a,b); //a^b
xor x2 (sum, w1,cin);// a^b^cin
and a1 (w2, a,b);// a&b
and a2 (w3, cin,w1);// cin(a^b)
or or1 (carry, w2,w3);//a&b | cin(a^b)
endmodule


