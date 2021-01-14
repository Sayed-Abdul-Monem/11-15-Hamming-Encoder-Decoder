

`timescale 1 ps/ 1 ps
module IN_vlg_vec_tst();

reg RST;
reg clk;
reg shift;
reg sl_in;
// wires                                               
wire countfull;
wire data_out;
wire [10:0] datall;
wire [14:0] finalout;
wire [14:0] hammingout;

                        
IN i1 (

	.RST(RST),
	.clk(clk),
	.countfull(countfull),
	.data_out(data_out),
	.datall(datall),
	.finalout(finalout),
	.hammingout(hammingout),
	.shift(shift),
	.sl_in(sl_in)
);
initial 
begin 
#30000000 $stop;
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

// sl_in
initial
begin
	sl_in = 1'b1;
	sl_in = #1000000 1'b0;
	sl_in = #2000000 1'b1;
	sl_in = #1000000 1'b0;
	sl_in = #1000000 1'b1;
	sl_in = #4000000 1'b0;
	sl_in = #1000000 1'b1;
	sl_in = #1000000 1'b0;
end 
endmodule

