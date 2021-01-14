module encoder_bo(data_in,data_out );
 
input [10:0] data_in; 
output reg[14:0] data_out;
  always@(*)
  	begin 
  
      data_out[0]=data_in[0]^data_in[1]^data_in[3]^data_in[4]^data_in[6]^data_in[8]^data_in[10];
      data_out[1]=data_in[0]^data_in[2]^data_in[3]^data_in[5]^data_in[6]^data_in[9]^data_in[10];
      data_out[2]=data_in[0];
      data_out[3]=data_in[1]^data_in[2]^data_in[3]^data_in[7]^data_in[8]^data_in[9]^data_in[10];
      data_out[4]=data_in[1];
      data_out[5]=data_in[2];
      data_out[6]=data_in[3];
	   data_out[7]=data_in[4]^data_in[5]^data_in[6]^data_in[7]^data_in[8]^data_in[9]^data_in[10];
	   data_out[8]=data_in[4];
	   data_out[9]=data_in[5];
	   data_out[10]=data_in[6];
	   data_out[11]=data_in[7];
	   data_out[12]=data_in[8];
	   data_out[13]=data_in[9];
	   data_out[14]=data_in[10];
	  

	end 
endmodule

