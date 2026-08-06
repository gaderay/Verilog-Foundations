module mux2x1_bhv_modelling (a,b,s,y);
input a,b,s;
output y;
reg y;
always@(*)begin
y=s?b:a;
end
endmodule
