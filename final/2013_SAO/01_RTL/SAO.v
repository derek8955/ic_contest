`timescale 1 ns/1 ps
//synopsys translate_off
`include "../00_MEM/sram_16384x8/sram_16384x8.v"
//synopsys translate_on

module SAO ( clk, reset, in_en, din, sao_type, sao_band_pos, sao_eo_class, sao_offset, lcu_x, lcu_y, lcu_size, busy, finish);
input   clk;
input   reset;
input   in_en;
input   [7:0]  din;
input   [1:0]  sao_type;
input   [4:0]  sao_band_pos;
input          sao_eo_class;
input   [15:0] sao_offset;
input   [2:0]  lcu_x;
input   [2:0]  lcu_y;
input   [1:0]  lcu_size;
output  reg busy;
output  finish;


sram_16384x8 golden_sram (.Q( ), .CLK(clk), .CEN(cen), .WEN(wen), .A(sram_addr), .D(sram_data_in)); 

endmodule