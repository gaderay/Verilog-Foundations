module full_subtractor_bhv_modelling (a,b,cin,diff,borrow);
input a,b,cin;
output borrow,diff;
reg borrow,diff;
always@(*)begin
diff=(a^b);
borrow=(~a&b);
end
endmodule
