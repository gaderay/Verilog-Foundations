module full_adder_bhv_modelling (a,b,Cin,sum,carry);
input a,b,Cin;
output sum,carry;
reg sum,carry;
always@(*)begin
sum=(a^b^Cin);
carry=(a&b)|Cin(a^b);
end
endmodule
