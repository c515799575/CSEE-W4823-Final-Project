module bias_adder(neural,bias,result,clk);
input[24:0]neural;
input[9:0]bias;
input clk;
output reg[24:0]result;
always@(posedge clk)
begin
result<=neural+bias;
end
endmodule
