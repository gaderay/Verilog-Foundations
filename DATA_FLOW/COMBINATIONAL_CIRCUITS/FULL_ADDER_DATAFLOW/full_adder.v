module full_adder(a,b,Cin,sum,carry);
input a,b,Cin;
output sum,carry;
assign sum=(a^b^Cin);
assign carry=((a&b)|Cin&(a^b));
endmodule
