module half_subtractor (a,b,diff,borrow);
input a,b;
output diff,borrow;
not n1 (w1,a);// ~a
xor x1 (diff, a,b);
and a1 (borrow, w1,b);
endmodule


