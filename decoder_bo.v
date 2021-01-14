module Decoder_bo(data_in,data_out);

  input [14:0] data_in;
  output reg [10:0] data_out;
  
  reg [3:0] parity_bits;
  reg [14:0] new_bits;
  
  always @(*)
    begin 
      parity_bits[0]=data_in[0]^data_in[2]^data_in[4]^data_in[6]^data_in[8]^data_in[10]^data_in[12]^data_in[14];
      parity_bits[1]=data_in[1]^data_in[2]^data_in[5]^data_in[6]^data_in[9]^data_in[10]^data_in[13]^data_in[14];
      parity_bits[2]=data_in[3]^data_in[4]^data_in[5]^data_in[6]^data_in[11]^data_in[12]^data_in[13]^data_in[14];
	  parity_bits[3]=data_in[7]^data_in[8]^data_in[9]^data_in[10]^data_in[11]^data_in[12]^data_in[13]^data_in[14];
      
      new_bits=data_in;
      if(parity_bits)
    	new_bits[parity_bits-1]=~data_in[parity_bits-1];
    end
  
  always @(new_bits)
    begin
      data_out[0]=new_bits[2];
      data_out[1]=new_bits[4];
      data_out[2]=new_bits[5];
      data_out[3]=new_bits[6];
	  data_out[4]=new_bits[8];
	  data_out[5]=new_bits[9];
	  data_out[6]=new_bits[10];
	  data_out[7]=new_bits[11];
	  data_out[8]=new_bits[12];
	  data_out[9]=new_bits[13];
	  data_out[10]=new_bits[14];
	  
    end
endmodule