module full_adder_structural_modelling_tb();
reg a,b,Cin;
wire sum,carry;
full_adder_structural_modelling dut(a,b,Cin,sum,carry);
initial begin
$monitor("a=%0d,b=%0d,Cin=%0d,sum=%0d,carry=%0d",a,b,Cin,sum,carry);
a=0; b=0; Cin=0;
#2 a=0; b=0; Cin=1;
#2 a=0; b=1; Cin=0;
#2 a=0; b=1; Cin=1;
#2 a=1; b=0; Cin=0;
#2 a=1; b=0; Cin=1;
#2 a=1; b=1; Cin=0;
end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,full_adder_structural_modelling_tb);
end
endmodule



