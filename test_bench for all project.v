
`timescale 1 ps/ 1 ps
module FullEncoderDecoder();

reg RST;
reg clk;
reg shift;
reg sl_inn;
// wires                                               
wire sl_out;

                        
ALL1 i1 (

	.RST(RST),
	.clk(clk),
	.shift(shift),
	.sl_inn(sl_inn),
	.sl_out(sl_out)
);
initial 
begin 
#50000000 $stop;
end 

// RST
initial
begin
	RST = 1'b0;
end 

// clk
always
begin
	clk = 1'b0;
	clk = #500000 1'b1;
	#500000;
end 

// shift
initial
begin
	shift = 1'b1;
end 

// sl_inn
initial
begin
	sl_inn = 1'b1;
	sl_inn = #1000000 1'b0;
	sl_inn = #2000000 1'b1;
	sl_inn = #1000000 1'b0;
	sl_inn = #1000000 1'b1;
	sl_inn = #4000000 1'b0;
	sl_inn = #1000000 1'b1;
	sl_inn = #1000000 1'b0;
end 
endmodule

