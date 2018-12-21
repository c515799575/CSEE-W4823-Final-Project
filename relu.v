
module Relu(data_input,data_output,en,clk);

parameter data_size=25;

input [data_size-1:0] data_input;

output reg[data_size-1:0] data_output;

input clk;

input en;

always@(posedge clk)

begin

if(en==1)

begin

if(data_input<0)

begin

data_output<=0;

end

else

begin

data_output<=data_input;

end

end

else

begin

end

end

endmodule