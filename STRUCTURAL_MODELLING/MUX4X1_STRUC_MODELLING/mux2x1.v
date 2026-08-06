module mux2x1 (a0,a1,s,y1);
input a0,a1,s;
output y1;
assign y1=s?a1:a0;
endmodule

