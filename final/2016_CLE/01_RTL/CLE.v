`timescale 1ns/10ps
module CLE ( clk, reset, rom_q, rom_a, sram_q, sram_a, sram_d, sram_wen, finish);
input         clk;
input         reset;
input  [7:0]  rom_q;
output [6:0]  rom_a;
input  [7:0]  sram_q;
output [9:0]  sram_a;
output [7:0]  sram_d;
output        sram_wen;
output        finish;

endmodule
