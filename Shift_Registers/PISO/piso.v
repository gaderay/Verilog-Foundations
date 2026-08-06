module piso(clk,pi,mode,sout);

input clk,mode;
input [3:0] pi;
output sout;

reg [3:0] q;

always @(posedge clk)
begin
    if(mode==0) //parallel loading
        q<=pi;
    else
    begin       //serial output
        q[3]<=1'bx;
        q[2]<=q[3];
        q[1]<=q[2];
        q[0]<=q[1];
    end
end

assign sout=q[0];
endmodule
