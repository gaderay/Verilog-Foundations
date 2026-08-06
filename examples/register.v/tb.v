module ram(clk, rst, w_r, add, data_in, data_out);
input clk,rst,w_r;
input [3:0]add;
input [7:0]data_in;
output reg [7:0]data_out;

reg [7:0]ram[15:0];

always @(posedge clk)
begin
if(rst == 0)
begin
data_out <= 0;

else if(rst == 1 && w_r == 1)
begin
ram[add] <= data_in;

else if(rst == 1 && w_r == 0)
begin
data_out <= ram[add];

end

end

end

end
endmodule