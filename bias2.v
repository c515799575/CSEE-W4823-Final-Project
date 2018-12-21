module bias2_memory(datain,dataout0,dataout1,dataout2,dataout3,dataout4,dataout5,dataout6,dataout7,dataout8,dataout9,addr,rd,wt,clk);
input [9:0]datain;
input [3:0]addr;
input rd,wt,clk;
output reg [9:0]dataout0;
output reg [9:0]dataout1;
output reg [9:0]dataout2;
output reg [9:0]dataout3;
output reg [9:0]dataout4;
output reg [9:0]dataout5;
output reg [9:0]dataout6;
output reg [9:0]dataout7;
output reg [9:0]dataout8;
output reg [9:0]dataout9;
reg[9:0]data[9:0];
always@(posedge clk)
begin
if(wt==1&&rd==0)
begin
data[addr]<=datain;
end
else if(wt==0&&rd==1);
begin
dataout0<=data[0];
dataout1<=data[1];
dataout2<=data[2];
dataout3<=data[3];
dataout4<=data[4];
dataout5<=data[5];
dataout6<=data[6];
dataout7<=data[7];
dataout8<=data[8];
dataout9<=data[9];
end
end
endmodule


