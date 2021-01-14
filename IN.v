module IN
(
input clk,
input RST,
input sl_in,
input shift,
output data_out,
output [14:0] datall,
output countfull,
output [14:0] finalout,
output [14:0] hammingout
);


// reg4bit

wire [14:0]data_out1;
usrpo_En_bo usrpo_En_bonus
(
 .clk(clk),
 .RST(RST),
 .shift(shift),
 .load(0),
 .sl_in(sl_in),
 .par_load(0),
 .data_out(data_out1)
);
assign datall=data_out1;

// Encoder
wire [14:0]data_out2;
encoder_bo Encoder_bonus
(
  .data_in(data_out1), 
  .data_out(data_out2)
);
assign hammingout =data_out2;

// counter
wire isfulll;
counter_En_bo counter_En_bonus(
  .clk(clk),
  .en(shift),
  .isfull(isfulll)
);
assign countfull =isfulll;

// reg7bit
wire [14:0]data_out3;
usr_En_bo usr_En_bonus
(
 .clk(clk),
 .RST(RST),
 .shift(1),
 .load(isfulll),
 .sl_in(0),
 .par_load(data_out2),
 .data_out(data_out3)
 );
 assign finalout=data_out3;

 assign data_out= data_out3[0];
 endmodule
 
