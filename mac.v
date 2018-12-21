module mac(inputa,inputb,final_result,clk,clr,en);

parameter inputa_size=8;

parameter inputb_size=10;

input[inputa_size-1:0] inputa;

input[inputb_size-1:0] inputb;

output reg [24:0] final_result;
wire [9:0]b,b0;
wire [24:0] product;
input en,clk,clr;
assign b=~inputb+1;
assign b0=inputb[9]?b:inputb;
assign product=inputa*b0;
always@(posedge clk)

begin

if(clr==1)

begin
final_result=25'b0;
end

else if(en==1'b1&&clr==1'b0)
begin
if(inputb[inputb_size-1]==0)
begin
final_result<=final_result+product;
end
else if(inputb[inputb_size-1]==1)
begin
final_result<=final_result-product;
end
end

else

begin

end

end

endmodule