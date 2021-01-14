
`timescale 1 ps/ 1 ps
module OUT_vlg_vec_tst();

reg RST;
reg clk;
reg shift;
reg sl_in;
// wires                                               
wire counterout;
wire [10:0] decoout;
wire [20:0] reg1out;
wire [10:0] reg2out;
wire sl_out;

                  
OUT i1 (
	.RST(RST),
	.clk(clk),
	.counterout(counterout),
	.decoout(decoout),
	.reg1out(reg1out),
	.reg2out(reg2out),
	.shift(shift),
	.sl_in(sl_in),
	.sl_out(sl_out)
);
initial 
begin 
#40000000 $stop;
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
	sl_in = #1500000 1'b0;
	sl_in = #1500000 1'b1;
	sl_in = #1000000 1'b0;
	sl_in = #500000 1'b1;
	sl_in = #1500000 1'b0;
	sl_in = #1000000 1'b1;
	sl_in = #500000 1'b0;
end 
endmodule

