module half_subtractor_gatelevel(a,b,diff,borrow);
input a,b;
output diff,borrow;
xor x1 (dif,a,b);
not n1 (w1,a);
and a1 (borrow, w1,b);
endmodule
