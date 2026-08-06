module one_bit_comparator_bhv_modelling(a,b,L,E,G);
input a,b;
output L,E,G;
reg L,E,G;
always@(*)begin
	L= ~a&b;
	E= ~(a^b);
	G= a&~b;

		end
		endmodule


