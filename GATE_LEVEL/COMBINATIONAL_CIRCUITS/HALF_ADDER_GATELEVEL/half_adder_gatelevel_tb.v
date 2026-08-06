module half_adder_gatelevel_tb();
 reg a,b;
 wire sum, carry;

 half_adder_gatelevel dut(a,b,sum,carry);
 initial begin
	 $monitor("a=%0d,b=%0d,sum=%0d,carry=%od",a,b,sum,carry);
	 a=1'b0; b=1'b0;
	 #2 a=1'b0; b=1'b1;
	 #2 a=1'b1; b=1'b0;
	 #2 a=1'b1; b=1'b1;
 end
 endmodule

