/*

Copyright (c) 2014-2015 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`timescale 1ns / 1ps

/*
 * CRC module eth_crc_8
 *
 * CRC width:      32
 * Data width:     8
 * CRC polynomial: 32'h4c11db7
 * Configuration:  galois
 * Bit-reverse:    input and output
 *
 * x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x + 1
 *
 * Generated by crcgen.py
 *
 * crcgen.py -b -r -d 8 -n eth_crc_8
 *
 */
module eth_crc_8
(
    input  wire [7:0] data_in,
    input  wire [31:0] crc_state,
    output wire [31:0] crc_next
);

assign crc_next[0] = crc_state[2] ^ crc_state[8] ^ data_in[2];
assign crc_next[1] = crc_state[0] ^ crc_state[3] ^ crc_state[9] ^ data_in[0] ^ data_in[3];
assign crc_next[2] = crc_state[0] ^ crc_state[1] ^ crc_state[4] ^ crc_state[10] ^ data_in[0] ^ data_in[1] ^ data_in[4];
assign crc_next[3] = crc_state[1] ^ crc_state[2] ^ crc_state[5] ^ crc_state[11] ^ data_in[1] ^ data_in[2] ^ data_in[5];
assign crc_next[4] = crc_state[0] ^ crc_state[2] ^ crc_state[3] ^ crc_state[6] ^ crc_state[12] ^ data_in[0] ^ data_in[2] ^ data_in[3] ^ data_in[6];
assign crc_next[5] = crc_state[1] ^ crc_state[3] ^ crc_state[4] ^ crc_state[7] ^ crc_state[13] ^ data_in[1] ^ data_in[3] ^ data_in[4] ^ data_in[7];
assign crc_next[6] = crc_state[4] ^ crc_state[5] ^ crc_state[14] ^ data_in[4] ^ data_in[5];
assign crc_next[7] = crc_state[0] ^ crc_state[5] ^ crc_state[6] ^ crc_state[15] ^ data_in[0] ^ data_in[5] ^ data_in[6];
assign crc_next[8] = crc_state[1] ^ crc_state[6] ^ crc_state[7] ^ crc_state[16] ^ data_in[1] ^ data_in[6] ^ data_in[7];
assign crc_next[9] = crc_state[7] ^ crc_state[17] ^ data_in[7];
assign crc_next[10] = crc_state[2] ^ crc_state[18] ^ data_in[2];
assign crc_next[11] = crc_state[3] ^ crc_state[19] ^ data_in[3];
assign crc_next[12] = crc_state[0] ^ crc_state[4] ^ crc_state[20] ^ data_in[0] ^ data_in[4];
assign crc_next[13] = crc_state[0] ^ crc_state[1] ^ crc_state[5] ^ crc_state[21] ^ data_in[0] ^ data_in[1] ^ data_in[5];
assign crc_next[14] = crc_state[1] ^ crc_state[2] ^ crc_state[6] ^ crc_state[22] ^ data_in[1] ^ data_in[2] ^ data_in[6];
assign crc_next[15] = crc_state[2] ^ crc_state[3] ^ crc_state[7] ^ crc_state[23] ^ data_in[2] ^ data_in[3] ^ data_in[7];
assign crc_next[16] = crc_state[0] ^ crc_state[2] ^ crc_state[3] ^ crc_state[4] ^ crc_state[24] ^ data_in[0] ^ data_in[2] ^ data_in[3] ^ data_in[4];
assign crc_next[17] = crc_state[0] ^ crc_state[1] ^ crc_state[3] ^ crc_state[4] ^ crc_state[5] ^ crc_state[25] ^ data_in[0] ^ data_in[1] ^ data_in[3] ^ data_in[4] ^ data_in[5];
assign crc_next[18] = crc_state[0] ^ crc_state[1] ^ crc_state[2] ^ crc_state[4] ^ crc_state[5] ^ crc_state[6] ^ crc_state[26] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[4] ^ data_in[5] ^ data_in[6];
assign crc_next[19] = crc_state[1] ^ crc_state[2] ^ crc_state[3] ^ crc_state[5] ^ crc_state[6] ^ crc_state[7] ^ crc_state[27] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[5] ^ data_in[6] ^ data_in[7];
assign crc_next[20] = crc_state[3] ^ crc_state[4] ^ crc_state[6] ^ crc_state[7] ^ crc_state[28] ^ data_in[3] ^ data_in[4] ^ data_in[6] ^ data_in[7];
assign crc_next[21] = crc_state[2] ^ crc_state[4] ^ crc_state[5] ^ crc_state[7] ^ crc_state[29] ^ data_in[2] ^ data_in[4] ^ data_in[5] ^ data_in[7];
assign crc_next[22] = crc_state[2] ^ crc_state[3] ^ crc_state[5] ^ crc_state[6] ^ crc_state[30] ^ data_in[2] ^ data_in[3] ^ data_in[5] ^ data_in[6];
assign crc_next[23] = crc_state[3] ^ crc_state[4] ^ crc_state[6] ^ crc_state[7] ^ crc_state[31] ^ data_in[3] ^ data_in[4] ^ data_in[6] ^ data_in[7];
assign crc_next[24] = crc_state[0] ^ crc_state[2] ^ crc_state[4] ^ crc_state[5] ^ crc_state[7] ^ data_in[0] ^ data_in[2] ^ data_in[4] ^ data_in[5] ^ data_in[7];
assign crc_next[25] = crc_state[0] ^ crc_state[1] ^ crc_state[2] ^ crc_state[3] ^ crc_state[5] ^ crc_state[6] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[5] ^ data_in[6];
assign crc_next[26] = crc_state[0] ^ crc_state[1] ^ crc_state[2] ^ crc_state[3] ^ crc_state[4] ^ crc_state[6] ^ crc_state[7] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[6] ^ data_in[7];
assign crc_next[27] = crc_state[1] ^ crc_state[3] ^ crc_state[4] ^ crc_state[5] ^ crc_state[7] ^ data_in[1] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[7];
assign crc_next[28] = crc_state[0] ^ crc_state[4] ^ crc_state[5] ^ crc_state[6] ^ data_in[0] ^ data_in[4] ^ data_in[5] ^ data_in[6];
assign crc_next[29] = crc_state[0] ^ crc_state[1] ^ crc_state[5] ^ crc_state[6] ^ crc_state[7] ^ data_in[0] ^ data_in[1] ^ data_in[5] ^ data_in[6] ^ data_in[7];
assign crc_next[30] = crc_state[0] ^ crc_state[1] ^ crc_state[6] ^ crc_state[7] ^ data_in[0] ^ data_in[1] ^ data_in[6] ^ data_in[7];
assign crc_next[31] = crc_state[1] ^ crc_state[7] ^ data_in[1] ^ data_in[7];

endmodule
