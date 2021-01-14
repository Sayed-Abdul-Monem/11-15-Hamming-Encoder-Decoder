# 11-15-Hamming-Encoder-Decoder in Verilog HDL
This project introduces how to design a 11-bit hamming code encoder to 15-bit hamming code decoder  
the Algorithm of Hamming :
Write the bit positions starting from 1 to 15 in binary form .then All the bit positions in 15 bit codeword that are  power of 2 are marked as parity bits (1, 2, 4, 8) and the rest will be input data bits .
Each data bit is included in a unique set of parity bits, as determined its bit position in binary form. 
Parity bit 1 covers the bits positions (1, 2, 4 , 5, 7, 9, 11).
Parity bit 2 covers the bits positions (1, 3, 4 , 6, 7, 10 11).
Parity bit 3 covers the bits positions (2, 3, 4 , 8, 9, 10, 11).
Parity bit 4 covers the bits positions (5, 6, 7 , 8, 9, 10, 11).
Each parity bit covers all bits where the bitwise XOR bit positions  specified in previously.
principal of operation:
it's required to design them using only one clock hardware considering that the input rata must equal the output rate which is 11 Mbit /sec .here we have a trick to do this the input bits will be triggered with the positive edge of the clock but the output bits will  increase to be 21 bit (15 bit hamming code > the output from decoder and the  another six zero bits will not be used and in the output we take onlt bits from 0 to 14 which bits we need )
the following code will describe the project design
