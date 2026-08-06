module enc4x2_gatelevel_tb();
reg a1,a2,a3,a4;
wire y0,y1;
enc4x2_gatelevel dut(a1,a2,a3,a4,y0,y1);
initial begin
$monitor("a1=%0d,a2=%0d,a3=%0d,a4=%0d, y0=%0d, y1=%0d",a1,a2,a3,a4,y0,y1);
a1=0; a2=0; a3=0; a4=0;
#2 a1=0; a2=0; a3=0; a4=1;
#2 a1=0; a2=0; a3=1; a4=0;
#2 a1=0; a2=0; a3=1; a4=1;
#2 a1=0; a2=1; a3=0; a4=0;
#2 a1=0; a2=1; a3=0; a4=1;
#2 a1=0; a2=1; a3=1; a4=0;
#2 a1=0; a2=1; a3=1; a4=1;
#2 a1=1; a2=0; a3=0; a4=0;
#2 a1=1; a2=0; a3=0; a4=1;
#2 a1=1; a2=0; a3=1; a4=0;
#2 a1=1; a2=0; a3=1; a4=1;
#2 a1=1; a2=1; a3=0; a4=0;
#2 a1=1; a2=1; a3=0; a4=1;
#2 a1=1; a2=1; a3=1; a4=0;
#2 a1=1; a2=1; a3=1; a4=1;

end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,enc4x2_gatelevel_tb);
end
endmodule















