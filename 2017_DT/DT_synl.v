/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Thu Feb 17 15:13:51 2022
/////////////////////////////////////////////////////////////


module DT_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2X1 U1 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  CLKINVX8 U2 ( .A(n1), .Y(carry[2]) );
  NAND2X8 U3 ( .A(A[1]), .B(A[0]), .Y(n1) );
  INVXL U4 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U5 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_2_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_3_DW01_inc_4 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module DT_DW01_inc_4_DW01_inc_5 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module DT_DW01_dec_0_DW01_dec_1 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  CLKINVX1 U1 ( .A(n16), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[11]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[10]), .Y(n3) );
  AO21X1 U5 ( .A0(n5), .A1(A[9]), .B0(n6), .Y(SUM[9]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[8]), .B0(n5), .Y(SUM[8]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[7]), .B0(n7), .Y(SUM[7]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[6]), .B0(n8), .Y(SUM[6]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[5]), .B0(n9), .Y(SUM[5]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[4]), .B0(n10), .Y(SUM[4]) );
  OAI2BB1X1 U11 ( .A0N(n12), .A1N(A[3]), .B0(n11), .Y(SUM[3]) );
  OAI2BB1X1 U12 ( .A0N(n13), .A1N(A[2]), .B0(n12), .Y(SUM[2]) );
  OAI2BB1X1 U13 ( .A0N(A[0]), .A1N(A[1]), .B0(n13), .Y(SUM[1]) );
  XOR2X1 U14 ( .A(A[13]), .B(n14), .Y(SUM[13]) );
  NOR2X1 U15 ( .A(A[12]), .B(n15), .Y(n14) );
  XNOR2X1 U16 ( .A(A[12]), .B(n15), .Y(SUM[12]) );
  OAI21XL U17 ( .A0(n1), .A1(n2), .B0(n15), .Y(SUM[11]) );
  NAND2X1 U18 ( .A(n1), .B(n2), .Y(n15) );
  OAI21XL U19 ( .A0(n6), .A1(n3), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U20 ( .A(n6), .B(n3), .Y(n16) );
  NOR2X1 U21 ( .A(n5), .B(A[9]), .Y(n6) );
  OR2X1 U22 ( .A(n7), .B(A[8]), .Y(n5) );
  OR2X1 U23 ( .A(n8), .B(A[7]), .Y(n7) );
  OR2X1 U24 ( .A(n9), .B(A[6]), .Y(n8) );
  OR2X1 U25 ( .A(n10), .B(A[5]), .Y(n9) );
  OR2X1 U26 ( .A(n11), .B(A[4]), .Y(n10) );
  OR2X1 U27 ( .A(n12), .B(A[3]), .Y(n11) );
  OR2X1 U28 ( .A(n13), .B(A[2]), .Y(n12) );
  NAND2BX1 U29 ( .AN(A[1]), .B(SUM[0]), .Y(n13) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di, fw_finish );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd, fw_finish;
  wire   N21, N43, N44, N45, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N270, N271, N272, N273, N274, N275, N276,
         N277, N278, N323, N324, N325, N326, N327, N328, N329, N330, N335,
         N336, N337, N338, N339, N340, N341, N342, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n265, n266, n267, \sub_94/carry[2] ,
         \sub_94/carry[3] , \sub_94/carry[4] , \sub_94/carry[5] ,
         \sub_94/carry[6] , \sub_94/carry[7] , \sub_94/carry[8] ,
         \sub_94/carry[9] , \sub_94/carry[10] , \sub_94/carry[11] ,
         \sub_94/carry[12] , \sub_94/carry[13] , \add_91/carry[2] ,
         \add_91/carry[3] , \add_91/carry[4] , \add_91/carry[5] ,
         \add_91/carry[6] , \add_91/carry[7] , \add_91/carry[8] ,
         \add_91/carry[9] , \add_91/carry[10] , \add_91/carry[11] ,
         \add_91/carry[12] , \add_91/carry[13] , n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541;
  wire   [3:0] state;
  wire   [3:0] nx_state;
  wire   [13:0] res_addr_NE;
  wire   [13:0] res_addr_W;
  wire   [13:0] res_addr_origin;
  wire   [13:0] res_addr_E;
  wire   [13:0] res_addr_SW;
  wire   [13:0] res_addr_origin_back;
  wire   [7:0] minimum;
  wire   [13:1] \add_93/carry ;
  wire   [14:0] \sub_89/carry ;

  DT_DW01_inc_0_DW01_inc_1 add_158_S2 ( .A(res_di), .SUM({N342, N341, N340, 
        N339, N338, N337, N336, N335}) );
  DT_DW01_inc_1_DW01_inc_2 add_158 ( .A(res_di), .SUM({N330, N329, N328, N327, 
        N326, N325, N324, N323}) );
  DT_DW01_inc_2_DW01_inc_3 add_131_S2 ( .A(minimum), .SUM({N278, N277, N276, 
        N275, N274, N273, N272, N271}) );
  DT_DW01_inc_3_DW01_inc_4 add_85_S2 ( .A(sti_addr), .SUM({N119, N118, N117, 
        N116, N115, N114, N113, N112, N111, N110}) );
  DT_DW01_inc_4_DW01_inc_5 r418 ( .A(res_addr), .SUM(res_addr_E) );
  DT_DW01_dec_0_DW01_dec_1 r416 ( .A(res_addr), .SUM(res_addr_W) );
  DFFRX1 \res_addr_reg[7]  ( .D(n256), .CK(clk), .RN(reset), .Q(n548), .QN(
        n274) );
  DFFRX1 \res_addr_reg[13]  ( .D(n250), .CK(clk), .RN(n321), .Q(n542), .QN(
        n281) );
  DFFRX1 \res_addr_reg[12]  ( .D(n251), .CK(clk), .RN(n321), .Q(n543), .QN(
        n271) );
  DFFRX1 \res_addr_reg[11]  ( .D(n252), .CK(clk), .RN(n321), .Q(n544), .QN(
        n282) );
  DFFRX1 \res_addr_reg[10]  ( .D(n253), .CK(clk), .RN(n321), .Q(n545), .QN(
        n275) );
  DFFRX1 \res_addr_reg[9]  ( .D(n254), .CK(clk), .RN(n321), .Q(n546), .QN(n279) );
  DFFRX1 \res_addr_reg[2]  ( .D(n261), .CK(clk), .RN(n321), .Q(n553), .QN(n273) );
  DFFRX1 \res_addr_reg[3]  ( .D(n260), .CK(clk), .RN(n321), .Q(n552), .QN(n268) );
  DFFRX1 \res_addr_reg[4]  ( .D(n259), .CK(clk), .RN(n321), .Q(n551), .QN(n280) );
  DFFRX1 \res_addr_reg[5]  ( .D(n258), .CK(clk), .RN(reset), .Q(n550), .QN(
        n270) );
  DFFRX1 \res_addr_reg[6]  ( .D(n257), .CK(clk), .RN(reset), .Q(n549), .QN(
        n269) );
  DFFRX1 \res_addr_reg[8]  ( .D(n255), .CK(clk), .RN(reset), .Q(n547), .QN(
        n272) );
  DFFRX1 \res_addr_reg[0]  ( .D(n262), .CK(clk), .RN(n321), .Q(res_addr_NE[0]), 
        .QN(n284) );
  DFFRX1 \res_addr_reg[1]  ( .D(n265), .CK(clk), .RN(n321), .Q(n554), .QN(n285) );
  DFFRX1 \state_reg[2]  ( .D(n227), .CK(clk), .RN(reset), .Q(state[2]) );
  DFFRX1 \state_reg[0]  ( .D(nx_state[0]), .CK(clk), .RN(n321), .Q(state[0])
         );
  DFFRX1 \state_reg[1]  ( .D(nx_state[1]), .CK(clk), .RN(reset), .Q(state[1]), 
        .QN(n278) );
  DFFRX1 \state_reg[3]  ( .D(n228), .CK(clk), .RN(reset), .Q(state[3]), .QN(
        n341) );
  DFFRX1 \minimum_reg[6]  ( .D(n243), .CK(clk), .RN(reset), .Q(minimum[6]), 
        .QN(n234) );
  DFFRX1 \minimum_reg[0]  ( .D(n249), .CK(clk), .RN(reset), .Q(minimum[0]), 
        .QN(n240) );
  DFFRX1 \minimum_reg[2]  ( .D(n247), .CK(clk), .RN(reset), .Q(minimum[2]), 
        .QN(n238) );
  DFFRX1 \minimum_reg[1]  ( .D(n248), .CK(clk), .RN(reset), .Q(minimum[1]), 
        .QN(n239) );
  DFFRX1 \minimum_reg[7]  ( .D(n242), .CK(clk), .RN(reset), .Q(minimum[7]), 
        .QN(n233) );
  DFFRX1 \minimum_reg[4]  ( .D(n245), .CK(clk), .RN(reset), .Q(minimum[4]), 
        .QN(n236) );
  DFFRX1 \minimum_reg[5]  ( .D(n244), .CK(clk), .RN(reset), .Q(minimum[5]), 
        .QN(n235) );
  DFFRX1 \minimum_reg[3]  ( .D(n246), .CK(clk), .RN(reset), .Q(minimum[3]), 
        .QN(n237) );
  DFFSX1 \counter_reg[0]  ( .D(n267), .CK(clk), .SN(reset), .Q(N43), .QN(n339)
         );
  DFFSX1 \counter_reg[3]  ( .D(n266), .CK(clk), .SN(n322), .Q(N21), .QN(n229)
         );
  DFFSX1 \counter_reg[1]  ( .D(n263), .CK(clk), .SN(n322), .Q(N44), .QN(n338)
         );
  DFFRX2 \sti_addr_reg[0]  ( .D(n218), .CK(clk), .RN(n322), .Q(sti_addr[0]) );
  DFFRX2 \sti_addr_reg[9]  ( .D(n210), .CK(clk), .RN(n321), .Q(sti_addr[9]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n213), .CK(clk), .RN(reset), .Q(sti_addr[6])
         );
  DFFRX2 \sti_addr_reg[5]  ( .D(n214), .CK(clk), .RN(n321), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n215), .CK(clk), .RN(n322), .Q(sti_addr[4]) );
  DFFRX2 \sti_addr_reg[3]  ( .D(n216), .CK(clk), .RN(n321), .Q(sti_addr[3]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n217), .CK(clk), .RN(n322), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n219), .CK(clk), .RN(n322), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n212), .CK(clk), .RN(n322), .Q(sti_addr[7]) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n211), .CK(clk), .RN(n321), .Q(sti_addr[8]) );
  DFFSX2 \counter_reg[2]  ( .D(n540), .CK(clk), .SN(n322), .Q(N45), .QN(n337)
         );
  DFFRX2 done_reg ( .D(n208), .CK(clk), .RN(reset), .Q(done), .QN(n206) );
  DFFRX2 fw_finish_reg ( .D(n209), .CK(clk), .RN(n322), .Q(fw_finish), .QN(
        n207) );
  DFFRX2 \res_do_reg[0]  ( .D(n241), .CK(clk), .RN(n322), .Q(res_do[0]), .QN(
        n198) );
  DFFRX2 \res_do_reg[6]  ( .D(n225), .CK(clk), .RN(n322), .Q(res_do[6]), .QN(
        n204) );
  DFFRX2 \res_do_reg[2]  ( .D(n221), .CK(clk), .RN(n322), .Q(res_do[2]), .QN(
        n200) );
  DFFRX2 \res_do_reg[1]  ( .D(n220), .CK(clk), .RN(n322), .Q(res_do[1]), .QN(
        n199) );
  DFFRX2 \res_do_reg[7]  ( .D(n226), .CK(clk), .RN(n322), .Q(res_do[7]), .QN(
        n205) );
  DFFRX2 \res_do_reg[4]  ( .D(n223), .CK(clk), .RN(n322), .Q(res_do[4]), .QN(
        n202) );
  DFFRX2 \res_do_reg[5]  ( .D(n224), .CK(clk), .RN(n322), .Q(res_do[5]), .QN(
        n203) );
  DFFRX2 \res_do_reg[3]  ( .D(n222), .CK(clk), .RN(n322), .Q(res_do[3]), .QN(
        n201) );
  INVX6 U245 ( .A(n426), .Y(n291) );
  BUFX8 U246 ( .A(n364), .Y(n301) );
  AND3X2 U247 ( .A(n287), .B(n288), .C(n289), .Y(n414) );
  NAND2X1 U248 ( .A(res_addr_W[12]), .B(n302), .Y(n288) );
  BUFX6 U249 ( .A(n363), .Y(n302) );
  NOR2BX1 U250 ( .AN(n418), .B(n300), .Y(n364) );
  NAND2X1 U251 ( .A(n376), .B(n422), .Y(n419) );
  CLKBUFX6 U252 ( .A(n366), .Y(n303) );
  NOR2XL U253 ( .A(n300), .B(n424), .Y(n366) );
  AOI21X2 U254 ( .A0(nx_state[0]), .A1(n375), .B0(n376), .Y(n343) );
  OR2X4 U255 ( .A(n468), .B(N329), .Y(n292) );
  OR2X6 U256 ( .A(res_di[6]), .B(res_di[7]), .Y(n277) );
  CLKBUFX3 U257 ( .A(n374), .Y(n290) );
  NAND4X2 U258 ( .A(n535), .B(state[3]), .C(res_addr[7]), .D(n536), .Y(n532)
         );
  NAND2X1 U259 ( .A(n283), .B(n514), .Y(n527) );
  NAND2X4 U260 ( .A(n375), .B(n436), .Y(n421) );
  NAND2X2 U261 ( .A(n227), .B(n436), .Y(n438) );
  AND3X2 U262 ( .A(n293), .B(n294), .C(n295), .Y(n508) );
  NAND3X1 U263 ( .A(n412), .B(n413), .C(n414), .Y(n251) );
  AOI2BB2X1 U264 ( .B0(res_addr_NE[7]), .B1(n303), .A0N(n368), .A1N(n274), .Y(
        n397) );
  CLKBUFX3 U265 ( .A(n545), .Y(res_addr[10]) );
  CLKBUFX3 U266 ( .A(n554), .Y(res_addr[1]) );
  NAND3X4 U267 ( .A(n296), .B(n297), .C(n298), .Y(n442) );
  OR2X8 U268 ( .A(res_di[2]), .B(res_di[3]), .Y(n276) );
  CLKBUFX3 U269 ( .A(n544), .Y(res_addr[11]) );
  AND2X2 U270 ( .A(n510), .B(n274), .Y(n283) );
  NAND2XL U271 ( .A(n292), .B(n234), .Y(n467) );
  AOI22XL U272 ( .A0(n236), .A1(N327), .B0(n234), .B1(N329), .Y(n465) );
  AOI211X4 U273 ( .A0(state[3]), .A1(state[2]), .B0(n278), .C0(state[0]), .Y(
        res_wr) );
  OAI22X2 U274 ( .A0(state[1]), .A1(n340), .B0(n341), .B1(n342), .Y(res_rd) );
  OA21X4 U275 ( .A0(n518), .A1(N21), .B0(n507), .Y(n286) );
  NAND2X6 U276 ( .A(n286), .B(n519), .Y(nx_state[1]) );
  AND2X4 U277 ( .A(n523), .B(n524), .Y(n507) );
  NAND4X2 U278 ( .A(nx_state[1]), .B(n437), .C(n440), .D(n436), .Y(n346) );
  NOR2X4 U279 ( .A(n440), .B(nx_state[1]), .Y(n375) );
  NOR3X8 U280 ( .A(n277), .B(res_di[4]), .C(res_di[5]), .Y(n538) );
  AOI32X1 U281 ( .A0(n463), .A1(n464), .A2(n465), .B0(n466), .B1(n467), .Y(
        n461) );
  CLKINVX1 U282 ( .A(n464), .Y(n470) );
  NAND2X4 U283 ( .A(n235), .B(N328), .Y(n464) );
  INVX8 U284 ( .A(n469), .Y(n468) );
  OAI32X4 U285 ( .A0(n470), .A1(n236), .A2(N327), .B0(n235), .B1(N328), .Y(
        n469) );
  NAND2X1 U286 ( .A(res_addr_SW[12]), .B(n362), .Y(n287) );
  NAND2XL U287 ( .A(res_addr_origin[12]), .B(n301), .Y(n289) );
  AND3X2 U288 ( .A(n291), .B(n422), .C(n423), .Y(n362) );
  NAND2X2 U289 ( .A(n375), .B(n421), .Y(n426) );
  AOI22XL U290 ( .A0(res_addr_origin[7]), .A1(n301), .B0(res_addr_SW[7]), .B1(
        n362), .Y(n395) );
  NAND2X1 U291 ( .A(n376), .B(n422), .Y(n300) );
  NAND3X1 U292 ( .A(n229), .B(n425), .C(n291), .Y(n428) );
  NOR3X8 U293 ( .A(n276), .B(res_di[0]), .C(res_di[1]), .Y(n537) );
  NOR3X2 U294 ( .A(n455), .B(n454), .C(n456), .Y(n444) );
  OA21X4 U295 ( .A0(n453), .A1(n454), .B0(n442), .Y(n445) );
  OR2X1 U296 ( .A(n458), .B(n459), .Y(n297) );
  NAND2X2 U297 ( .A(n509), .B(n510), .Y(n293) );
  NAND2X1 U298 ( .A(n460), .B(n511), .Y(n294) );
  NAND2X1 U299 ( .A(n512), .B(N21), .Y(n295) );
  INVX3 U300 ( .A(state[0]), .Y(n510) );
  CLKINVX1 U301 ( .A(n460), .Y(n456) );
  INVXL U302 ( .A(n440), .Y(n228) );
  OR2X1 U303 ( .A(n457), .B(n432), .Y(n296) );
  OR2X8 U304 ( .A(n455), .B(n456), .Y(n298) );
  NOR2XL U305 ( .A(n453), .B(n460), .Y(n457) );
  OA22XL U306 ( .A0(n233), .A1(res_di[7]), .B0(n478), .B1(n479), .Y(n458) );
  OA22X4 U307 ( .A0(n461), .A1(n462), .B0(n233), .B1(N330), .Y(n455) );
  CLKBUFX3 U308 ( .A(n546), .Y(res_addr[9]) );
  CLKBUFX3 U309 ( .A(n553), .Y(res_addr[2]) );
  CLKBUFX3 U310 ( .A(n552), .Y(res_addr[3]) );
  CLKBUFX3 U311 ( .A(n551), .Y(res_addr[4]) );
  CLKBUFX3 U312 ( .A(n550), .Y(res_addr[5]) );
  CLKBUFX3 U313 ( .A(n549), .Y(res_addr[6]) );
  CLKBUFX3 U314 ( .A(n547), .Y(res_addr[8]) );
  AND3X4 U315 ( .A(n425), .B(n422), .C(n291), .Y(n365) );
  NAND3X1 U316 ( .A(n406), .B(n407), .C(n408), .Y(n253) );
  AOI222XL U317 ( .A0(res_addr_SW[10]), .A1(n362), .B0(res_addr_W[10]), .B1(
        n302), .C0(res_addr_origin[10]), .C1(n301), .Y(n408) );
  OAI21XL U318 ( .A0(n347), .A1(n426), .B0(n422), .Y(n299) );
  INVX3 U319 ( .A(n299), .Y(n368) );
  NOR3X2 U320 ( .A(n527), .B(n340), .C(n522), .Y(n526) );
  OAI222XL U321 ( .A0(n343), .A1(n344), .B0(n337), .B1(n345), .C0(n346), .C1(
        n347), .Y(n540) );
  NOR2X1 U322 ( .A(n348), .B(n349), .Y(n345) );
  CLKAND2X3 U323 ( .A(n427), .B(n422), .Y(n367) );
  OAI21XL U324 ( .A0(n239), .A1(n442), .B0(n446), .Y(n248) );
  BUFX4 U325 ( .A(res_addr_NE[0]), .Y(res_addr[0]) );
  BUFX4 U326 ( .A(n543), .Y(res_addr[12]) );
  BUFX4 U327 ( .A(n541), .Y(sti_rd) );
  NOR3XL U328 ( .A(n342), .B(state[3]), .C(n510), .Y(n541) );
  CLKBUFX3 U329 ( .A(n542), .Y(res_addr[13]) );
  BUFX4 U330 ( .A(n548), .Y(res_addr[7]) );
  CLKBUFX3 U331 ( .A(reset), .Y(n322) );
  CLKBUFX3 U332 ( .A(reset), .Y(n321) );
  NAND3BX2 U333 ( .AN(n305), .B(n346), .C(n304), .Y(n492) );
  CLKBUFX3 U334 ( .A(n495), .Y(n305) );
  BUFX2 U335 ( .A(n496), .Y(n304) );
  NOR2BXL U336 ( .AN(nx_state[1]), .B(n438), .Y(n495) );
  NAND3XL U337 ( .A(nx_state[1]), .B(n436), .C(n228), .Y(n496) );
  NOR3X4 U338 ( .A(n436), .B(nx_state[1]), .C(n437), .Y(n376) );
  INVX8 U339 ( .A(nx_state[0]), .Y(n436) );
  MXI2X4 U340 ( .A(n526), .B(n525), .S0(res_addr[0]), .Y(n523) );
  NAND2X2 U341 ( .A(n278), .B(n516), .Y(n514) );
  NAND2X8 U342 ( .A(n537), .B(n538), .Y(n516) );
  AOI22XL U343 ( .A0(res_addr_E[7]), .A1(n367), .B0(res_addr_W[7]), .B1(n302), 
        .Y(n396) );
  AOI222XL U344 ( .A0(res_addr_SW[11]), .A1(n362), .B0(res_addr_W[11]), .B1(
        n302), .C0(res_addr_origin[11]), .C1(n301), .Y(n411) );
  OAI21X1 U345 ( .A0(n341), .A1(n516), .B0(n504), .Y(n515) );
  NOR3X4 U346 ( .A(n532), .B(n533), .C(n534), .Y(n525) );
  OAI2BB2X4 U347 ( .B0(n376), .B1(n291), .A0N(n431), .A1N(n432), .Y(n429) );
  OAI211X4 U348 ( .A0(n425), .A1(n459), .B0(n507), .C0(n508), .Y(nx_state[0])
         );
  AOI22XL U349 ( .A0(N335), .A1(n444), .B0(res_di[0]), .B1(n445), .Y(n443) );
  AOI22XL U350 ( .A0(N337), .A1(n444), .B0(res_di[2]), .B1(n445), .Y(n447) );
  AOI22XL U351 ( .A0(N336), .A1(n444), .B0(n445), .B1(res_di[1]), .Y(n446) );
  AOI22XL U352 ( .A0(N338), .A1(n444), .B0(n445), .B1(res_di[3]), .Y(n448) );
  AOI22XL U353 ( .A0(N339), .A1(n444), .B0(n445), .B1(res_di[4]), .Y(n449) );
  AOI22XL U354 ( .A0(N340), .A1(n444), .B0(n445), .B1(res_di[5]), .Y(n450) );
  AOI22XL U355 ( .A0(N341), .A1(n444), .B0(n445), .B1(res_di[6]), .Y(n451) );
  AOI22XL U356 ( .A0(N342), .A1(n444), .B0(n445), .B1(res_di[7]), .Y(n452) );
  NAND3X1 U357 ( .A(n400), .B(n401), .C(n402), .Y(n255) );
  OAI32X2 U358 ( .A0(n516), .A1(state[0]), .A2(n342), .B0(state[2]), .B1(n278), 
        .Y(n535) );
  OAI21XL U359 ( .A0(n420), .A1(n419), .B0(n421), .Y(n363) );
  NAND4X4 U360 ( .A(n290), .B(n428), .C(n429), .D(n430), .Y(n422) );
  XOR2X1 U361 ( .A(res_addr[13]), .B(\add_91/carry[13] ), .Y(
        res_addr_origin[13]) );
  AND2X1 U362 ( .A(res_addr[12]), .B(\add_91/carry[12] ), .Y(
        \add_91/carry[13] ) );
  XOR2X1 U363 ( .A(res_addr[12]), .B(\add_91/carry[12] ), .Y(
        res_addr_origin[12]) );
  AND2X1 U364 ( .A(res_addr[11]), .B(\add_91/carry[11] ), .Y(
        \add_91/carry[12] ) );
  XOR2X1 U365 ( .A(res_addr[11]), .B(\add_91/carry[11] ), .Y(
        res_addr_origin[11]) );
  AND2X1 U366 ( .A(res_addr[10]), .B(\add_91/carry[10] ), .Y(
        \add_91/carry[11] ) );
  XOR2X1 U367 ( .A(res_addr[10]), .B(\add_91/carry[10] ), .Y(
        res_addr_origin[10]) );
  AND2X1 U368 ( .A(res_addr[9]), .B(\add_91/carry[9] ), .Y(\add_91/carry[10] )
         );
  XOR2X1 U369 ( .A(res_addr[9]), .B(\add_91/carry[9] ), .Y(res_addr_origin[9])
         );
  AND2X1 U370 ( .A(res_addr[8]), .B(\add_91/carry[8] ), .Y(\add_91/carry[9] )
         );
  XOR2X1 U371 ( .A(res_addr[8]), .B(\add_91/carry[8] ), .Y(res_addr_origin[8])
         );
  OR2X1 U372 ( .A(res_addr[7]), .B(\add_91/carry[7] ), .Y(\add_91/carry[8] )
         );
  XNOR2X1 U373 ( .A(\add_91/carry[7] ), .B(res_addr[7]), .Y(res_addr_origin[7]) );
  AND2X1 U374 ( .A(res_addr[6]), .B(\add_91/carry[6] ), .Y(\add_91/carry[7] )
         );
  XOR2X1 U375 ( .A(res_addr[6]), .B(\add_91/carry[6] ), .Y(res_addr_origin[6])
         );
  AND2X1 U376 ( .A(res_addr[5]), .B(\add_91/carry[5] ), .Y(\add_91/carry[6] )
         );
  XOR2X1 U377 ( .A(res_addr[5]), .B(\add_91/carry[5] ), .Y(res_addr_origin[5])
         );
  AND2X1 U378 ( .A(res_addr[4]), .B(\add_91/carry[4] ), .Y(\add_91/carry[5] )
         );
  XOR2X1 U379 ( .A(res_addr[4]), .B(\add_91/carry[4] ), .Y(res_addr_origin[4])
         );
  AND2X1 U380 ( .A(res_addr[3]), .B(\add_91/carry[3] ), .Y(\add_91/carry[4] )
         );
  XOR2X1 U381 ( .A(res_addr[3]), .B(\add_91/carry[3] ), .Y(res_addr_origin[3])
         );
  AND2X1 U382 ( .A(res_addr[2]), .B(\add_91/carry[2] ), .Y(\add_91/carry[3] )
         );
  XOR2X1 U383 ( .A(res_addr[2]), .B(\add_91/carry[2] ), .Y(res_addr_origin[2])
         );
  XOR2X1 U384 ( .A(res_addr[13]), .B(\add_93/carry [13]), .Y(res_addr_SW[13])
         );
  AND2X1 U385 ( .A(res_addr[12]), .B(\add_93/carry [12]), .Y(
        \add_93/carry [13]) );
  XOR2X1 U386 ( .A(res_addr[12]), .B(\add_93/carry [12]), .Y(res_addr_SW[12])
         );
  AND2X1 U387 ( .A(res_addr[11]), .B(\add_93/carry [11]), .Y(
        \add_93/carry [12]) );
  XOR2X1 U388 ( .A(res_addr[11]), .B(\add_93/carry [11]), .Y(res_addr_SW[11])
         );
  AND2X1 U389 ( .A(res_addr[10]), .B(\add_93/carry [10]), .Y(
        \add_93/carry [11]) );
  XOR2X1 U390 ( .A(res_addr[10]), .B(\add_93/carry [10]), .Y(res_addr_SW[10])
         );
  AND2X1 U391 ( .A(res_addr[9]), .B(\add_93/carry [9]), .Y(\add_93/carry [10])
         );
  XOR2X1 U392 ( .A(res_addr[9]), .B(\add_93/carry [9]), .Y(res_addr_SW[9]) );
  AND2X1 U393 ( .A(res_addr[8]), .B(\add_93/carry [8]), .Y(\add_93/carry [9])
         );
  XOR2X1 U394 ( .A(res_addr[8]), .B(\add_93/carry [8]), .Y(res_addr_SW[8]) );
  AND2X1 U395 ( .A(res_addr[7]), .B(\add_93/carry [7]), .Y(\add_93/carry [8])
         );
  XOR2X1 U396 ( .A(res_addr[7]), .B(\add_93/carry [7]), .Y(res_addr_SW[7]) );
  OR2X1 U397 ( .A(res_addr[6]), .B(\add_93/carry [6]), .Y(\add_93/carry [7])
         );
  XNOR2X1 U398 ( .A(\add_93/carry [6]), .B(res_addr[6]), .Y(res_addr_SW[6]) );
  OR2X1 U399 ( .A(res_addr[5]), .B(\add_93/carry [5]), .Y(\add_93/carry [6])
         );
  XNOR2X1 U400 ( .A(\add_93/carry [5]), .B(res_addr[5]), .Y(res_addr_SW[5]) );
  OR2X1 U401 ( .A(res_addr[4]), .B(\add_93/carry [4]), .Y(\add_93/carry [5])
         );
  XNOR2X1 U402 ( .A(\add_93/carry [4]), .B(res_addr[4]), .Y(res_addr_SW[4]) );
  OR2X1 U403 ( .A(res_addr[3]), .B(\add_93/carry [3]), .Y(\add_93/carry [4])
         );
  XNOR2X1 U404 ( .A(\add_93/carry [3]), .B(res_addr[3]), .Y(res_addr_SW[3]) );
  OR2X1 U405 ( .A(res_addr[2]), .B(res_addr[1]), .Y(\add_93/carry [3]) );
  XNOR2X1 U406 ( .A(res_addr[1]), .B(res_addr[2]), .Y(res_addr_SW[2]) );
  XNOR2X1 U407 ( .A(res_addr[13]), .B(\sub_89/carry [13]), .Y(res_addr_NE[13])
         );
  OR2X1 U408 ( .A(res_addr[12]), .B(\sub_89/carry [12]), .Y(\sub_89/carry [13]) );
  XNOR2X1 U409 ( .A(\sub_89/carry [12]), .B(res_addr[12]), .Y(res_addr_NE[12])
         );
  OR2X1 U410 ( .A(res_addr[11]), .B(\sub_89/carry [11]), .Y(\sub_89/carry [12]) );
  XNOR2X1 U411 ( .A(\sub_89/carry [11]), .B(res_addr[11]), .Y(res_addr_NE[11])
         );
  OR2X1 U412 ( .A(res_addr[10]), .B(\sub_89/carry [10]), .Y(\sub_89/carry [11]) );
  XNOR2X1 U413 ( .A(\sub_89/carry [10]), .B(res_addr[10]), .Y(res_addr_NE[10])
         );
  OR2X1 U414 ( .A(res_addr[9]), .B(\sub_89/carry [9]), .Y(\sub_89/carry [10])
         );
  XNOR2X1 U415 ( .A(\sub_89/carry [9]), .B(res_addr[9]), .Y(res_addr_NE[9]) );
  OR2X1 U416 ( .A(res_addr[8]), .B(\sub_89/carry [8]), .Y(\sub_89/carry [9])
         );
  XNOR2X1 U417 ( .A(\sub_89/carry [8]), .B(res_addr[8]), .Y(res_addr_NE[8]) );
  OR2X1 U418 ( .A(res_addr[7]), .B(\sub_89/carry [7]), .Y(\sub_89/carry [8])
         );
  XNOR2X1 U419 ( .A(\sub_89/carry [7]), .B(res_addr[7]), .Y(res_addr_NE[7]) );
  AND2X1 U420 ( .A(\sub_89/carry [6]), .B(res_addr[6]), .Y(\sub_89/carry [7])
         );
  XOR2X1 U421 ( .A(res_addr[6]), .B(\sub_89/carry [6]), .Y(res_addr_NE[6]) );
  AND2X1 U422 ( .A(\sub_89/carry [5]), .B(res_addr[5]), .Y(\sub_89/carry [6])
         );
  XOR2X1 U423 ( .A(res_addr[5]), .B(\sub_89/carry [5]), .Y(res_addr_NE[5]) );
  AND2X1 U424 ( .A(\sub_89/carry [4]), .B(res_addr[4]), .Y(\sub_89/carry [5])
         );
  XOR2X1 U425 ( .A(res_addr[4]), .B(\sub_89/carry [4]), .Y(res_addr_NE[4]) );
  AND2X1 U426 ( .A(\sub_89/carry [3]), .B(res_addr[3]), .Y(\sub_89/carry [4])
         );
  XOR2X1 U427 ( .A(res_addr[3]), .B(\sub_89/carry [3]), .Y(res_addr_NE[3]) );
  AND2X1 U428 ( .A(res_addr[1]), .B(res_addr[2]), .Y(\sub_89/carry [3]) );
  XOR2X1 U429 ( .A(res_addr[2]), .B(res_addr[1]), .Y(res_addr_NE[2]) );
  XNOR2X1 U430 ( .A(res_addr[13]), .B(\sub_94/carry[13] ), .Y(
        res_addr_origin_back[13]) );
  OR2X1 U431 ( .A(res_addr[12]), .B(\sub_94/carry[12] ), .Y(\sub_94/carry[13] ) );
  XNOR2X1 U432 ( .A(\sub_94/carry[12] ), .B(res_addr[12]), .Y(
        res_addr_origin_back[12]) );
  OR2X1 U433 ( .A(res_addr[11]), .B(\sub_94/carry[11] ), .Y(\sub_94/carry[12] ) );
  XNOR2X1 U434 ( .A(\sub_94/carry[11] ), .B(res_addr[11]), .Y(
        res_addr_origin_back[11]) );
  OR2X1 U435 ( .A(res_addr[10]), .B(\sub_94/carry[10] ), .Y(\sub_94/carry[11] ) );
  XNOR2X1 U436 ( .A(\sub_94/carry[10] ), .B(res_addr[10]), .Y(
        res_addr_origin_back[10]) );
  OR2X1 U437 ( .A(res_addr[9]), .B(\sub_94/carry[9] ), .Y(\sub_94/carry[10] )
         );
  XNOR2X1 U438 ( .A(\sub_94/carry[9] ), .B(res_addr[9]), .Y(
        res_addr_origin_back[9]) );
  OR2X1 U439 ( .A(res_addr[8]), .B(\sub_94/carry[8] ), .Y(\sub_94/carry[9] )
         );
  XNOR2X1 U440 ( .A(\sub_94/carry[8] ), .B(res_addr[8]), .Y(
        res_addr_origin_back[8]) );
  AND2X1 U441 ( .A(\sub_94/carry[7] ), .B(res_addr[7]), .Y(\sub_94/carry[8] )
         );
  XOR2X1 U442 ( .A(res_addr[7]), .B(\sub_94/carry[7] ), .Y(
        res_addr_origin_back[7]) );
  OR2X1 U443 ( .A(res_addr[6]), .B(\sub_94/carry[6] ), .Y(\sub_94/carry[7] )
         );
  XNOR2X1 U444 ( .A(\sub_94/carry[6] ), .B(res_addr[6]), .Y(
        res_addr_origin_back[6]) );
  OR2X1 U445 ( .A(res_addr[5]), .B(\sub_94/carry[5] ), .Y(\sub_94/carry[6] )
         );
  XNOR2X1 U446 ( .A(\sub_94/carry[5] ), .B(res_addr[5]), .Y(
        res_addr_origin_back[5]) );
  OR2X1 U447 ( .A(res_addr[4]), .B(\sub_94/carry[4] ), .Y(\sub_94/carry[5] )
         );
  XNOR2X1 U448 ( .A(\sub_94/carry[4] ), .B(res_addr[4]), .Y(
        res_addr_origin_back[4]) );
  OR2X1 U449 ( .A(res_addr[3]), .B(\sub_94/carry[3] ), .Y(\sub_94/carry[4] )
         );
  XNOR2X1 U450 ( .A(\sub_94/carry[3] ), .B(res_addr[3]), .Y(
        res_addr_origin_back[3]) );
  OR2X1 U451 ( .A(res_addr[2]), .B(\sub_94/carry[2] ), .Y(\sub_94/carry[3] )
         );
  XNOR2X1 U452 ( .A(\sub_94/carry[2] ), .B(res_addr[2]), .Y(
        res_addr_origin_back[2]) );
  AND2X1 U453 ( .A(res_addr[1]), .B(res_addr[0]), .Y(\add_91/carry[2] ) );
  XOR2X1 U454 ( .A(res_addr[1]), .B(res_addr[0]), .Y(res_addr_origin[1]) );
  OR2X1 U455 ( .A(res_addr[1]), .B(res_addr[0]), .Y(\sub_94/carry[2] ) );
  XNOR2X1 U456 ( .A(res_addr[0]), .B(res_addr[1]), .Y(res_addr_origin_back[1])
         );
  NOR2X1 U457 ( .A(n338), .B(N43), .Y(n332) );
  NOR2X1 U458 ( .A(n338), .B(n339), .Y(n331) );
  NOR2X1 U459 ( .A(n339), .B(N44), .Y(n329) );
  NOR2X1 U460 ( .A(N43), .B(N44), .Y(n328) );
  AO22X1 U461 ( .A0(sti_di[5]), .A1(n329), .B0(sti_di[4]), .B1(n328), .Y(n323)
         );
  AOI221XL U462 ( .A0(sti_di[6]), .A1(n332), .B0(sti_di[7]), .B1(n331), .C0(
        n323), .Y(n326) );
  AO22X1 U463 ( .A0(sti_di[1]), .A1(n329), .B0(sti_di[0]), .B1(n328), .Y(n324)
         );
  AOI221XL U464 ( .A0(sti_di[2]), .A1(n332), .B0(sti_di[3]), .B1(n331), .C0(
        n324), .Y(n325) );
  OA22X1 U465 ( .A0(n337), .A1(n326), .B0(N45), .B1(n325), .Y(n336) );
  AO22X1 U466 ( .A0(sti_di[13]), .A1(n329), .B0(sti_di[12]), .B1(n328), .Y(
        n327) );
  AOI221XL U467 ( .A0(sti_di[14]), .A1(n332), .B0(sti_di[15]), .B1(n331), .C0(
        n327), .Y(n334) );
  AO22X1 U468 ( .A0(sti_di[9]), .A1(n329), .B0(sti_di[8]), .B1(n328), .Y(n330)
         );
  AOI221XL U469 ( .A0(sti_di[10]), .A1(n332), .B0(sti_di[11]), .B1(n331), .C0(
        n330), .Y(n333) );
  OAI22XL U470 ( .A0(n334), .A1(n337), .B0(N45), .B1(n333), .Y(n335) );
  OAI2BB2XL U471 ( .B0(n336), .B1(N21), .A0N(N21), .A1N(n335), .Y(N270) );
  MXI2X1 U472 ( .A(n343), .B(n346), .S0(N44), .Y(n349) );
  CLKINVX1 U473 ( .A(n350), .Y(n344) );
  MXI2X1 U474 ( .A(n351), .B(n352), .S0(N43), .Y(n267) );
  MXI2X1 U475 ( .A(n353), .B(n354), .S0(N21), .Y(n266) );
  CLKINVX1 U476 ( .A(n355), .Y(n354) );
  OAI221XL U477 ( .A0(n346), .A1(n356), .B0(n343), .B1(n357), .C0(n352), .Y(
        n355) );
  AOI2BB2X1 U478 ( .B0(n358), .B1(n357), .A0N(n347), .A1N(n346), .Y(n353) );
  NAND3X1 U479 ( .A(n359), .B(n360), .C(n361), .Y(n265) );
  AOI222XL U480 ( .A0(n285), .A1(n362), .B0(res_addr_W[1]), .B1(n302), .C0(
        res_addr_origin[1]), .C1(n301), .Y(n361) );
  AOI22X1 U481 ( .A0(res_addr_origin_back[1]), .A1(n365), .B0(n285), .B1(n303), 
        .Y(n360) );
  AOI2BB2X1 U482 ( .B0(res_addr_E[1]), .B1(n367), .A0N(n368), .A1N(n285), .Y(
        n359) );
  CLKINVX1 U483 ( .A(n369), .Y(n263) );
  AOI222XL U484 ( .A0(n358), .A1(n370), .B0(n371), .B1(n372), .C0(N44), .C1(
        n348), .Y(n369) );
  NAND2X1 U485 ( .A(n373), .B(n352), .Y(n348) );
  NAND2X1 U486 ( .A(n290), .B(n351), .Y(n352) );
  NOR2X1 U487 ( .A(n358), .B(n371), .Y(n351) );
  MXI2X1 U488 ( .A(n358), .B(n371), .S0(N43), .Y(n373) );
  CLKINVX1 U489 ( .A(n343), .Y(n358) );
  NAND3X1 U490 ( .A(n377), .B(n378), .C(n379), .Y(n262) );
  AOI222XL U491 ( .A0(res_addr[0]), .A1(n362), .B0(res_addr_W[0]), .B1(n302), 
        .C0(n284), .C1(n301), .Y(n379) );
  AOI22X1 U492 ( .A0(n284), .A1(n365), .B0(res_addr[0]), .B1(n303), .Y(n378)
         );
  AOI2BB2X1 U493 ( .B0(res_addr_E[0]), .B1(n367), .A0N(n368), .A1N(n284), .Y(
        n377) );
  NAND3X1 U494 ( .A(n380), .B(n381), .C(n382), .Y(n261) );
  AOI222XL U495 ( .A0(res_addr_SW[2]), .A1(n362), .B0(res_addr_W[2]), .B1(n302), .C0(res_addr_origin[2]), .C1(n301), .Y(n382) );
  AOI22X1 U496 ( .A0(res_addr_origin_back[2]), .A1(n365), .B0(res_addr_NE[2]), 
        .B1(n303), .Y(n381) );
  AOI2BB2X1 U497 ( .B0(res_addr_E[2]), .B1(n367), .A0N(n368), .A1N(n273), .Y(
        n380) );
  NAND3X1 U498 ( .A(n383), .B(n384), .C(n385), .Y(n260) );
  AOI222XL U499 ( .A0(res_addr_SW[3]), .A1(n362), .B0(res_addr_W[3]), .B1(n302), .C0(res_addr_origin[3]), .C1(n301), .Y(n385) );
  AOI22X1 U500 ( .A0(res_addr_origin_back[3]), .A1(n365), .B0(res_addr_NE[3]), 
        .B1(n303), .Y(n384) );
  AOI2BB2X1 U501 ( .B0(res_addr_E[3]), .B1(n367), .A0N(n368), .A1N(n268), .Y(
        n383) );
  NAND3X1 U502 ( .A(n386), .B(n387), .C(n388), .Y(n259) );
  AOI222XL U503 ( .A0(res_addr_SW[4]), .A1(n362), .B0(res_addr_W[4]), .B1(n302), .C0(res_addr_origin[4]), .C1(n301), .Y(n388) );
  AOI22X1 U504 ( .A0(res_addr_origin_back[4]), .A1(n365), .B0(res_addr_NE[4]), 
        .B1(n303), .Y(n387) );
  AOI2BB2X1 U505 ( .B0(res_addr_E[4]), .B1(n367), .A0N(n368), .A1N(n280), .Y(
        n386) );
  NAND3X1 U506 ( .A(n389), .B(n390), .C(n391), .Y(n258) );
  AOI222XL U507 ( .A0(res_addr_SW[5]), .A1(n362), .B0(res_addr_W[5]), .B1(n302), .C0(res_addr_origin[5]), .C1(n301), .Y(n391) );
  AOI22X1 U508 ( .A0(res_addr_origin_back[5]), .A1(n365), .B0(res_addr_NE[5]), 
        .B1(n303), .Y(n390) );
  AOI2BB2X1 U509 ( .B0(res_addr_E[5]), .B1(n367), .A0N(n368), .A1N(n270), .Y(
        n389) );
  NAND3X1 U510 ( .A(n392), .B(n393), .C(n394), .Y(n257) );
  AOI222XL U511 ( .A0(res_addr_SW[6]), .A1(n362), .B0(res_addr_W[6]), .B1(n302), .C0(res_addr_origin[6]), .C1(n301), .Y(n394) );
  AOI22X1 U512 ( .A0(res_addr_origin_back[6]), .A1(n365), .B0(res_addr_NE[6]), 
        .B1(n303), .Y(n393) );
  AOI2BB2X1 U513 ( .B0(res_addr_E[6]), .B1(n367), .A0N(n368), .A1N(n269), .Y(
        n392) );
  NAND4X1 U514 ( .A(n395), .B(n396), .C(n397), .D(n398), .Y(n256) );
  AOI21X1 U515 ( .A0(res_addr_origin_back[7]), .A1(n365), .B0(n399), .Y(n398)
         );
  AOI222XL U516 ( .A0(res_addr_SW[8]), .A1(n362), .B0(res_addr_W[8]), .B1(n302), .C0(res_addr_origin[8]), .C1(n301), .Y(n402) );
  AOI22X1 U517 ( .A0(res_addr_origin_back[8]), .A1(n365), .B0(res_addr_NE[8]), 
        .B1(n303), .Y(n401) );
  AOI2BB2X1 U518 ( .B0(res_addr_E[8]), .B1(n367), .A0N(n368), .A1N(n272), .Y(
        n400) );
  NAND3X1 U519 ( .A(n403), .B(n404), .C(n405), .Y(n254) );
  AOI222XL U520 ( .A0(res_addr_SW[9]), .A1(n362), .B0(res_addr_W[9]), .B1(n302), .C0(res_addr_origin[9]), .C1(n301), .Y(n405) );
  AOI22X1 U521 ( .A0(res_addr_origin_back[9]), .A1(n365), .B0(res_addr_NE[9]), 
        .B1(n303), .Y(n404) );
  AOI2BB2X1 U522 ( .B0(res_addr_E[9]), .B1(n367), .A0N(n368), .A1N(n279), .Y(
        n403) );
  AOI22X1 U523 ( .A0(res_addr_origin_back[10]), .A1(n365), .B0(res_addr_NE[10]), .B1(n303), .Y(n407) );
  AOI2BB2X1 U524 ( .B0(res_addr_E[10]), .B1(n367), .A0N(n368), .A1N(n275), .Y(
        n406) );
  NAND3X1 U525 ( .A(n409), .B(n410), .C(n411), .Y(n252) );
  AOI22X1 U526 ( .A0(res_addr_origin_back[11]), .A1(n365), .B0(res_addr_NE[11]), .B1(n303), .Y(n410) );
  AOI2BB2X1 U527 ( .B0(res_addr_E[11]), .B1(n367), .A0N(n368), .A1N(n282), .Y(
        n409) );
  AOI22X1 U528 ( .A0(res_addr_origin_back[12]), .A1(n365), .B0(res_addr_NE[12]), .B1(n303), .Y(n413) );
  AOI2BB2X1 U529 ( .B0(res_addr_E[12]), .B1(n367), .A0N(n368), .A1N(n271), .Y(
        n412) );
  NAND3X1 U530 ( .A(n415), .B(n416), .C(n417), .Y(n250) );
  AOI222XL U531 ( .A0(res_addr_SW[13]), .A1(n362), .B0(res_addr_W[13]), .B1(
        n302), .C0(res_addr_origin[13]), .C1(n301), .Y(n417) );
  AOI22X1 U532 ( .A0(res_addr_origin_back[13]), .A1(n365), .B0(res_addr_NE[13]), .B1(n303), .Y(n416) );
  AOI2BB2X1 U533 ( .B0(res_addr_E[13]), .B1(n367), .A0N(n368), .A1N(n281), .Y(
        n415) );
  CLKINVX1 U534 ( .A(n356), .Y(n347) );
  OAI21XL U535 ( .A0(n418), .A1(n433), .B0(n229), .Y(n431) );
  CLKINVX1 U536 ( .A(n420), .Y(n433) );
  NOR3X1 U537 ( .A(n356), .B(n350), .C(n423), .Y(n420) );
  NOR2BX1 U538 ( .AN(n434), .B(N45), .Y(n423) );
  NOR2X1 U539 ( .A(n435), .B(N45), .Y(n356) );
  OA21XL U540 ( .A0(nx_state[1]), .A1(n438), .B0(n421), .Y(n374) );
  OAI221XL U541 ( .A0(n399), .A1(n438), .B0(n439), .B1(n426), .C0(n430), .Y(
        n427) );
  AOI211X1 U542 ( .A0(n337), .A1(n370), .B0(n418), .C0(n350), .Y(n439) );
  NOR3X1 U543 ( .A(n338), .B(n339), .C(N45), .Y(n350) );
  NOR2X1 U544 ( .A(n435), .B(n337), .Y(n418) );
  CLKINVX1 U545 ( .A(n372), .Y(n435) );
  NOR2X1 U546 ( .A(N44), .B(N43), .Y(n372) );
  CLKINVX1 U547 ( .A(n441), .Y(n399) );
  OAI21XL U548 ( .A0(n240), .A1(n442), .B0(n443), .Y(n249) );
  OAI21XL U549 ( .A0(n238), .A1(n442), .B0(n447), .Y(n247) );
  OAI21XL U550 ( .A0(n237), .A1(n442), .B0(n448), .Y(n246) );
  OAI21XL U551 ( .A0(n236), .A1(n442), .B0(n449), .Y(n245) );
  OAI21XL U552 ( .A0(n235), .A1(n442), .B0(n450), .Y(n244) );
  OAI21XL U553 ( .A0(n234), .A1(n442), .B0(n451), .Y(n243) );
  OAI21XL U554 ( .A0(n233), .A1(n442), .B0(n452), .Y(n242) );
  AND2X1 U555 ( .A(N330), .B(n233), .Y(n462) );
  NAND2X1 U556 ( .A(n468), .B(N329), .Y(n466) );
  OAI211X1 U557 ( .A0(n237), .A1(n471), .B0(n472), .C0(n473), .Y(n463) );
  AO21X1 U558 ( .A0(n471), .A1(n237), .B0(N326), .Y(n473) );
  OAI222XL U559 ( .A0(n474), .A1(minimum[3]), .B0(n475), .B1(minimum[2]), .C0(
        n476), .C1(n477), .Y(n472) );
  NOR2X1 U560 ( .A(n239), .B(N324), .Y(n477) );
  AOI211X1 U561 ( .A0(n239), .A1(N324), .B0(n240), .C0(N323), .Y(n476) );
  CLKINVX1 U562 ( .A(N326), .Y(n474) );
  NAND2X1 U563 ( .A(minimum[2]), .B(n475), .Y(n471) );
  CLKINVX1 U564 ( .A(N325), .Y(n475) );
  AND2X1 U565 ( .A(n233), .B(res_di[7]), .Y(n479) );
  AOI32X1 U566 ( .A0(n480), .A1(n481), .A2(n482), .B0(n483), .B1(n484), .Y(
        n478) );
  OAI21XL U567 ( .A0(n485), .A1(n234), .B0(res_di[6]), .Y(n484) );
  NAND2X1 U568 ( .A(n485), .B(n234), .Y(n483) );
  CLKINVX1 U569 ( .A(n486), .Y(n485) );
  OAI32X1 U570 ( .A0(n487), .A1(res_di[4]), .A2(n236), .B0(res_di[5]), .B1(
        n235), .Y(n486) );
  CLKINVX1 U571 ( .A(n480), .Y(n487) );
  AOI22X1 U572 ( .A0(res_di[6]), .A1(n234), .B0(res_di[4]), .B1(n236), .Y(n482) );
  OAI22XL U573 ( .A0(res_di[3]), .A1(n237), .B0(n488), .B1(n489), .Y(n481) );
  ACHCINX2 U574 ( .CIN(n490), .A(n238), .B(n491), .CO(n489) );
  ACHCINX2 U575 ( .CIN(minimum[0]), .A(res_di[1]), .B(n239), .CO(n491) );
  CLKINVX1 U576 ( .A(res_di[2]), .Y(n490) );
  AND2X1 U577 ( .A(res_di[3]), .B(n237), .Y(n488) );
  NAND2X1 U578 ( .A(res_di[5]), .B(n235), .Y(n480) );
  CLKINVX1 U579 ( .A(n454), .Y(n432) );
  NOR3X1 U580 ( .A(N21), .B(n424), .C(N45), .Y(n454) );
  OAI211X1 U581 ( .A0(n492), .A1(n198), .B0(n493), .C0(n494), .Y(n241) );
  AOI2BB2X1 U582 ( .B0(N271), .B1(n305), .A0N(n240), .A1N(n304), .Y(n494) );
  NAND2X1 U583 ( .A(N270), .B(n371), .Y(n493) );
  CLKINVX1 U584 ( .A(n346), .Y(n371) );
  OAI221XL U585 ( .A0(n492), .A1(n205), .B0(n233), .B1(n304), .C0(n497), .Y(
        n226) );
  NAND2X1 U586 ( .A(N278), .B(n305), .Y(n497) );
  OAI221XL U587 ( .A0(n492), .A1(n204), .B0(n234), .B1(n304), .C0(n498), .Y(
        n225) );
  NAND2X1 U588 ( .A(N277), .B(n305), .Y(n498) );
  OAI221XL U589 ( .A0(n492), .A1(n203), .B0(n235), .B1(n304), .C0(n499), .Y(
        n224) );
  NAND2X1 U590 ( .A(N276), .B(n305), .Y(n499) );
  OAI221XL U591 ( .A0(n492), .A1(n202), .B0(n236), .B1(n304), .C0(n500), .Y(
        n223) );
  NAND2X1 U592 ( .A(N275), .B(n305), .Y(n500) );
  OAI221XL U593 ( .A0(n492), .A1(n201), .B0(n237), .B1(n304), .C0(n501), .Y(
        n222) );
  NAND2X1 U594 ( .A(N274), .B(n305), .Y(n501) );
  OAI221XL U595 ( .A0(n492), .A1(n200), .B0(n238), .B1(n304), .C0(n502), .Y(
        n221) );
  NAND2X1 U596 ( .A(N273), .B(n305), .Y(n502) );
  OAI221XL U597 ( .A0(n492), .A1(n199), .B0(n239), .B1(n304), .C0(n503), .Y(
        n220) );
  NAND2X1 U598 ( .A(N272), .B(n305), .Y(n503) );
  AOI211X1 U599 ( .A0(state[3]), .A1(n504), .B0(n505), .C0(n506), .Y(n440) );
  CLKINVX1 U600 ( .A(n227), .Y(n437) );
  OAI21XL U601 ( .A0(n513), .A1(n430), .B0(n457), .Y(n512) );
  CLKINVX1 U602 ( .A(n357), .Y(n513) );
  NAND2X1 U603 ( .A(n434), .B(N45), .Y(n511) );
  OAI21XL U604 ( .A0(n340), .A1(n514), .B0(n515), .Y(n509) );
  OAI211X1 U605 ( .A0(state[0]), .A1(n340), .B0(n441), .C0(n459), .Y(n227) );
  CLKINVX1 U606 ( .A(n453), .Y(n459) );
  NAND2X1 U607 ( .A(n517), .B(state[0]), .Y(n441) );
  AOI21X1 U608 ( .A0(n520), .A1(n521), .B0(sti_rd), .Y(n519) );
  OAI31XL U609 ( .A0(n274), .A1(n522), .A2(n284), .B0(n357), .Y(n521) );
  NOR3X1 U610 ( .A(n338), .B(n339), .C(n337), .Y(n357) );
  NAND4X1 U611 ( .A(n528), .B(n529), .C(n530), .D(n531), .Y(n522) );
  NOR3X1 U612 ( .A(n271), .B(n275), .C(n282), .Y(n531) );
  NOR3X1 U613 ( .A(n273), .B(n281), .C(n285), .Y(n530) );
  NOR3X1 U614 ( .A(n270), .B(n268), .C(n280), .Y(n529) );
  NOR3X1 U615 ( .A(n279), .B(n269), .C(n272), .Y(n528) );
  NAND4X1 U616 ( .A(n285), .B(n273), .C(n268), .D(n280), .Y(n534) );
  NAND4X1 U617 ( .A(n270), .B(n269), .C(n272), .D(n279), .Y(n533) );
  NOR4X1 U618 ( .A(res_addr[13]), .B(res_addr[12]), .C(res_addr[11]), .D(
        res_addr[10]), .Y(n536) );
  AOI211X1 U619 ( .A0(n425), .A1(n453), .B0(n520), .C0(n539), .Y(n518) );
  AND3X1 U620 ( .A(n434), .B(n460), .C(N45), .Y(n539) );
  NOR3X1 U621 ( .A(n342), .B(n341), .C(n510), .Y(n460) );
  NOR2X1 U622 ( .A(N43), .B(n338), .Y(n434) );
  CLKINVX1 U623 ( .A(n430), .Y(n520) );
  NAND2X1 U624 ( .A(n517), .B(n510), .Y(n430) );
  NOR3X1 U625 ( .A(state[2]), .B(state[3]), .C(n278), .Y(n517) );
  NOR3X1 U626 ( .A(n340), .B(state[1]), .C(n510), .Y(n453) );
  NOR2X1 U627 ( .A(n424), .B(n337), .Y(n425) );
  CLKINVX1 U628 ( .A(n370), .Y(n424) );
  NOR2X1 U629 ( .A(N44), .B(n339), .Y(n370) );
  CLKMX2X2 U630 ( .A(sti_addr[1]), .B(N111), .S0(sti_rd), .Y(n219) );
  CLKMX2X2 U631 ( .A(sti_addr[0]), .B(N110), .S0(sti_rd), .Y(n218) );
  CLKMX2X2 U632 ( .A(sti_addr[2]), .B(N112), .S0(sti_rd), .Y(n217) );
  CLKMX2X2 U633 ( .A(sti_addr[3]), .B(N113), .S0(sti_rd), .Y(n216) );
  CLKMX2X2 U634 ( .A(sti_addr[4]), .B(N114), .S0(sti_rd), .Y(n215) );
  CLKMX2X2 U635 ( .A(sti_addr[5]), .B(N115), .S0(sti_rd), .Y(n214) );
  CLKMX2X2 U636 ( .A(sti_addr[6]), .B(N116), .S0(sti_rd), .Y(n213) );
  CLKMX2X2 U637 ( .A(sti_addr[7]), .B(N117), .S0(sti_rd), .Y(n212) );
  CLKMX2X2 U638 ( .A(sti_addr[8]), .B(N118), .S0(sti_rd), .Y(n211) );
  CLKMX2X2 U639 ( .A(sti_addr[9]), .B(N119), .S0(sti_rd), .Y(n210) );
  CLKINVX1 U640 ( .A(n504), .Y(n342) );
  NOR2X1 U641 ( .A(state[1]), .B(state[2]), .Y(n504) );
  NAND2BX1 U642 ( .AN(n506), .B(n207), .Y(n209) );
  NOR3X1 U643 ( .A(n340), .B(n278), .C(n510), .Y(n506) );
  NAND2X1 U644 ( .A(state[2]), .B(n341), .Y(n340) );
  NAND2X1 U645 ( .A(n206), .B(n524), .Y(n208) );
  NAND2X1 U646 ( .A(n505), .B(state[0]), .Y(n524) );
  NOR3X1 U647 ( .A(n341), .B(state[2]), .C(n278), .Y(n505) );
endmodule

