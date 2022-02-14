/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Mon Feb 14 12:04:46 2022
/////////////////////////////////////////////////////////////


module LBP_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3XL U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module LBP_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
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
  wire   n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, N82, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96,
         N97, N98, N99, N100, N101, N139, N140, N141, N142, N143, N144, N145,
         N146, N147, N148, N149, N150, N151, N152, n7, n8, n9, n10, n14, n15,
         n16, n17, n18, n19, n20, n22, n23, n27, n28, n29, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n54, n55, n56, n57, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n143, n144, n145,
         n146, n147, n148, n150, n151, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, \sll_152_S2/SH[0] , n285, n301, n303, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419;
  wire   [13:0] g0_addr;
  wire   [6:0] g1_addr;
  wire   [6:0] g2_addr;
  wire   [13:7] g3_addr;
  wire   [13:7] g5_addr;
  wire   [3:0] counter;
  wire   [3:0] counter_reverse;
  wire   [2:0] state;
  wire   [2:0] nx_state;
  wire   [7:0] gc_data;

  LBP_DW01_add_0 add_152_S2 ( .A({lbp_data[7:1], n441}), .B({N93, N92, N91, 
        N90, N89, N88, N87, N86}), .CI(1'b0), .SUM({N101, N100, N99, N98, N97, 
        N96, N95, N94}) );
  LBP_DW01_inc_0_DW01_inc_1 r392 ( .A(g3_addr), .SUM(g5_addr) );
  LBP_DW01_inc_1_DW01_inc_2 r390 ( .A(g1_addr), .SUM(g2_addr) );
  DFFRX1 \y_reg[6]  ( .D(n184), .CK(clk), .RN(n359), .Q(g3_addr[13]), .QN(n101) );
  DFFRX1 \y_reg[4]  ( .D(n188), .CK(clk), .RN(n359), .Q(g3_addr[11]), .QN(n99)
         );
  DFFRX1 \y_reg[5]  ( .D(n186), .CK(clk), .RN(n359), .Q(g3_addr[12]), .QN(n100) );
  DFFRX1 \counter_reg[3]  ( .D(n210), .CK(clk), .RN(n360), .Q(n285), .QN(n92)
         );
  DFFRX1 \gc_addr_reg[3]  ( .D(n203), .CK(clk), .RN(n361), .QN(n123) );
  DFFRX1 \y_reg[2]  ( .D(n192), .CK(clk), .RN(n359), .Q(g3_addr[9]), .QN(n97)
         );
  DFFRX1 \y_reg[3]  ( .D(n190), .CK(clk), .RN(n359), .Q(g3_addr[10]), .QN(n98)
         );
  DFFRX1 \gc_addr_reg[11]  ( .D(n187), .CK(clk), .RN(n360), .QN(n107) );
  DFFRX1 \gc_addr_reg[10]  ( .D(n189), .CK(clk), .RN(n360), .QN(n109) );
  DFFRX1 \gc_addr_reg[9]  ( .D(n191), .CK(clk), .RN(n360), .QN(n111) );
  DFFRX1 \gc_addr_reg[8]  ( .D(n195), .CK(clk), .RN(n361), .QN(n113) );
  DFFRX1 \gc_addr_reg[1]  ( .D(n208), .CK(clk), .RN(n361), .QN(n93) );
  DFFRX1 \gc_addr_reg[6]  ( .D(n197), .CK(clk), .RN(n361), .QN(n117) );
  DFFRX1 \gc_addr_reg[2]  ( .D(n205), .CK(clk), .RN(n361), .QN(n94) );
  DFFRX1 \gc_addr_reg[13]  ( .D(n183), .CK(clk), .RN(n360), .QN(n103) );
  DFFRX1 \gc_addr_reg[5]  ( .D(n199), .CK(clk), .RN(n361), .QN(n119) );
  DFFRX1 \gc_addr_reg[12]  ( .D(n185), .CK(clk), .RN(n360), .QN(n105) );
  DFFRX1 \gc_addr_reg[4]  ( .D(n201), .CK(clk), .RN(n361), .QN(n121) );
  DFFSX1 \gc_addr_reg[0]  ( .D(n214), .CK(clk), .SN(n364), .QN(n91) );
  DFFSX1 \gc_addr_reg[7]  ( .D(n193), .CK(clk), .SN(n364), .QN(n115) );
  DFFRX1 \y_reg[1]  ( .D(n196), .CK(clk), .RN(n359), .Q(g3_addr[8]), .QN(n95)
         );
  DFFRX1 \counter_reg[2]  ( .D(n211), .CK(clk), .RN(n360), .Q(counter[2]), 
        .QN(n150) );
  DFFRX1 \counter_reg[0]  ( .D(n212), .CK(clk), .RN(n360), .Q(counter[0]), 
        .QN(\sll_152_S2/SH[0] ) );
  DFFRX1 \counter_reg[1]  ( .D(n213), .CK(clk), .RN(n360), .Q(counter[1]), 
        .QN(n151) );
  DFFSX1 \y_reg[0]  ( .D(n194), .CK(clk), .SN(n364), .Q(g3_addr[7]), .QN(
        g0_addr[7]) );
  DFFSX1 \x_reg[0]  ( .D(n207), .CK(clk), .SN(n364), .Q(g1_addr[0]), .QN(
        g0_addr[0]) );
  DFFRX1 \x_reg[1]  ( .D(n209), .CK(clk), .RN(n359), .Q(g1_addr[1]), .QN(n148)
         );
  DFFRX1 \x_reg[2]  ( .D(n206), .CK(clk), .RN(n359), .Q(g1_addr[2]), .QN(n147)
         );
  DFFRX1 \x_reg[3]  ( .D(n204), .CK(clk), .RN(n359), .Q(g1_addr[3]), .QN(n146)
         );
  DFFRX1 \x_reg[5]  ( .D(n200), .CK(clk), .RN(n360), .Q(g1_addr[5]), .QN(n144)
         );
  DFFRX1 \x_reg[4]  ( .D(n202), .CK(clk), .RN(n360), .Q(g1_addr[4]), .QN(n145)
         );
  DFFRX1 \x_reg[6]  ( .D(n198), .CK(clk), .RN(n360), .Q(g1_addr[6]), .QN(n143)
         );
  DFFRX1 \lbp_data_reg[0]  ( .D(n160), .CK(clk), .RN(n364), .Q(n441), .QN(n69)
         );
  DFFRX1 \lbp_data_reg[6]  ( .D(n154), .CK(clk), .RN(n363), .Q(n435), .QN(n75)
         );
  DFFRX1 \lbp_data_reg[5]  ( .D(n155), .CK(clk), .RN(n363), .Q(n436), .QN(n74)
         );
  DFFRX1 \lbp_data_reg[4]  ( .D(n156), .CK(clk), .RN(n359), .Q(n437), .QN(n73)
         );
  DFFRX1 \lbp_data_reg[3]  ( .D(n157), .CK(clk), .RN(n359), .Q(n438), .QN(n72)
         );
  DFFRX1 \lbp_data_reg[2]  ( .D(n158), .CK(clk), .RN(n399), .Q(n439), .QN(n71)
         );
  DFFRX1 \lbp_data_reg[7]  ( .D(n153), .CK(clk), .RN(n363), .Q(n434), .QN(n76)
         );
  DFFRX1 finish_reg ( .D(n125), .CK(clk), .RN(n363), .Q(n442), .QN(n124) );
  DFFRX1 \lbp_addr_reg[0]  ( .D(n169), .CK(clk), .RN(n362), .Q(n433), .QN(n68)
         );
  DFFRX1 \lbp_addr_reg[1]  ( .D(n170), .CK(clk), .RN(n362), .Q(n432), .QN(n67)
         );
  DFFRX1 \lbp_addr_reg[2]  ( .D(n171), .CK(clk), .RN(n362), .Q(n431), .QN(n66)
         );
  DFFRX1 \lbp_addr_reg[3]  ( .D(n172), .CK(clk), .RN(n362), .Q(n430), .QN(n122) );
  DFFRX1 \lbp_addr_reg[4]  ( .D(n173), .CK(clk), .RN(n362), .Q(n429), .QN(n120) );
  DFFRX1 \lbp_addr_reg[5]  ( .D(n174), .CK(clk), .RN(n362), .Q(n428), .QN(n118) );
  DFFRX1 \lbp_addr_reg[6]  ( .D(n175), .CK(clk), .RN(n362), .Q(n427), .QN(n116) );
  DFFRX1 \lbp_addr_reg[7]  ( .D(n176), .CK(clk), .RN(n362), .Q(n426), .QN(n114) );
  DFFRX1 \lbp_addr_reg[8]  ( .D(n177), .CK(clk), .RN(n362), .Q(n425), .QN(n112) );
  DFFRX1 \lbp_addr_reg[9]  ( .D(n178), .CK(clk), .RN(n362), .Q(n424), .QN(n110) );
  DFFRX1 \lbp_addr_reg[10]  ( .D(n179), .CK(clk), .RN(n362), .Q(n423), .QN(
        n108) );
  DFFRX1 \lbp_addr_reg[11]  ( .D(n180), .CK(clk), .RN(n361), .Q(n422), .QN(
        n106) );
  DFFRX1 \lbp_addr_reg[12]  ( .D(n181), .CK(clk), .RN(n361), .Q(n421), .QN(
        n104) );
  DFFRX1 \lbp_addr_reg[13]  ( .D(n182), .CK(clk), .RN(n361), .Q(n420), .QN(
        n102) );
  DFFRX1 lbp_valid_reg ( .D(n358), .CK(clk), .RN(n361), .QN(n303) );
  DFFRX1 gray_req_reg ( .D(N82), .CK(clk), .RN(n361), .QN(n301) );
  DFFRX1 \lbp_data_reg[1]  ( .D(n159), .CK(clk), .RN(n399), .Q(n440), .QN(n70)
         );
  DFFRX1 \state_reg[2]  ( .D(nx_state[2]), .CK(clk), .RN(n399), .Q(state[2]), 
        .QN(n408) );
  DFFRX1 \state_reg[1]  ( .D(n405), .CK(clk), .RN(n399), .Q(state[1]), .QN(
        n409) );
  DFFRX1 \gc_data_reg[0]  ( .D(n161), .CK(clk), .RN(n399), .Q(gc_data[0]), 
        .QN(n393) );
  DFFRX1 \gc_data_reg[7]  ( .D(n168), .CK(clk), .RN(n399), .Q(gc_data[7]) );
  DFFRX1 \gc_data_reg[5]  ( .D(n166), .CK(clk), .RN(n399), .Q(gc_data[5]) );
  DFFRX1 \gc_data_reg[3]  ( .D(n164), .CK(clk), .RN(n399), .Q(gc_data[3]) );
  DFFRX1 \gc_data_reg[1]  ( .D(n162), .CK(clk), .RN(n399), .Q(gc_data[1]) );
  DFFRX1 \gc_data_reg[4]  ( .D(n165), .CK(clk), .RN(n399), .Q(gc_data[4]) );
  DFFRX1 \gc_data_reg[2]  ( .D(n163), .CK(clk), .RN(n399), .Q(gc_data[2]) );
  DFFRX1 \gc_data_reg[6]  ( .D(n167), .CK(clk), .RN(n399), .Q(gc_data[6]), 
        .QN(n394) );
  DFFRX1 \state_reg[0]  ( .D(nx_state[0]), .CK(clk), .RN(n399), .Q(state[0]), 
        .QN(n404) );
  DFFRX1 \gray_addr_reg[13]  ( .D(n127), .CK(clk), .RN(n363), .QN(n77) );
  DFFRX1 \gray_addr_reg[12]  ( .D(n128), .CK(clk), .RN(n363), .QN(n78) );
  DFFRX1 \gray_addr_reg[11]  ( .D(n129), .CK(clk), .RN(n363), .QN(n79) );
  DFFRX1 \gray_addr_reg[10]  ( .D(n130), .CK(clk), .RN(n363), .QN(n80) );
  DFFRX1 \gray_addr_reg[9]  ( .D(n131), .CK(clk), .RN(n363), .QN(n81) );
  DFFRX1 \gray_addr_reg[8]  ( .D(n132), .CK(clk), .RN(n363), .QN(n82) );
  DFFRX1 \gray_addr_reg[7]  ( .D(n133), .CK(clk), .RN(n363), .QN(n83) );
  DFFRX1 \gray_addr_reg[6]  ( .D(n134), .CK(clk), .RN(n363), .QN(n84) );
  DFFRX1 \gray_addr_reg[5]  ( .D(n135), .CK(clk), .RN(n364), .QN(n85) );
  DFFRX1 \gray_addr_reg[4]  ( .D(n136), .CK(clk), .RN(n364), .QN(n86) );
  DFFRX1 \gray_addr_reg[3]  ( .D(n137), .CK(clk), .RN(n364), .QN(n87) );
  DFFRX1 \gray_addr_reg[2]  ( .D(n138), .CK(clk), .RN(n364), .QN(n88) );
  DFFRX1 \gray_addr_reg[1]  ( .D(n139), .CK(clk), .RN(n364), .QN(n89) );
  DFFRX1 \gray_addr_reg[0]  ( .D(n140), .CK(clk), .RN(n364), .QN(n90) );
  OAI211X4 U222 ( .A0(n403), .A1(n7), .B0(n60), .C0(n61), .Y(nx_state[0]) );
  NOR2X2 U223 ( .A(n354), .B(n401), .Y(n15) );
  INVX12 U224 ( .A(n90), .Y(gray_addr[0]) );
  INVX12 U225 ( .A(n89), .Y(gray_addr[1]) );
  INVX12 U226 ( .A(n88), .Y(gray_addr[2]) );
  INVX12 U227 ( .A(n87), .Y(gray_addr[3]) );
  INVX12 U228 ( .A(n86), .Y(gray_addr[4]) );
  INVX12 U229 ( .A(n85), .Y(gray_addr[5]) );
  INVX12 U230 ( .A(n84), .Y(gray_addr[6]) );
  INVX12 U231 ( .A(n83), .Y(gray_addr[7]) );
  INVX12 U232 ( .A(n82), .Y(gray_addr[8]) );
  INVX12 U233 ( .A(n81), .Y(gray_addr[9]) );
  INVX12 U234 ( .A(n80), .Y(gray_addr[10]) );
  INVX12 U235 ( .A(n79), .Y(gray_addr[11]) );
  INVX12 U236 ( .A(n78), .Y(gray_addr[12]) );
  INVX12 U237 ( .A(n77), .Y(gray_addr[13]) );
  INVX3 U238 ( .A(reset), .Y(n399) );
  NOR2BX2 U239 ( .AN(n328), .B(n353), .Y(n337) );
  NOR2BX2 U240 ( .AN(n341), .B(n150), .Y(n348) );
  OAI32X4 U241 ( .A0(n353), .A1(counter[2]), .A2(n352), .B0(counter[1]), .B1(
        n329), .Y(n336) );
  NOR2BX2 U242 ( .AN(n340), .B(counter[2]), .Y(n349) );
  BUFX12 U243 ( .A(n440), .Y(lbp_data[1]) );
  OAI32X4 U244 ( .A0(n353), .A1(counter[1]), .A2(n150), .B0(n329), .B1(n352), 
        .Y(n338) );
  INVX12 U245 ( .A(n301), .Y(gray_req) );
  INVX12 U246 ( .A(n303), .Y(lbp_valid) );
  BUFX12 U247 ( .A(n420), .Y(lbp_addr[13]) );
  BUFX12 U248 ( .A(n421), .Y(lbp_addr[12]) );
  BUFX12 U249 ( .A(n422), .Y(lbp_addr[11]) );
  BUFX12 U250 ( .A(n423), .Y(lbp_addr[10]) );
  BUFX12 U251 ( .A(n424), .Y(lbp_addr[9]) );
  BUFX12 U252 ( .A(n425), .Y(lbp_addr[8]) );
  BUFX12 U253 ( .A(n426), .Y(lbp_addr[7]) );
  BUFX12 U254 ( .A(n427), .Y(lbp_addr[6]) );
  BUFX12 U255 ( .A(n428), .Y(lbp_addr[5]) );
  BUFX12 U256 ( .A(n429), .Y(lbp_addr[4]) );
  BUFX12 U257 ( .A(n430), .Y(lbp_addr[3]) );
  BUFX12 U258 ( .A(n431), .Y(lbp_addr[2]) );
  BUFX12 U259 ( .A(n432), .Y(lbp_addr[1]) );
  BUFX12 U260 ( .A(n433), .Y(lbp_addr[0]) );
  BUFX12 U261 ( .A(n442), .Y(finish) );
  BUFX12 U262 ( .A(n434), .Y(lbp_data[7]) );
  BUFX12 U263 ( .A(n439), .Y(lbp_data[2]) );
  BUFX12 U264 ( .A(n438), .Y(lbp_data[3]) );
  BUFX12 U265 ( .A(n437), .Y(lbp_data[4]) );
  BUFX12 U266 ( .A(n436), .Y(lbp_data[5]) );
  BUFX12 U267 ( .A(n435), .Y(lbp_data[6]) );
  BUFX12 U268 ( .A(n441), .Y(lbp_data[0]) );
  OAI22X2 U269 ( .A0(n341), .A1(n150), .B0(counter[2]), .B1(n340), .Y(n350) );
  BUFX4 U270 ( .A(n10), .Y(n354) );
  OAI211XL U271 ( .A0(g0_addr[0]), .A1(n14), .B0(n16), .C0(n17), .Y(n207) );
  NAND4BBXL U272 ( .AN(n148), .BN(n147), .C(n18), .D(n19), .Y(n16) );
  CLKINVX1 U273 ( .A(n150), .Y(n413) );
  NOR3X1 U274 ( .A(state[0]), .B(state[2]), .C(n409), .Y(n52) );
  NAND3X1 U275 ( .A(state[0]), .B(n408), .C(state[1]), .Y(n7) );
  NAND2X1 U276 ( .A(n366), .B(n402), .Y(N82) );
  INVX3 U277 ( .A(n367), .Y(n366) );
  INVX3 U278 ( .A(n368), .Y(n365) );
  OR2X1 U279 ( .A(n15), .B(n401), .Y(n14) );
  CLKINVX1 U280 ( .A(n29), .Y(n402) );
  CLKBUFX3 U281 ( .A(n327), .Y(n367) );
  CLKBUFX3 U282 ( .A(n327), .Y(n368) );
  CLKBUFX3 U283 ( .A(n400), .Y(n358) );
  CLKINVX1 U284 ( .A(n354), .Y(n400) );
  OR2X1 U285 ( .A(counter_reverse[2]), .B(counter_reverse[3]), .Y(n414) );
  NOR2X1 U286 ( .A(n415), .B(n414), .Y(N86) );
  CLKINVX1 U287 ( .A(n55), .Y(n405) );
  NAND2BX1 U288 ( .AN(counter_reverse[3]), .B(counter_reverse[2]), .Y(n419) );
  CLKBUFX3 U289 ( .A(n399), .Y(n363) );
  CLKBUFX3 U290 ( .A(n399), .Y(n362) );
  CLKBUFX3 U291 ( .A(n362), .Y(n361) );
  CLKBUFX3 U292 ( .A(n399), .Y(n360) );
  CLKBUFX3 U293 ( .A(n399), .Y(n359) );
  AND2X2 U294 ( .A(n52), .B(n355), .Y(n51) );
  NOR2X1 U295 ( .A(n55), .B(nx_state[0]), .Y(n29) );
  NAND2X1 U296 ( .A(nx_state[0]), .B(n405), .Y(n10) );
  INVX3 U297 ( .A(n16), .Y(n401) );
  CLKBUFX3 U298 ( .A(n36), .Y(n357) );
  NOR2BX1 U299 ( .AN(n356), .B(n402), .Y(n36) );
  AND2X2 U300 ( .A(nx_state[0]), .B(n55), .Y(n327) );
  NAND2X1 U301 ( .A(n29), .B(n411), .Y(n23) );
  NAND2X1 U302 ( .A(n7), .B(n23), .Y(n28) );
  OA21XL U303 ( .A0(n412), .A1(n402), .B0(n28), .Y(n27) );
  XOR2X1 U304 ( .A(n285), .B(n56), .Y(counter_reverse[3]) );
  NOR2X1 U305 ( .A(n52), .B(n406), .Y(n55) );
  CLKINVX1 U306 ( .A(n329), .Y(n353) );
  NOR2X1 U307 ( .A(n413), .B(n57), .Y(n56) );
  NAND2X1 U308 ( .A(n411), .B(n410), .Y(n415) );
  CLKINVX1 U309 ( .A(counter_reverse[1]), .Y(n410) );
  AO21X1 U310 ( .A0(n413), .A1(n57), .B0(n56), .Y(counter_reverse[2]) );
  INVX3 U311 ( .A(n54), .Y(n406) );
  NAND2X1 U312 ( .A(counter_reverse[1]), .B(n411), .Y(n417) );
  OAI21XL U313 ( .A0(n7), .A1(n8), .B0(n9), .Y(nx_state[2]) );
  CLKBUFX3 U314 ( .A(n399), .Y(n364) );
  CLKBUFX3 U315 ( .A(n50), .Y(n355) );
  OAI2BB1X1 U316 ( .A0N(N85), .A1N(n52), .B0(n7), .Y(n50) );
  OAI2BB2XL U317 ( .B0(n76), .B1(n355), .A0N(N101), .A1N(n51), .Y(n153) );
  NOR2X1 U318 ( .A(n419), .B(n418), .Y(N93) );
  OAI2BB2XL U319 ( .B0(n75), .B1(n355), .A0N(N100), .A1N(n51), .Y(n154) );
  OAI2BB2XL U320 ( .B0(n74), .B1(n355), .A0N(N99), .A1N(n51), .Y(n155) );
  OAI2BB2XL U321 ( .B0(n73), .B1(n355), .A0N(N98), .A1N(n51), .Y(n156) );
  OAI2BB2XL U322 ( .B0(n72), .B1(n355), .A0N(N97), .A1N(n51), .Y(n157) );
  OAI2BB2XL U323 ( .B0(n71), .B1(n355), .A0N(N96), .A1N(n51), .Y(n158) );
  OAI2BB2XL U324 ( .B0(n70), .B1(n355), .A0N(N95), .A1N(n51), .Y(n159) );
  OAI2BB2XL U325 ( .B0(n69), .B1(n355), .A0N(N94), .A1N(n51), .Y(n160) );
  CLKINVX1 U326 ( .A(gray_data[5]), .Y(n397) );
  CLKINVX1 U327 ( .A(gray_data[3]), .Y(n396) );
  CLKINVX1 U328 ( .A(gray_data[1]), .Y(n395) );
  OAI221XL U329 ( .A0(n87), .A1(n356), .B0(n146), .B1(n366), .C0(n46), .Y(n137) );
  NAND2X1 U330 ( .A(N142), .B(n357), .Y(n46) );
  CLKINVX1 U331 ( .A(n333), .Y(N142) );
  OAI221XL U332 ( .A0(n86), .A1(n356), .B0(n145), .B1(n366), .C0(n45), .Y(n136) );
  NAND2X1 U333 ( .A(N143), .B(n357), .Y(n45) );
  CLKINVX1 U334 ( .A(n334), .Y(N143) );
  OAI221XL U335 ( .A0(n85), .A1(n356), .B0(n144), .B1(n366), .C0(n44), .Y(n135) );
  NAND2X1 U336 ( .A(N144), .B(n357), .Y(n44) );
  CLKINVX1 U337 ( .A(n335), .Y(N144) );
  OAI221XL U338 ( .A0(n84), .A1(n356), .B0(n143), .B1(n366), .C0(n43), .Y(n134) );
  NAND2X1 U339 ( .A(N145), .B(n357), .Y(n43) );
  CLKINVX1 U340 ( .A(n339), .Y(N145) );
  OAI221XL U341 ( .A0(n90), .A1(n356), .B0(g0_addr[0]), .B1(n366), .C0(n49), 
        .Y(n140) );
  NAND2X1 U342 ( .A(N139), .B(n357), .Y(n49) );
  CLKINVX1 U343 ( .A(n330), .Y(N139) );
  OAI221XL U344 ( .A0(n89), .A1(n356), .B0(n148), .B1(n366), .C0(n48), .Y(n139) );
  NAND2X1 U345 ( .A(N140), .B(n357), .Y(n48) );
  CLKINVX1 U346 ( .A(n331), .Y(N140) );
  OAI221XL U347 ( .A0(n88), .A1(n356), .B0(n147), .B1(n366), .C0(n47), .Y(n138) );
  NAND2X1 U348 ( .A(N141), .B(n357), .Y(n47) );
  CLKINVX1 U349 ( .A(n332), .Y(N141) );
  OAI221XL U350 ( .A0(n83), .A1(n356), .B0(g0_addr[7]), .B1(n366), .C0(n42), 
        .Y(n133) );
  NAND2X1 U351 ( .A(N146), .B(n357), .Y(n42) );
  CLKINVX1 U352 ( .A(n342), .Y(N146) );
  OAI221XL U353 ( .A0(n82), .A1(n356), .B0(n95), .B1(n366), .C0(n41), .Y(n132)
         );
  NAND2X1 U354 ( .A(N147), .B(n357), .Y(n41) );
  CLKINVX1 U355 ( .A(n343), .Y(N147) );
  OAI221XL U356 ( .A0(n81), .A1(n356), .B0(n97), .B1(n366), .C0(n40), .Y(n131)
         );
  NAND2X1 U357 ( .A(N148), .B(n357), .Y(n40) );
  CLKINVX1 U358 ( .A(n344), .Y(N148) );
  OAI221XL U359 ( .A0(n80), .A1(n356), .B0(n98), .B1(n366), .C0(n39), .Y(n130)
         );
  NAND2X1 U360 ( .A(N149), .B(n357), .Y(n39) );
  CLKINVX1 U361 ( .A(n345), .Y(N149) );
  OAI221XL U362 ( .A0(n79), .A1(n356), .B0(n99), .B1(n365), .C0(n38), .Y(n129)
         );
  NAND2X1 U363 ( .A(N150), .B(n357), .Y(n38) );
  CLKINVX1 U364 ( .A(n346), .Y(N150) );
  OAI221XL U365 ( .A0(n78), .A1(n356), .B0(n100), .B1(n365), .C0(n37), .Y(n128) );
  NAND2X1 U366 ( .A(N151), .B(n357), .Y(n37) );
  CLKINVX1 U367 ( .A(n347), .Y(N151) );
  OAI221XL U368 ( .A0(n77), .A1(n356), .B0(n101), .B1(n366), .C0(n35), .Y(n127) );
  NAND2X1 U369 ( .A(N152), .B(n357), .Y(n35) );
  CLKINVX1 U370 ( .A(n351), .Y(N152) );
  NOR4X1 U371 ( .A(n143), .B(n144), .C(n145), .D(n146), .Y(n19) );
  NOR2BX1 U372 ( .AN(g0_addr[0]), .B(n354), .Y(n18) );
  NAND2X1 U373 ( .A(g2_addr[0]), .B(n15), .Y(n17) );
  OAI2BB2XL U374 ( .B0(n146), .B1(n14), .A0N(g2_addr[3]), .A1N(n15), .Y(n204)
         );
  OAI2BB2XL U375 ( .B0(n145), .B1(n14), .A0N(g2_addr[4]), .A1N(n15), .Y(n202)
         );
  OAI2BB2XL U376 ( .B0(n144), .B1(n14), .A0N(g2_addr[5]), .A1N(n15), .Y(n200)
         );
  OAI2BB2XL U377 ( .B0(n143), .B1(n14), .A0N(g2_addr[6]), .A1N(n15), .Y(n198)
         );
  OAI2BB2XL U378 ( .B0(n148), .B1(n14), .A0N(g2_addr[1]), .A1N(n15), .Y(n209)
         );
  OAI2BB2XL U379 ( .B0(n147), .B1(n14), .A0N(g2_addr[2]), .A1N(n15), .Y(n206)
         );
  NAND3X1 U380 ( .A(n56), .B(n285), .C(n52), .Y(n60) );
  CLKINVX1 U381 ( .A(n8), .Y(n403) );
  NAND4X1 U382 ( .A(gray_ready), .B(n404), .C(n409), .D(n408), .Y(n61) );
  CLKBUFX3 U383 ( .A(n34), .Y(n356) );
  OA21XL U384 ( .A0(n92), .A1(n368), .B0(N82), .Y(n34) );
  OAI32X1 U385 ( .A0(n29), .A1(\sll_152_S2/SH[0] ), .A2(n407), .B0(n411), .B1(
        n402), .Y(n212) );
  CLKINVX1 U386 ( .A(n7), .Y(n407) );
  OAI32X1 U387 ( .A0(n23), .A1(n151), .A2(n413), .B0(n150), .B1(n27), .Y(n211)
         );
  OAI22XL U388 ( .A0(n91), .A1(n368), .B0(g0_addr[0]), .B1(n366), .Y(n214) );
  OAI22XL U389 ( .A0(n151), .A1(n28), .B0(n412), .B1(n23), .Y(n213) );
  OAI22XL U390 ( .A0(n115), .A1(n368), .B0(g0_addr[7]), .B1(n365), .Y(n193) );
  OAI22XL U391 ( .A0(n123), .A1(n368), .B0(n146), .B1(n365), .Y(n203) );
  OAI22XL U392 ( .A0(n121), .A1(n368), .B0(n145), .B1(n365), .Y(n201) );
  OAI22XL U393 ( .A0(n119), .A1(n368), .B0(n144), .B1(n365), .Y(n199) );
  OAI22XL U394 ( .A0(n117), .A1(n368), .B0(n143), .B1(n365), .Y(n197) );
  OAI22XL U395 ( .A0(n68), .A1(n358), .B0(n91), .B1(n354), .Y(n169) );
  OAI22XL U396 ( .A0(n67), .A1(n358), .B0(n93), .B1(n354), .Y(n170) );
  OAI22XL U397 ( .A0(n66), .A1(n358), .B0(n94), .B1(n354), .Y(n171) );
  OAI22XL U398 ( .A0(n122), .A1(n358), .B0(n123), .B1(n354), .Y(n172) );
  OAI22XL U399 ( .A0(n120), .A1(n358), .B0(n121), .B1(n354), .Y(n173) );
  OAI22XL U400 ( .A0(n118), .A1(n358), .B0(n119), .B1(n354), .Y(n174) );
  OAI22XL U401 ( .A0(n116), .A1(n358), .B0(n117), .B1(n354), .Y(n175) );
  OAI22XL U402 ( .A0(n114), .A1(n358), .B0(n115), .B1(n354), .Y(n176) );
  OAI22XL U403 ( .A0(n112), .A1(n358), .B0(n113), .B1(n354), .Y(n177) );
  OAI22XL U404 ( .A0(n110), .A1(n358), .B0(n111), .B1(n354), .Y(n178) );
  OAI22XL U405 ( .A0(n108), .A1(n358), .B0(n109), .B1(n354), .Y(n179) );
  OAI22XL U406 ( .A0(n106), .A1(n358), .B0(n107), .B1(n354), .Y(n180) );
  OAI22XL U407 ( .A0(n104), .A1(n358), .B0(n105), .B1(n354), .Y(n181) );
  OAI22XL U408 ( .A0(n102), .A1(n358), .B0(n103), .B1(n354), .Y(n182) );
  OAI22XL U409 ( .A0(n93), .A1(n368), .B0(n148), .B1(n366), .Y(n208) );
  OAI22XL U410 ( .A0(n94), .A1(n368), .B0(n147), .B1(n365), .Y(n205) );
  OAI22XL U411 ( .A0(n113), .A1(n368), .B0(n95), .B1(n365), .Y(n195) );
  OAI22XL U412 ( .A0(n111), .A1(n368), .B0(n97), .B1(n365), .Y(n191) );
  OAI22XL U413 ( .A0(n109), .A1(n368), .B0(n98), .B1(n365), .Y(n189) );
  OAI22XL U414 ( .A0(n107), .A1(n368), .B0(n99), .B1(n365), .Y(n187) );
  OAI22XL U415 ( .A0(n105), .A1(n367), .B0(n100), .B1(n365), .Y(n185) );
  OAI22XL U416 ( .A0(n103), .A1(n368), .B0(n101), .B1(n365), .Y(n183) );
  OAI2BB2XL U417 ( .B0(g0_addr[7]), .B1(n401), .A0N(g5_addr[7]), .A1N(n401), 
        .Y(n194) );
  OAI2BB2XL U418 ( .B0(n101), .B1(n401), .A0N(g5_addr[13]), .A1N(n401), .Y(
        n184) );
  OAI2BB2XL U419 ( .B0(n100), .B1(n401), .A0N(g5_addr[12]), .A1N(n401), .Y(
        n186) );
  OAI2BB2XL U420 ( .B0(n99), .B1(n401), .A0N(g5_addr[11]), .A1N(n401), .Y(n188) );
  OAI2BB2XL U421 ( .B0(n98), .B1(n401), .A0N(g5_addr[10]), .A1N(n401), .Y(n190) );
  OAI2BB2XL U422 ( .B0(n97), .B1(n401), .A0N(g5_addr[9]), .A1N(n401), .Y(n192)
         );
  OAI2BB2XL U423 ( .B0(n95), .B1(n401), .A0N(g5_addr[8]), .A1N(n401), .Y(n196)
         );
  OAI2BB1X1 U424 ( .A0N(n20), .A1N(n285), .B0(n22), .Y(n210) );
  NAND4BX1 U425 ( .AN(n23), .B(n92), .C(n412), .D(n413), .Y(n22) );
  OAI21XL U426 ( .A0(n413), .A1(n402), .B0(n27), .Y(n20) );
  CLKINVX1 U427 ( .A(gray_data[7]), .Y(n398) );
  AO22X1 U428 ( .A0(gray_data[0]), .A1(n406), .B0(n54), .B1(gc_data[0]), .Y(
        n161) );
  AO22X1 U429 ( .A0(gray_data[1]), .A1(n406), .B0(n54), .B1(gc_data[1]), .Y(
        n162) );
  AO22X1 U430 ( .A0(gray_data[2]), .A1(n406), .B0(n54), .B1(gc_data[2]), .Y(
        n163) );
  AO22X1 U431 ( .A0(gray_data[3]), .A1(n406), .B0(n54), .B1(gc_data[3]), .Y(
        n164) );
  AO22X1 U432 ( .A0(gray_data[4]), .A1(n406), .B0(n54), .B1(gc_data[4]), .Y(
        n165) );
  AO22X1 U433 ( .A0(gray_data[5]), .A1(n406), .B0(n54), .B1(gc_data[5]), .Y(
        n166) );
  AO22X1 U434 ( .A0(gray_data[6]), .A1(n406), .B0(n54), .B1(gc_data[6]), .Y(
        n167) );
  AO22X1 U435 ( .A0(gray_data[7]), .A1(n406), .B0(n54), .B1(gc_data[7]), .Y(
        n168) );
  CLKINVX1 U436 ( .A(counter[1]), .Y(n352) );
  NOR2X1 U437 ( .A(n419), .B(n415), .Y(N90) );
  NOR2X1 U438 ( .A(n419), .B(n416), .Y(N91) );
  NOR2X1 U439 ( .A(n419), .B(n417), .Y(N92) );
  NOR2X1 U440 ( .A(n416), .B(n414), .Y(N87) );
  NOR2X1 U441 ( .A(n417), .B(n414), .Y(N88) );
  NOR2X1 U442 ( .A(n418), .B(n414), .Y(N89) );
  OAI21X1 U443 ( .A0(n151), .A1(\sll_152_S2/SH[0] ), .B0(n57), .Y(
        counter_reverse[1]) );
  NAND3X2 U444 ( .A(n409), .B(n408), .C(state[0]), .Y(n54) );
  NAND2X1 U445 ( .A(n151), .B(\sll_152_S2/SH[0] ), .Y(n57) );
  NAND4BX1 U446 ( .AN(n62), .B(n63), .C(n64), .D(n65), .Y(n8) );
  NOR3X1 U447 ( .A(n111), .B(n107), .C(n109), .Y(n64) );
  NOR4X1 U448 ( .A(n113), .B(n117), .C(n119), .D(n121), .Y(n63) );
  NOR4X1 U449 ( .A(n93), .B(n94), .C(n103), .D(n105), .Y(n65) );
  CLKINVX1 U450 ( .A(\sll_152_S2/SH[0] ), .Y(n411) );
  NAND2X1 U451 ( .A(\sll_152_S2/SH[0] ), .B(n410), .Y(n416) );
  NAND3BX1 U452 ( .AN(n123), .B(n91), .C(n115), .Y(n62) );
  NAND2X1 U453 ( .A(counter_reverse[1]), .B(\sll_152_S2/SH[0] ), .Y(n418) );
  CLKINVX1 U454 ( .A(n151), .Y(n412) );
  NAND3X1 U455 ( .A(n404), .B(n409), .C(state[2]), .Y(n9) );
  NAND2X1 U456 ( .A(n124), .B(n9), .Y(n125) );
  XOR2X1 U457 ( .A(counter[0]), .B(counter[2]), .Y(n329) );
  XOR2X1 U458 ( .A(n352), .B(counter[2]), .Y(n328) );
  AOI222XL U459 ( .A0(g2_addr[0]), .A1(n338), .B0(g1_addr[0]), .B1(n337), .C0(
        g0_addr[0]), .C1(n336), .Y(n330) );
  AOI222XL U460 ( .A0(g2_addr[1]), .A1(n338), .B0(g1_addr[1]), .B1(n337), .C0(
        g0_addr[1]), .C1(n336), .Y(n331) );
  AOI222XL U461 ( .A0(g2_addr[2]), .A1(n338), .B0(g1_addr[2]), .B1(n337), .C0(
        g0_addr[2]), .C1(n336), .Y(n332) );
  AOI222XL U462 ( .A0(g2_addr[3]), .A1(n338), .B0(g1_addr[3]), .B1(n337), .C0(
        g0_addr[3]), .C1(n336), .Y(n333) );
  AOI222XL U463 ( .A0(g2_addr[4]), .A1(n338), .B0(g1_addr[4]), .B1(n337), .C0(
        g0_addr[4]), .C1(n336), .Y(n334) );
  AOI222XL U464 ( .A0(g2_addr[5]), .A1(n338), .B0(g1_addr[5]), .B1(n337), .C0(
        g0_addr[5]), .C1(n336), .Y(n335) );
  AOI222XL U465 ( .A0(g2_addr[6]), .A1(n338), .B0(g1_addr[6]), .B1(n337), .C0(
        g0_addr[6]), .C1(n336), .Y(n339) );
  NAND2BX1 U466 ( .AN(counter[0]), .B(n352), .Y(n341) );
  NAND2X1 U467 ( .A(counter[1]), .B(counter[0]), .Y(n340) );
  AOI222XL U468 ( .A0(g3_addr[7]), .A1(n350), .B0(g0_addr[7]), .B1(n349), .C0(
        g5_addr[7]), .C1(n348), .Y(n342) );
  AOI222XL U469 ( .A0(g3_addr[8]), .A1(n350), .B0(g0_addr[8]), .B1(n349), .C0(
        g5_addr[8]), .C1(n348), .Y(n343) );
  AOI222XL U470 ( .A0(g3_addr[9]), .A1(n350), .B0(g0_addr[9]), .B1(n349), .C0(
        g5_addr[9]), .C1(n348), .Y(n344) );
  AOI222XL U471 ( .A0(g3_addr[10]), .A1(n350), .B0(g0_addr[10]), .B1(n349), 
        .C0(g5_addr[10]), .C1(n348), .Y(n345) );
  AOI222XL U472 ( .A0(g3_addr[11]), .A1(n350), .B0(g0_addr[11]), .B1(n349), 
        .C0(g5_addr[11]), .C1(n348), .Y(n346) );
  AOI222XL U473 ( .A0(g3_addr[12]), .A1(n350), .B0(g0_addr[12]), .B1(n349), 
        .C0(g5_addr[12]), .C1(n348), .Y(n347) );
  AOI222XL U474 ( .A0(g3_addr[13]), .A1(n350), .B0(g0_addr[13]), .B1(n349), 
        .C0(g5_addr[13]), .C1(n348), .Y(n351) );
  NAND2BX1 U475 ( .AN(g1_addr[1]), .B(g0_addr[0]), .Y(n369) );
  OAI2BB1X1 U476 ( .A0N(g1_addr[0]), .A1N(g1_addr[1]), .B0(n369), .Y(
        g0_addr[1]) );
  OR2X1 U477 ( .A(n369), .B(g1_addr[2]), .Y(n370) );
  OAI2BB1X1 U478 ( .A0N(n369), .A1N(g1_addr[2]), .B0(n370), .Y(g0_addr[2]) );
  NOR2X1 U479 ( .A(n370), .B(g1_addr[3]), .Y(n371) );
  AO21X1 U480 ( .A0(n370), .A1(g1_addr[3]), .B0(n371), .Y(g0_addr[3]) );
  NAND2X1 U481 ( .A(n371), .B(n145), .Y(n372) );
  OAI21XL U482 ( .A0(n371), .A1(n145), .B0(n372), .Y(g0_addr[4]) );
  XNOR2X1 U483 ( .A(g1_addr[5]), .B(n372), .Y(g0_addr[5]) );
  NOR2X1 U484 ( .A(g1_addr[5]), .B(n372), .Y(n373) );
  XOR2X1 U485 ( .A(g1_addr[6]), .B(n373), .Y(g0_addr[6]) );
  NAND2BX1 U486 ( .AN(g3_addr[8]), .B(g0_addr[7]), .Y(n374) );
  OAI2BB1X1 U487 ( .A0N(g3_addr[7]), .A1N(g3_addr[8]), .B0(n374), .Y(
        g0_addr[8]) );
  OR2X1 U488 ( .A(n374), .B(g3_addr[9]), .Y(n375) );
  OAI2BB1X1 U489 ( .A0N(n374), .A1N(g3_addr[9]), .B0(n375), .Y(g0_addr[9]) );
  NOR2X1 U490 ( .A(n375), .B(g3_addr[10]), .Y(n376) );
  AO21X1 U491 ( .A0(n375), .A1(g3_addr[10]), .B0(n376), .Y(g0_addr[10]) );
  NAND2X1 U492 ( .A(n376), .B(n99), .Y(n377) );
  OAI21XL U493 ( .A0(n376), .A1(n99), .B0(n377), .Y(g0_addr[11]) );
  XNOR2X1 U494 ( .A(g3_addr[12]), .B(n377), .Y(g0_addr[12]) );
  NOR2X1 U495 ( .A(g3_addr[12]), .B(n377), .Y(n378) );
  XOR2X1 U496 ( .A(g3_addr[13]), .B(n378), .Y(g0_addr[13]) );
  NAND2BX1 U497 ( .AN(gc_data[4]), .B(gray_data[4]), .Y(n379) );
  OAI222XL U498 ( .A0(gc_data[5]), .A1(n397), .B0(gc_data[5]), .B1(n379), .C0(
        n397), .C1(n379), .Y(n380) );
  OAI222XL U499 ( .A0(gray_data[6]), .A1(n380), .B0(n394), .B1(n380), .C0(
        gray_data[6]), .C1(n394), .Y(n391) );
  NOR2BX1 U500 ( .AN(gc_data[4]), .B(gray_data[4]), .Y(n381) );
  OAI22XL U501 ( .A0(n381), .A1(n397), .B0(gc_data[5]), .B1(n381), .Y(n389) );
  NAND2BX1 U502 ( .AN(gc_data[2]), .B(gray_data[2]), .Y(n387) );
  OAI2BB2XL U503 ( .B0(gray_data[0]), .B1(n393), .A0N(n395), .A1N(gc_data[1]), 
        .Y(n382) );
  OAI21XL U504 ( .A0(gc_data[1]), .A1(n395), .B0(n382), .Y(n385) );
  NOR2BX1 U505 ( .AN(gc_data[2]), .B(gray_data[2]), .Y(n383) );
  OAI22XL U506 ( .A0(n383), .A1(n396), .B0(gc_data[3]), .B1(n383), .Y(n384) );
  AOI2BB2X1 U507 ( .B0(n385), .B1(n384), .A0N(n387), .A1N(n396), .Y(n386) );
  OAI221XL U508 ( .A0(gc_data[3]), .A1(n387), .B0(gc_data[3]), .B1(n396), .C0(
        n386), .Y(n388) );
  OAI211X1 U509 ( .A0(gray_data[6]), .A1(n394), .B0(n389), .C0(n388), .Y(n390)
         );
  AO22X1 U510 ( .A0(n398), .A1(gc_data[7]), .B0(n391), .B1(n390), .Y(n392) );
  OAI21XL U511 ( .A0(gc_data[7]), .A1(n398), .B0(n392), .Y(N85) );
endmodule

