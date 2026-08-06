module full_subtractor_gatelevel(a,b,cin,diff,borrow);
input a,b,cin;
output diff,borrow;
not n1 (w1,a);
xor x1 (w2, a,b);
xor x2 (diff, w2,cin);
and a1 (w3,w1,b);
and a2 (w4, cin ,w2);
or or1 (diff, w3,w4);
endmodule


