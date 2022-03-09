/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Mar  9 18:28:54 2022
/////////////////////////////////////////////////////////////


module STI_DAC ( clk, reset, load, pi_data, pi_length, pi_fill, pi_msb, pi_low, 
        pi_end, so_data, so_valid, oem_finish, oem_dataout, oem_addr, odd1_wr, 
        odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr );
  input [15:0] pi_data;
  input [1:0] pi_length;
  output [7:0] oem_dataout;
  output [4:0] oem_addr;
  input clk, reset, load, pi_fill, pi_msb, pi_low, pi_end;
  output so_data, so_valid, oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr,
         even1_wr, even2_wr, even3_wr, even4_wr;
  wire   N72, N73, N74, N75, N76, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         output_valid, N110, \counter_sti[4] , N177, N184, n102, n103, n104,
         n105, n106, n107, n108, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n150,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n220, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355;
  wire   [4:0] ptr;
  wire   [2:0] ptr_mem;
  wire   [4:0] ptr_tmp;
  wire   [2:0] state;
  wire   [4:0] counter_PLUS;
  wire   [4:0] counter_MINUS;
  wire   [2:0] nx_state;
  wire   [4:2] \add_294/carry ;
  wire   [4:2] \add_200/carry ;

  DFFRX1 \data_in_reg[7]  ( .D(n154), .CK(clk), .RN(n228), .QN(n189) );
  DFFRX1 \data_in_reg[6]  ( .D(n155), .CK(clk), .RN(n229), .QN(n190) );
  DFFRX1 \data_in_reg[5]  ( .D(n156), .CK(clk), .RN(n229), .QN(n191) );
  DFFRX1 \data_in_reg[4]  ( .D(n157), .CK(clk), .RN(n229), .QN(n192) );
  DFFRX1 \data_in_reg[3]  ( .D(n158), .CK(clk), .RN(n229), .QN(n193) );
  DFFRX1 \data_in_reg[2]  ( .D(n159), .CK(clk), .RN(n229), .QN(n194) );
  DFFRX1 \data_in_reg[1]  ( .D(n160), .CK(clk), .RN(n229), .QN(n195) );
  DFFRX1 \data_in_reg[0]  ( .D(n161), .CK(clk), .RN(n355), .QN(n196) );
  DFFRX1 \ptr_mem_reg[2]  ( .D(n170), .CK(clk), .RN(n227), .Q(ptr_mem[2]), 
        .QN(n185) );
  DFFRX1 finish_reg ( .D(n142), .CK(clk), .RN(n226), .QN(n187) );
  DFFRX1 \ptr_reg[4]  ( .D(n136), .CK(clk), .RN(n227), .Q(ptr[4]) );
  DFFRX1 \ptr_reg[3]  ( .D(n137), .CK(clk), .RN(n227), .Q(ptr[3]) );
  DFFRX1 \ptr_reg[1]  ( .D(n140), .CK(clk), .RN(n226), .Q(ptr[1]) );
  DFFRX1 \ptr_mem_reg[0]  ( .D(n141), .CK(clk), .RN(n226), .Q(ptr_mem[0]) );
  DFFRX1 \state_reg[1]  ( .D(nx_state[1]), .CK(clk), .RN(n226), .Q(state[1]), 
        .QN(n179) );
  DFFRX1 \counter_sti_reg[0]  ( .D(n177), .CK(clk), .RN(n228), .Q(N73), .QN(
        n153) );
  DFFRX1 \state_reg[2]  ( .D(nx_state[2]), .CK(clk), .RN(n226), .Q(state[2])
         );
  DFFRX1 output_valid_reg ( .D(N110), .CK(clk), .RN(n226), .Q(output_valid), 
        .QN(n222) );
  DFFRX1 \counter_sti_reg[3]  ( .D(n174), .CK(clk), .RN(n228), .Q(N72), .QN(
        N76) );
  DFFRX1 \counter_sti_reg[4]  ( .D(n178), .CK(clk), .RN(n226), .Q(
        \counter_sti[4] ), .QN(n150) );
  DFFRX1 \state_reg[0]  ( .D(nx_state[0]), .CK(clk), .RN(n226), .Q(state[0])
         );
  DFFRX1 \ptr_reg[0]  ( .D(n139), .CK(clk), .RN(n226), .Q(ptr[0]), .QN(n188)
         );
  DFFRX1 \ptr_reg[2]  ( .D(n138), .CK(clk), .RN(n227), .Q(ptr[2]) );
  DFFRX1 odd4_wr_reg ( .D(n165), .CK(clk), .RN(n228), .QN(n220) );
  DFFRX1 \oem_dataout_reg[0]  ( .D(n127), .CK(clk), .RN(n355), .Q(n365), .QN(
        n126) );
  DFFRX1 \oem_dataout_reg[1]  ( .D(n128), .CK(clk), .RN(n229), .Q(n364), .QN(
        n125) );
  DFFRX1 \oem_dataout_reg[2]  ( .D(n129), .CK(clk), .RN(n229), .Q(n363), .QN(
        n124) );
  DFFRX1 \oem_dataout_reg[3]  ( .D(n130), .CK(clk), .RN(n229), .Q(n362), .QN(
        n123) );
  DFFRX1 \oem_dataout_reg[4]  ( .D(n131), .CK(clk), .RN(n229), .Q(n361), .QN(
        n122) );
  DFFRX1 \oem_dataout_reg[5]  ( .D(n132), .CK(clk), .RN(n229), .Q(n360), .QN(
        n121) );
  DFFRX1 \oem_dataout_reg[6]  ( .D(n133), .CK(clk), .RN(n229), .Q(n359), .QN(
        n120) );
  DFFRX1 \oem_dataout_reg[7]  ( .D(n134), .CK(clk), .RN(n228), .Q(n358), .QN(
        n119) );
  DFFRX1 odd3_wr_reg ( .D(n163), .CK(clk), .RN(n228), .Q(n368), .QN(n107) );
  DFFRX1 even3_wr_reg ( .D(n162), .CK(clk), .RN(n228), .Q(n371), .QN(n108) );
  DFFRX1 oem_finish_reg ( .D(n135), .CK(clk), .RN(n228), .Q(n357), .QN(n118)
         );
  DFFRX1 even4_wr_reg ( .D(n164), .CK(clk), .RN(n228), .Q(n372), .QN(n106) );
  DFFRX1 odd1_wr_reg ( .D(n169), .CK(clk), .RN(n227), .Q(n366), .QN(n102) );
  DFFRX1 even1_wr_reg ( .D(n168), .CK(clk), .RN(n227), .Q(n369), .QN(n103) );
  DFFRX1 odd2_wr_reg ( .D(n167), .CK(clk), .RN(n227), .Q(n367), .QN(n104) );
  DFFRX1 even2_wr_reg ( .D(n166), .CK(clk), .RN(n227), .Q(n370), .QN(n105) );
  DFFRX1 \oem_addr_reg[4]  ( .D(ptr[4]), .CK(clk), .RN(n227), .QN(n184) );
  DFFRX1 \oem_addr_reg[3]  ( .D(ptr[3]), .CK(clk), .RN(n227), .QN(n183) );
  DFFRX1 \oem_addr_reg[2]  ( .D(ptr[2]), .CK(clk), .RN(n227), .QN(n182) );
  DFFRX1 \oem_addr_reg[0]  ( .D(ptr[0]), .CK(clk), .RN(n226), .QN(n180) );
  DFFRX1 \oem_addr_reg[1]  ( .D(ptr[1]), .CK(clk), .RN(n226), .QN(n181) );
  DFFSX1 \counter_dac_reg[0]  ( .D(n145), .CK(clk), .SN(n355), .Q(n353), .QN(
        n329) );
  DFFSX1 \counter_dac_reg[2]  ( .D(n143), .CK(clk), .SN(n355), .Q(n352) );
  DFFSX1 \counter_dac_reg[1]  ( .D(n144), .CK(clk), .SN(n355), .Q(n354), .QN(
        n327) );
  DFFRX2 \counter_sti_reg[2]  ( .D(n175), .CK(clk), .RN(n228), .Q(N75), .QN(
        n247) );
  DFFRX2 \counter_sti_reg[1]  ( .D(n176), .CK(clk), .RN(n228), .Q(N74), .QN(
        n248) );
  DFFRX1 \ptr_mem_reg[1]  ( .D(n171), .CK(clk), .RN(n355), .Q(ptr_mem[1]), 
        .QN(n319) );
  DFFRX1 so_data_reg ( .D(n173), .CK(clk), .RN(n355), .Q(n356), .QN(n186) );
  DFFRX1 so_valid_reg ( .D(n172), .CK(clk), .RN(n355), .QN(n312) );
  INVX3 U149 ( .A(reset), .Y(n355) );
  INVX12 U150 ( .A(n181), .Y(oem_addr[1]) );
  INVX12 U151 ( .A(n180), .Y(oem_addr[0]) );
  INVX12 U152 ( .A(n182), .Y(oem_addr[2]) );
  INVX12 U153 ( .A(n183), .Y(oem_addr[3]) );
  INVX12 U154 ( .A(n184), .Y(oem_addr[4]) );
  INVX16 U155 ( .A(n312), .Y(so_valid) );
  NAND2X2 U156 ( .A(so_valid), .B(so_data), .Y(n321) );
  BUFX16 U157 ( .A(n356), .Y(so_data) );
  INVX3 U158 ( .A(n225), .Y(n317) );
  BUFX12 U159 ( .A(n370), .Y(even2_wr) );
  OAI32XL U160 ( .A0(n315), .A1(n318), .A2(n319), .B0(n105), .B1(n317), .Y(
        n166) );
  BUFX12 U161 ( .A(n367), .Y(odd2_wr) );
  OAI32XL U162 ( .A0(n315), .A1(n319), .A2(n316), .B0(n317), .B1(n104), .Y(
        n167) );
  BUFX12 U163 ( .A(n369), .Y(even1_wr) );
  OAI32XL U164 ( .A0(n315), .A1(ptr_mem[1]), .A2(n318), .B0(n103), .B1(n317), 
        .Y(n168) );
  BUFX12 U165 ( .A(n366), .Y(odd1_wr) );
  OAI32XL U166 ( .A0(n315), .A1(ptr_mem[1]), .A2(n316), .B0(n317), .B1(n102), 
        .Y(n169) );
  BUFX12 U167 ( .A(n372), .Y(even4_wr) );
  OAI32XL U168 ( .A0(n320), .A1(n318), .A2(n319), .B0(n106), .B1(n317), .Y(
        n164) );
  BUFX12 U169 ( .A(n357), .Y(oem_finish) );
  BUFX12 U170 ( .A(n371), .Y(even3_wr) );
  OAI32XL U171 ( .A0(n320), .A1(ptr_mem[1]), .A2(n318), .B0(n108), .B1(n317), 
        .Y(n162) );
  BUFX12 U172 ( .A(n368), .Y(odd3_wr) );
  OAI32XL U173 ( .A0(n320), .A1(ptr_mem[1]), .A2(n316), .B0(n317), .B1(n107), 
        .Y(n163) );
  BUFX12 U174 ( .A(n358), .Y(oem_dataout[7]) );
  BUFX12 U175 ( .A(n359), .Y(oem_dataout[6]) );
  BUFX12 U176 ( .A(n360), .Y(oem_dataout[5]) );
  BUFX12 U177 ( .A(n361), .Y(oem_dataout[4]) );
  BUFX12 U178 ( .A(n362), .Y(oem_dataout[3]) );
  BUFX12 U179 ( .A(n363), .Y(oem_dataout[2]) );
  BUFX12 U180 ( .A(n364), .Y(oem_dataout[1]) );
  BUFX12 U181 ( .A(n365), .Y(oem_dataout[0]) );
  INVX12 U182 ( .A(n220), .Y(odd4_wr) );
  OAI32XL U183 ( .A0(n320), .A1(n319), .A2(n316), .B0(n317), .B1(n220), .Y(
        n165) );
  XOR2XL U184 ( .A(so_valid), .B(n353), .Y(n145) );
  MXI2XL U185 ( .A(n354), .B(n334), .S0(so_valid), .Y(n340) );
  NAND2XL U186 ( .A(n352), .B(so_valid), .Y(n338) );
  CLKBUFX3 U187 ( .A(n355), .Y(n229) );
  CLKBUFX3 U188 ( .A(n355), .Y(n228) );
  CLKBUFX3 U189 ( .A(n355), .Y(n227) );
  CLKINVX1 U190 ( .A(n224), .Y(n249) );
  CLKBUFX3 U191 ( .A(n355), .Y(n226) );
  CLKBUFX3 U192 ( .A(n324), .Y(n223) );
  NOR3XL U193 ( .A(n187), .B(so_valid), .C(n343), .Y(n324) );
  OA21XL U194 ( .A0(n223), .A1(n351), .B0(n222), .Y(N110) );
  CLKBUFX3 U195 ( .A(output_valid), .Y(n225) );
  CLKBUFX3 U196 ( .A(N73), .Y(n224) );
  ADDHXL U197 ( .A(N74), .B(n224), .CO(\add_294/carry [2]), .S(counter_PLUS[1]) );
  ADDHXL U198 ( .A(N75), .B(\add_294/carry [2]), .CO(\add_294/carry [3]), .S(
        counter_PLUS[2]) );
  ADDHXL U199 ( .A(N72), .B(\add_294/carry [3]), .CO(\add_294/carry [4]), .S(
        counter_PLUS[3]) );
  ADDHXL U200 ( .A(ptr[2]), .B(\add_200/carry [2]), .CO(\add_200/carry [3]), 
        .S(ptr_tmp[2]) );
  ADDHXL U201 ( .A(ptr[1]), .B(ptr[0]), .CO(\add_200/carry [2]), .S(ptr_tmp[1]) );
  ADDHXL U202 ( .A(ptr[3]), .B(\add_200/carry [3]), .CO(\add_200/carry [4]), 
        .S(ptr_tmp[3]) );
  XOR2X1 U203 ( .A(\add_200/carry [4]), .B(ptr[4]), .Y(ptr_tmp[4]) );
  XOR2X1 U204 ( .A(\add_294/carry [4]), .B(\counter_sti[4] ), .Y(
        counter_PLUS[4]) );
  NOR2X1 U205 ( .A(N74), .B(n224), .Y(n230) );
  AO21X1 U206 ( .A0(n224), .A1(N74), .B0(n230), .Y(counter_MINUS[1]) );
  NAND2X1 U207 ( .A(n230), .B(n247), .Y(n231) );
  OAI21XL U208 ( .A0(n230), .A1(n247), .B0(n231), .Y(counter_MINUS[2]) );
  XNOR2X1 U209 ( .A(N72), .B(n231), .Y(counter_MINUS[3]) );
  NOR2X1 U210 ( .A(N72), .B(n231), .Y(n232) );
  XOR2X1 U211 ( .A(\counter_sti[4] ), .B(n232), .Y(counter_MINUS[4]) );
  NOR2X1 U212 ( .A(n248), .B(n224), .Y(n242) );
  NOR2X1 U213 ( .A(n248), .B(n249), .Y(n241) );
  NOR2X1 U214 ( .A(n249), .B(N74), .Y(n239) );
  NOR2X1 U215 ( .A(n224), .B(N74), .Y(n238) );
  AO22X1 U216 ( .A0(pi_data[5]), .A1(n239), .B0(pi_data[4]), .B1(n238), .Y(
        n233) );
  AOI221XL U217 ( .A0(pi_data[6]), .A1(n242), .B0(pi_data[7]), .B1(n241), .C0(
        n233), .Y(n236) );
  AO22X1 U218 ( .A0(pi_data[1]), .A1(n239), .B0(pi_data[0]), .B1(n238), .Y(
        n234) );
  AOI221XL U219 ( .A0(pi_data[2]), .A1(n242), .B0(pi_data[3]), .B1(n241), .C0(
        n234), .Y(n235) );
  OA22X1 U220 ( .A0(n247), .A1(n236), .B0(N75), .B1(n235), .Y(n246) );
  AO22X1 U221 ( .A0(pi_data[13]), .A1(n239), .B0(pi_data[12]), .B1(n238), .Y(
        n237) );
  AOI221XL U222 ( .A0(pi_data[14]), .A1(n242), .B0(pi_data[15]), .B1(n241), 
        .C0(n237), .Y(n244) );
  AO22X1 U223 ( .A0(pi_data[9]), .A1(n239), .B0(pi_data[8]), .B1(n238), .Y(
        n240) );
  AOI221XL U224 ( .A0(pi_data[10]), .A1(n242), .B0(pi_data[11]), .B1(n241), 
        .C0(n240), .Y(n243) );
  OAI22XL U225 ( .A0(n244), .A1(n247), .B0(N75), .B1(n243), .Y(n245) );
  OAI2BB2XL U226 ( .B0(n246), .B1(N72), .A0N(N72), .A1N(n245), .Y(N177) );
  NOR2X1 U227 ( .A(n248), .B(n224), .Y(n259) );
  NOR2X1 U228 ( .A(n248), .B(n249), .Y(n258) );
  NOR2X1 U229 ( .A(n249), .B(N74), .Y(n256) );
  NOR2X1 U230 ( .A(n224), .B(N74), .Y(n255) );
  AO22X1 U231 ( .A0(pi_data[5]), .A1(n256), .B0(pi_data[4]), .B1(n255), .Y(
        n250) );
  AOI221XL U232 ( .A0(pi_data[6]), .A1(n259), .B0(pi_data[7]), .B1(n258), .C0(
        n250), .Y(n253) );
  AO22X1 U233 ( .A0(pi_data[1]), .A1(n256), .B0(pi_data[0]), .B1(n255), .Y(
        n251) );
  AOI221XL U234 ( .A0(pi_data[2]), .A1(n259), .B0(pi_data[3]), .B1(n258), .C0(
        n251), .Y(n252) );
  OA22X1 U235 ( .A0(n247), .A1(n253), .B0(N75), .B1(n252), .Y(n263) );
  AO22X1 U236 ( .A0(pi_data[13]), .A1(n256), .B0(pi_data[12]), .B1(n255), .Y(
        n254) );
  AOI221XL U237 ( .A0(pi_data[14]), .A1(n259), .B0(pi_data[15]), .B1(n258), 
        .C0(n254), .Y(n261) );
  AO22X1 U238 ( .A0(pi_data[9]), .A1(n256), .B0(pi_data[8]), .B1(n255), .Y(
        n257) );
  AOI221XL U239 ( .A0(pi_data[10]), .A1(n259), .B0(pi_data[11]), .B1(n258), 
        .C0(n257), .Y(n260) );
  OAI22XL U240 ( .A0(n261), .A1(n247), .B0(N75), .B1(n260), .Y(n262) );
  OAI2BB2XL U241 ( .B0(n263), .B1(N76), .A0N(N76), .A1N(n262), .Y(N184) );
  MXI2X1 U242 ( .A(n264), .B(n265), .S0(state[1]), .Y(nx_state[2]) );
  NAND2BX1 U243 ( .AN(state[2]), .B(state[0]), .Y(n265) );
  OAI21XL U244 ( .A0(pi_end), .A1(state[0]), .B0(state[2]), .Y(n264) );
  OAI21XL U245 ( .A0(n266), .A1(n267), .B0(n268), .Y(nx_state[1]) );
  OAI221XL U246 ( .A0(state[1]), .A1(n269), .B0(load), .B1(n270), .C0(n268), 
        .Y(nx_state[0]) );
  NAND2X1 U247 ( .A(n271), .B(state[1]), .Y(n268) );
  AOI21X1 U248 ( .A0(state[0]), .A1(n266), .B0(state[2]), .Y(n269) );
  MXI2X1 U249 ( .A(n272), .B(n273), .S0(n274), .Y(n266) );
  OAI21XL U250 ( .A0(n275), .A1(n276), .B0(n277), .Y(n273) );
  AOI32X1 U251 ( .A0(n278), .A1(n279), .A2(n150), .B0(n280), .B1(n281), .Y(
        n277) );
  OAI31XL U252 ( .A0(n282), .A1(pi_length[0]), .A2(n283), .B0(n276), .Y(n280)
         );
  OAI22XL U253 ( .A0(n283), .A1(n275), .B0(n284), .B1(n281), .Y(n278) );
  AOI31X1 U254 ( .A0(pi_msb), .A1(n153), .A2(n285), .B0(n286), .Y(n284) );
  AND3X1 U255 ( .A(n248), .B(n275), .C(n247), .Y(n285) );
  OAI31XL U256 ( .A0(n283), .A1(n150), .A2(n287), .B0(n276), .Y(n272) );
  NAND4X1 U257 ( .A(n248), .B(n247), .C(n153), .D(n288), .Y(n276) );
  NOR2X1 U258 ( .A(n289), .B(n282), .Y(n288) );
  XOR2X1 U259 ( .A(n279), .B(pi_length[0]), .Y(n287) );
  CLKINVX1 U260 ( .A(N76), .Y(n279) );
  CLKINVX1 U261 ( .A(n286), .Y(n283) );
  NOR4X1 U262 ( .A(n247), .B(n248), .C(n153), .D(pi_msb), .Y(n286) );
  OAI221XL U263 ( .A0(n150), .A1(n290), .B0(n274), .B1(n291), .C0(n292), .Y(
        n178) );
  AOI22X1 U264 ( .A0(counter_PLUS[4]), .A1(n293), .B0(counter_MINUS[4]), .B1(
        n294), .Y(n292) );
  CLKINVX1 U265 ( .A(n295), .Y(n291) );
  OAI211X1 U266 ( .A0(n153), .A1(n290), .B0(n296), .C0(n297), .Y(n177) );
  AOI21X1 U267 ( .A0(n153), .A1(n293), .B0(n295), .Y(n297) );
  NAND2X1 U268 ( .A(n153), .B(n294), .Y(n296) );
  OAI211X1 U269 ( .A0(n248), .A1(n290), .B0(n298), .C0(n299), .Y(n176) );
  AOI21X1 U270 ( .A0(counter_PLUS[1]), .A1(n293), .B0(n295), .Y(n299) );
  NAND2X1 U271 ( .A(counter_MINUS[1]), .B(n294), .Y(n298) );
  OAI211X1 U272 ( .A0(n247), .A1(n290), .B0(n300), .C0(n301), .Y(n175) );
  AOI21X1 U273 ( .A0(counter_PLUS[2]), .A1(n293), .B0(n295), .Y(n301) );
  NAND2X1 U274 ( .A(counter_MINUS[2]), .B(n294), .Y(n300) );
  OAI211X1 U275 ( .A0(N76), .A1(n290), .B0(n302), .C0(n303), .Y(n174) );
  AOI22X1 U276 ( .A0(counter_PLUS[3]), .A1(n293), .B0(counter_MINUS[3]), .B1(
        n294), .Y(n303) );
  NOR2X1 U277 ( .A(n267), .B(n289), .Y(n294) );
  NOR2X1 U278 ( .A(n267), .B(pi_msb), .Y(n293) );
  MXI2X1 U279 ( .A(n304), .B(n295), .S0(pi_length[0]), .Y(n302) );
  NOR2X1 U280 ( .A(n270), .B(n289), .Y(n295) );
  CLKINVX1 U281 ( .A(pi_msb), .Y(n289) );
  NOR3X1 U282 ( .A(n270), .B(pi_length[1]), .C(n281), .Y(n304) );
  CLKINVX1 U283 ( .A(pi_low), .Y(n281) );
  NAND2X1 U284 ( .A(n270), .B(n267), .Y(n290) );
  MXI2X1 U285 ( .A(n305), .B(n186), .S0(n267), .Y(n173) );
  AOI32X1 U286 ( .A0(pi_fill), .A1(N184), .A2(n306), .B0(N177), .B1(n307), .Y(
        n305) );
  NAND2X1 U287 ( .A(n308), .B(pi_length[1]), .Y(n307) );
  MXI2X1 U288 ( .A(n309), .B(n310), .S0(n150), .Y(n308) );
  NOR2X1 U289 ( .A(n275), .B(n310), .Y(n309) );
  CLKINVX1 U290 ( .A(pi_fill), .Y(n310) );
  CLKINVX1 U291 ( .A(pi_length[0]), .Y(n275) );
  NOR3BXL U292 ( .AN(n282), .B(n274), .C(pi_length[0]), .Y(n306) );
  CLKINVX1 U293 ( .A(pi_length[1]), .Y(n274) );
  NAND2X1 U294 ( .A(N76), .B(n150), .Y(n282) );
  OAI21XL U295 ( .A0(n311), .A1(n312), .B0(n267), .Y(n172) );
  NAND3BX1 U296 ( .AN(state[2]), .B(n179), .C(state[0]), .Y(n267) );
  OA21XL U297 ( .A0(n271), .A1(n179), .B0(n270), .Y(n311) );
  NAND2BX1 U298 ( .AN(state[0]), .B(n179), .Y(n270) );
  NOR2X1 U299 ( .A(state[2]), .B(state[0]), .Y(n271) );
  XOR2X1 U300 ( .A(ptr_mem[1]), .B(n313), .Y(n171) );
  XOR2X1 U301 ( .A(n185), .B(n314), .Y(n170) );
  NAND2X1 U302 ( .A(n313), .B(ptr_mem[1]), .Y(n314) );
  NAND2X1 U303 ( .A(n225), .B(n185), .Y(n315) );
  CLKINVX1 U304 ( .A(n318), .Y(n316) );
  XNOR2X1 U305 ( .A(ptr[2]), .B(ptr_mem[0]), .Y(n318) );
  NAND2X1 U306 ( .A(ptr_mem[2]), .B(n225), .Y(n320) );
  MXI2X1 U307 ( .A(n321), .B(n196), .S0(n322), .Y(n161) );
  NOR2X1 U308 ( .A(n323), .B(n223), .Y(n322) );
  MXI2X1 U309 ( .A(n321), .B(n195), .S0(n325), .Y(n160) );
  AOI31X1 U310 ( .A0(n326), .A1(n327), .A2(n353), .B0(n223), .Y(n325) );
  MXI2X1 U311 ( .A(n321), .B(n194), .S0(n328), .Y(n159) );
  AOI31X1 U312 ( .A0(n326), .A1(n329), .A2(n354), .B0(n223), .Y(n328) );
  MXI2X1 U313 ( .A(n321), .B(n193), .S0(n330), .Y(n158) );
  AOI2BB1X1 U314 ( .A0N(n331), .A1N(n332), .B0(n223), .Y(n330) );
  MXI2X1 U315 ( .A(n321), .B(n192), .S0(n333), .Y(n157) );
  AOI21X1 U316 ( .A0(n334), .A1(n335), .B0(n223), .Y(n333) );
  MXI2X1 U317 ( .A(n321), .B(n191), .S0(n336), .Y(n156) );
  AOI31X1 U318 ( .A0(n353), .A1(n327), .A2(n335), .B0(n223), .Y(n336) );
  MXI2X1 U319 ( .A(n321), .B(n190), .S0(n337), .Y(n155) );
  AOI31X1 U320 ( .A0(n354), .A1(n329), .A2(n335), .B0(n223), .Y(n337) );
  CLKINVX1 U321 ( .A(n338), .Y(n335) );
  MXI2X1 U322 ( .A(n321), .B(n189), .S0(n339), .Y(n154) );
  AOI2BB1X1 U323 ( .A0N(n332), .A1N(n338), .B0(n223), .Y(n339) );
  NAND2X1 U324 ( .A(n340), .B(n332), .Y(n144) );
  NAND2X1 U325 ( .A(n354), .B(n353), .Y(n332) );
  CLKINVX1 U326 ( .A(n341), .Y(n334) );
  NAND2BX1 U327 ( .AN(n323), .B(n342), .Y(n143) );
  OAI21XL U328 ( .A0(n312), .A1(n341), .B0(n352), .Y(n342) );
  NOR2X1 U329 ( .A(n341), .B(n331), .Y(n323) );
  CLKINVX1 U330 ( .A(n326), .Y(n331) );
  NOR2X1 U331 ( .A(n312), .B(n352), .Y(n326) );
  OAI21XL U332 ( .A0(so_valid), .A1(n343), .B0(n187), .Y(n142) );
  XOR2X1 U333 ( .A(ptr_mem[0]), .B(n225), .Y(n141) );
  AO22X1 U334 ( .A0(ptr[1]), .A1(n344), .B0(ptr_tmp[1]), .B1(n345), .Y(n140)
         );
  AO22X1 U335 ( .A0(ptr[0]), .A1(n344), .B0(n188), .B1(n345), .Y(n139) );
  AO22X1 U336 ( .A0(ptr[2]), .A1(n344), .B0(ptr_tmp[2]), .B1(n345), .Y(n138)
         );
  AO22X1 U337 ( .A0(ptr[3]), .A1(n344), .B0(ptr_tmp[3]), .B1(n345), .Y(n137)
         );
  AO22X1 U338 ( .A0(ptr[4]), .A1(n344), .B0(ptr_tmp[4]), .B1(n345), .Y(n136)
         );
  NOR2X1 U339 ( .A(n344), .B(n313), .Y(n345) );
  AND4X1 U340 ( .A(n346), .B(ptr[3]), .C(ptr[2]), .D(ptr[4]), .Y(n313) );
  CLKINVX1 U341 ( .A(n347), .Y(n346) );
  NAND3BX1 U342 ( .AN(n344), .B(ptr[1]), .C(ptr[0]), .Y(n347) );
  NAND2X1 U343 ( .A(ptr_mem[0]), .B(n225), .Y(n344) );
  OAI31XL U344 ( .A0(n348), .A1(n349), .A2(n350), .B0(n118), .Y(n135) );
  OR2X1 U345 ( .A(ptr[3]), .B(ptr[4]), .Y(n350) );
  NAND3BX1 U346 ( .AN(ptr_mem[0]), .B(n319), .C(n185), .Y(n349) );
  OR4X1 U347 ( .A(ptr[2]), .B(n220), .C(ptr[0]), .D(ptr[1]), .Y(n348) );
  MXI2X1 U348 ( .A(n119), .B(n189), .S0(n225), .Y(n134) );
  MXI2X1 U349 ( .A(n120), .B(n190), .S0(n225), .Y(n133) );
  MXI2X1 U350 ( .A(n121), .B(n191), .S0(n225), .Y(n132) );
  MXI2X1 U351 ( .A(n122), .B(n192), .S0(n225), .Y(n131) );
  MXI2X1 U352 ( .A(n123), .B(n193), .S0(n225), .Y(n130) );
  MXI2X1 U353 ( .A(n124), .B(n194), .S0(n225), .Y(n129) );
  MXI2X1 U354 ( .A(n125), .B(n195), .S0(n225), .Y(n128) );
  MXI2X1 U355 ( .A(n126), .B(n196), .S0(n225), .Y(n127) );
  NOR2X1 U356 ( .A(n341), .B(n352), .Y(n351) );
  NAND2X1 U357 ( .A(n329), .B(n327), .Y(n341) );
  CLKINVX1 U358 ( .A(pi_end), .Y(n343) );
endmodule

