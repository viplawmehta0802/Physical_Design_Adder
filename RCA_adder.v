module RCA_adder (in1, in2, c_in, out, c_out, c_int);
input [15:0] in1, in2;
input c_in;
output [2:0] c_int;
output [15:0] out;
output c_out ;
wire [2:0]c_intermediate;
assign c_int = c_intermediate;

four_bit_adder dut1(in1[3:0], in2[3:0], c_in, out[3:0], c_intermediate[0]);
four_bit_adder dut2(in1[7:4], in2[7:4], c_intermediate[0], out[7:4], c_intermediate[1]);
four_bit_adder dut3(in1[11:8], in2[11:8], c_intermediate[1], out[11:8], c_intermediate[2]);
four_bit_adder dut4(in1[15:12], in2[15:12], c_intermediate[2], out[15:12], c_out);
endmodule
