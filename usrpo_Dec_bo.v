module usrpo_Dec_bo #( parameter width =11 )
(input clk,
input RST,
input shift,
input load,
input sl_in,
input [width-1:0] par_load,
output [width-1:0] data_out);

reg [width-1:0] storage;



always @(negedge clk) 
	begin
		if (RST)
			storage<=0;
		else if(load)
			storage <= par_load;
		else if(shift)
			storage <= {sl_in, data_out[width-1:1]};
		
			
			
	end
	
	
	assign data_out = storage ;
endmodule
	
