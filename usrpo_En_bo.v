module usrpo_En_bo #( parameter width =11 )
(input clk,
input RST,
input shift,
input load,
input sl_in,
input [width-1:0] par_load,
output [width-1:0] data_out);

reg [width-1:0] storage;



always @(posedge clk) 
	begin
		if (RST)
			storage<=0;
		else if(shift)
			storage <= {sl_in, data_out[width-1:1]};
		else if(load)
			storage <= par_load;
			
			
	end
	
	
	assign data_out = storage ;
endmodule
	
