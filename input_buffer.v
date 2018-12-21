module input_buffer(input_data,output_data,clk,en);
parameter input_size=8;
input [input_size-1:0]input_data;
input clk;
input en;
output reg [input_size-1:0]output_data;
reg[input_size-1:0] buffer_data;
always@(posedge clk)
begin
if(en==1)
begin
output_data<=buffer_data;
buffer_data<=input_data;
end
else 
begin
buffer_data=8'b0;
output_data=8'b0;
end
end
endmodule


