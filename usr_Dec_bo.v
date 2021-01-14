module usr_Dec_bo #( parameter width =21 )
(input clk,
input RST,
input shift,
input load,
input sl_in,
input [width-1:0] par_load,
output [width-1:0] data_out);

reg [width-1:0] storage1;
reg [width-1:0] storage2;
reg a1,a2;

always @(posedge clk) 
	begin
		if (RST)
			storage1<=0;
		else if(load & (data_out != par_load))
			storage1 <= par_load;
		else if(shift)
			storage1 <= {sl_in, storage2[width-1:1]};
		
			
			a1=~a1;
	end
	always @(negedge clk) 
	begin
		if (RST)
			storage2<=0;
		else if(load & (data_out != par_load))
			storage2 <= par_load;
		else if(shift)
			storage2 <= {sl_in, storage1[width-1:1]};
		
			
			a2=~a2;
	end
	
	assign data_out =(a1^a2==1) ? storage1:storage2 ;
endmodule
	
