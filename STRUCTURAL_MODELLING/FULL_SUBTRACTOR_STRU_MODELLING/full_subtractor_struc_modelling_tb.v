module full_subtractor_struc_modelling_tb();
reg a,b,cin;
wire diff, borrow;
full_subtractor_struc_modelling dut(a,b,cin,diff,borrow);
initial begin
$monitor("a=%0d, b=%0d,cin=%0d,diff=%0d,borrow=%0d",a,b,cin,diff,borrow);
a=0; b=0; cin=0;
#2 a=0; b=0; cin=1;
#2 a=0; b=1; cin=0;
#2 a=0; b=1; cin=1;
#2 a=1; b=0; cin=0;
#2 a=1; b=0; cin=1;
#2 a=1; b=1; cin=0;
end
initial begin
 $fsdbDumpfile("dump.fsdb");
 $fsdbDumpvars(0,full_subtractor_struc_modelling_tb);
 end
 endmodule
