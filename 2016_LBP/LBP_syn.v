/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Mon Feb 14 11:04:15 2022
/////////////////////////////////////////////////////////////


module LBP_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  XOR3X2 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  INVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module LBP_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  INVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, \counter_reverse[3] ,
         \nx_state[0] , N82, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, n7, n8, n10,
         n12, n14, n16, n18, n20, n22, n23, n25, n26, n27, n28, n29, n30, n31,
         n33, n35, n36, n39, n40, n43, n44, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n105, n106, n107, n108, n109, n110, n112,
         n115, n116, n124, n132, n133, n134, n135, n136, n137, n139, n146,
         n147, n148, n149, n150, n151, n153, n168, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, \sll_152_S2/SH[1] , \sll_152_S2/SH[0] ,
         n271, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
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
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451;
  wire   [13:0] g0_addr;
  wire   [6:0] g1_addr;
  wire   [6:0] g2_addr;
  wire   [13:7] g3_addr;
  wire   [13:7] g5_addr;
  wire   [3:0] counter;
  wire   [2:0] state;
  wire   [13:0] gc_addr;
  wire   [7:0] gc_data;

  LBP_DW01_add_0 add_152_S2 ( .A(lbp_data), .B({N93, N92, N91, N90, N89, N88, 
        N87, N86}), .CI(1'b0), .SUM({N101, N100, N99, N98, N97, N96, N95, N94}) );
  LBP_DW01_inc_0_DW01_inc_1 r392 ( .A(g3_addr), .SUM(g5_addr) );
  LBP_DW01_inc_1_DW01_inc_2 r390 ( .A(g1_addr), .SUM(g2_addr) );
  DFFSX1 \gc_addr_reg[0]  ( .D(n200), .CK(clk), .SN(n394), .QN(n433) );
  DFFSX1 \gc_addr_reg[7]  ( .D(n153), .CK(clk), .SN(n394), .QN(n112) );
  JKFFRXL \counter_reg[0]  ( .J(n395), .K(n116), .CK(clk), .RN(n394), .Q(
        counter[0]), .QN(\sll_152_S2/SH[0] ) );
  JKFFRXL \counter_reg[1]  ( .J(n181), .K(n182), .CK(clk), .RN(n394), .Q(
        counter[1]), .QN(n338) );
  DFFSXL \y_reg[0]  ( .D(n139), .CK(clk), .SN(n394), .Q(g3_addr[7]), .QN(
        g0_addr[7]) );
  DFFSXL \x_reg[0]  ( .D(n198), .CK(clk), .SN(n394), .Q(g1_addr[0]), .QN(
        g0_addr[0]) );
  DFFRHQXL \state_reg[2]  ( .D(n168), .CK(clk), .RN(n394), .Q(state[2]) );
  DFFRHQXL \state_reg[1]  ( .D(n435), .CK(clk), .RN(n394), .Q(state[1]) );
  DFFRHQXL finish_reg ( .D(n115), .CK(clk), .RN(n394), .Q(n490) );
  DFFRHQXL \gc_data_reg[6]  ( .D(n426), .CK(clk), .RN(n394), .Q(gc_data[6]) );
  DFFRHQXL \gc_data_reg[3]  ( .D(n429), .CK(clk), .RN(n394), .Q(gc_data[3]) );
  DFFRHQXL \gc_data_reg[2]  ( .D(n430), .CK(clk), .RN(n394), .Q(gc_data[2]) );
  DFFRHQXL \gc_data_reg[0]  ( .D(n432), .CK(clk), .RN(n394), .Q(gc_data[0]) );
  DFFRHQXL \gc_data_reg[1]  ( .D(n431), .CK(clk), .RN(n394), .Q(gc_data[1]) );
  DFFRHQXL \gc_data_reg[5]  ( .D(n427), .CK(clk), .RN(n394), .Q(gc_data[5]) );
  DFFRHQXL \gc_data_reg[7]  ( .D(n425), .CK(clk), .RN(n394), .Q(gc_data[7]) );
  DFFRHQXL \gc_data_reg[4]  ( .D(n428), .CK(clk), .RN(n394), .Q(gc_data[4]) );
  DFFRHQXL \state_reg[0]  ( .D(\nx_state[0] ), .CK(clk), .RN(n394), .Q(
        state[0]) );
  DFFRHQXL \lbp_addr_reg[0]  ( .D(n197), .CK(clk), .RN(n394), .Q(n480) );
  DFFRHQXL \lbp_addr_reg[7]  ( .D(n124), .CK(clk), .RN(n394), .Q(n473) );
  DFFRHQXL gray_req_reg ( .D(N82), .CK(clk), .RN(n394), .Q(n466) );
  DFFRHQXL \gc_addr_reg[13]  ( .D(n424), .CK(clk), .RN(n394), .Q(gc_addr[13])
         );
  DFFRHQXL lbp_valid_reg ( .D(n311), .CK(clk), .RN(n394), .Q(n481) );
  DFFRHQXL \gc_addr_reg[11]  ( .D(n422), .CK(clk), .RN(n394), .Q(gc_addr[11])
         );
  DFFRHQXL \gc_addr_reg[8]  ( .D(n419), .CK(clk), .RN(n394), .Q(gc_addr[8]) );
  DFFRHQXL \gc_addr_reg[9]  ( .D(n420), .CK(clk), .RN(n394), .Q(gc_addr[9]) );
  DFFRHQXL \gc_addr_reg[10]  ( .D(n421), .CK(clk), .RN(n394), .Q(gc_addr[10])
         );
  DFFRHQXL \gc_addr_reg[12]  ( .D(n423), .CK(clk), .RN(n394), .Q(gc_addr[12])
         );
  DFFRHQXL \gc_addr_reg[6]  ( .D(n151), .CK(clk), .RN(n394), .Q(gc_addr[6]) );
  DFFRHQXL \gc_addr_reg[5]  ( .D(n150), .CK(clk), .RN(n394), .Q(gc_addr[5]) );
  DFFRHQXL \gc_addr_reg[4]  ( .D(n149), .CK(clk), .RN(n394), .Q(gc_addr[4]) );
  DFFRHQXL \gc_addr_reg[3]  ( .D(n148), .CK(clk), .RN(n394), .Q(gc_addr[3]) );
  DFFRHQXL \gc_addr_reg[2]  ( .D(n147), .CK(clk), .RN(n394), .Q(gc_addr[2]) );
  DFFRHQXL \gc_addr_reg[1]  ( .D(n146), .CK(clk), .RN(n394), .Q(gc_addr[1]) );
  DFFRHQXL \counter_reg[2]  ( .D(n396), .CK(clk), .RN(n394), .Q(counter[2]) );
  DFFRHQXL \counter_reg[3]  ( .D(n199), .CK(clk), .RN(n394), .Q(counter[3]) );
  DFFRHQXL \lbp_addr_reg[13]  ( .D(n399), .CK(clk), .RN(n394), .Q(n467) );
  DFFRHQXL \lbp_addr_reg[12]  ( .D(n400), .CK(clk), .RN(n394), .Q(n468) );
  DFFRHQXL \lbp_addr_reg[11]  ( .D(n401), .CK(clk), .RN(n394), .Q(n469) );
  DFFRHQXL \lbp_addr_reg[10]  ( .D(n402), .CK(clk), .RN(n394), .Q(n470) );
  DFFRHQXL \lbp_addr_reg[9]  ( .D(n403), .CK(clk), .RN(n394), .Q(n471) );
  DFFRHQXL \lbp_addr_reg[8]  ( .D(n404), .CK(clk), .RN(n394), .Q(n472) );
  DFFRHQXL \lbp_addr_reg[6]  ( .D(n405), .CK(clk), .RN(n394), .Q(n474) );
  DFFRHQXL \lbp_addr_reg[5]  ( .D(n406), .CK(clk), .RN(n394), .Q(n475) );
  DFFRHQXL \lbp_addr_reg[4]  ( .D(n407), .CK(clk), .RN(n394), .Q(n476) );
  DFFRHQXL \lbp_addr_reg[3]  ( .D(n408), .CK(clk), .RN(n394), .Q(n477) );
  DFFRHQXL \lbp_addr_reg[2]  ( .D(n409), .CK(clk), .RN(n394), .Q(n478) );
  DFFRHQXL \lbp_addr_reg[1]  ( .D(n410), .CK(clk), .RN(n394), .Q(n479) );
  DFFRHQXL \y_reg[4]  ( .D(n415), .CK(clk), .RN(n394), .Q(g3_addr[11]) );
  DFFRHQXL \y_reg[1]  ( .D(n412), .CK(clk), .RN(n394), .Q(g3_addr[8]) );
  DFFRHQXL \y_reg[2]  ( .D(n413), .CK(clk), .RN(n394), .Q(g3_addr[9]) );
  DFFRHQXL \y_reg[6]  ( .D(n417), .CK(clk), .RN(n394), .Q(g3_addr[13]) );
  DFFRHQXL \y_reg[3]  ( .D(n414), .CK(clk), .RN(n394), .Q(g3_addr[10]) );
  DFFRHQXL \y_reg[5]  ( .D(n416), .CK(clk), .RN(n394), .Q(g3_addr[12]) );
  DFFRHQXL \lbp_data_reg[6]  ( .D(n387), .CK(clk), .RN(n394), .Q(n483) );
  DFFRHQXL \lbp_data_reg[5]  ( .D(n388), .CK(clk), .RN(n394), .Q(n484) );
  DFFRHQXL \lbp_data_reg[4]  ( .D(n389), .CK(clk), .RN(n394), .Q(n485) );
  DFFRHQXL \lbp_data_reg[3]  ( .D(n390), .CK(clk), .RN(n394), .Q(n486) );
  DFFRHQXL \lbp_data_reg[2]  ( .D(n391), .CK(clk), .RN(n394), .Q(n487) );
  DFFRHQXL \lbp_data_reg[1]  ( .D(n392), .CK(clk), .RN(n394), .Q(n488) );
  DFFRHQXL \lbp_data_reg[0]  ( .D(n393), .CK(clk), .RN(n394), .Q(n489) );
  DFFRHQXL \lbp_data_reg[7]  ( .D(n386), .CK(clk), .RN(n394), .Q(n482) );
  DFFRHQXL \x_reg[6]  ( .D(n137), .CK(clk), .RN(n394), .Q(g1_addr[6]) );
  DFFRHQXL \x_reg[5]  ( .D(n136), .CK(clk), .RN(n394), .Q(g1_addr[5]) );
  DFFRHQXL \x_reg[4]  ( .D(n135), .CK(clk), .RN(n394), .Q(g1_addr[4]) );
  DFFRHQXL \x_reg[3]  ( .D(n134), .CK(clk), .RN(n394), .Q(g1_addr[3]) );
  DFFRHQXL \x_reg[2]  ( .D(n133), .CK(clk), .RN(n394), .Q(g1_addr[2]) );
  DFFRHQXL \x_reg[1]  ( .D(n132), .CK(clk), .RN(n394), .Q(g1_addr[1]) );
  DFFRHQXL \gray_addr_reg[13]  ( .D(n196), .CK(clk), .RN(n394), .Q(n452) );
  DFFRHQXL \gray_addr_reg[12]  ( .D(n195), .CK(clk), .RN(n394), .Q(n453) );
  DFFRHQXL \gray_addr_reg[11]  ( .D(n194), .CK(clk), .RN(n394), .Q(n454) );
  DFFRHQXL \gray_addr_reg[10]  ( .D(n193), .CK(clk), .RN(n394), .Q(n455) );
  DFFRHQXL \gray_addr_reg[9]  ( .D(n192), .CK(clk), .RN(n394), .Q(n456) );
  DFFRHQXL \gray_addr_reg[8]  ( .D(n191), .CK(clk), .RN(n394), .Q(n457) );
  DFFRHQXL \gray_addr_reg[6]  ( .D(n189), .CK(clk), .RN(n394), .Q(n459) );
  DFFRHQXL \gray_addr_reg[5]  ( .D(n188), .CK(clk), .RN(n394), .Q(n460) );
  DFFRHQXL \gray_addr_reg[4]  ( .D(n187), .CK(clk), .RN(n394), .Q(n461) );
  DFFRHQXL \gray_addr_reg[3]  ( .D(n186), .CK(clk), .RN(n394), .Q(n462) );
  DFFRHQXL \gray_addr_reg[2]  ( .D(n185), .CK(clk), .RN(n394), .Q(n463) );
  DFFRHQXL \gray_addr_reg[1]  ( .D(n184), .CK(clk), .RN(n394), .Q(n464) );
  DFFRHQXL \gray_addr_reg[7]  ( .D(n190), .CK(clk), .RN(n394), .Q(n458) );
  DFFRHQXL \gray_addr_reg[0]  ( .D(n183), .CK(clk), .RN(n394), .Q(n465) );
  NOR2X1 U269 ( .A(n31), .B(n342), .Y(n271) );
  BUFX4 U270 ( .A(n488), .Y(lbp_data[1]) );
  BUFX4 U271 ( .A(n466), .Y(gray_req) );
  BUFX4 U272 ( .A(n481), .Y(lbp_valid) );
  BUFX4 U273 ( .A(n473), .Y(lbp_addr[7]) );
  BUFX4 U274 ( .A(n480), .Y(lbp_addr[0]) );
  BUFX4 U275 ( .A(n490), .Y(finish) );
  BUFX4 U276 ( .A(n467), .Y(lbp_addr[13]) );
  BUFX4 U277 ( .A(n468), .Y(lbp_addr[12]) );
  BUFX4 U278 ( .A(n469), .Y(lbp_addr[11]) );
  BUFX4 U279 ( .A(n470), .Y(lbp_addr[10]) );
  BUFX4 U280 ( .A(n471), .Y(lbp_addr[9]) );
  BUFX4 U281 ( .A(n472), .Y(lbp_addr[8]) );
  BUFX4 U282 ( .A(n474), .Y(lbp_addr[6]) );
  BUFX4 U283 ( .A(n475), .Y(lbp_addr[5]) );
  BUFX4 U284 ( .A(n476), .Y(lbp_addr[4]) );
  BUFX4 U285 ( .A(n477), .Y(lbp_addr[3]) );
  BUFX4 U286 ( .A(n478), .Y(lbp_addr[2]) );
  BUFX4 U287 ( .A(n479), .Y(lbp_addr[1]) );
  BUFX4 U288 ( .A(n465), .Y(gray_addr[0]) );
  BUFX4 U289 ( .A(n458), .Y(gray_addr[7]) );
  BUFX4 U290 ( .A(n459), .Y(gray_addr[6]) );
  BUFX4 U291 ( .A(n460), .Y(gray_addr[5]) );
  BUFX4 U292 ( .A(n461), .Y(gray_addr[4]) );
  BUFX4 U293 ( .A(n462), .Y(gray_addr[3]) );
  BUFX4 U294 ( .A(n463), .Y(gray_addr[2]) );
  BUFX4 U295 ( .A(n464), .Y(gray_addr[1]) );
  BUFX4 U296 ( .A(n452), .Y(gray_addr[13]) );
  BUFX4 U297 ( .A(n453), .Y(gray_addr[12]) );
  BUFX4 U298 ( .A(n454), .Y(gray_addr[11]) );
  BUFX4 U299 ( .A(n455), .Y(gray_addr[10]) );
  BUFX4 U300 ( .A(n456), .Y(gray_addr[9]) );
  BUFX4 U301 ( .A(n457), .Y(gray_addr[8]) );
  BUFX4 U302 ( .A(n482), .Y(lbp_data[7]) );
  BUFX4 U303 ( .A(n487), .Y(lbp_data[2]) );
  BUFX4 U304 ( .A(n486), .Y(lbp_data[3]) );
  BUFX4 U305 ( .A(n485), .Y(lbp_data[4]) );
  BUFX4 U306 ( .A(n484), .Y(lbp_data[5]) );
  BUFX4 U307 ( .A(n483), .Y(lbp_data[6]) );
  BUFX4 U308 ( .A(n489), .Y(lbp_data[0]) );
  INVX1 U309 ( .A(n346), .Y(n345) );
  INVX1 U310 ( .A(n36), .Y(n398) );
  INVX1 U311 ( .A(n347), .Y(n344) );
  NAND2X1 U312 ( .A(n418), .B(n36), .Y(n35) );
  NAND2X1 U313 ( .A(n343), .B(n418), .Y(n36) );
  NAND2X1 U314 ( .A(n31), .B(n345), .Y(N82) );
  INVX1 U315 ( .A(n7), .Y(n346) );
  INVX1 U316 ( .A(n7), .Y(n347) );
  BUFX3 U317 ( .A(n411), .Y(n343) );
  INVX1 U318 ( .A(n33), .Y(n411) );
  INVX1 U319 ( .A(n31), .Y(n395) );
  NAND2X1 U320 ( .A(n31), .B(n434), .Y(n116) );
  INVX1 U321 ( .A(n7), .Y(n348) );
  NOR2X1 U322 ( .A(n447), .B(n446), .Y(N86) );
  INVX1 U323 ( .A(n103), .Y(n435) );
  NOR2BX1 U324 ( .AN(n99), .B(n340), .Y(n90) );
  NAND2X1 U325 ( .A(\nx_state[0] ), .B(n103), .Y(n7) );
  BUFX3 U326 ( .A(n10), .Y(n342) );
  OAI21XL U327 ( .A0(n347), .A1(n445), .B0(N82), .Y(n10) );
  BUFX3 U328 ( .A(n91), .Y(n340) );
  AOI21X1 U329 ( .A0(N85), .A1(n99), .B0(n85), .Y(n91) );
  INVX1 U330 ( .A(n371), .Y(n384) );
  INVX1 U331 ( .A(n341), .Y(n418) );
  OAI2BB2X1 U332 ( .B0(n442), .B1(n35), .A0N(g2_addr[6]), .A1N(n398), .Y(n137)
         );
  OAI2BB2X1 U333 ( .B0(n441), .B1(n35), .A0N(g2_addr[5]), .A1N(n398), .Y(n136)
         );
  OAI2BB2X1 U334 ( .B0(n356), .B1(n35), .A0N(g2_addr[4]), .A1N(n398), .Y(n135)
         );
  OAI2BB2X1 U335 ( .B0(n440), .B1(n35), .A0N(g2_addr[3]), .A1N(n398), .Y(n134)
         );
  OAI2BB2X1 U336 ( .B0(n439), .B1(n35), .A0N(g2_addr[2]), .A1N(n398), .Y(n133)
         );
  OAI2BB2X1 U337 ( .B0(n438), .B1(n35), .A0N(g2_addr[1]), .A1N(n398), .Y(n132)
         );
  AND2X2 U338 ( .A(\nx_state[0] ), .B(n435), .Y(n311) );
  INVX1 U339 ( .A(n311), .Y(n33) );
  NAND2X1 U340 ( .A(n435), .B(n397), .Y(n31) );
  INVX1 U341 ( .A(\nx_state[0] ), .Y(n397) );
  OAI21XL U342 ( .A0(counter[1]), .A1(n31), .B0(n182), .Y(n43) );
  OR2X2 U343 ( .A(n181), .B(n85), .Y(n182) );
  NAND2BX1 U344 ( .AN(\counter_reverse[3] ), .B(n443), .Y(n451) );
  NOR2X1 U345 ( .A(n99), .B(n76), .Y(n103) );
  OR2X2 U346 ( .A(n443), .B(\counter_reverse[3] ), .Y(n446) );
  NAND2X1 U347 ( .A(counter[0]), .B(n444), .Y(n447) );
  NAND2X1 U348 ( .A(\sll_152_S2/SH[1] ), .B(counter[0]), .Y(n449) );
  INVX1 U349 ( .A(n85), .Y(n434) );
  INVX1 U350 ( .A(\sll_152_S2/SH[1] ), .Y(n444) );
  INVX1 U351 ( .A(n314), .Y(n339) );
  OAI2BB1X1 U352 ( .A0N(n85), .A1N(n86), .B0(n44), .Y(n168) );
  OAI211X1 U353 ( .A0(n86), .A1(n434), .B0(n105), .C0(n106), .Y(\nx_state[0] )
         );
  NAND3X1 U354 ( .A(n99), .B(n101), .C(counter[3]), .Y(n105) );
  NAND4BXL U355 ( .AN(state[2]), .B(gray_ready), .C(n436), .D(n437), .Y(n106)
         );
  OAI221XL U356 ( .A0(g0_addr[0]), .A1(n35), .B0(n36), .B1(g1_addr[0]), .C0(
        n418), .Y(n198) );
  INVX1 U357 ( .A(gc_data[1]), .Y(n376) );
  INVX1 U358 ( .A(gray_data[0]), .Y(n379) );
  OAI21XL U359 ( .A0(g0_addr[0]), .A1(n345), .B0(n8), .Y(n183) );
  AOI22XL U360 ( .A0(N139), .A1(n271), .B0(gray_addr[0]), .B1(n342), .Y(n8) );
  OAI21XL U361 ( .A0(n344), .A1(n438), .B0(n12), .Y(n184) );
  AOI22XL U362 ( .A0(N140), .A1(n271), .B0(gray_addr[1]), .B1(n342), .Y(n12)
         );
  OAI21XL U363 ( .A0(n344), .A1(n439), .B0(n14), .Y(n185) );
  AOI22XL U364 ( .A0(N141), .A1(n271), .B0(gray_addr[2]), .B1(n342), .Y(n14)
         );
  OAI21XL U365 ( .A0(n344), .A1(n440), .B0(n16), .Y(n186) );
  AOI22XL U366 ( .A0(N142), .A1(n271), .B0(gray_addr[3]), .B1(n342), .Y(n16)
         );
  OAI21XL U367 ( .A0(n344), .A1(n356), .B0(n18), .Y(n187) );
  AOI22XL U368 ( .A0(N143), .A1(n271), .B0(gray_addr[4]), .B1(n342), .Y(n18)
         );
  OAI21XL U369 ( .A0(n344), .A1(n441), .B0(n20), .Y(n188) );
  AOI22XL U370 ( .A0(N144), .A1(n271), .B0(gray_addr[5]), .B1(n342), .Y(n20)
         );
  OAI21XL U371 ( .A0(n344), .A1(n442), .B0(n22), .Y(n189) );
  AOI22XL U372 ( .A0(N145), .A1(n271), .B0(gray_addr[6]), .B1(n342), .Y(n22)
         );
  OAI21XL U373 ( .A0(g0_addr[7]), .A1(n345), .B0(n23), .Y(n190) );
  AOI22XL U374 ( .A0(N146), .A1(n271), .B0(gray_addr[7]), .B1(n342), .Y(n23)
         );
  OAI2BB1X1 U375 ( .A0N(n348), .A1N(g3_addr[8]), .B0(n25), .Y(n191) );
  AOI22XL U376 ( .A0(N147), .A1(n271), .B0(gray_addr[8]), .B1(n342), .Y(n25)
         );
  OAI2BB1X1 U377 ( .A0N(n348), .A1N(g3_addr[9]), .B0(n26), .Y(n192) );
  AOI22XL U378 ( .A0(N148), .A1(n271), .B0(gray_addr[9]), .B1(n342), .Y(n26)
         );
  OAI2BB1X1 U379 ( .A0N(n349), .A1N(g3_addr[10]), .B0(n27), .Y(n193) );
  AOI22XL U380 ( .A0(N149), .A1(n271), .B0(gray_addr[10]), .B1(n342), .Y(n27)
         );
  OAI2BB1X1 U381 ( .A0N(n348), .A1N(g3_addr[11]), .B0(n28), .Y(n194) );
  AOI22XL U382 ( .A0(N150), .A1(n271), .B0(gray_addr[11]), .B1(n342), .Y(n28)
         );
  OAI2BB1X1 U383 ( .A0N(n349), .A1N(g3_addr[12]), .B0(n29), .Y(n195) );
  AOI22XL U384 ( .A0(N151), .A1(n271), .B0(gray_addr[12]), .B1(n342), .Y(n29)
         );
  OAI2BB1X1 U385 ( .A0N(n348), .A1N(g3_addr[13]), .B0(n30), .Y(n196) );
  AOI22XL U386 ( .A0(N152), .A1(n271), .B0(gray_addr[13]), .B1(n342), .Y(n30)
         );
  INVX1 U387 ( .A(n89), .Y(n393) );
  AOI22XL U388 ( .A0(N94), .A1(n90), .B0(lbp_data[0]), .B1(n340), .Y(n89) );
  INVX1 U389 ( .A(n98), .Y(n386) );
  AOI22XL U390 ( .A0(N101), .A1(n90), .B0(lbp_data[7]), .B1(n340), .Y(n98) );
  NOR2X1 U391 ( .A(n451), .B(n450), .Y(N93) );
  INVX1 U392 ( .A(n97), .Y(n387) );
  AOI22XL U393 ( .A0(N100), .A1(n90), .B0(lbp_data[6]), .B1(n340), .Y(n97) );
  INVX1 U394 ( .A(n96), .Y(n388) );
  AOI22XL U395 ( .A0(N99), .A1(n90), .B0(lbp_data[5]), .B1(n340), .Y(n96) );
  INVX1 U396 ( .A(n95), .Y(n389) );
  AOI22XL U397 ( .A0(N98), .A1(n90), .B0(lbp_data[4]), .B1(n340), .Y(n95) );
  INVX1 U398 ( .A(n94), .Y(n390) );
  AOI22XL U399 ( .A0(N97), .A1(n90), .B0(lbp_data[3]), .B1(n340), .Y(n94) );
  INVX1 U400 ( .A(n93), .Y(n391) );
  AOI22XL U401 ( .A0(N96), .A1(n90), .B0(lbp_data[2]), .B1(n340), .Y(n93) );
  INVX1 U402 ( .A(n92), .Y(n392) );
  AOI22XL U403 ( .A0(N95), .A1(n90), .B0(lbp_data[1]), .B1(n340), .Y(n92) );
  BUFX3 U404 ( .A(n60), .Y(n341) );
  NOR4BX1 U405 ( .AN(g0_addr[0]), .B(n33), .C(n66), .D(n67), .Y(n60) );
  NAND2X1 U406 ( .A(g1_addr[6]), .B(g1_addr[5]), .Y(n66) );
  NAND4X1 U407 ( .A(g1_addr[4]), .B(g1_addr[3]), .C(g1_addr[2]), .D(g1_addr[1]), .Y(n67) );
  INVX1 U408 ( .A(n370), .Y(n382) );
  INVX1 U409 ( .A(gray_data[7]), .Y(n385) );
  INVX1 U410 ( .A(gray_data[6]), .Y(n383) );
  INVX1 U411 ( .A(gray_data[2]), .Y(n380) );
  INVX1 U412 ( .A(gray_data[3]), .Y(n381) );
  INVX1 U413 ( .A(n46), .Y(n410) );
  AOI22XL U414 ( .A0(gc_addr[1]), .A1(n343), .B0(lbp_addr[1]), .B1(n33), .Y(
        n46) );
  INVX1 U415 ( .A(n47), .Y(n409) );
  AOI22XL U416 ( .A0(gc_addr[2]), .A1(n343), .B0(lbp_addr[2]), .B1(n33), .Y(
        n47) );
  INVX1 U417 ( .A(n48), .Y(n408) );
  AOI22XL U418 ( .A0(gc_addr[3]), .A1(n343), .B0(lbp_addr[3]), .B1(n33), .Y(
        n48) );
  INVX1 U419 ( .A(n49), .Y(n407) );
  AOI22XL U420 ( .A0(gc_addr[4]), .A1(n343), .B0(lbp_addr[4]), .B1(n33), .Y(
        n49) );
  INVX1 U421 ( .A(n50), .Y(n406) );
  AOI22XL U422 ( .A0(gc_addr[5]), .A1(n343), .B0(lbp_addr[5]), .B1(n33), .Y(
        n50) );
  INVX1 U423 ( .A(n51), .Y(n405) );
  AOI22XL U424 ( .A0(gc_addr[6]), .A1(n343), .B0(lbp_addr[6]), .B1(n33), .Y(
        n51) );
  INVX1 U425 ( .A(n52), .Y(n404) );
  AOI22XL U426 ( .A0(gc_addr[8]), .A1(n343), .B0(lbp_addr[8]), .B1(n33), .Y(
        n52) );
  INVX1 U427 ( .A(n53), .Y(n403) );
  AOI22XL U428 ( .A0(gc_addr[9]), .A1(n343), .B0(lbp_addr[9]), .B1(n33), .Y(
        n53) );
  INVX1 U429 ( .A(n54), .Y(n402) );
  AOI22XL U430 ( .A0(gc_addr[10]), .A1(n343), .B0(lbp_addr[10]), .B1(n33), .Y(
        n54) );
  INVX1 U431 ( .A(n55), .Y(n401) );
  AOI22XL U432 ( .A0(gc_addr[11]), .A1(n343), .B0(lbp_addr[11]), .B1(n33), .Y(
        n55) );
  INVX1 U433 ( .A(n56), .Y(n400) );
  AOI22XL U434 ( .A0(gc_addr[12]), .A1(n343), .B0(lbp_addr[12]), .B1(n33), .Y(
        n56) );
  INVX1 U435 ( .A(n57), .Y(n399) );
  AOI22XL U436 ( .A0(gc_addr[13]), .A1(n343), .B0(lbp_addr[13]), .B1(n33), .Y(
        n57) );
  INVX1 U437 ( .A(n63), .Y(n415) );
  AOI22X1 U438 ( .A0(n418), .A1(g3_addr[11]), .B0(g5_addr[11]), .B1(n341), .Y(
        n63) );
  INVX1 U439 ( .A(n70), .Y(n420) );
  AOI22X1 U440 ( .A0(n345), .A1(gc_addr[9]), .B0(n349), .B1(g3_addr[9]), .Y(
        n70) );
  INVX1 U441 ( .A(n7), .Y(n349) );
  INVX1 U442 ( .A(n69), .Y(n419) );
  AOI22X1 U443 ( .A0(n345), .A1(gc_addr[8]), .B0(n349), .B1(g3_addr[8]), .Y(
        n69) );
  OAI22X1 U444 ( .A0(n112), .A1(n348), .B0(g0_addr[7]), .B1(n345), .Y(n153) );
  OAI22X1 U445 ( .A0(n346), .A1(n433), .B0(g0_addr[0]), .B1(n345), .Y(n200) );
  NOR2X1 U446 ( .A(n31), .B(\sll_152_S2/SH[0] ), .Y(n181) );
  OAI2BB2X1 U447 ( .B0(n33), .B1(n433), .A0N(lbp_addr[0]), .A1N(n33), .Y(n197)
         );
  OAI2BB2X1 U448 ( .B0(n112), .B1(n33), .A0N(lbp_addr[7]), .A1N(n33), .Y(n124)
         );
  OAI2BB2X1 U449 ( .B0(n344), .B1(n356), .A0N(n345), .A1N(gc_addr[4]), .Y(n149) );
  OAI2BB2X1 U450 ( .B0(n344), .B1(n438), .A0N(n345), .A1N(gc_addr[1]), .Y(n146) );
  OAI2BB2X1 U451 ( .B0(n344), .B1(n439), .A0N(n345), .A1N(gc_addr[2]), .Y(n147) );
  OAI2BB2X1 U452 ( .B0(n344), .B1(n440), .A0N(n345), .A1N(gc_addr[3]), .Y(n148) );
  OAI2BB2X1 U453 ( .B0(n344), .B1(n441), .A0N(n345), .A1N(gc_addr[5]), .Y(n150) );
  OAI2BB2X1 U454 ( .B0(n344), .B1(n442), .A0N(n345), .A1N(gc_addr[6]), .Y(n151) );
  OAI2BB2X1 U455 ( .B0(g0_addr[7]), .B1(n341), .A0N(g5_addr[7]), .A1N(n341), 
        .Y(n139) );
  OAI21XL U456 ( .A0(n39), .A1(n445), .B0(n40), .Y(n199) );
  NAND4X1 U457 ( .A(counter[2]), .B(n181), .C(n445), .D(counter[1]), .Y(n40)
         );
  AOI21X1 U458 ( .A0(n395), .A1(n337), .B0(n43), .Y(n39) );
  INVX1 U459 ( .A(n72), .Y(n422) );
  AOI22X1 U460 ( .A0(n345), .A1(gc_addr[11]), .B0(n348), .B1(g3_addr[11]), .Y(
        n72) );
  INVX1 U461 ( .A(n73), .Y(n423) );
  AOI22X1 U462 ( .A0(n345), .A1(gc_addr[12]), .B0(n349), .B1(g3_addr[12]), .Y(
        n73) );
  INVX1 U463 ( .A(n71), .Y(n421) );
  AOI22X1 U464 ( .A0(n345), .A1(gc_addr[10]), .B0(n348), .B1(g3_addr[10]), .Y(
        n71) );
  INVX1 U465 ( .A(n64), .Y(n416) );
  AOI22X1 U466 ( .A0(n418), .A1(g3_addr[12]), .B0(g5_addr[12]), .B1(n341), .Y(
        n64) );
  INVX1 U467 ( .A(n62), .Y(n414) );
  AOI22X1 U468 ( .A0(n418), .A1(g3_addr[10]), .B0(g5_addr[10]), .B1(n341), .Y(
        n62) );
  INVX1 U469 ( .A(n61), .Y(n413) );
  AOI22X1 U470 ( .A0(n418), .A1(g3_addr[9]), .B0(g5_addr[9]), .B1(n341), .Y(
        n61) );
  INVX1 U471 ( .A(n59), .Y(n412) );
  AOI22X1 U472 ( .A0(n418), .A1(g3_addr[8]), .B0(g5_addr[8]), .B1(n341), .Y(
        n59) );
  INVX1 U473 ( .A(n74), .Y(n424) );
  AOI22X1 U474 ( .A0(n344), .A1(gc_addr[13]), .B0(n349), .B1(g3_addr[13]), .Y(
        n74) );
  INVX1 U475 ( .A(n65), .Y(n417) );
  AOI22X1 U476 ( .A0(n418), .A1(g3_addr[13]), .B0(g5_addr[13]), .B1(n341), .Y(
        n65) );
  INVX1 U477 ( .A(n68), .Y(n396) );
  AOI32X1 U478 ( .A0(n181), .A1(counter[1]), .A2(n337), .B0(n43), .B1(
        counter[2]), .Y(n68) );
  NOR2X1 U479 ( .A(n449), .B(n446), .Y(N88) );
  NOR2X1 U480 ( .A(n450), .B(n446), .Y(N89) );
  NOR2X1 U481 ( .A(n451), .B(n447), .Y(N90) );
  NOR2X1 U482 ( .A(n451), .B(n448), .Y(N91) );
  NOR2X1 U483 ( .A(n451), .B(n449), .Y(N92) );
  NOR2X1 U484 ( .A(n448), .B(n446), .Y(N87) );
  INVX1 U485 ( .A(n84), .Y(n432) );
  AOI22X1 U486 ( .A0(gray_data[0]), .A1(n76), .B0(gc_data[0]), .B1(n312), .Y(
        n84) );
  INVX1 U487 ( .A(n83), .Y(n431) );
  AOI22X1 U488 ( .A0(gray_data[1]), .A1(n76), .B0(gc_data[1]), .B1(n312), .Y(
        n83) );
  INVX1 U489 ( .A(n82), .Y(n430) );
  AOI22X1 U490 ( .A0(gray_data[2]), .A1(n76), .B0(gc_data[2]), .B1(n312), .Y(
        n82) );
  INVX1 U491 ( .A(n81), .Y(n429) );
  AOI22X1 U492 ( .A0(gray_data[3]), .A1(n76), .B0(gc_data[3]), .B1(n312), .Y(
        n81) );
  INVX1 U493 ( .A(n80), .Y(n428) );
  AOI22X1 U494 ( .A0(gray_data[4]), .A1(n76), .B0(gc_data[4]), .B1(n312), .Y(
        n80) );
  INVX1 U495 ( .A(n79), .Y(n427) );
  AOI22X1 U496 ( .A0(gray_data[5]), .A1(n76), .B0(gc_data[5]), .B1(n312), .Y(
        n79) );
  INVX1 U497 ( .A(n78), .Y(n426) );
  AOI22X1 U498 ( .A0(gray_data[6]), .A1(n76), .B0(gc_data[6]), .B1(n312), .Y(
        n78) );
  INVX1 U499 ( .A(n75), .Y(n425) );
  AOI22X1 U500 ( .A0(gray_data[7]), .A1(n76), .B0(gc_data[7]), .B1(n312), .Y(
        n75) );
  NOR3X1 U501 ( .A(state[0]), .B(state[2]), .C(n437), .Y(n99) );
  NOR3X1 U502 ( .A(n437), .B(state[2]), .C(n436), .Y(n85) );
  OAI21XL U503 ( .A0(n338), .A1(\sll_152_S2/SH[0] ), .B0(n100), .Y(
        \sll_152_S2/SH[1] ) );
  NOR2X1 U504 ( .A(n100), .B(counter[2]), .Y(n101) );
  NOR4X1 U505 ( .A(n107), .B(n108), .C(n109), .D(n110), .Y(n86) );
  NAND4X1 U506 ( .A(gc_addr[6]), .B(gc_addr[5]), .C(gc_addr[4]), .D(gc_addr[3]), .Y(n107) );
  NAND3X1 U507 ( .A(gc_addr[1]), .B(gc_addr[13]), .C(gc_addr[2]), .Y(n110) );
  NAND3X1 U508 ( .A(gc_addr[9]), .B(gc_addr[8]), .C(n112), .Y(n108) );
  NAND2X1 U509 ( .A(n338), .B(\sll_152_S2/SH[0] ), .Y(n100) );
  NAND4X1 U510 ( .A(gc_addr[12]), .B(gc_addr[11]), .C(gc_addr[10]), .D(n433), 
        .Y(n109) );
  NAND2X1 U511 ( .A(\sll_152_S2/SH[1] ), .B(\sll_152_S2/SH[0] ), .Y(n450) );
  NAND2X1 U512 ( .A(\sll_152_S2/SH[0] ), .B(n444), .Y(n448) );
  NAND2BXL U513 ( .AN(finish), .B(n44), .Y(n115) );
  INVX1 U514 ( .A(state[1]), .Y(n437) );
  INVX1 U515 ( .A(state[0]), .Y(n436) );
  OR3XL U516 ( .A(state[1]), .B(state[2]), .C(n436), .Y(n312) );
  INVX1 U517 ( .A(n312), .Y(n76) );
  XOR2X1 U518 ( .A(counter[3]), .B(n101), .Y(\counter_reverse[3] ) );
  INVX1 U519 ( .A(n102), .Y(n443) );
  AOI21X1 U520 ( .A0(n100), .A1(counter[2]), .B0(n101), .Y(n102) );
  INVX1 U521 ( .A(n359), .Y(g0_addr[10]) );
  INVX1 U522 ( .A(counter[2]), .Y(n337) );
  INVX1 U523 ( .A(g1_addr[4]), .Y(n356) );
  INVX1 U524 ( .A(g3_addr[11]), .Y(n363) );
  INVX1 U525 ( .A(n352), .Y(g0_addr[3]) );
  INVX1 U526 ( .A(gc_data[4]), .Y(n377) );
  INVX1 U527 ( .A(gc_data[5]), .Y(n378) );
  NAND3X1 U528 ( .A(n436), .B(n437), .C(state[2]), .Y(n44) );
  INVX1 U529 ( .A(g1_addr[3]), .Y(n440) );
  INVX1 U530 ( .A(g1_addr[5]), .Y(n441) );
  INVX1 U531 ( .A(g1_addr[1]), .Y(n438) );
  INVX1 U532 ( .A(g1_addr[2]), .Y(n439) );
  INVX1 U533 ( .A(counter[3]), .Y(n445) );
  INVX1 U534 ( .A(g1_addr[6]), .Y(n442) );
  INVX1 U535 ( .A(reset), .Y(n394) );
  XOR2X1 U536 ( .A(counter[0]), .B(counter[2]), .Y(n314) );
  OAI32X1 U537 ( .A0(n339), .A1(counter[1]), .A2(n337), .B0(n314), .B1(n338), 
        .Y(n324) );
  XOR2X1 U538 ( .A(n338), .B(counter[2]), .Y(n313) );
  NOR2BX1 U539 ( .AN(n313), .B(n339), .Y(n322) );
  OAI32X1 U540 ( .A0(n339), .A1(counter[2]), .A2(n338), .B0(counter[1]), .B1(
        n314), .Y(n321) );
  AOI22X1 U541 ( .A0(g1_addr[0]), .A1(n322), .B0(g0_addr[0]), .B1(n321), .Y(
        n315) );
  OAI2BB1X1 U542 ( .A0N(g2_addr[0]), .A1N(n324), .B0(n315), .Y(N139) );
  AOI22X1 U543 ( .A0(g1_addr[1]), .A1(n322), .B0(g0_addr[1]), .B1(n321), .Y(
        n316) );
  OAI2BB1X1 U544 ( .A0N(g2_addr[1]), .A1N(n324), .B0(n316), .Y(N140) );
  AOI22X1 U545 ( .A0(g1_addr[2]), .A1(n322), .B0(g0_addr[2]), .B1(n321), .Y(
        n317) );
  OAI2BB1X1 U546 ( .A0N(g2_addr[2]), .A1N(n324), .B0(n317), .Y(N141) );
  AOI22X1 U547 ( .A0(g1_addr[3]), .A1(n322), .B0(g0_addr[3]), .B1(n321), .Y(
        n318) );
  OAI2BB1X1 U548 ( .A0N(g2_addr[3]), .A1N(n324), .B0(n318), .Y(N142) );
  AOI22X1 U549 ( .A0(g1_addr[4]), .A1(n322), .B0(g0_addr[4]), .B1(n321), .Y(
        n319) );
  OAI2BB1X1 U550 ( .A0N(g2_addr[4]), .A1N(n324), .B0(n319), .Y(N143) );
  AOI22X1 U551 ( .A0(g1_addr[5]), .A1(n322), .B0(g0_addr[5]), .B1(n321), .Y(
        n320) );
  OAI2BB1X1 U552 ( .A0N(g2_addr[5]), .A1N(n324), .B0(n320), .Y(N144) );
  AOI22X1 U553 ( .A0(g1_addr[6]), .A1(n322), .B0(g0_addr[6]), .B1(n321), .Y(
        n323) );
  OAI2BB1X1 U554 ( .A0N(g2_addr[6]), .A1N(n324), .B0(n323), .Y(N145) );
  NAND2BX1 U555 ( .AN(counter[0]), .B(n338), .Y(n326) );
  NAND2X1 U556 ( .A(counter[1]), .B(counter[0]), .Y(n325) );
  OAI22X1 U557 ( .A0(n326), .A1(n337), .B0(counter[2]), .B1(n325), .Y(n336) );
  NOR2BX1 U558 ( .AN(n325), .B(counter[2]), .Y(n334) );
  NOR2BX1 U559 ( .AN(n326), .B(n337), .Y(n333) );
  AOI22X1 U560 ( .A0(g0_addr[7]), .A1(n334), .B0(g5_addr[7]), .B1(n333), .Y(
        n327) );
  OAI2BB1X1 U561 ( .A0N(g3_addr[7]), .A1N(n336), .B0(n327), .Y(N146) );
  AOI22X1 U562 ( .A0(g0_addr[8]), .A1(n334), .B0(g5_addr[8]), .B1(n333), .Y(
        n328) );
  OAI2BB1X1 U563 ( .A0N(g3_addr[8]), .A1N(n336), .B0(n328), .Y(N147) );
  AOI22X1 U564 ( .A0(g0_addr[9]), .A1(n334), .B0(g5_addr[9]), .B1(n333), .Y(
        n329) );
  OAI2BB1X1 U565 ( .A0N(g3_addr[9]), .A1N(n336), .B0(n329), .Y(N148) );
  AOI22X1 U566 ( .A0(g0_addr[10]), .A1(n334), .B0(g5_addr[10]), .B1(n333), .Y(
        n330) );
  OAI2BB1X1 U567 ( .A0N(g3_addr[10]), .A1N(n336), .B0(n330), .Y(N149) );
  AOI22X1 U568 ( .A0(g0_addr[11]), .A1(n334), .B0(g5_addr[11]), .B1(n333), .Y(
        n331) );
  OAI2BB1X1 U569 ( .A0N(g3_addr[11]), .A1N(n336), .B0(n331), .Y(N150) );
  AOI22X1 U570 ( .A0(g0_addr[12]), .A1(n334), .B0(g5_addr[12]), .B1(n333), .Y(
        n332) );
  OAI2BB1X1 U571 ( .A0N(g3_addr[12]), .A1N(n336), .B0(n332), .Y(N151) );
  AOI22X1 U572 ( .A0(g0_addr[13]), .A1(n334), .B0(g5_addr[13]), .B1(n333), .Y(
        n335) );
  OAI2BB1X1 U573 ( .A0N(g3_addr[13]), .A1N(n336), .B0(n335), .Y(N152) );
  NAND2BX1 U574 ( .AN(g1_addr[1]), .B(g0_addr[0]), .Y(n350) );
  OAI2BB1X1 U575 ( .A0N(g1_addr[0]), .A1N(g1_addr[1]), .B0(n350), .Y(
        g0_addr[1]) );
  OR2X1 U576 ( .A(n350), .B(g1_addr[2]), .Y(n351) );
  OAI2BB1X1 U577 ( .A0N(n350), .A1N(g1_addr[2]), .B0(n351), .Y(g0_addr[2]) );
  NOR2X1 U578 ( .A(n351), .B(g1_addr[3]), .Y(n353) );
  AOI21X1 U579 ( .A0(n351), .A1(g1_addr[3]), .B0(n353), .Y(n352) );
  NAND2X1 U580 ( .A(n353), .B(n356), .Y(n354) );
  OAI21XL U581 ( .A0(n353), .A1(n356), .B0(n354), .Y(g0_addr[4]) );
  XNOR2X1 U582 ( .A(g1_addr[5]), .B(n354), .Y(g0_addr[5]) );
  NOR2X1 U583 ( .A(g1_addr[5]), .B(n354), .Y(n355) );
  XOR2X1 U584 ( .A(g1_addr[6]), .B(n355), .Y(g0_addr[6]) );
  NAND2BX1 U585 ( .AN(g3_addr[8]), .B(g0_addr[7]), .Y(n357) );
  OAI2BB1X1 U586 ( .A0N(g3_addr[7]), .A1N(g3_addr[8]), .B0(n357), .Y(
        g0_addr[8]) );
  OR2X1 U587 ( .A(n357), .B(g3_addr[9]), .Y(n358) );
  OAI2BB1X1 U588 ( .A0N(n357), .A1N(g3_addr[9]), .B0(n358), .Y(g0_addr[9]) );
  NOR2X1 U589 ( .A(n358), .B(g3_addr[10]), .Y(n360) );
  AOI21X1 U590 ( .A0(n358), .A1(g3_addr[10]), .B0(n360), .Y(n359) );
  NAND2X1 U591 ( .A(n360), .B(n363), .Y(n361) );
  OAI21XL U592 ( .A0(n360), .A1(n363), .B0(n361), .Y(g0_addr[11]) );
  XNOR2X1 U593 ( .A(g3_addr[12]), .B(n361), .Y(g0_addr[12]) );
  NOR2X1 U594 ( .A(g3_addr[12]), .B(n361), .Y(n362) );
  XOR2X1 U595 ( .A(g3_addr[13]), .B(n362), .Y(g0_addr[13]) );
  AND2X1 U596 ( .A(gc_data[3]), .B(n381), .Y(n364) );
  AOI21X1 U597 ( .A0(gc_data[2]), .A1(n380), .B0(n364), .Y(n365) );
  OAI32X1 U598 ( .A0(n380), .A1(gc_data[2]), .A2(n364), .B0(gc_data[3]), .B1(
        n381), .Y(n367) );
  OR2X1 U599 ( .A(gray_data[5]), .B(n378), .Y(n369) );
  OAI221XL U600 ( .A0(gray_data[4]), .A1(n377), .B0(n365), .B1(n367), .C0(n369), .Y(n375) );
  AOI2BB2X1 U601 ( .B0(gc_data[0]), .B1(n379), .A0N(n376), .A1N(gray_data[1]), 
        .Y(n366) );
  AOI211X1 U602 ( .A0(gray_data[1]), .A1(n376), .B0(n367), .C0(n366), .Y(n374)
         );
  NOR2BX1 U603 ( .AN(gc_data[7]), .B(gray_data[7]), .Y(n368) );
  AOI21X1 U604 ( .A0(n383), .A1(gc_data[6]), .B0(n368), .Y(n371) );
  OAI32X1 U605 ( .A0(n383), .A1(gc_data[6]), .A2(n368), .B0(gc_data[7]), .B1(
        n385), .Y(n372) );
  AOI32X1 U606 ( .A0(gray_data[4]), .A1(n377), .A2(n369), .B0(n378), .B1(
        gray_data[5]), .Y(n370) );
  OAI22X1 U607 ( .A0(n372), .A1(n382), .B0(n371), .B1(n372), .Y(n373) );
  OAI31X1 U608 ( .A0(n375), .A1(n374), .A2(n384), .B0(n373), .Y(N85) );
endmodule

