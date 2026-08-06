module nand_gate_gatelevel(a,b,y);
input a,b;
output y;
nand na1 (y,a,b); //~(a&b)
endmodule
