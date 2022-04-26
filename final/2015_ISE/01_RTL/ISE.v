`timescale 1ns/10ps
module ISE( clk, reset, image_in_index, pixel_in, busy, out_valid, color_index, image_out_index);
input           clk;
input           reset;
input   [4:0]   image_in_index;
input   [23:0]  pixel_in;
output          busy;
output          out_valid;
output  [1:0]   color_index;
output  [4:0]   image_out_index;

endmodule
