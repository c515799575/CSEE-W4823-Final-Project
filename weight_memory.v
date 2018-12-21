
module weight_memory(datain,pixel_addr,neural_addr,wt,rd,clk,data_0,data_1,data_2,data_3,data_4,data_5,data_6,data_7,data_8,data_9,data_10,data_11,data_12,data_13,data_14,data_15,data_16,data_17,data_18,data_19);

parameter bit_number=8;

parameter pixel_number=784;

parameter neural_number=20;

input [bit_number-1:0] datain;

output reg[bit_number-1:0] data_0;
output reg[bit_number-1:0] data_1;
output reg[bit_number-1:0] data_2;
output reg[bit_number-1:0] data_3;
output reg[bit_number-1:0] data_4;
output reg[bit_number-1:0] data_5;
output reg[bit_number-1:0] data_6;
output reg[bit_number-1:0] data_7;
output reg[bit_number-1:0] data_8;
output reg[bit_number-1:0] data_9;
output reg[bit_number-1:0] data_10;
output reg[bit_number-1:0] data_11;
output reg[bit_number-1:0] data_12;
output reg[bit_number-1:0] data_13;
output reg[bit_number-1:0] data_14;
output reg[bit_number-1:0] data_15;
output reg[bit_number-1:0] data_16;
output reg[bit_number-1:0] data_17;
output reg[bit_number-1:0] data_18;
output reg[bit_number-1:0] data_19;

input [9:0] pixel_addr;

input [4:0] neural_addr;

input wt;

input rd;

input clk;

reg [bit_number-1:0] SRAM [pixel_number-1:0][neural_number-1:0];

always@(posedge clk)

    begin

    if (wt==1'b1&&rd==1'b0)

        begin

        SRAM[pixel_addr][neural_addr]=datain;

        end

    else if(wt==1'b0&&rd==1'b1)

        begin

        data_0=SRAM[pixel_addr][0];
        data_1=SRAM[pixel_addr][1];
        data_2=SRAM[pixel_addr][2];
        data_3=SRAM[pixel_addr][3];
        data_4=SRAM[pixel_addr][4];
        data_5=SRAM[pixel_addr][5];
        data_6=SRAM[pixel_addr][6];
        data_7=SRAM[pixel_addr][7];
        data_8=SRAM[pixel_addr][8];
        data_9=SRAM[pixel_addr][9];
        data_10=SRAM[pixel_addr][10];
        data_11=SRAM[pixel_addr][11];
        data_12=SRAM[pixel_addr][12];
        data_13=SRAM[pixel_addr][13];
        data_14=SRAM[pixel_addr][14];
        data_15=SRAM[pixel_addr][15];
        data_16=SRAM[pixel_addr][16];
        data_17=SRAM[pixel_addr][17];
        data_18=SRAM[pixel_addr][18];
        data_19=SRAM[pixel_addr][19];

        end

    else

        begin

        end

    end

 

 

endmodule