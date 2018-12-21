module signal_control(finish_sign,pts_load,pts_out,weight2_rd,mac2_en,mac2_clr,bias2_rd,compare_en,clk);
input finish_sign,clk;
output reg pts_load,pts_out,weight2_rd,mac2_en,bias2_rd,mac2_clr,compare_en;
reg [5:0]counter;
always@(posedge clk)
begin
if(finish_sign==0)
begin
counter<=0;
end
else
begin
if(counter<40)
begin
counter=counter+1;
case (counter)
6'b000110:
begin
pts_load<=1;
pts_out<=0;
mac2_clr<=1;
mac2_en<=1;
end
6'b000111:
begin
pts_load<=0;
pts_out<=1;
weight2_rd<=1;
mac2_clr<=0;
end
6'b010001: 
begin
mac2_en<=0;
weight2_rd=0;
pts_out<=0;
end
6'b011001: 
begin
compare_en<=1;
end
endcase
end
else if(counter>40)
begin
end
end
end
endmodule


