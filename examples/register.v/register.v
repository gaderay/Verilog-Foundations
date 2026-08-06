include"ram.v"
module tb;
reg clk,rst,w_r;
reg [3:0]add;
reg [7:0]data_in;
wire [7:0]data_out;

integer i;

ram dut(clk,rst,w_r,add,data_in,data_out);

always #2 clk =~ clk;

initial begin
clk=0; rst=0;
#6;
//@(posedge clk)
rst=1; w_r=1;

for(i=0;i<16;i=i+1)begin
@(posedge clk)
add=i;
data_in= $urandom;

#4;

end

w_r=0;
for(i=0;i<16;i=i+1)begin
@(posedge clk)
add=i:
end
end
endmodule