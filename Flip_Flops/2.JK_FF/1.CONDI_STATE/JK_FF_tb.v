module JK_FF_tb;
	reg j, k, clk, rst;
	wire q;
JK_FF Dut(
	   .j(j), .k(k), .clk(clk), .rst(rst), .q(q) 
		);
initial begin
	 $monitor ("%0t, j=%0d, k=%0d, clk=%0d, rst=%0d, q=%0d", $time, j, k, clk, rst, q); 
end

//clock generation
initial begin
	forever #5 clk = ~clk;
   end

initial begin
	clk = 0; rst = 0;
   #15 rst = 1;
    j = 0; k = 0;
	
   #10 j = 0; k = 1;
   #10 j = 1; k = 0;
   #10 j = 1; k = 1;
   #10 $finish;

end

initial begin
	$dumpfile("dump.vcd");
	$dumpvars(0,JK_FF_tb);
end
endmodule
