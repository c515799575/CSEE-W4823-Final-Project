module pts(datain0,datain1,datain2,datain3,datain4,datain5,datain6,datain7,datain8,datain9,datain10,datain11,datain12,datain13,datain14,datain15,datain16,datain17,datain18,datain19,dataout,clk,load,out);
input [24:0] datain0;
input [24:0] datain1;
input [24:0] datain2;
input [24:0] datain3;
input [24:0] datain4;
input [24:0] datain5;
input [24:0] datain6;
input [24:0] datain7;
input [24:0] datain8;
input [24:0] datain9;
input [24:0] datain10;
input [24:0] datain11;
input [24:0] datain12;
input [24:0] datain13;
input [24:0] datain14;
input [24:0] datain15;
input [24:0] datain16;
input [24:0] datain17;
input [24:0] datain18;
input [24:0] datain19;
input load,out;
input clk;
output reg[24:0] dataout;
reg[24:0]data_buffer[19:0];
reg[4:0]i;
always@(posedge clk)
begin
if(load==1)
begin
data_buffer[0]<=datain0;
data_buffer[1]<=datain1;
data_buffer[2]<=datain2;
data_buffer[3]<=datain3;
data_buffer[4]<=datain4;
data_buffer[5]<=datain5;
data_buffer[6]<=datain6;
data_buffer[7]<=datain7;
data_buffer[8]<=datain8;
data_buffer[9]<=datain9;
data_buffer[10]<=datain10;
data_buffer[11]<=datain11;
data_buffer[12]<=datain12;
data_buffer[13]<=datain13;
data_buffer[14]<=datain14;
data_buffer[15]<=datain15;
data_buffer[16]<=datain16;
data_buffer[17]<=datain17;
data_buffer[18]<=datain18;
data_buffer[19]<=datain19;
i=0;
end
if(load==0&&out==1)
begin
if (i<20)
begin
dataout<=data_buffer[i];
i<=i+1;
end
end
end
endmodule



