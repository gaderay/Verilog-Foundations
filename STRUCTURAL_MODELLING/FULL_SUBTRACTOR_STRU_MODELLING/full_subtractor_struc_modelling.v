
module full_subtractor_struc_modelling (a,b,cin,diff,borrow);
input a,b,cin;
output diff,borrow;
half_subtractor hs1 ( w2,w3,a,b);
half_subtractor hs2 (diff,w4,w2,cin);
or or1(borrow,w3,w4);
endmodule



