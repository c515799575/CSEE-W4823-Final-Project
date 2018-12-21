
module compare(datain0,datain1,datain2,datain3,datain4,datain5,datain6,datain7,datain8,datain9,max_number,clk,en);

parameter datain_size=25;

input [datain_size-1:0] datain0;

input [datain_size-1:0] datain1;

input [datain_size-1:0] datain2;

input [datain_size-1:0] datain3;

input [datain_size-1:0] datain4;

input [datain_size-1:0] datain5;

input [datain_size-1:0] datain6;

input [datain_size-1:0] datain7;

input [datain_size-1:0] datain8;

input [datain_size-1:0] datain9;


output reg [3:0]max_number;

wire [datain_size-1:0] datain[19:0];

reg[datain_size-1:0] max_value;

input clk;


input en;

reg [3:0]i;

assign datain[0]=datain0;

assign datain[1]=datain1;

assign datain[2]=datain2;

assign datain[3]=datain3;

assign datain[4]=datain4;

assign datain[5]=datain5;

assign datain[6]=datain6;

assign datain[7]=datain7;

assign datain[8]=datain8;

assign datain[9]=datain9;

always@(posedge clk)

begin

if(en==1)

begin

max_number=4'b0;

max_value=8'b0;

for (i=0;i<10;i=i+1)

begin

if (datain[i]>max_value)

begin

max_value=datain[i];

max_number=i;

end

else

begin

end

end

end

end

endmodule