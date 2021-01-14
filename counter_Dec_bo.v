module counter_Dec_bo(
input clk,
input en,
output isfull
);
reg [4:0] count;
always @(posedge clk) 
	begin
		count <= count + 1;
		if(count == 22)
		count <= 0;
	end
assign isfull = (count >= 5'b10110)? 1: 0;
endmodule
