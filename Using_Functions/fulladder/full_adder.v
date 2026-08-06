module full_adder (input a,input b, input cin, output sum,output cout);

function reg [1:0] half_adder(input in1, in2);
	begin
		half_adder[0] = in1 ^ in2;
		half_adder[1] = in1 & in2;
	end
endfunction

reg [1:0] h1_result, h2_result;
wire sum1, carry1, carry2;

always @(*) begin
	h1_result = half_adder(a, b);
	h2_result = half_adder(h1_result[0], cin);
end

//first half_adder
assign sum1 = h1_result[0];
assign carry1 = h1_result[1];
assign carry2 = h2_result[1];

assign sum = h2_result[0];
assign cout = carry1 | carry2;
	
endmodule

//test bench
module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;

    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("a b cin | sum cout");
        $monitor("%b %b %b   |  %b   %b", a, b, cin, sum, cout);

        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        #20 $finish;
    end
endmodule
