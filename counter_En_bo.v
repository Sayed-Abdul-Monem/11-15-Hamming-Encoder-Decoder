module counter_En_bo(
input clk,
input en,
output isfull
);
reg [3:0] count;
always @(posedge clk) 
	begin
		count <= count + 1;
		if(count == 11)
		count <= 0;
	end
assign isfull = (count >= 4'b1011)? 1: 0;
endmodule
