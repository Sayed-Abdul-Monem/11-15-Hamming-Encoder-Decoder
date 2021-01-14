module FullEncoderDecoder(
input sl_inn,
input clk,
input shift,
input RST,
output sl_out
//output encoder_out,
//output [10:0] encoder__reg_in,
//output [14:0] encoder_outtt,
//output encodercounterout,
//output [14:0] encoder__reg_out,
//output [14:0] decoder__reg_in,
//output [14:0] decoder__out_put,
//output decodercounterout,
//output [10:0] decoder__reg_out
);

//Encoder_Stage
wire encoder_sl_out;
//wire [10:0] encoder_reg_in;
//wire [14:0] encoder_out_put;
//wire enccountfull;
//wire [14:0] encoder_reg_out;

IN encoder_in_bonus (
 .clk(clk),
 .RST(RST),
 .sl_in(sl_inn),
 .shift(shift),
 .data_out(encoder_sl_out),
// .datall(encoder_reg_in),
// .countfull(enccountfull),
// .finalout(encoder_reg_out),
// .hammingout(encoder_out_put)
);
assign encoder_out = encoder_sl_out;
//assign encoder__reg_in = encoder_reg_in;
//assign encoder_outtt = encoder_out_put;
//assign encodercounterout = enccountfull;
//assign encoder__reg_out = encoder_reg_out;

//Decoder_Stage
wire decoder_sl_out;
//wire [14:0] decoder_reg_in;
//wire [14:0] decoder_out_put;
//wire decodercounterfull;
//wire [10:0] decoder_reg_out;

OUT decoder_out_bonus
(
 .RST(RST),
 .clk(clk),
 .sl_in(encoder_sl_out),
 .shift(shift),
 .sl_out(decoder_sl_out),
// .reg1out(decoder_reg_in),
// .decoout(decoder_out_put),
// .counterout(decodercounterfull),
// .reg2out(decoder_reg_out)
);

assign sl_out = decoder_sl_out;
//assign decoder__reg_in = decoder_reg_in;
//assign decoder__out_put = decoder_out_put;
//assign decodercounterout = decodercounterfull;
//assign decoder__reg_out = decoder_reg_out;

endmodule
