module OUT
(
input RST,
input clk,
input sl_in,
input shift,
output sl_out,
output [20:0] reg1out,
output [10:0] decoout,
output counterout,
output [10:0] reg2out
);


// reg15bit
wire [20:0]data_out3;
wire [14:0]data_ouut3;
usr_Dec_bo usr_Dec_bonus
(
 .clk(clk),
 .RST(RST),
 .shift(1),
 .load(0),
 .sl_in(sl_in),
 .par_load(0),
 .data_out(data_out3)
 );
 assign reg1out =data_out3;
 assign data_ouut3=data_out3[14:0];
 
 // decoder
 wire [10:0] decout;
 Decoder_bo Decoder_bonus
(
 .data_in(data_ouut3),
 .data_out(decout)
);
assign decoout =decout;

// counter
wire isfulll;
counter_Dec_bo counter_Dec_bonus
(
  .clk(clk),
  .en(shift),
  .isfull(isfulll)
);
assign counterout =isfulll;
wire [14:0]data_out1;
usrpo_Dec_bo usrpo_Dec_bonus
(
 .clk(clk),
 .RST(RST),
 .shift(shift),
 .load(isfulll),
 .sl_in(0),
 .par_load(decout),
 .data_out(data_out1)
);
assign reg2out =data_out1;

assign sl_out=data_out1[0];

endmodule 
 
 