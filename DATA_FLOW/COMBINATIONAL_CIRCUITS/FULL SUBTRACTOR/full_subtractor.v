module full_subtractor(a,b,cin,diff,borrow);
input a,b,cin;
output diff, borrow;
assign diff=(a^b^cin);
assign borrow=((~a&b)|cin&(a^b));
endmodule
