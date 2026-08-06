module rectangle #(parameter LENGTH = 10,WIDTH = 5)(output area);

assign area = LENGTH * WIDTH;

endmodule

module tb;

wire area1;
wire area2;

rectangle dut1 (.area(area1));

rectangle #(.LENGTH(20),.WIDTH(4)) dut2 (.area(area2));

initial begin

$display("DUT1 -> LENGTH=%0d WIDTH=%0d AREA=%0d",
dut1.LENGTH, dut1.WIDTH, area1);

$display("DUT2 -> LENGTH=%0d WIDTH=%0d AREA=%0d",
dut2.LENGTH, dut2.WIDTH, area2);

#10;
$finish;

end

endmodule

// module rectangle #(parameter LENGTH = 10,WIDTH = 5)(output area);

// assign area = LENGTH * WIDTH;

// endmodule

// module tb;

// reg wire area1;
// wire integer area2;

// rectangle dut1 (.area(area1));

// rectangle #(.LENGTH(20),.WIDTH(4)) dut2 (.area(area2));

// initial begin

// $display("DUT1 -> LENGTH=%0d WIDTH=%0d AREA=%0d",
// dut1.LENGTH, dut1.WIDTH, area1);

// $display("DUT2 -> LENGTH=%0d WIDTH=0d AREA=%0d",
// dut2.LENGTH, dut2.WIDTH, area2);

// #10;
// $finish;

// end

// endmodule


//another example on parameter

module rectangle #(parameter LENGTH=6, WIDTH=3)(output integer area);

assign area = LENGTH * WIDTH;

endmodule 

module tb;
	wire integer area1;
	wire integer area2;

	rectangle dut1(.area(area1));
	
	reactagle dut2 #(.LENGTH = 10, WIDTH= 5,)(.area(.area2));

	initial begin
endmodule



