module bias_memory(datain,data0,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,addr,rd,wt,clk);
input [9:0]datain;
input rd,wt,clk;
input [4:0]addr;
output reg [9:0]data0;
output reg [9:0]data1;
output reg [9:0]data2;
output reg [9:0]data3;
output reg [9:0]data4;
output reg [9:0]data5;
output reg [9:0]data6;
output reg [9:0]data7;
output reg [9:0]data8;
output reg [9:0]data9;
output reg [9:0]data10;
output reg [9:0]data11;
output reg [9:0]data12;
output reg [9:0]data13;
output reg [9:0]data14;
output reg [9:0]data15;
output reg [9:0]data16;
output reg [9:0]data17;
output reg [9:0]data18;
output reg [9:0]data19;
reg[9:0]data[19:0];
always@(posedge clk)
begin
if(wt==1&&rd==0)
begin
data[addr]<=datain;
end
else if(wt==0&&rd==1);
begin
data0<=data[0];
data1<=data[1];
data2<=data[2];
data3<=data[3];
data4<=data[4];
data5<=data[5];
data6<=data[6];
data7<=data[7];
data8<=data[8];
data9<=data[9];
data10<=data[10];
data11<=data[11];
data12<=data[12];
data13<=data[13];
data14<=data[14];
data15<=data[15];
data16<=data[16];
data17<=data[17];
data18<=data[18];
data19<=data[19];
end
end
endmodule


