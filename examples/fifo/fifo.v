module sync_fifo(din,clk,rst,wn,rn,dout, full, empty);
input clk,rst,rn,wn;
input [7:0]din;
output reg [7:0]dout;
output full, empty;

reg [2:0] rp,wp;
reg [7:0] fifo [7:0];

assign full=((wp == 3'b111) && (rp == 3'b000) ? 1:0);
assign empty = (rp == wp) && ( !wn); // better

always @(posedge clk)
begin
if(rst)
begin
wp <= 0;rp <= 0;
dout <= 0;

else if(Ifull && wn)
begin
fifo[wp] <= din;
wp <= wp+1;
end
else if(!empty && rn)
begin
dout <= fifo[rp];
rp <= rp+1;
end

endmodule


// test bench
module sync_fifo_tb;
reg clk,rst,rn,wn;
reg [7:0]din;
wire [7:0]dout;
wire full, emptyB

always #5 clk =~ clk;
sync_fifo dut(din,clk,rst,wn,rn,dout, full,empty);
initial begin
$monitor("din=%b,clk=%b,rst=%b,wn=%b,rn=%b,dout=%b,full=0b,empty=%0b",din,clk,rst,wn,rn, dout, full, empty);
clk=0;rst=1;
#10;
rst=0;wn=1;rn=0;
din=8'b00000001;#10;
din=8'b00000010;#10;
din=8'b00000011;#10;
din=8'b00000100;#10;
din=8'b00000101;#10;
din=8'b00000110;#10;
din=8'b00000111;#10;
din=8'b00001000;#10;
wn=0;rn=1;
#180;
$finish;
end
endmodule
