/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Sun Feb 27 10:18:12 2022
/////////////////////////////////////////////////////////////


module geofence_DW_cmp_0 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [21:0] A;
  input [21:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194;

  CLKINVX1 U59 ( .A(n172), .Y(n134) );
  CLKINVX1 U60 ( .A(A[17]), .Y(n130) );
  CLKINVX1 U61 ( .A(A[12]), .Y(n132) );
  CLKINVX1 U62 ( .A(A[14]), .Y(n131) );
  CLKINVX1 U63 ( .A(B[13]), .Y(n143) );
  CLKINVX1 U64 ( .A(B[15]), .Y(n142) );
  CLKINVX1 U65 ( .A(B[11]), .Y(n144) );
  CLKINVX1 U66 ( .A(A[8]), .Y(n135) );
  CLKINVX1 U67 ( .A(A[10]), .Y(n133) );
  CLKINVX1 U68 ( .A(B[9]), .Y(n145) );
  CLKINVX1 U69 ( .A(A[5]), .Y(n136) );
  CLKINVX1 U70 ( .A(B[6]), .Y(n146) );
  CLKINVX1 U71 ( .A(n186), .Y(n138) );
  CLKINVX1 U72 ( .A(A[19]), .Y(n129) );
  CLKINVX1 U73 ( .A(B[18]), .Y(n141) );
  CLKINVX1 U74 ( .A(B[20]), .Y(n140) );
  CLKINVX1 U75 ( .A(B[21]), .Y(n139) );
  CLKINVX1 U76 ( .A(B[4]), .Y(n147) );
  CLKINVX1 U77 ( .A(A[3]), .Y(n137) );
  CLKINVX1 U78 ( .A(B[1]), .Y(n148) );
  OAI221XL U79 ( .A0(A[21]), .A1(n149), .B0(A[21]), .B1(n139), .C0(n150), .Y(
        GE_LT_GT_LE) );
  AOI2BB2X1 U80 ( .B0(n151), .B1(n152), .A0N(n149), .A1N(n139), .Y(n150) );
  OAI22XL U81 ( .A0(n139), .A1(n153), .B0(A[21]), .B1(n153), .Y(n152) );
  OAI21XL U82 ( .A0(A[20]), .A1(n140), .B0(n154), .Y(n153) );
  OAI22XL U83 ( .A0(n129), .A1(n155), .B0(B[19]), .B1(n155), .Y(n154) );
  OAI21XL U84 ( .A0(A[18]), .A1(n141), .B0(n156), .Y(n155) );
  OAI22XL U85 ( .A0(n157), .A1(n130), .B0(B[17]), .B1(n157), .Y(n156) );
  NOR2BX1 U86 ( .AN(B[16]), .B(A[16]), .Y(n157) );
  OAI21XL U87 ( .A0(n158), .A1(n159), .B0(n160), .Y(n151) );
  OAI222XL U88 ( .A0(A[15]), .A1(n161), .B0(n142), .B1(n161), .C0(A[15]), .C1(
        n142), .Y(n160) );
  OAI222XL U89 ( .A0(B[14]), .A1(n131), .B0(B[14]), .B1(n162), .C0(n131), .C1(
        n162), .Y(n161) );
  OAI222XL U90 ( .A0(A[13]), .A1(n163), .B0(n143), .B1(n163), .C0(A[13]), .C1(
        n143), .Y(n162) );
  OAI222XL U91 ( .A0(B[12]), .A1(n132), .B0(B[12]), .B1(n164), .C0(n132), .C1(
        n164), .Y(n163) );
  NAND2X1 U92 ( .A(A[11]), .B(n144), .Y(n164) );
  OAI21XL U93 ( .A0(A[15]), .A1(n142), .B0(n165), .Y(n159) );
  OAI22XL U94 ( .A0(n166), .A1(n131), .B0(B[14]), .B1(n166), .Y(n165) );
  OAI21XL U95 ( .A0(A[13]), .A1(n143), .B0(n167), .Y(n166) );
  OAI22XL U96 ( .A0(n168), .A1(n132), .B0(B[12]), .B1(n168), .Y(n167) );
  NOR2X1 U97 ( .A(n144), .B(A[11]), .Y(n168) );
  AOI221XL U98 ( .A0(A[10]), .A1(n134), .B0(n169), .B1(n170), .C0(n171), .Y(
        n158) );
  OAI22XL U99 ( .A0(B[10]), .A1(n133), .B0(B[10]), .B1(n172), .Y(n171) );
  OAI22XL U100 ( .A0(n133), .A1(n173), .B0(B[10]), .B1(n173), .Y(n170) );
  OAI21XL U101 ( .A0(A[9]), .A1(n145), .B0(n174), .Y(n173) );
  OAI22XL U102 ( .A0(n175), .A1(n135), .B0(B[8]), .B1(n175), .Y(n174) );
  NOR2BX1 U103 ( .AN(B[7]), .B(A[7]), .Y(n175) );
  OAI21XL U104 ( .A0(n176), .A1(n177), .B0(n178), .Y(n169) );
  OAI222XL U105 ( .A0(A[6]), .A1(n179), .B0(n146), .B1(n179), .C0(A[6]), .C1(
        n146), .Y(n178) );
  OAI222XL U106 ( .A0(B[5]), .A1(n136), .B0(B[5]), .B1(n180), .C0(n136), .C1(
        n180), .Y(n179) );
  NAND2X1 U107 ( .A(A[4]), .B(n147), .Y(n180) );
  OAI21XL U108 ( .A0(A[6]), .A1(n146), .B0(n181), .Y(n177) );
  OAI22XL U109 ( .A0(n182), .A1(n136), .B0(B[5]), .B1(n182), .Y(n181) );
  NOR2X1 U110 ( .A(n147), .B(A[4]), .Y(n182) );
  AOI221XL U111 ( .A0(A[3]), .A1(n138), .B0(n183), .B1(n184), .C0(n185), .Y(
        n176) );
  OAI22XL U112 ( .A0(B[3]), .A1(n137), .B0(B[3]), .B1(n186), .Y(n185) );
  OAI22XL U113 ( .A0(n187), .A1(n137), .B0(B[3]), .B1(n187), .Y(n184) );
  NOR2BX1 U114 ( .AN(B[2]), .B(A[2]), .Y(n187) );
  AO22X1 U115 ( .A0(n188), .A1(A[0]), .B0(A[1]), .B1(n148), .Y(n183) );
  AOI2BB1X1 U116 ( .A0N(n148), .A1N(A[1]), .B0(B[0]), .Y(n188) );
  NAND2BX1 U117 ( .AN(B[2]), .B(A[2]), .Y(n186) );
  OAI222XL U118 ( .A0(A[9]), .A1(n189), .B0(n189), .B1(n145), .C0(A[9]), .C1(
        n145), .Y(n172) );
  OAI222XL U119 ( .A0(B[8]), .A1(n135), .B0(B[8]), .B1(n190), .C0(n190), .C1(
        n135), .Y(n189) );
  NAND2BX1 U120 ( .AN(B[7]), .B(A[7]), .Y(n190) );
  OAI222XL U121 ( .A0(A[20]), .A1(n191), .B0(n191), .B1(n140), .C0(A[20]), 
        .C1(n140), .Y(n149) );
  OAI222XL U122 ( .A0(B[19]), .A1(n129), .B0(B[19]), .B1(n192), .C0(n192), 
        .C1(n129), .Y(n191) );
  OAI222XL U123 ( .A0(A[18]), .A1(n193), .B0(n193), .B1(n141), .C0(A[18]), 
        .C1(n141), .Y(n192) );
  OAI222XL U124 ( .A0(B[17]), .A1(n130), .B0(B[17]), .B1(n194), .C0(n194), 
        .C1(n130), .Y(n193) );
  NAND2BX1 U125 ( .AN(B[16]), .B(A[16]), .Y(n194) );
endmodule


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U5 ( .A(B[6]), .Y(n8) );
  XNOR2X1 U6 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U7 ( .A(B[1]), .Y(n3) );
  NAND2X1 U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U9 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n3) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n10) );
  XNOR2X1 U12 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n3) );
  NAND2X1 U6 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
  XNOR2X1 U11 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n3) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  XNOR2X1 U9 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW_cmp_1 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [21:0] A;
  input [21:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194;

  OAI221X1 U59 ( .A0(A[21]), .A1(n149), .B0(A[21]), .B1(n139), .C0(n150), .Y(
        GE_LT_GT_LE) );
  CLKINVX1 U60 ( .A(A[17]), .Y(n130) );
  CLKINVX1 U61 ( .A(A[12]), .Y(n132) );
  CLKINVX1 U62 ( .A(B[13]), .Y(n143) );
  CLKINVX1 U63 ( .A(B[11]), .Y(n144) );
  CLKINVX1 U64 ( .A(A[14]), .Y(n131) );
  CLKINVX1 U65 ( .A(B[15]), .Y(n142) );
  CLKINVX1 U66 ( .A(A[8]), .Y(n135) );
  CLKINVX1 U67 ( .A(A[10]), .Y(n133) );
  CLKINVX1 U68 ( .A(B[9]), .Y(n145) );
  CLKINVX1 U69 ( .A(A[5]), .Y(n136) );
  CLKINVX1 U70 ( .A(B[6]), .Y(n146) );
  CLKINVX1 U71 ( .A(B[21]), .Y(n139) );
  CLKINVX1 U72 ( .A(A[19]), .Y(n129) );
  CLKINVX1 U73 ( .A(B[18]), .Y(n141) );
  CLKINVX1 U74 ( .A(B[20]), .Y(n140) );
  CLKINVX1 U75 ( .A(n172), .Y(n134) );
  CLKINVX1 U76 ( .A(B[4]), .Y(n147) );
  CLKINVX1 U77 ( .A(A[3]), .Y(n137) );
  CLKINVX1 U78 ( .A(n186), .Y(n138) );
  CLKINVX1 U79 ( .A(B[1]), .Y(n148) );
  AOI2BB2X1 U80 ( .B0(n151), .B1(n152), .A0N(n149), .A1N(n139), .Y(n150) );
  OAI22XL U81 ( .A0(n139), .A1(n153), .B0(A[21]), .B1(n153), .Y(n152) );
  OAI21XL U82 ( .A0(A[20]), .A1(n140), .B0(n154), .Y(n153) );
  OAI22XL U83 ( .A0(n129), .A1(n155), .B0(B[19]), .B1(n155), .Y(n154) );
  OAI21XL U84 ( .A0(A[18]), .A1(n141), .B0(n156), .Y(n155) );
  OAI22XL U85 ( .A0(n157), .A1(n130), .B0(B[17]), .B1(n157), .Y(n156) );
  NOR2BX1 U86 ( .AN(B[16]), .B(A[16]), .Y(n157) );
  OAI21XL U87 ( .A0(n158), .A1(n159), .B0(n160), .Y(n151) );
  OAI222XL U88 ( .A0(A[15]), .A1(n161), .B0(n142), .B1(n161), .C0(A[15]), .C1(
        n142), .Y(n160) );
  OAI222XL U89 ( .A0(B[14]), .A1(n131), .B0(B[14]), .B1(n162), .C0(n131), .C1(
        n162), .Y(n161) );
  OAI222XL U90 ( .A0(A[13]), .A1(n163), .B0(n143), .B1(n163), .C0(A[13]), .C1(
        n143), .Y(n162) );
  OAI222XL U91 ( .A0(B[12]), .A1(n132), .B0(B[12]), .B1(n164), .C0(n132), .C1(
        n164), .Y(n163) );
  NAND2X1 U92 ( .A(A[11]), .B(n144), .Y(n164) );
  OAI21XL U93 ( .A0(A[15]), .A1(n142), .B0(n165), .Y(n159) );
  OAI22XL U94 ( .A0(n166), .A1(n131), .B0(B[14]), .B1(n166), .Y(n165) );
  OAI21XL U95 ( .A0(A[13]), .A1(n143), .B0(n167), .Y(n166) );
  OAI22XL U96 ( .A0(n168), .A1(n132), .B0(B[12]), .B1(n168), .Y(n167) );
  NOR2X1 U97 ( .A(n144), .B(A[11]), .Y(n168) );
  AOI221XL U98 ( .A0(A[10]), .A1(n134), .B0(n169), .B1(n170), .C0(n171), .Y(
        n158) );
  OAI22XL U99 ( .A0(B[10]), .A1(n133), .B0(B[10]), .B1(n172), .Y(n171) );
  OAI22XL U100 ( .A0(n133), .A1(n173), .B0(B[10]), .B1(n173), .Y(n170) );
  OAI21XL U101 ( .A0(A[9]), .A1(n145), .B0(n174), .Y(n173) );
  OAI22XL U102 ( .A0(n175), .A1(n135), .B0(B[8]), .B1(n175), .Y(n174) );
  NOR2BX1 U103 ( .AN(B[7]), .B(A[7]), .Y(n175) );
  OAI21XL U104 ( .A0(n176), .A1(n177), .B0(n178), .Y(n169) );
  OAI222XL U105 ( .A0(A[6]), .A1(n179), .B0(n146), .B1(n179), .C0(A[6]), .C1(
        n146), .Y(n178) );
  OAI222XL U106 ( .A0(B[5]), .A1(n136), .B0(B[5]), .B1(n180), .C0(n136), .C1(
        n180), .Y(n179) );
  NAND2X1 U107 ( .A(A[4]), .B(n147), .Y(n180) );
  OAI21XL U108 ( .A0(A[6]), .A1(n146), .B0(n181), .Y(n177) );
  OAI22XL U109 ( .A0(n182), .A1(n136), .B0(B[5]), .B1(n182), .Y(n181) );
  NOR2X1 U110 ( .A(n147), .B(A[4]), .Y(n182) );
  AOI221XL U111 ( .A0(A[3]), .A1(n138), .B0(n183), .B1(n184), .C0(n185), .Y(
        n176) );
  OAI22XL U112 ( .A0(B[3]), .A1(n137), .B0(B[3]), .B1(n186), .Y(n185) );
  OAI22XL U113 ( .A0(n187), .A1(n137), .B0(B[3]), .B1(n187), .Y(n184) );
  NOR2BX1 U114 ( .AN(B[2]), .B(A[2]), .Y(n187) );
  AO22X1 U115 ( .A0(n188), .A1(A[0]), .B0(A[1]), .B1(n148), .Y(n183) );
  AOI2BB1X1 U116 ( .A0N(n148), .A1N(A[1]), .B0(B[0]), .Y(n188) );
  NAND2BX1 U117 ( .AN(B[2]), .B(A[2]), .Y(n186) );
  OAI222XL U118 ( .A0(A[9]), .A1(n189), .B0(n189), .B1(n145), .C0(A[9]), .C1(
        n145), .Y(n172) );
  OAI222XL U119 ( .A0(B[8]), .A1(n135), .B0(B[8]), .B1(n190), .C0(n190), .C1(
        n135), .Y(n189) );
  NAND2BX1 U120 ( .AN(B[7]), .B(A[7]), .Y(n190) );
  OAI222XL U121 ( .A0(A[20]), .A1(n191), .B0(n191), .B1(n140), .C0(A[20]), 
        .C1(n140), .Y(n149) );
  OAI222XL U122 ( .A0(B[19]), .A1(n129), .B0(B[19]), .B1(n192), .C0(n192), 
        .C1(n129), .Y(n191) );
  OAI222XL U123 ( .A0(A[18]), .A1(n193), .B0(n193), .B1(n141), .C0(A[18]), 
        .C1(n141), .Y(n192) );
  OAI222XL U124 ( .A0(B[17]), .A1(n130), .B0(B[17]), .B1(n194), .C0(n194), 
        .C1(n130), .Y(n193) );
  NAND2BX1 U125 ( .AN(B[16]), .B(A[16]), .Y(n194) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2 U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U4 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[7]), .Y(n9) );
  XNOR2X1 U7 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U8 ( .A(B[1]), .Y(n3) );
  NAND2X1 U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U10 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n3) );
  NAND2X1 U7 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2 U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U3 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U4 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n3) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n3) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  XNOR2X1 U9 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW_mult_tc_1 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n32, n33, n34,
         n35, n36, n37, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n115, n116, n117,
         n118, n119, n120, n121, n122, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n37), .B(n41), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n30), .B(n125), .CI(n115), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n364), .B(n116), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n136), .B(n126), .C(n38), .D(n117), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n127), .B(n118), .C(n366), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n137), .B(n128), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n50), .B(n146), .CI(n119), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n369), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n129), .B(n120), .CI(n138), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n139), .B(n130), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n157), .B(n121), .C(n64), .D(n147), .ICI(n61), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n367), .B(n69), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n131), .B(n158), .C(n148), .D(n122), .ICI(n72), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n140), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n159), .B(n108), .C(n149), .D(n132), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n124), .B(n141), .C(n170), .D(n160), .ICI(n133), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n142), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n134), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n143), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n135), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n144), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n145), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  CLKINVX1 U264 ( .A(n64), .Y(n367) );
  CLKINVX1 U265 ( .A(n50), .Y(n369) );
  INVX3 U266 ( .A(a[10]), .Y(n363) );
  INVX3 U267 ( .A(a[0]), .Y(n373) );
  CLKBUFX3 U268 ( .A(n362), .Y(n352) );
  CLKINVX1 U269 ( .A(n381), .Y(n362) );
  CLKINVX1 U270 ( .A(n38), .Y(n366) );
  CLKBUFX3 U271 ( .A(n391), .Y(n355) );
  NAND2X1 U272 ( .A(n356), .B(n454), .Y(n391) );
  CLKBUFX3 U273 ( .A(n409), .Y(n353) );
  NAND2X1 U274 ( .A(n354), .B(n453), .Y(n409) );
  CLKBUFX3 U275 ( .A(n407), .Y(n354) );
  XNOR2X1 U276 ( .A(a[2]), .B(a[1]), .Y(n407) );
  NAND2X2 U277 ( .A(a[1]), .B(n373), .Y(n382) );
  INVX3 U278 ( .A(a[5]), .Y(n370) );
  INVX3 U279 ( .A(a[7]), .Y(n368) );
  INVX3 U280 ( .A(a[3]), .Y(n371) );
  INVX3 U281 ( .A(a[9]), .Y(n365) );
  INVX3 U282 ( .A(a[1]), .Y(n372) );
  CLKBUFX3 U283 ( .A(n388), .Y(n356) );
  XNOR2X1 U284 ( .A(a[4]), .B(a[3]), .Y(n388) );
  CLKBUFX3 U285 ( .A(n397), .Y(n359) );
  NAND2X1 U286 ( .A(n360), .B(n456), .Y(n397) );
  CLKBUFX3 U287 ( .A(n385), .Y(n357) );
  NAND2X1 U288 ( .A(n358), .B(n455), .Y(n385) );
  CLKINVX1 U289 ( .A(n361), .Y(n374) );
  CLKBUFX3 U290 ( .A(n394), .Y(n360) );
  XNOR2X1 U291 ( .A(a[8]), .B(a[7]), .Y(n394) );
  CLKBUFX3 U292 ( .A(n386), .Y(n358) );
  XNOR2X1 U293 ( .A(a[6]), .B(a[5]), .Y(n386) );
  CLKINVX1 U294 ( .A(n30), .Y(n364) );
  CLKBUFX3 U295 ( .A(b[0]), .Y(n361) );
  XOR2X1 U296 ( .A(n375), .B(n376), .Y(product[21]) );
  NOR2BX1 U297 ( .AN(n377), .B(n352), .Y(n376) );
  XOR2X1 U298 ( .A(n25), .B(n4), .Y(n375) );
  NOR2X1 U299 ( .A(n373), .B(n374), .Y(product[0]) );
  XOR2X1 U300 ( .A(n378), .B(n379), .Y(n73) );
  NAND2BX1 U301 ( .AN(n379), .B(n378), .Y(n72) );
  NAND2X1 U302 ( .A(n380), .B(n381), .Y(n378) );
  XOR2X1 U303 ( .A(b[1]), .B(a[10]), .Y(n380) );
  OAI2BB1X1 U304 ( .A0N(n373), .A1N(n382), .B0(n383), .Y(n379) );
  OAI22XL U305 ( .A0(n384), .A1(n357), .B0(n358), .B1(n387), .Y(n64) );
  OAI22XL U306 ( .A0(n356), .A1(n389), .B0(n390), .B1(n355), .Y(n50) );
  OAI22XL U307 ( .A0(n358), .A1(n392), .B0(n393), .B1(n357), .Y(n38) );
  OAI22XL U308 ( .A0(n360), .A1(n395), .B0(n396), .B1(n359), .Y(n30) );
  NAND2X1 U309 ( .A(n377), .B(n381), .Y(n25) );
  XOR2X1 U310 ( .A(b[10]), .B(a[10]), .Y(n377) );
  OAI22XL U311 ( .A0(n361), .A1(n382), .B0(n398), .B1(n373), .Y(n179) );
  OAI22XL U312 ( .A0(n398), .A1(n382), .B0(n399), .B1(n373), .Y(n178) );
  XOR2X1 U313 ( .A(b[1]), .B(n372), .Y(n398) );
  OAI22XL U314 ( .A0(n399), .A1(n382), .B0(n400), .B1(n373), .Y(n177) );
  XOR2X1 U315 ( .A(b[2]), .B(n372), .Y(n399) );
  OAI22XL U316 ( .A0(n400), .A1(n382), .B0(n401), .B1(n373), .Y(n176) );
  XOR2X1 U317 ( .A(b[3]), .B(n372), .Y(n400) );
  OAI22XL U318 ( .A0(n401), .A1(n382), .B0(n402), .B1(n373), .Y(n175) );
  XOR2X1 U319 ( .A(b[4]), .B(n372), .Y(n401) );
  OAI22XL U320 ( .A0(n402), .A1(n382), .B0(n403), .B1(n373), .Y(n174) );
  XOR2X1 U321 ( .A(b[5]), .B(n372), .Y(n402) );
  OAI22XL U322 ( .A0(n403), .A1(n382), .B0(n404), .B1(n373), .Y(n173) );
  XOR2X1 U323 ( .A(b[6]), .B(n372), .Y(n403) );
  OAI22XL U324 ( .A0(n404), .A1(n382), .B0(n405), .B1(n373), .Y(n172) );
  XOR2X1 U325 ( .A(b[7]), .B(n372), .Y(n404) );
  OAI22XL U326 ( .A0(n405), .A1(n382), .B0(n406), .B1(n373), .Y(n171) );
  XOR2X1 U327 ( .A(b[8]), .B(n372), .Y(n405) );
  OAI2BB2XL U328 ( .B0(n406), .B1(n382), .A0N(n383), .A1N(a[0]), .Y(n170) );
  XOR2X1 U329 ( .A(b[10]), .B(a[1]), .Y(n383) );
  XOR2X1 U330 ( .A(b[9]), .B(n372), .Y(n406) );
  NOR2X1 U331 ( .A(n354), .B(n374), .Y(n168) );
  OAI22XL U332 ( .A0(n408), .A1(n353), .B0(n354), .B1(n410), .Y(n167) );
  XOR2X1 U333 ( .A(n371), .B(n361), .Y(n408) );
  OAI22XL U334 ( .A0(n410), .A1(n353), .B0(n354), .B1(n411), .Y(n166) );
  XOR2X1 U335 ( .A(b[1]), .B(n371), .Y(n410) );
  OAI22XL U336 ( .A0(n411), .A1(n353), .B0(n354), .B1(n412), .Y(n165) );
  XOR2X1 U337 ( .A(b[2]), .B(n371), .Y(n411) );
  OAI22XL U338 ( .A0(n412), .A1(n353), .B0(n354), .B1(n413), .Y(n164) );
  XOR2X1 U339 ( .A(b[3]), .B(n371), .Y(n412) );
  OAI22XL U340 ( .A0(n413), .A1(n353), .B0(n354), .B1(n414), .Y(n163) );
  XOR2X1 U341 ( .A(b[4]), .B(n371), .Y(n413) );
  OAI22XL U342 ( .A0(n414), .A1(n353), .B0(n354), .B1(n415), .Y(n162) );
  XOR2X1 U343 ( .A(b[5]), .B(n371), .Y(n414) );
  OAI22XL U344 ( .A0(n415), .A1(n353), .B0(n354), .B1(n416), .Y(n161) );
  XOR2X1 U345 ( .A(b[6]), .B(n371), .Y(n415) );
  OAI22XL U346 ( .A0(n416), .A1(n353), .B0(n354), .B1(n417), .Y(n160) );
  XOR2X1 U347 ( .A(b[7]), .B(n371), .Y(n416) );
  OAI22XL U348 ( .A0(n417), .A1(n353), .B0(n354), .B1(n418), .Y(n159) );
  XOR2X1 U349 ( .A(b[8]), .B(n371), .Y(n417) );
  OAI22XL U350 ( .A0(n418), .A1(n353), .B0(n354), .B1(n419), .Y(n158) );
  XOR2X1 U351 ( .A(b[9]), .B(n371), .Y(n418) );
  AO21X1 U352 ( .A0(n353), .A1(n354), .B0(n419), .Y(n157) );
  XOR2X1 U353 ( .A(b[10]), .B(n371), .Y(n419) );
  NOR2X1 U354 ( .A(n356), .B(n374), .Y(n156) );
  OAI22XL U355 ( .A0(n420), .A1(n355), .B0(n356), .B1(n421), .Y(n155) );
  XOR2X1 U356 ( .A(n370), .B(n361), .Y(n420) );
  OAI22XL U357 ( .A0(n421), .A1(n355), .B0(n356), .B1(n422), .Y(n154) );
  XOR2X1 U358 ( .A(b[1]), .B(n370), .Y(n421) );
  OAI22XL U359 ( .A0(n422), .A1(n355), .B0(n356), .B1(n423), .Y(n153) );
  XOR2X1 U360 ( .A(b[2]), .B(n370), .Y(n422) );
  OAI22XL U361 ( .A0(n423), .A1(n355), .B0(n356), .B1(n424), .Y(n152) );
  XOR2X1 U362 ( .A(b[3]), .B(n370), .Y(n423) );
  OAI22XL U363 ( .A0(n424), .A1(n355), .B0(n356), .B1(n425), .Y(n151) );
  XOR2X1 U364 ( .A(b[4]), .B(n370), .Y(n424) );
  OAI22XL U365 ( .A0(n425), .A1(n355), .B0(n356), .B1(n426), .Y(n150) );
  XOR2X1 U366 ( .A(b[5]), .B(n370), .Y(n425) );
  OAI22XL U367 ( .A0(n426), .A1(n355), .B0(n356), .B1(n427), .Y(n149) );
  XOR2X1 U368 ( .A(b[6]), .B(n370), .Y(n426) );
  OAI22XL U369 ( .A0(n427), .A1(n355), .B0(n356), .B1(n428), .Y(n148) );
  XOR2X1 U370 ( .A(b[7]), .B(n370), .Y(n427) );
  OAI22XL U371 ( .A0(n428), .A1(n355), .B0(n356), .B1(n390), .Y(n147) );
  XOR2X1 U372 ( .A(b[9]), .B(n370), .Y(n390) );
  XOR2X1 U373 ( .A(b[8]), .B(n370), .Y(n428) );
  AO21X1 U374 ( .A0(n355), .A1(n356), .B0(n389), .Y(n146) );
  XOR2X1 U375 ( .A(b[10]), .B(n370), .Y(n389) );
  NOR2X1 U376 ( .A(n358), .B(n374), .Y(n145) );
  OAI22XL U377 ( .A0(n429), .A1(n357), .B0(n358), .B1(n430), .Y(n144) );
  XOR2X1 U378 ( .A(n368), .B(n361), .Y(n429) );
  OAI22XL U379 ( .A0(n430), .A1(n357), .B0(n358), .B1(n431), .Y(n143) );
  XOR2X1 U380 ( .A(b[1]), .B(n368), .Y(n430) );
  OAI22XL U381 ( .A0(n431), .A1(n357), .B0(n358), .B1(n432), .Y(n142) );
  XOR2X1 U382 ( .A(b[2]), .B(n368), .Y(n431) );
  OAI22XL U383 ( .A0(n432), .A1(n357), .B0(n358), .B1(n433), .Y(n141) );
  XOR2X1 U384 ( .A(b[3]), .B(n368), .Y(n432) );
  OAI22XL U385 ( .A0(n433), .A1(n357), .B0(n358), .B1(n384), .Y(n140) );
  XOR2X1 U386 ( .A(b[5]), .B(n368), .Y(n384) );
  XOR2X1 U387 ( .A(b[4]), .B(n368), .Y(n433) );
  OAI22XL U388 ( .A0(n387), .A1(n357), .B0(n358), .B1(n434), .Y(n139) );
  XOR2X1 U389 ( .A(b[6]), .B(n368), .Y(n387) );
  OAI22XL U390 ( .A0(n434), .A1(n357), .B0(n358), .B1(n435), .Y(n138) );
  XOR2X1 U391 ( .A(b[7]), .B(n368), .Y(n434) );
  OAI22XL U392 ( .A0(n435), .A1(n357), .B0(n358), .B1(n393), .Y(n137) );
  XOR2X1 U393 ( .A(b[9]), .B(n368), .Y(n393) );
  XOR2X1 U394 ( .A(b[8]), .B(n368), .Y(n435) );
  AO21X1 U395 ( .A0(n357), .A1(n358), .B0(n392), .Y(n136) );
  XOR2X1 U396 ( .A(b[10]), .B(n368), .Y(n392) );
  NOR2X1 U397 ( .A(n360), .B(n374), .Y(n135) );
  OAI22XL U398 ( .A0(n436), .A1(n359), .B0(n360), .B1(n437), .Y(n134) );
  XOR2X1 U399 ( .A(n365), .B(n361), .Y(n436) );
  OAI22XL U400 ( .A0(n437), .A1(n359), .B0(n360), .B1(n438), .Y(n133) );
  XOR2X1 U401 ( .A(b[1]), .B(n365), .Y(n437) );
  OAI22XL U402 ( .A0(n438), .A1(n359), .B0(n360), .B1(n439), .Y(n132) );
  XOR2X1 U403 ( .A(b[2]), .B(n365), .Y(n438) );
  OAI22XL U404 ( .A0(n439), .A1(n359), .B0(n360), .B1(n440), .Y(n131) );
  XOR2X1 U405 ( .A(b[3]), .B(n365), .Y(n439) );
  OAI22XL U406 ( .A0(n440), .A1(n359), .B0(n360), .B1(n441), .Y(n130) );
  XOR2X1 U407 ( .A(b[4]), .B(n365), .Y(n440) );
  OAI22XL U408 ( .A0(n441), .A1(n359), .B0(n360), .B1(n442), .Y(n129) );
  XOR2X1 U409 ( .A(b[5]), .B(n365), .Y(n441) );
  OAI22XL U410 ( .A0(n442), .A1(n359), .B0(n360), .B1(n443), .Y(n128) );
  XOR2X1 U411 ( .A(b[6]), .B(n365), .Y(n442) );
  OAI22XL U412 ( .A0(n443), .A1(n359), .B0(n360), .B1(n444), .Y(n127) );
  XOR2X1 U413 ( .A(b[7]), .B(n365), .Y(n443) );
  OAI22XL U414 ( .A0(n444), .A1(n359), .B0(n360), .B1(n396), .Y(n126) );
  XOR2X1 U415 ( .A(b[9]), .B(n365), .Y(n396) );
  XOR2X1 U416 ( .A(b[8]), .B(n365), .Y(n444) );
  AO21X1 U417 ( .A0(n359), .A1(n360), .B0(n395), .Y(n125) );
  XOR2X1 U418 ( .A(b[10]), .B(n365), .Y(n395) );
  NOR2X1 U419 ( .A(n352), .B(n374), .Y(n124) );
  NOR2X1 U420 ( .A(n352), .B(n445), .Y(n122) );
  XOR2X1 U421 ( .A(b[2]), .B(n363), .Y(n445) );
  NOR2X1 U422 ( .A(n352), .B(n446), .Y(n121) );
  XOR2X1 U423 ( .A(b[3]), .B(n363), .Y(n446) );
  NOR2X1 U424 ( .A(n352), .B(n447), .Y(n120) );
  XOR2X1 U425 ( .A(b[4]), .B(n363), .Y(n447) );
  NOR2X1 U426 ( .A(n352), .B(n448), .Y(n119) );
  XOR2X1 U427 ( .A(b[5]), .B(n363), .Y(n448) );
  NOR2X1 U428 ( .A(n352), .B(n449), .Y(n118) );
  XOR2X1 U429 ( .A(b[6]), .B(n363), .Y(n449) );
  NOR2X1 U430 ( .A(n352), .B(n450), .Y(n117) );
  XOR2X1 U431 ( .A(b[7]), .B(n363), .Y(n450) );
  NOR2X1 U432 ( .A(n352), .B(n451), .Y(n116) );
  XOR2X1 U433 ( .A(b[8]), .B(n363), .Y(n451) );
  NOR2X1 U434 ( .A(n352), .B(n452), .Y(n115) );
  XOR2X1 U435 ( .A(b[9]), .B(n363), .Y(n452) );
  OAI21XL U436 ( .A0(n361), .A1(n372), .B0(n382), .Y(n113) );
  OAI32X1 U437 ( .A0(n371), .A1(n361), .A2(n354), .B0(n371), .B1(n353), .Y(
        n112) );
  XOR2X1 U438 ( .A(a[3]), .B(a[2]), .Y(n453) );
  OAI32X1 U439 ( .A0(n370), .A1(n361), .A2(n356), .B0(n370), .B1(n355), .Y(
        n111) );
  XOR2X1 U440 ( .A(a[5]), .B(a[4]), .Y(n454) );
  OAI32X1 U441 ( .A0(n368), .A1(n361), .A2(n358), .B0(n368), .B1(n357), .Y(
        n110) );
  XOR2X1 U442 ( .A(a[7]), .B(a[6]), .Y(n455) );
  OAI32X1 U443 ( .A0(n365), .A1(n361), .A2(n360), .B0(n365), .B1(n359), .Y(
        n109) );
  XOR2X1 U444 ( .A(a[9]), .B(a[8]), .Y(n456) );
  NOR3X1 U445 ( .A(n363), .B(n361), .C(n352), .Y(n108) );
  XNOR2X1 U446 ( .A(n363), .B(a[9]), .Y(n381) );
endmodule


module geofence_DW_mult_tc_0 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n32, n33, n34,
         n35, n36, n37, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n115, n116, n117,
         n118, n119, n120, n121, n122, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n37), .B(n41), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n30), .B(n125), .CI(n115), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n364), .B(n116), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n136), .B(n126), .C(n38), .D(n117), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n127), .B(n118), .C(n366), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n137), .B(n128), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n50), .B(n146), .CI(n119), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n369), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n129), .B(n120), .CI(n138), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n139), .B(n130), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n157), .B(n121), .C(n64), .D(n147), .ICI(n61), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n367), .B(n69), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n131), .B(n158), .C(n148), .D(n122), .ICI(n72), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n140), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n159), .B(n108), .C(n149), .D(n132), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n124), .B(n141), .C(n170), .D(n160), .ICI(n133), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n142), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n134), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n143), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n135), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n144), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n145), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  CLKINVX1 U264 ( .A(n64), .Y(n367) );
  CLKINVX1 U265 ( .A(n50), .Y(n369) );
  INVX3 U266 ( .A(a[10]), .Y(n363) );
  CLKBUFX3 U267 ( .A(n362), .Y(n352) );
  CLKINVX1 U268 ( .A(n381), .Y(n362) );
  CLKINVX1 U269 ( .A(n361), .Y(n374) );
  CLKINVX1 U270 ( .A(n38), .Y(n366) );
  CLKBUFX3 U271 ( .A(n409), .Y(n353) );
  NAND2X1 U272 ( .A(n354), .B(n453), .Y(n409) );
  CLKBUFX3 U273 ( .A(n391), .Y(n355) );
  NAND2X1 U274 ( .A(n356), .B(n454), .Y(n391) );
  INVX3 U275 ( .A(a[3]), .Y(n371) );
  INVX3 U276 ( .A(a[5]), .Y(n370) );
  CLKBUFX3 U277 ( .A(n397), .Y(n359) );
  NAND2X1 U278 ( .A(n360), .B(n456), .Y(n397) );
  NAND2X2 U279 ( .A(a[1]), .B(n373), .Y(n382) );
  CLKBUFX3 U280 ( .A(n385), .Y(n357) );
  NAND2X1 U281 ( .A(n358), .B(n455), .Y(n385) );
  INVX3 U282 ( .A(a[7]), .Y(n368) );
  INVX3 U283 ( .A(a[9]), .Y(n365) );
  INVX3 U284 ( .A(a[0]), .Y(n373) );
  INVX3 U285 ( .A(a[1]), .Y(n372) );
  CLKBUFX3 U286 ( .A(n407), .Y(n354) );
  XNOR2X1 U287 ( .A(a[2]), .B(a[1]), .Y(n407) );
  CLKBUFX3 U288 ( .A(n388), .Y(n356) );
  XNOR2X1 U289 ( .A(a[4]), .B(a[3]), .Y(n388) );
  CLKBUFX3 U290 ( .A(n386), .Y(n358) );
  XNOR2X1 U291 ( .A(a[6]), .B(a[5]), .Y(n386) );
  CLKBUFX3 U292 ( .A(b[0]), .Y(n361) );
  CLKBUFX3 U293 ( .A(n394), .Y(n360) );
  XNOR2X1 U294 ( .A(a[8]), .B(a[7]), .Y(n394) );
  CLKINVX1 U295 ( .A(n30), .Y(n364) );
  XOR2X1 U296 ( .A(n375), .B(n376), .Y(product[21]) );
  NOR2BX1 U297 ( .AN(n377), .B(n352), .Y(n376) );
  XOR2X1 U298 ( .A(n25), .B(n4), .Y(n375) );
  NOR2X1 U299 ( .A(n373), .B(n374), .Y(product[0]) );
  XOR2X1 U300 ( .A(n378), .B(n379), .Y(n73) );
  NAND2BX1 U301 ( .AN(n379), .B(n378), .Y(n72) );
  NAND2X1 U302 ( .A(n380), .B(n381), .Y(n378) );
  XOR2X1 U303 ( .A(b[1]), .B(a[10]), .Y(n380) );
  OAI2BB1X1 U304 ( .A0N(n373), .A1N(n382), .B0(n383), .Y(n379) );
  OAI22XL U305 ( .A0(n384), .A1(n357), .B0(n358), .B1(n387), .Y(n64) );
  OAI22XL U306 ( .A0(n356), .A1(n389), .B0(n390), .B1(n355), .Y(n50) );
  OAI22XL U307 ( .A0(n358), .A1(n392), .B0(n393), .B1(n357), .Y(n38) );
  OAI22XL U308 ( .A0(n360), .A1(n395), .B0(n396), .B1(n359), .Y(n30) );
  NAND2X1 U309 ( .A(n377), .B(n381), .Y(n25) );
  XOR2X1 U310 ( .A(b[10]), .B(a[10]), .Y(n377) );
  OAI22XL U311 ( .A0(n361), .A1(n382), .B0(n398), .B1(n373), .Y(n179) );
  OAI22XL U312 ( .A0(n398), .A1(n382), .B0(n399), .B1(n373), .Y(n178) );
  XOR2X1 U313 ( .A(b[1]), .B(n372), .Y(n398) );
  OAI22XL U314 ( .A0(n399), .A1(n382), .B0(n400), .B1(n373), .Y(n177) );
  XOR2X1 U315 ( .A(b[2]), .B(n372), .Y(n399) );
  OAI22XL U316 ( .A0(n400), .A1(n382), .B0(n401), .B1(n373), .Y(n176) );
  XOR2X1 U317 ( .A(b[3]), .B(n372), .Y(n400) );
  OAI22XL U318 ( .A0(n401), .A1(n382), .B0(n402), .B1(n373), .Y(n175) );
  XOR2X1 U319 ( .A(b[4]), .B(n372), .Y(n401) );
  OAI22XL U320 ( .A0(n402), .A1(n382), .B0(n403), .B1(n373), .Y(n174) );
  XOR2X1 U321 ( .A(b[5]), .B(n372), .Y(n402) );
  OAI22XL U322 ( .A0(n403), .A1(n382), .B0(n404), .B1(n373), .Y(n173) );
  XOR2X1 U323 ( .A(b[6]), .B(n372), .Y(n403) );
  OAI22XL U324 ( .A0(n404), .A1(n382), .B0(n405), .B1(n373), .Y(n172) );
  XOR2X1 U325 ( .A(b[7]), .B(n372), .Y(n404) );
  OAI22XL U326 ( .A0(n405), .A1(n382), .B0(n406), .B1(n373), .Y(n171) );
  XOR2X1 U327 ( .A(b[8]), .B(n372), .Y(n405) );
  OAI2BB2XL U328 ( .B0(n406), .B1(n382), .A0N(n383), .A1N(a[0]), .Y(n170) );
  XOR2X1 U329 ( .A(b[10]), .B(a[1]), .Y(n383) );
  XOR2X1 U330 ( .A(b[9]), .B(n372), .Y(n406) );
  NOR2X1 U331 ( .A(n354), .B(n374), .Y(n168) );
  OAI22XL U332 ( .A0(n408), .A1(n353), .B0(n354), .B1(n410), .Y(n167) );
  XOR2X1 U333 ( .A(n371), .B(n361), .Y(n408) );
  OAI22XL U334 ( .A0(n410), .A1(n353), .B0(n354), .B1(n411), .Y(n166) );
  XOR2X1 U335 ( .A(b[1]), .B(n371), .Y(n410) );
  OAI22XL U336 ( .A0(n411), .A1(n353), .B0(n354), .B1(n412), .Y(n165) );
  XOR2X1 U337 ( .A(b[2]), .B(n371), .Y(n411) );
  OAI22XL U338 ( .A0(n412), .A1(n353), .B0(n354), .B1(n413), .Y(n164) );
  XOR2X1 U339 ( .A(b[3]), .B(n371), .Y(n412) );
  OAI22XL U340 ( .A0(n413), .A1(n353), .B0(n354), .B1(n414), .Y(n163) );
  XOR2X1 U341 ( .A(b[4]), .B(n371), .Y(n413) );
  OAI22XL U342 ( .A0(n414), .A1(n353), .B0(n354), .B1(n415), .Y(n162) );
  XOR2X1 U343 ( .A(b[5]), .B(n371), .Y(n414) );
  OAI22XL U344 ( .A0(n415), .A1(n353), .B0(n354), .B1(n416), .Y(n161) );
  XOR2X1 U345 ( .A(b[6]), .B(n371), .Y(n415) );
  OAI22XL U346 ( .A0(n416), .A1(n353), .B0(n354), .B1(n417), .Y(n160) );
  XOR2X1 U347 ( .A(b[7]), .B(n371), .Y(n416) );
  OAI22XL U348 ( .A0(n417), .A1(n353), .B0(n354), .B1(n418), .Y(n159) );
  XOR2X1 U349 ( .A(b[8]), .B(n371), .Y(n417) );
  OAI22XL U350 ( .A0(n418), .A1(n353), .B0(n354), .B1(n419), .Y(n158) );
  XOR2X1 U351 ( .A(b[9]), .B(n371), .Y(n418) );
  AO21X1 U352 ( .A0(n353), .A1(n354), .B0(n419), .Y(n157) );
  XOR2X1 U353 ( .A(b[10]), .B(n371), .Y(n419) );
  NOR2X1 U354 ( .A(n356), .B(n374), .Y(n156) );
  OAI22XL U355 ( .A0(n420), .A1(n355), .B0(n356), .B1(n421), .Y(n155) );
  XOR2X1 U356 ( .A(n370), .B(n361), .Y(n420) );
  OAI22XL U357 ( .A0(n421), .A1(n355), .B0(n356), .B1(n422), .Y(n154) );
  XOR2X1 U358 ( .A(b[1]), .B(n370), .Y(n421) );
  OAI22XL U359 ( .A0(n422), .A1(n355), .B0(n356), .B1(n423), .Y(n153) );
  XOR2X1 U360 ( .A(b[2]), .B(n370), .Y(n422) );
  OAI22XL U361 ( .A0(n423), .A1(n355), .B0(n356), .B1(n424), .Y(n152) );
  XOR2X1 U362 ( .A(b[3]), .B(n370), .Y(n423) );
  OAI22XL U363 ( .A0(n424), .A1(n355), .B0(n356), .B1(n425), .Y(n151) );
  XOR2X1 U364 ( .A(b[4]), .B(n370), .Y(n424) );
  OAI22XL U365 ( .A0(n425), .A1(n355), .B0(n356), .B1(n426), .Y(n150) );
  XOR2X1 U366 ( .A(b[5]), .B(n370), .Y(n425) );
  OAI22XL U367 ( .A0(n426), .A1(n355), .B0(n356), .B1(n427), .Y(n149) );
  XOR2X1 U368 ( .A(b[6]), .B(n370), .Y(n426) );
  OAI22XL U369 ( .A0(n427), .A1(n355), .B0(n356), .B1(n428), .Y(n148) );
  XOR2X1 U370 ( .A(b[7]), .B(n370), .Y(n427) );
  OAI22XL U371 ( .A0(n428), .A1(n355), .B0(n356), .B1(n390), .Y(n147) );
  XOR2X1 U372 ( .A(b[9]), .B(n370), .Y(n390) );
  XOR2X1 U373 ( .A(b[8]), .B(n370), .Y(n428) );
  AO21X1 U374 ( .A0(n355), .A1(n356), .B0(n389), .Y(n146) );
  XOR2X1 U375 ( .A(b[10]), .B(n370), .Y(n389) );
  NOR2X1 U376 ( .A(n358), .B(n374), .Y(n145) );
  OAI22XL U377 ( .A0(n429), .A1(n357), .B0(n358), .B1(n430), .Y(n144) );
  XOR2X1 U378 ( .A(n368), .B(n361), .Y(n429) );
  OAI22XL U379 ( .A0(n430), .A1(n357), .B0(n358), .B1(n431), .Y(n143) );
  XOR2X1 U380 ( .A(b[1]), .B(n368), .Y(n430) );
  OAI22XL U381 ( .A0(n431), .A1(n357), .B0(n358), .B1(n432), .Y(n142) );
  XOR2X1 U382 ( .A(b[2]), .B(n368), .Y(n431) );
  OAI22XL U383 ( .A0(n432), .A1(n357), .B0(n358), .B1(n433), .Y(n141) );
  XOR2X1 U384 ( .A(b[3]), .B(n368), .Y(n432) );
  OAI22XL U385 ( .A0(n433), .A1(n357), .B0(n358), .B1(n384), .Y(n140) );
  XOR2X1 U386 ( .A(b[5]), .B(n368), .Y(n384) );
  XOR2X1 U387 ( .A(b[4]), .B(n368), .Y(n433) );
  OAI22XL U388 ( .A0(n387), .A1(n357), .B0(n358), .B1(n434), .Y(n139) );
  XOR2X1 U389 ( .A(b[6]), .B(n368), .Y(n387) );
  OAI22XL U390 ( .A0(n434), .A1(n357), .B0(n358), .B1(n435), .Y(n138) );
  XOR2X1 U391 ( .A(b[7]), .B(n368), .Y(n434) );
  OAI22XL U392 ( .A0(n435), .A1(n357), .B0(n358), .B1(n393), .Y(n137) );
  XOR2X1 U393 ( .A(b[9]), .B(n368), .Y(n393) );
  XOR2X1 U394 ( .A(b[8]), .B(n368), .Y(n435) );
  AO21X1 U395 ( .A0(n357), .A1(n358), .B0(n392), .Y(n136) );
  XOR2X1 U396 ( .A(b[10]), .B(n368), .Y(n392) );
  NOR2X1 U397 ( .A(n360), .B(n374), .Y(n135) );
  OAI22XL U398 ( .A0(n436), .A1(n359), .B0(n360), .B1(n437), .Y(n134) );
  XOR2X1 U399 ( .A(n365), .B(n361), .Y(n436) );
  OAI22XL U400 ( .A0(n437), .A1(n359), .B0(n360), .B1(n438), .Y(n133) );
  XOR2X1 U401 ( .A(b[1]), .B(n365), .Y(n437) );
  OAI22XL U402 ( .A0(n438), .A1(n359), .B0(n360), .B1(n439), .Y(n132) );
  XOR2X1 U403 ( .A(b[2]), .B(n365), .Y(n438) );
  OAI22XL U404 ( .A0(n439), .A1(n359), .B0(n360), .B1(n440), .Y(n131) );
  XOR2X1 U405 ( .A(b[3]), .B(n365), .Y(n439) );
  OAI22XL U406 ( .A0(n440), .A1(n359), .B0(n360), .B1(n441), .Y(n130) );
  XOR2X1 U407 ( .A(b[4]), .B(n365), .Y(n440) );
  OAI22XL U408 ( .A0(n441), .A1(n359), .B0(n360), .B1(n442), .Y(n129) );
  XOR2X1 U409 ( .A(b[5]), .B(n365), .Y(n441) );
  OAI22XL U410 ( .A0(n442), .A1(n359), .B0(n360), .B1(n443), .Y(n128) );
  XOR2X1 U411 ( .A(b[6]), .B(n365), .Y(n442) );
  OAI22XL U412 ( .A0(n443), .A1(n359), .B0(n360), .B1(n444), .Y(n127) );
  XOR2X1 U413 ( .A(b[7]), .B(n365), .Y(n443) );
  OAI22XL U414 ( .A0(n444), .A1(n359), .B0(n360), .B1(n396), .Y(n126) );
  XOR2X1 U415 ( .A(b[9]), .B(n365), .Y(n396) );
  XOR2X1 U416 ( .A(b[8]), .B(n365), .Y(n444) );
  AO21X1 U417 ( .A0(n359), .A1(n360), .B0(n395), .Y(n125) );
  XOR2X1 U418 ( .A(b[10]), .B(n365), .Y(n395) );
  NOR2X1 U419 ( .A(n352), .B(n374), .Y(n124) );
  NOR2X1 U420 ( .A(n352), .B(n445), .Y(n122) );
  XOR2X1 U421 ( .A(b[2]), .B(n363), .Y(n445) );
  NOR2X1 U422 ( .A(n352), .B(n446), .Y(n121) );
  XOR2X1 U423 ( .A(b[3]), .B(n363), .Y(n446) );
  NOR2X1 U424 ( .A(n352), .B(n447), .Y(n120) );
  XOR2X1 U425 ( .A(b[4]), .B(n363), .Y(n447) );
  NOR2X1 U426 ( .A(n352), .B(n448), .Y(n119) );
  XOR2X1 U427 ( .A(b[5]), .B(n363), .Y(n448) );
  NOR2X1 U428 ( .A(n352), .B(n449), .Y(n118) );
  XOR2X1 U429 ( .A(b[6]), .B(n363), .Y(n449) );
  NOR2X1 U430 ( .A(n352), .B(n450), .Y(n117) );
  XOR2X1 U431 ( .A(b[7]), .B(n363), .Y(n450) );
  NOR2X1 U432 ( .A(n352), .B(n451), .Y(n116) );
  XOR2X1 U433 ( .A(b[8]), .B(n363), .Y(n451) );
  NOR2X1 U434 ( .A(n352), .B(n452), .Y(n115) );
  XOR2X1 U435 ( .A(b[9]), .B(n363), .Y(n452) );
  OAI21XL U436 ( .A0(n361), .A1(n372), .B0(n382), .Y(n113) );
  OAI32X1 U437 ( .A0(n371), .A1(n361), .A2(n354), .B0(n371), .B1(n353), .Y(
        n112) );
  XOR2X1 U438 ( .A(a[3]), .B(a[2]), .Y(n453) );
  OAI32X1 U439 ( .A0(n370), .A1(n361), .A2(n356), .B0(n370), .B1(n355), .Y(
        n111) );
  XOR2X1 U440 ( .A(a[5]), .B(a[4]), .Y(n454) );
  OAI32X1 U441 ( .A0(n368), .A1(n361), .A2(n358), .B0(n368), .B1(n357), .Y(
        n110) );
  XOR2X1 U442 ( .A(a[7]), .B(a[6]), .Y(n455) );
  OAI32X1 U443 ( .A0(n365), .A1(n361), .A2(n360), .B0(n365), .B1(n359), .Y(
        n109) );
  XOR2X1 U444 ( .A(a[9]), .B(a[8]), .Y(n456) );
  NOR3X1 U445 ( .A(n363), .B(n361), .C(n352), .Y(n108) );
  XNOR2X1 U446 ( .A(n363), .B(a[9]), .Y(n381) );
endmodule


module geofence_DW_mult_tc_2 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n32, n33, n34,
         n35, n36, n37, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n115, n116, n117,
         n118, n119, n120, n121, n122, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n37), .B(n41), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n30), .B(n125), .CI(n115), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n364), .B(n116), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n136), .B(n126), .C(n38), .D(n117), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n127), .B(n118), .C(n366), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n137), .B(n128), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n50), .B(n146), .CI(n119), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n369), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n129), .B(n120), .CI(n138), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n139), .B(n130), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n157), .B(n121), .C(n64), .D(n147), .ICI(n61), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n367), .B(n69), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n131), .B(n158), .C(n148), .D(n122), .ICI(n72), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n140), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n159), .B(n108), .C(n149), .D(n132), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n124), .B(n141), .C(n170), .D(n160), .ICI(n133), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n142), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n134), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n143), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n135), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n144), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n145), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  CLKINVX1 U264 ( .A(n64), .Y(n367) );
  CLKINVX1 U265 ( .A(n50), .Y(n369) );
  INVX3 U266 ( .A(a[10]), .Y(n363) );
  CLKBUFX3 U267 ( .A(n362), .Y(n352) );
  CLKINVX1 U268 ( .A(n381), .Y(n362) );
  CLKINVX1 U269 ( .A(n38), .Y(n366) );
  CLKBUFX3 U270 ( .A(n409), .Y(n353) );
  NAND2X1 U271 ( .A(n354), .B(n453), .Y(n409) );
  CLKBUFX3 U272 ( .A(n385), .Y(n357) );
  NAND2X1 U273 ( .A(n358), .B(n455), .Y(n385) );
  NAND2X2 U274 ( .A(a[1]), .B(n373), .Y(n382) );
  INVX3 U275 ( .A(a[5]), .Y(n370) );
  INVX3 U276 ( .A(a[3]), .Y(n371) );
  INVX3 U277 ( .A(a[1]), .Y(n372) );
  CLKBUFX3 U278 ( .A(n407), .Y(n354) );
  XNOR2X1 U279 ( .A(a[2]), .B(a[1]), .Y(n407) );
  CLKBUFX3 U280 ( .A(n388), .Y(n356) );
  XNOR2X1 U281 ( .A(a[4]), .B(a[3]), .Y(n388) );
  CLKBUFX3 U282 ( .A(n391), .Y(n355) );
  NAND2X1 U283 ( .A(n356), .B(n454), .Y(n391) );
  CLKINVX1 U284 ( .A(n361), .Y(n374) );
  INVX3 U285 ( .A(a[0]), .Y(n373) );
  INVX3 U286 ( .A(a[7]), .Y(n368) );
  INVX3 U287 ( .A(a[9]), .Y(n365) );
  CLKBUFX3 U288 ( .A(n386), .Y(n358) );
  XNOR2X1 U289 ( .A(a[6]), .B(a[5]), .Y(n386) );
  CLKBUFX3 U290 ( .A(n394), .Y(n360) );
  XNOR2X1 U291 ( .A(a[8]), .B(a[7]), .Y(n394) );
  CLKBUFX3 U292 ( .A(n397), .Y(n359) );
  NAND2X1 U293 ( .A(n360), .B(n456), .Y(n397) );
  CLKINVX1 U294 ( .A(n30), .Y(n364) );
  CLKBUFX3 U295 ( .A(b[0]), .Y(n361) );
  XOR2X1 U296 ( .A(n375), .B(n376), .Y(product[21]) );
  NOR2BX1 U297 ( .AN(n377), .B(n352), .Y(n376) );
  XOR2X1 U298 ( .A(n25), .B(n4), .Y(n375) );
  NOR2X1 U299 ( .A(n373), .B(n374), .Y(product[0]) );
  XOR2X1 U300 ( .A(n378), .B(n379), .Y(n73) );
  NAND2BX1 U301 ( .AN(n379), .B(n378), .Y(n72) );
  NAND2X1 U302 ( .A(n380), .B(n381), .Y(n378) );
  XOR2X1 U303 ( .A(b[1]), .B(a[10]), .Y(n380) );
  OAI2BB1X1 U304 ( .A0N(n373), .A1N(n382), .B0(n383), .Y(n379) );
  OAI22XL U305 ( .A0(n384), .A1(n357), .B0(n358), .B1(n387), .Y(n64) );
  OAI22XL U306 ( .A0(n356), .A1(n389), .B0(n390), .B1(n355), .Y(n50) );
  OAI22XL U307 ( .A0(n358), .A1(n392), .B0(n393), .B1(n357), .Y(n38) );
  OAI22XL U308 ( .A0(n360), .A1(n395), .B0(n396), .B1(n359), .Y(n30) );
  NAND2X1 U309 ( .A(n377), .B(n381), .Y(n25) );
  XOR2X1 U310 ( .A(b[10]), .B(a[10]), .Y(n377) );
  OAI22XL U311 ( .A0(n361), .A1(n382), .B0(n398), .B1(n373), .Y(n179) );
  OAI22XL U312 ( .A0(n398), .A1(n382), .B0(n399), .B1(n373), .Y(n178) );
  XOR2X1 U313 ( .A(b[1]), .B(n372), .Y(n398) );
  OAI22XL U314 ( .A0(n399), .A1(n382), .B0(n400), .B1(n373), .Y(n177) );
  XOR2X1 U315 ( .A(b[2]), .B(n372), .Y(n399) );
  OAI22XL U316 ( .A0(n400), .A1(n382), .B0(n401), .B1(n373), .Y(n176) );
  XOR2X1 U317 ( .A(b[3]), .B(n372), .Y(n400) );
  OAI22XL U318 ( .A0(n401), .A1(n382), .B0(n402), .B1(n373), .Y(n175) );
  XOR2X1 U319 ( .A(b[4]), .B(n372), .Y(n401) );
  OAI22XL U320 ( .A0(n402), .A1(n382), .B0(n403), .B1(n373), .Y(n174) );
  XOR2X1 U321 ( .A(b[5]), .B(n372), .Y(n402) );
  OAI22XL U322 ( .A0(n403), .A1(n382), .B0(n404), .B1(n373), .Y(n173) );
  XOR2X1 U323 ( .A(b[6]), .B(n372), .Y(n403) );
  OAI22XL U324 ( .A0(n404), .A1(n382), .B0(n405), .B1(n373), .Y(n172) );
  XOR2X1 U325 ( .A(b[7]), .B(n372), .Y(n404) );
  OAI22XL U326 ( .A0(n405), .A1(n382), .B0(n406), .B1(n373), .Y(n171) );
  XOR2X1 U327 ( .A(b[8]), .B(n372), .Y(n405) );
  OAI2BB2XL U328 ( .B0(n406), .B1(n382), .A0N(n383), .A1N(a[0]), .Y(n170) );
  XOR2X1 U329 ( .A(b[10]), .B(a[1]), .Y(n383) );
  XOR2X1 U330 ( .A(b[9]), .B(n372), .Y(n406) );
  NOR2X1 U331 ( .A(n354), .B(n374), .Y(n168) );
  OAI22XL U332 ( .A0(n408), .A1(n353), .B0(n354), .B1(n410), .Y(n167) );
  XOR2X1 U333 ( .A(n371), .B(n361), .Y(n408) );
  OAI22XL U334 ( .A0(n410), .A1(n353), .B0(n354), .B1(n411), .Y(n166) );
  XOR2X1 U335 ( .A(b[1]), .B(n371), .Y(n410) );
  OAI22XL U336 ( .A0(n411), .A1(n353), .B0(n354), .B1(n412), .Y(n165) );
  XOR2X1 U337 ( .A(b[2]), .B(n371), .Y(n411) );
  OAI22XL U338 ( .A0(n412), .A1(n353), .B0(n354), .B1(n413), .Y(n164) );
  XOR2X1 U339 ( .A(b[3]), .B(n371), .Y(n412) );
  OAI22XL U340 ( .A0(n413), .A1(n353), .B0(n354), .B1(n414), .Y(n163) );
  XOR2X1 U341 ( .A(b[4]), .B(n371), .Y(n413) );
  OAI22XL U342 ( .A0(n414), .A1(n353), .B0(n354), .B1(n415), .Y(n162) );
  XOR2X1 U343 ( .A(b[5]), .B(n371), .Y(n414) );
  OAI22XL U344 ( .A0(n415), .A1(n353), .B0(n354), .B1(n416), .Y(n161) );
  XOR2X1 U345 ( .A(b[6]), .B(n371), .Y(n415) );
  OAI22XL U346 ( .A0(n416), .A1(n353), .B0(n354), .B1(n417), .Y(n160) );
  XOR2X1 U347 ( .A(b[7]), .B(n371), .Y(n416) );
  OAI22XL U348 ( .A0(n417), .A1(n353), .B0(n354), .B1(n418), .Y(n159) );
  XOR2X1 U349 ( .A(b[8]), .B(n371), .Y(n417) );
  OAI22XL U350 ( .A0(n418), .A1(n353), .B0(n354), .B1(n419), .Y(n158) );
  XOR2X1 U351 ( .A(b[9]), .B(n371), .Y(n418) );
  AO21X1 U352 ( .A0(n353), .A1(n354), .B0(n419), .Y(n157) );
  XOR2X1 U353 ( .A(b[10]), .B(n371), .Y(n419) );
  NOR2X1 U354 ( .A(n356), .B(n374), .Y(n156) );
  OAI22XL U355 ( .A0(n420), .A1(n355), .B0(n356), .B1(n421), .Y(n155) );
  XOR2X1 U356 ( .A(n370), .B(n361), .Y(n420) );
  OAI22XL U357 ( .A0(n421), .A1(n355), .B0(n356), .B1(n422), .Y(n154) );
  XOR2X1 U358 ( .A(b[1]), .B(n370), .Y(n421) );
  OAI22XL U359 ( .A0(n422), .A1(n355), .B0(n356), .B1(n423), .Y(n153) );
  XOR2X1 U360 ( .A(b[2]), .B(n370), .Y(n422) );
  OAI22XL U361 ( .A0(n423), .A1(n355), .B0(n356), .B1(n424), .Y(n152) );
  XOR2X1 U362 ( .A(b[3]), .B(n370), .Y(n423) );
  OAI22XL U363 ( .A0(n424), .A1(n355), .B0(n356), .B1(n425), .Y(n151) );
  XOR2X1 U364 ( .A(b[4]), .B(n370), .Y(n424) );
  OAI22XL U365 ( .A0(n425), .A1(n355), .B0(n356), .B1(n426), .Y(n150) );
  XOR2X1 U366 ( .A(b[5]), .B(n370), .Y(n425) );
  OAI22XL U367 ( .A0(n426), .A1(n355), .B0(n356), .B1(n427), .Y(n149) );
  XOR2X1 U368 ( .A(b[6]), .B(n370), .Y(n426) );
  OAI22XL U369 ( .A0(n427), .A1(n355), .B0(n356), .B1(n428), .Y(n148) );
  XOR2X1 U370 ( .A(b[7]), .B(n370), .Y(n427) );
  OAI22XL U371 ( .A0(n428), .A1(n355), .B0(n356), .B1(n390), .Y(n147) );
  XOR2X1 U372 ( .A(b[9]), .B(n370), .Y(n390) );
  XOR2X1 U373 ( .A(b[8]), .B(n370), .Y(n428) );
  AO21X1 U374 ( .A0(n355), .A1(n356), .B0(n389), .Y(n146) );
  XOR2X1 U375 ( .A(b[10]), .B(n370), .Y(n389) );
  NOR2X1 U376 ( .A(n358), .B(n374), .Y(n145) );
  OAI22XL U377 ( .A0(n429), .A1(n357), .B0(n358), .B1(n430), .Y(n144) );
  XOR2X1 U378 ( .A(n368), .B(n361), .Y(n429) );
  OAI22XL U379 ( .A0(n430), .A1(n357), .B0(n358), .B1(n431), .Y(n143) );
  XOR2X1 U380 ( .A(b[1]), .B(n368), .Y(n430) );
  OAI22XL U381 ( .A0(n431), .A1(n357), .B0(n358), .B1(n432), .Y(n142) );
  XOR2X1 U382 ( .A(b[2]), .B(n368), .Y(n431) );
  OAI22XL U383 ( .A0(n432), .A1(n357), .B0(n358), .B1(n433), .Y(n141) );
  XOR2X1 U384 ( .A(b[3]), .B(n368), .Y(n432) );
  OAI22XL U385 ( .A0(n433), .A1(n357), .B0(n358), .B1(n384), .Y(n140) );
  XOR2X1 U386 ( .A(b[5]), .B(n368), .Y(n384) );
  XOR2X1 U387 ( .A(b[4]), .B(n368), .Y(n433) );
  OAI22XL U388 ( .A0(n387), .A1(n357), .B0(n358), .B1(n434), .Y(n139) );
  XOR2X1 U389 ( .A(b[6]), .B(n368), .Y(n387) );
  OAI22XL U390 ( .A0(n434), .A1(n357), .B0(n358), .B1(n435), .Y(n138) );
  XOR2X1 U391 ( .A(b[7]), .B(n368), .Y(n434) );
  OAI22XL U392 ( .A0(n435), .A1(n357), .B0(n358), .B1(n393), .Y(n137) );
  XOR2X1 U393 ( .A(b[9]), .B(n368), .Y(n393) );
  XOR2X1 U394 ( .A(b[8]), .B(n368), .Y(n435) );
  AO21X1 U395 ( .A0(n357), .A1(n358), .B0(n392), .Y(n136) );
  XOR2X1 U396 ( .A(b[10]), .B(n368), .Y(n392) );
  NOR2X1 U397 ( .A(n360), .B(n374), .Y(n135) );
  OAI22XL U398 ( .A0(n436), .A1(n359), .B0(n360), .B1(n437), .Y(n134) );
  XOR2X1 U399 ( .A(n365), .B(n361), .Y(n436) );
  OAI22XL U400 ( .A0(n437), .A1(n359), .B0(n360), .B1(n438), .Y(n133) );
  XOR2X1 U401 ( .A(b[1]), .B(n365), .Y(n437) );
  OAI22XL U402 ( .A0(n438), .A1(n359), .B0(n360), .B1(n439), .Y(n132) );
  XOR2X1 U403 ( .A(b[2]), .B(n365), .Y(n438) );
  OAI22XL U404 ( .A0(n439), .A1(n359), .B0(n360), .B1(n440), .Y(n131) );
  XOR2X1 U405 ( .A(b[3]), .B(n365), .Y(n439) );
  OAI22XL U406 ( .A0(n440), .A1(n359), .B0(n360), .B1(n441), .Y(n130) );
  XOR2X1 U407 ( .A(b[4]), .B(n365), .Y(n440) );
  OAI22XL U408 ( .A0(n441), .A1(n359), .B0(n360), .B1(n442), .Y(n129) );
  XOR2X1 U409 ( .A(b[5]), .B(n365), .Y(n441) );
  OAI22XL U410 ( .A0(n442), .A1(n359), .B0(n360), .B1(n443), .Y(n128) );
  XOR2X1 U411 ( .A(b[6]), .B(n365), .Y(n442) );
  OAI22XL U412 ( .A0(n443), .A1(n359), .B0(n360), .B1(n444), .Y(n127) );
  XOR2X1 U413 ( .A(b[7]), .B(n365), .Y(n443) );
  OAI22XL U414 ( .A0(n444), .A1(n359), .B0(n360), .B1(n396), .Y(n126) );
  XOR2X1 U415 ( .A(b[9]), .B(n365), .Y(n396) );
  XOR2X1 U416 ( .A(b[8]), .B(n365), .Y(n444) );
  AO21X1 U417 ( .A0(n359), .A1(n360), .B0(n395), .Y(n125) );
  XOR2X1 U418 ( .A(b[10]), .B(n365), .Y(n395) );
  NOR2X1 U419 ( .A(n352), .B(n374), .Y(n124) );
  NOR2X1 U420 ( .A(n352), .B(n445), .Y(n122) );
  XOR2X1 U421 ( .A(b[2]), .B(n363), .Y(n445) );
  NOR2X1 U422 ( .A(n352), .B(n446), .Y(n121) );
  XOR2X1 U423 ( .A(b[3]), .B(n363), .Y(n446) );
  NOR2X1 U424 ( .A(n352), .B(n447), .Y(n120) );
  XOR2X1 U425 ( .A(b[4]), .B(n363), .Y(n447) );
  NOR2X1 U426 ( .A(n352), .B(n448), .Y(n119) );
  XOR2X1 U427 ( .A(b[5]), .B(n363), .Y(n448) );
  NOR2X1 U428 ( .A(n352), .B(n449), .Y(n118) );
  XOR2X1 U429 ( .A(b[6]), .B(n363), .Y(n449) );
  NOR2X1 U430 ( .A(n352), .B(n450), .Y(n117) );
  XOR2X1 U431 ( .A(b[7]), .B(n363), .Y(n450) );
  NOR2X1 U432 ( .A(n352), .B(n451), .Y(n116) );
  XOR2X1 U433 ( .A(b[8]), .B(n363), .Y(n451) );
  NOR2X1 U434 ( .A(n352), .B(n452), .Y(n115) );
  XOR2X1 U435 ( .A(b[9]), .B(n363), .Y(n452) );
  OAI21XL U436 ( .A0(n361), .A1(n372), .B0(n382), .Y(n113) );
  OAI32X1 U437 ( .A0(n371), .A1(n361), .A2(n354), .B0(n371), .B1(n353), .Y(
        n112) );
  XOR2X1 U438 ( .A(a[3]), .B(a[2]), .Y(n453) );
  OAI32X1 U439 ( .A0(n370), .A1(n361), .A2(n356), .B0(n370), .B1(n355), .Y(
        n111) );
  XOR2X1 U440 ( .A(a[5]), .B(a[4]), .Y(n454) );
  OAI32X1 U441 ( .A0(n368), .A1(n361), .A2(n358), .B0(n368), .B1(n357), .Y(
        n110) );
  XOR2X1 U442 ( .A(a[7]), .B(a[6]), .Y(n455) );
  OAI32X1 U443 ( .A0(n365), .A1(n361), .A2(n360), .B0(n365), .B1(n359), .Y(
        n109) );
  XOR2X1 U444 ( .A(a[9]), .B(a[8]), .Y(n456) );
  NOR3X1 U445 ( .A(n363), .B(n361), .C(n352), .Y(n108) );
  XNOR2X1 U446 ( .A(n363), .B(a[9]), .Y(n381) );
endmodule


module geofence_DW_mult_tc_3 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n32, n33, n34,
         n35, n36, n37, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n115, n116, n117,
         n118, n119, n120, n121, n122, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n37), .B(n41), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n30), .B(n125), .CI(n115), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n364), .B(n116), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n136), .B(n126), .C(n38), .D(n117), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n127), .B(n118), .C(n366), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n137), .B(n128), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n50), .B(n146), .CI(n119), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n369), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n129), .B(n120), .CI(n138), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n139), .B(n130), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n157), .B(n121), .C(n64), .D(n147), .ICI(n61), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n367), .B(n69), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n131), .B(n158), .C(n148), .D(n122), .ICI(n72), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n140), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n159), .B(n108), .C(n149), .D(n132), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n124), .B(n141), .C(n170), .D(n160), .ICI(n133), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n142), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n134), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n143), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n135), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n144), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n145), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  CLKINVX1 U264 ( .A(n64), .Y(n367) );
  CLKINVX1 U265 ( .A(n50), .Y(n369) );
  INVX3 U266 ( .A(a[10]), .Y(n363) );
  CLKBUFX3 U267 ( .A(n362), .Y(n352) );
  CLKINVX1 U268 ( .A(n381), .Y(n362) );
  CLKINVX1 U269 ( .A(n38), .Y(n366) );
  CLKBUFX3 U270 ( .A(n391), .Y(n355) );
  NAND2X1 U271 ( .A(n356), .B(n454), .Y(n391) );
  INVX3 U272 ( .A(a[5]), .Y(n370) );
  INVX3 U273 ( .A(a[3]), .Y(n371) );
  CLKBUFX3 U274 ( .A(n407), .Y(n354) );
  XNOR2X1 U275 ( .A(a[2]), .B(a[1]), .Y(n407) );
  CLKBUFX3 U276 ( .A(n409), .Y(n353) );
  NAND2X1 U277 ( .A(n354), .B(n453), .Y(n409) );
  CLKBUFX3 U278 ( .A(n385), .Y(n357) );
  NAND2X1 U279 ( .A(n358), .B(n455), .Y(n385) );
  NAND2X2 U280 ( .A(a[1]), .B(n373), .Y(n382) );
  CLKBUFX3 U281 ( .A(n397), .Y(n359) );
  NAND2X1 U282 ( .A(n360), .B(n456), .Y(n397) );
  INVX3 U283 ( .A(a[0]), .Y(n373) );
  INVX3 U284 ( .A(a[7]), .Y(n368) );
  INVX3 U285 ( .A(a[9]), .Y(n365) );
  INVX3 U286 ( .A(a[1]), .Y(n372) );
  CLKBUFX3 U287 ( .A(n388), .Y(n356) );
  XNOR2X1 U288 ( .A(a[4]), .B(a[3]), .Y(n388) );
  CLKBUFX3 U289 ( .A(n394), .Y(n360) );
  XNOR2X1 U290 ( .A(a[8]), .B(a[7]), .Y(n394) );
  CLKBUFX3 U291 ( .A(n386), .Y(n358) );
  XNOR2X1 U292 ( .A(a[6]), .B(a[5]), .Y(n386) );
  CLKINVX1 U293 ( .A(n361), .Y(n374) );
  CLKINVX1 U294 ( .A(n30), .Y(n364) );
  CLKBUFX3 U295 ( .A(b[0]), .Y(n361) );
  XOR2X1 U296 ( .A(n375), .B(n376), .Y(product[21]) );
  NOR2BX1 U297 ( .AN(n377), .B(n352), .Y(n376) );
  XOR2X1 U298 ( .A(n25), .B(n4), .Y(n375) );
  NOR2X1 U299 ( .A(n373), .B(n374), .Y(product[0]) );
  XOR2X1 U300 ( .A(n378), .B(n379), .Y(n73) );
  NAND2BX1 U301 ( .AN(n379), .B(n378), .Y(n72) );
  NAND2X1 U302 ( .A(n380), .B(n381), .Y(n378) );
  XOR2X1 U303 ( .A(b[1]), .B(a[10]), .Y(n380) );
  OAI2BB1X1 U304 ( .A0N(n373), .A1N(n382), .B0(n383), .Y(n379) );
  OAI22XL U305 ( .A0(n384), .A1(n357), .B0(n358), .B1(n387), .Y(n64) );
  OAI22XL U306 ( .A0(n356), .A1(n389), .B0(n390), .B1(n355), .Y(n50) );
  OAI22XL U307 ( .A0(n358), .A1(n392), .B0(n393), .B1(n357), .Y(n38) );
  OAI22XL U308 ( .A0(n360), .A1(n395), .B0(n396), .B1(n359), .Y(n30) );
  NAND2X1 U309 ( .A(n377), .B(n381), .Y(n25) );
  XOR2X1 U310 ( .A(b[10]), .B(a[10]), .Y(n377) );
  OAI22XL U311 ( .A0(n361), .A1(n382), .B0(n398), .B1(n373), .Y(n179) );
  OAI22XL U312 ( .A0(n398), .A1(n382), .B0(n399), .B1(n373), .Y(n178) );
  XOR2X1 U313 ( .A(b[1]), .B(n372), .Y(n398) );
  OAI22XL U314 ( .A0(n399), .A1(n382), .B0(n400), .B1(n373), .Y(n177) );
  XOR2X1 U315 ( .A(b[2]), .B(n372), .Y(n399) );
  OAI22XL U316 ( .A0(n400), .A1(n382), .B0(n401), .B1(n373), .Y(n176) );
  XOR2X1 U317 ( .A(b[3]), .B(n372), .Y(n400) );
  OAI22XL U318 ( .A0(n401), .A1(n382), .B0(n402), .B1(n373), .Y(n175) );
  XOR2X1 U319 ( .A(b[4]), .B(n372), .Y(n401) );
  OAI22XL U320 ( .A0(n402), .A1(n382), .B0(n403), .B1(n373), .Y(n174) );
  XOR2X1 U321 ( .A(b[5]), .B(n372), .Y(n402) );
  OAI22XL U322 ( .A0(n403), .A1(n382), .B0(n404), .B1(n373), .Y(n173) );
  XOR2X1 U323 ( .A(b[6]), .B(n372), .Y(n403) );
  OAI22XL U324 ( .A0(n404), .A1(n382), .B0(n405), .B1(n373), .Y(n172) );
  XOR2X1 U325 ( .A(b[7]), .B(n372), .Y(n404) );
  OAI22XL U326 ( .A0(n405), .A1(n382), .B0(n406), .B1(n373), .Y(n171) );
  XOR2X1 U327 ( .A(b[8]), .B(n372), .Y(n405) );
  OAI2BB2XL U328 ( .B0(n406), .B1(n382), .A0N(n383), .A1N(a[0]), .Y(n170) );
  XOR2X1 U329 ( .A(b[10]), .B(a[1]), .Y(n383) );
  XOR2X1 U330 ( .A(b[9]), .B(n372), .Y(n406) );
  NOR2X1 U331 ( .A(n354), .B(n374), .Y(n168) );
  OAI22XL U332 ( .A0(n408), .A1(n353), .B0(n354), .B1(n410), .Y(n167) );
  XOR2X1 U333 ( .A(n371), .B(n361), .Y(n408) );
  OAI22XL U334 ( .A0(n410), .A1(n353), .B0(n354), .B1(n411), .Y(n166) );
  XOR2X1 U335 ( .A(b[1]), .B(n371), .Y(n410) );
  OAI22XL U336 ( .A0(n411), .A1(n353), .B0(n354), .B1(n412), .Y(n165) );
  XOR2X1 U337 ( .A(b[2]), .B(n371), .Y(n411) );
  OAI22XL U338 ( .A0(n412), .A1(n353), .B0(n354), .B1(n413), .Y(n164) );
  XOR2X1 U339 ( .A(b[3]), .B(n371), .Y(n412) );
  OAI22XL U340 ( .A0(n413), .A1(n353), .B0(n354), .B1(n414), .Y(n163) );
  XOR2X1 U341 ( .A(b[4]), .B(n371), .Y(n413) );
  OAI22XL U342 ( .A0(n414), .A1(n353), .B0(n354), .B1(n415), .Y(n162) );
  XOR2X1 U343 ( .A(b[5]), .B(n371), .Y(n414) );
  OAI22XL U344 ( .A0(n415), .A1(n353), .B0(n354), .B1(n416), .Y(n161) );
  XOR2X1 U345 ( .A(b[6]), .B(n371), .Y(n415) );
  OAI22XL U346 ( .A0(n416), .A1(n353), .B0(n354), .B1(n417), .Y(n160) );
  XOR2X1 U347 ( .A(b[7]), .B(n371), .Y(n416) );
  OAI22XL U348 ( .A0(n417), .A1(n353), .B0(n354), .B1(n418), .Y(n159) );
  XOR2X1 U349 ( .A(b[8]), .B(n371), .Y(n417) );
  OAI22XL U350 ( .A0(n418), .A1(n353), .B0(n354), .B1(n419), .Y(n158) );
  XOR2X1 U351 ( .A(b[9]), .B(n371), .Y(n418) );
  AO21X1 U352 ( .A0(n353), .A1(n354), .B0(n419), .Y(n157) );
  XOR2X1 U353 ( .A(b[10]), .B(n371), .Y(n419) );
  NOR2X1 U354 ( .A(n356), .B(n374), .Y(n156) );
  OAI22XL U355 ( .A0(n420), .A1(n355), .B0(n356), .B1(n421), .Y(n155) );
  XOR2X1 U356 ( .A(n370), .B(n361), .Y(n420) );
  OAI22XL U357 ( .A0(n421), .A1(n355), .B0(n356), .B1(n422), .Y(n154) );
  XOR2X1 U358 ( .A(b[1]), .B(n370), .Y(n421) );
  OAI22XL U359 ( .A0(n422), .A1(n355), .B0(n356), .B1(n423), .Y(n153) );
  XOR2X1 U360 ( .A(b[2]), .B(n370), .Y(n422) );
  OAI22XL U361 ( .A0(n423), .A1(n355), .B0(n356), .B1(n424), .Y(n152) );
  XOR2X1 U362 ( .A(b[3]), .B(n370), .Y(n423) );
  OAI22XL U363 ( .A0(n424), .A1(n355), .B0(n356), .B1(n425), .Y(n151) );
  XOR2X1 U364 ( .A(b[4]), .B(n370), .Y(n424) );
  OAI22XL U365 ( .A0(n425), .A1(n355), .B0(n356), .B1(n426), .Y(n150) );
  XOR2X1 U366 ( .A(b[5]), .B(n370), .Y(n425) );
  OAI22XL U367 ( .A0(n426), .A1(n355), .B0(n356), .B1(n427), .Y(n149) );
  XOR2X1 U368 ( .A(b[6]), .B(n370), .Y(n426) );
  OAI22XL U369 ( .A0(n427), .A1(n355), .B0(n356), .B1(n428), .Y(n148) );
  XOR2X1 U370 ( .A(b[7]), .B(n370), .Y(n427) );
  OAI22XL U371 ( .A0(n428), .A1(n355), .B0(n356), .B1(n390), .Y(n147) );
  XOR2X1 U372 ( .A(b[9]), .B(n370), .Y(n390) );
  XOR2X1 U373 ( .A(b[8]), .B(n370), .Y(n428) );
  AO21X1 U374 ( .A0(n355), .A1(n356), .B0(n389), .Y(n146) );
  XOR2X1 U375 ( .A(b[10]), .B(n370), .Y(n389) );
  NOR2X1 U376 ( .A(n358), .B(n374), .Y(n145) );
  OAI22XL U377 ( .A0(n429), .A1(n357), .B0(n358), .B1(n430), .Y(n144) );
  XOR2X1 U378 ( .A(n368), .B(n361), .Y(n429) );
  OAI22XL U379 ( .A0(n430), .A1(n357), .B0(n358), .B1(n431), .Y(n143) );
  XOR2X1 U380 ( .A(b[1]), .B(n368), .Y(n430) );
  OAI22XL U381 ( .A0(n431), .A1(n357), .B0(n358), .B1(n432), .Y(n142) );
  XOR2X1 U382 ( .A(b[2]), .B(n368), .Y(n431) );
  OAI22XL U383 ( .A0(n432), .A1(n357), .B0(n358), .B1(n433), .Y(n141) );
  XOR2X1 U384 ( .A(b[3]), .B(n368), .Y(n432) );
  OAI22XL U385 ( .A0(n433), .A1(n357), .B0(n358), .B1(n384), .Y(n140) );
  XOR2X1 U386 ( .A(b[5]), .B(n368), .Y(n384) );
  XOR2X1 U387 ( .A(b[4]), .B(n368), .Y(n433) );
  OAI22XL U388 ( .A0(n387), .A1(n357), .B0(n358), .B1(n434), .Y(n139) );
  XOR2X1 U389 ( .A(b[6]), .B(n368), .Y(n387) );
  OAI22XL U390 ( .A0(n434), .A1(n357), .B0(n358), .B1(n435), .Y(n138) );
  XOR2X1 U391 ( .A(b[7]), .B(n368), .Y(n434) );
  OAI22XL U392 ( .A0(n435), .A1(n357), .B0(n358), .B1(n393), .Y(n137) );
  XOR2X1 U393 ( .A(b[9]), .B(n368), .Y(n393) );
  XOR2X1 U394 ( .A(b[8]), .B(n368), .Y(n435) );
  AO21X1 U395 ( .A0(n357), .A1(n358), .B0(n392), .Y(n136) );
  XOR2X1 U396 ( .A(b[10]), .B(n368), .Y(n392) );
  NOR2X1 U397 ( .A(n360), .B(n374), .Y(n135) );
  OAI22XL U398 ( .A0(n436), .A1(n359), .B0(n360), .B1(n437), .Y(n134) );
  XOR2X1 U399 ( .A(n365), .B(n361), .Y(n436) );
  OAI22XL U400 ( .A0(n437), .A1(n359), .B0(n360), .B1(n438), .Y(n133) );
  XOR2X1 U401 ( .A(b[1]), .B(n365), .Y(n437) );
  OAI22XL U402 ( .A0(n438), .A1(n359), .B0(n360), .B1(n439), .Y(n132) );
  XOR2X1 U403 ( .A(b[2]), .B(n365), .Y(n438) );
  OAI22XL U404 ( .A0(n439), .A1(n359), .B0(n360), .B1(n440), .Y(n131) );
  XOR2X1 U405 ( .A(b[3]), .B(n365), .Y(n439) );
  OAI22XL U406 ( .A0(n440), .A1(n359), .B0(n360), .B1(n441), .Y(n130) );
  XOR2X1 U407 ( .A(b[4]), .B(n365), .Y(n440) );
  OAI22XL U408 ( .A0(n441), .A1(n359), .B0(n360), .B1(n442), .Y(n129) );
  XOR2X1 U409 ( .A(b[5]), .B(n365), .Y(n441) );
  OAI22XL U410 ( .A0(n442), .A1(n359), .B0(n360), .B1(n443), .Y(n128) );
  XOR2X1 U411 ( .A(b[6]), .B(n365), .Y(n442) );
  OAI22XL U412 ( .A0(n443), .A1(n359), .B0(n360), .B1(n444), .Y(n127) );
  XOR2X1 U413 ( .A(b[7]), .B(n365), .Y(n443) );
  OAI22XL U414 ( .A0(n444), .A1(n359), .B0(n360), .B1(n396), .Y(n126) );
  XOR2X1 U415 ( .A(b[9]), .B(n365), .Y(n396) );
  XOR2X1 U416 ( .A(b[8]), .B(n365), .Y(n444) );
  AO21X1 U417 ( .A0(n359), .A1(n360), .B0(n395), .Y(n125) );
  XOR2X1 U418 ( .A(b[10]), .B(n365), .Y(n395) );
  NOR2X1 U419 ( .A(n352), .B(n374), .Y(n124) );
  NOR2X1 U420 ( .A(n352), .B(n445), .Y(n122) );
  XOR2X1 U421 ( .A(b[2]), .B(n363), .Y(n445) );
  NOR2X1 U422 ( .A(n352), .B(n446), .Y(n121) );
  XOR2X1 U423 ( .A(b[3]), .B(n363), .Y(n446) );
  NOR2X1 U424 ( .A(n352), .B(n447), .Y(n120) );
  XOR2X1 U425 ( .A(b[4]), .B(n363), .Y(n447) );
  NOR2X1 U426 ( .A(n352), .B(n448), .Y(n119) );
  XOR2X1 U427 ( .A(b[5]), .B(n363), .Y(n448) );
  NOR2X1 U428 ( .A(n352), .B(n449), .Y(n118) );
  XOR2X1 U429 ( .A(b[6]), .B(n363), .Y(n449) );
  NOR2X1 U430 ( .A(n352), .B(n450), .Y(n117) );
  XOR2X1 U431 ( .A(b[7]), .B(n363), .Y(n450) );
  NOR2X1 U432 ( .A(n352), .B(n451), .Y(n116) );
  XOR2X1 U433 ( .A(b[8]), .B(n363), .Y(n451) );
  NOR2X1 U434 ( .A(n352), .B(n452), .Y(n115) );
  XOR2X1 U435 ( .A(b[9]), .B(n363), .Y(n452) );
  OAI21XL U436 ( .A0(n361), .A1(n372), .B0(n382), .Y(n113) );
  OAI32X1 U437 ( .A0(n371), .A1(n361), .A2(n354), .B0(n371), .B1(n353), .Y(
        n112) );
  XOR2X1 U438 ( .A(a[3]), .B(a[2]), .Y(n453) );
  OAI32X1 U439 ( .A0(n370), .A1(n361), .A2(n356), .B0(n370), .B1(n355), .Y(
        n111) );
  XOR2X1 U440 ( .A(a[5]), .B(a[4]), .Y(n454) );
  OAI32X1 U441 ( .A0(n368), .A1(n361), .A2(n358), .B0(n368), .B1(n357), .Y(
        n110) );
  XOR2X1 U442 ( .A(a[7]), .B(a[6]), .Y(n455) );
  OAI32X1 U443 ( .A0(n365), .A1(n361), .A2(n360), .B0(n365), .B1(n359), .Y(
        n109) );
  XOR2X1 U444 ( .A(a[9]), .B(a[8]), .Y(n456) );
  NOR3X1 U445 ( .A(n363), .B(n361), .C(n352), .Y(n108) );
  XNOR2X1 U446 ( .A(n363), .B(a[9]), .Y(n381) );
endmodule


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   N336, N337, \x[0][9] , \x[0][8] , \x[0][7] , \x[0][6] , \x[0][5] ,
         \x[0][4] , \x[0][3] , \x[0][2] , \x[0][1] , \x[0][0] , \x[1][9] ,
         \x[1][8] , \x[1][7] , \x[1][6] , \x[1][5] , \x[1][4] , \x[1][3] ,
         \x[1][2] , \x[1][1] , \x[1][0] , \x[2][9] , \x[2][8] , \x[2][7] ,
         \x[2][6] , \x[2][5] , \x[2][4] , \x[2][3] , \x[2][2] , \x[2][1] ,
         \x[2][0] , \x[3][9] , \x[3][8] , \x[3][7] , \x[3][6] , \x[3][5] ,
         \x[3][4] , \x[3][3] , \x[3][2] , \x[3][1] , \x[3][0] , \x[4][9] ,
         \x[4][8] , \x[4][7] , \x[4][6] , \x[4][5] , \x[4][4] , \x[4][3] ,
         \x[4][2] , \x[4][1] , \x[4][0] , \x[5][9] , \x[5][8] , \x[5][7] ,
         \x[5][6] , \x[5][5] , \x[5][4] , \x[5][3] , \x[5][2] , \x[5][1] ,
         \x[5][0] , N372, N373, N374, N375, N376, N377, N378, N379, N380, N381,
         N388, N389, N390, N391, N392, N393, N394, N395, N396, N397, \y[0][9] ,
         \y[0][8] , \y[0][7] , \y[0][6] , \y[0][5] , \y[0][4] , \y[0][3] ,
         \y[0][2] , \y[0][1] , \y[0][0] , \y[1][9] , \y[1][8] , \y[1][7] ,
         \y[1][6] , \y[1][5] , \y[1][4] , \y[1][3] , \y[1][2] , \y[1][1] ,
         \y[1][0] , \y[2][9] , \y[2][8] , \y[2][7] , \y[2][6] , \y[2][5] ,
         \y[2][4] , \y[2][3] , \y[2][2] , \y[2][1] , \y[2][0] , \y[3][9] ,
         \y[3][8] , \y[3][7] , \y[3][6] , \y[3][5] , \y[3][4] , \y[3][3] ,
         \y[3][2] , \y[3][1] , \y[3][0] , \y[4][9] , \y[4][8] , \y[4][7] ,
         \y[4][6] , \y[4][5] , \y[4][4] , \y[4][3] , \y[4][2] , \y[4][1] ,
         \y[4][0] , \y[5][9] , \y[5][8] , \y[5][7] , \y[5][6] , \y[5][5] ,
         \y[5][4] , \y[5][3] , \y[5][2] , \y[5][1] , \y[5][0] , N420, N421,
         N422, N423, N424, N425, N426, N427, N428, N429, N436, N437, N438,
         N439, N440, N441, N442, N443, N444, N445, Ax_21, Bx_21, Ay_21, By_21,
         N539, N540, N541, N542, N543, N544, N545, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N556, N557, N558, N559, N560,
         N561, N562, N563, N564, N565, N566, N567, N568, N569, N570, N571,
         N572, N573, N574, N575, N576, N577, N578, N579, N580, N581, N582,
         N583, N591, N592, N593, N594, N595, N596, N597, N598, N599, N600,
         N613, N614, N615, N616, N617, N618, N619, N620, N621, N622, N635,
         N636, N637, N638, N639, N640, N641, N642, N643, N644, N741, N742,
         N743, N744, N745, N746, N747, N748, N749, N750, n28, n29, n30, n31,
         n32, n33, n38, n41, n44, n47, n50, n53, n56, n59, n62, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n78, n81, n84, n87, n90, n93,
         n96, n99, n102, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n121, n124, n125, n128, n133, n134, n135, n136, n140,
         n142, n143, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n186, n187, n188, n189, n190, n191, n192, n193, n194, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n252, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n370, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n1175, n1176, n1177, n1178, n1179, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504;
  wire   [0:5] match_array;
  wire   [2:0] state;
  wire   [2:0] nx_state;
  wire   [21:0] det_AxBy;
  wire   [21:0] det_BxAy;
  wire   [2:0] counter_det_A;
  wire   [9:0] obj_x;
  wire   [10:0] det_Ax;
  wire   [10:0] det_Bx;
  wire   [9:0] obj_y;
  wire   [10:0] det_Ay;
  wire   [10:0] det_By;
  wire   [2:0] counter_A;
  wire   [9:0] Ax;
  wire   [2:0] counter_B;
  wire   [9:0] Bx;
  wire   [9:0] Ay;
  wire   [9:0] By;
  wire   [2:0] counter_RESULT;
  wire   [2:0] counter_IN;
  wire   [2:0] counter_RES;

  geofence_DW_cmp_0 gt_135 ( .A({N560, N559, N558, N557, N556, N555, N554, 
        N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, 
        N541, N540, N539}), .B({N582, N581, N580, N579, N578, N577, N576, N575, 
        N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, 
        N562, N561}), .TC(1'b1), .GE_LT(1'b0), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(
        N583) );
  geofence_DW01_sub_0 sub_107 ( .A({1'b0, \y[0][9] , \y[0][8] , \y[0][7] , 
        \y[0][6] , \y[0][5] , \y[0][4] , \y[0][3] , \y[0][2] , \y[0][1] , 
        \y[0][0] }), .B({1'b0, N613, N614, N615, N616, N617, N618, N619, N620, 
        N621, N622}), .CI(1'b0), .DIFF({By_21, By}) );
  geofence_DW01_sub_1 sub_106 ( .A({1'b0, \y[0][9] , \y[0][8] , \y[0][7] , 
        \y[0][6] , \y[0][5] , \y[0][4] , \y[0][3] , \y[0][2] , \y[0][1] , 
        \y[0][0] }), .B({1'b0, N741, N742, N743, N744, N745, N746, N747, N748, 
        N749, N750}), .CI(1'b0), .DIFF({Ay_21, Ay}) );
  geofence_DW01_sub_2 sub_105 ( .A({1'b0, \x[0][9] , \x[0][8] , \x[0][7] , 
        \x[0][6] , \x[0][5] , \x[0][4] , \x[0][3] , \x[0][2] , \x[0][1] , 
        \x[0][0] }), .B({1'b0, N591, N592, N593, N594, N595, N596, N597, N598, 
        N599, N600}), .CI(1'b0), .DIFF({Bx_21, Bx}) );
  geofence_DW01_sub_3 sub_104 ( .A({1'b0, \x[0][9] , \x[0][8] , \x[0][7] , 
        \x[0][6] , \x[0][5] , \x[0][4] , \x[0][3] , \x[0][2] , \x[0][1] , 
        \x[0][0] }), .B({1'b0, N635, N636, N637, N638, N639, N640, N641, N642, 
        N643, N644}), .CI(1'b0), .DIFF({Ax_21, Ax}) );
  geofence_DW_cmp_1 gt_84 ( .A(det_AxBy), .B(det_BxAy), .TC(1'b1), .GE_LT(1'b0), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N337) );
  geofence_DW01_sub_4 sub_92 ( .A({1'b0, obj_y}), .B({1'b0, N436, N437, N438, 
        N439, N440, N441, N442, N443, N444, N445}), .CI(1'b0), .DIFF(det_Ay)
         );
  geofence_DW01_sub_5 sub_91 ( .A({1'b0, N372, N373, N374, N375, N376, N377, 
        N378, N379, N380, N381}), .B({1'b0, N388, N389, N390, N391, N392, N393, 
        N394, N395, N396, N397}), .CI(1'b0), .DIFF(det_Bx) );
  geofence_DW01_sub_6 sub_93 ( .A({1'b0, N420, N421, N422, N423, N424, N425, 
        N426, N427, N428, N429}), .B({1'b0, N436, N437, N438, N439, N440, N441, 
        N442, N443, N444, N445}), .CI(1'b0), .DIFF(det_By) );
  geofence_DW01_sub_7 sub_90 ( .A({1'b0, obj_x}), .B({1'b0, N388, N389, N390, 
        N391, N392, N393, N394, N395, N396, N397}), .CI(1'b0), .DIFF(det_Ax)
         );
  geofence_DW_mult_tc_1 mult_95 ( .a(det_Bx), .b(det_Ay), .product(det_BxAy)
         );
  geofence_DW_mult_tc_0 mult_94 ( .a(det_Ax), .b(det_By), .product(det_AxBy)
         );
  geofence_DW_mult_tc_2 mult_135_2 ( .a({Bx_21, Bx}), .b({Ay_21, Ay}), 
        .product({N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, 
        N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561}) );
  geofence_DW_mult_tc_3 mult_135 ( .a({Ax_21, Ax}), .b({By_21, By}), .product(
        {N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, 
        N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539}) );
  DFFRX1 \match_array_reg[0]  ( .D(n417), .CK(clk), .RN(n1423), .Q(
        match_array[0]), .QN(n28) );
  DFFRX1 \match_array_reg[1]  ( .D(n418), .CK(clk), .RN(n1423), .Q(
        match_array[1]), .QN(n29) );
  DFFRX1 \match_array_reg[2]  ( .D(n419), .CK(clk), .RN(n1423), .Q(
        match_array[2]), .QN(n30) );
  DFFRX1 \counter_RES_reg[0]  ( .D(n568), .CK(clk), .RN(n1422), .Q(
        counter_RES[0]), .QN(n135) );
  DFFRX1 \counter_RES_reg[2]  ( .D(n566), .CK(clk), .RN(n1422), .Q(
        counter_RES[2]), .QN(n133) );
  DFFRX1 \state_reg[0]  ( .D(nx_state[0]), .CK(clk), .RN(n1424), .Q(state[0]), 
        .QN(n143) );
  DFFRX1 \state_reg[2]  ( .D(nx_state[2]), .CK(clk), .RN(n1423), .Q(state[2]), 
        .QN(n142) );
  DFFRX1 \counter_RES_reg[1]  ( .D(n567), .CK(clk), .RN(n1422), .Q(
        counter_RES[1]), .QN(n134) );
  DFFRX1 \obj_y_reg[9]  ( .D(n546), .CK(clk), .RN(n1412), .Q(obj_y[9]) );
  DFFRX1 \obj_y_reg[8]  ( .D(n547), .CK(clk), .RN(n1412), .Q(obj_y[8]) );
  DFFRX1 \obj_y_reg[7]  ( .D(n548), .CK(clk), .RN(n1412), .Q(obj_y[7]) );
  DFFRX1 \obj_y_reg[6]  ( .D(n549), .CK(clk), .RN(n1412), .Q(obj_y[6]) );
  DFFRX1 \obj_x_reg[9]  ( .D(n556), .CK(clk), .RN(n1411), .Q(obj_x[9]) );
  DFFRX1 \obj_x_reg[8]  ( .D(n557), .CK(clk), .RN(n1411), .Q(obj_x[8]) );
  DFFRX1 \obj_x_reg[7]  ( .D(n558), .CK(clk), .RN(n1411), .Q(obj_x[7]) );
  DFFRX1 \obj_x_reg[6]  ( .D(n559), .CK(clk), .RN(n1411), .Q(obj_x[6]) );
  DFFRX1 \obj_y_reg[5]  ( .D(n550), .CK(clk), .RN(n1412), .Q(obj_y[5]) );
  DFFRX1 \obj_y_reg[4]  ( .D(n551), .CK(clk), .RN(n1412), .Q(obj_y[4]) );
  DFFRX1 \obj_y_reg[3]  ( .D(n552), .CK(clk), .RN(n1412), .Q(obj_y[3]) );
  DFFRX1 \obj_x_reg[5]  ( .D(n560), .CK(clk), .RN(n1411), .Q(obj_x[5]) );
  DFFRX1 \obj_y_reg[2]  ( .D(n553), .CK(clk), .RN(n1412), .Q(obj_y[2]) );
  DFFRX1 \obj_y_reg[1]  ( .D(n554), .CK(clk), .RN(n1411), .Q(obj_y[1]) );
  DFFRX1 \obj_x_reg[4]  ( .D(n561), .CK(clk), .RN(n1411), .Q(obj_x[4]) );
  DFFRX1 \obj_x_reg[3]  ( .D(n562), .CK(clk), .RN(n1411), .Q(obj_x[3]) );
  DFFRX1 \obj_x_reg[2]  ( .D(n563), .CK(clk), .RN(n1411), .Q(obj_x[2]) );
  DFFRX1 \obj_x_reg[1]  ( .D(n564), .CK(clk), .RN(n1411), .Q(obj_x[1]) );
  DFFRX1 \obj_y_reg[0]  ( .D(n555), .CK(clk), .RN(n1411), .Q(obj_y[0]) );
  DFFRX1 \obj_x_reg[0]  ( .D(n565), .CK(clk), .RN(n1411), .Q(obj_x[0]) );
  DFFRX1 \x_reg[2][9]  ( .D(n446), .CK(clk), .RN(n1415), .Q(\x[2][9] ), .QN(
        n66) );
  DFFRX1 \x_reg[2][8]  ( .D(n447), .CK(clk), .RN(n1415), .Q(\x[2][8] ), .QN(
        n67) );
  DFFRX1 \y_reg[2][9]  ( .D(n506), .CK(clk), .RN(n1415), .Q(\y[2][9] ), .QN(
        n106) );
  DFFRX1 \y_reg[2][8]  ( .D(n507), .CK(clk), .RN(n1415), .Q(\y[2][8] ), .QN(
        n107) );
  DFFRX1 \y_reg[2][7]  ( .D(n508), .CK(clk), .RN(n1414), .Q(\y[2][7] ), .QN(
        n108) );
  DFFRX1 \x_reg[4][9]  ( .D(n466), .CK(clk), .RN(n1414), .Q(\x[4][9] ) );
  DFFRX1 \y_reg[4][9]  ( .D(n526), .CK(clk), .RN(n1413), .Q(\y[4][9] ) );
  DFFRX1 \y_reg[4][8]  ( .D(n527), .CK(clk), .RN(n1413), .Q(\y[4][8] ) );
  DFFRX1 \x_reg[5][9]  ( .D(n476), .CK(clk), .RN(n1419), .Q(\x[5][9] ) );
  DFFRX1 \x_reg[5][8]  ( .D(n477), .CK(clk), .RN(n1419), .Q(\x[5][8] ) );
  DFFRX1 \y_reg[5][9]  ( .D(n536), .CK(clk), .RN(n1418), .Q(\y[5][9] ) );
  DFFRX1 \y_reg[5][8]  ( .D(n537), .CK(clk), .RN(n1418), .Q(\y[5][8] ) );
  DFFRX1 \x_reg[3][9]  ( .D(n456), .CK(clk), .RN(n1422), .Q(\x[3][9] ) );
  DFFRX1 \y_reg[3][9]  ( .D(n516), .CK(clk), .RN(n1421), .Q(\y[3][9] ) );
  DFFRX1 \y_reg[3][8]  ( .D(n517), .CK(clk), .RN(n1421), .Q(\y[3][8] ) );
  DFFRX1 \x_reg[1][9]  ( .D(n436), .CK(clk), .RN(n1420), .Q(\x[1][9] ) );
  DFFRX1 \y_reg[1][9]  ( .D(n496), .CK(clk), .RN(n1420), .Q(\y[1][9] ) );
  DFFRX1 \y_reg[1][8]  ( .D(n497), .CK(clk), .RN(n1420), .Q(\y[1][8] ) );
  DFFRX1 \x_reg[0][9]  ( .D(n426), .CK(clk), .RN(n1417), .Q(\x[0][9] ), .QN(
        n38) );
  DFFRX1 \y_reg[0][9]  ( .D(n486), .CK(clk), .RN(n1416), .Q(\y[0][9] ), .QN(
        n78) );
  DFFRX1 \y_reg[0][8]  ( .D(n487), .CK(clk), .RN(n1416), .Q(\y[0][8] ), .QN(
        n81) );
  DFFRX1 \x_reg[2][7]  ( .D(n448), .CK(clk), .RN(n1415), .Q(\x[2][7] ), .QN(
        n68) );
  DFFRX1 \x_reg[2][6]  ( .D(n449), .CK(clk), .RN(n1415), .Q(\x[2][6] ), .QN(
        n69) );
  DFFRX1 \y_reg[2][6]  ( .D(n509), .CK(clk), .RN(n1414), .Q(\y[2][6] ), .QN(
        n109) );
  DFFRX1 \x_reg[4][8]  ( .D(n467), .CK(clk), .RN(n1414), .Q(\x[4][8] ) );
  DFFRX1 \x_reg[4][7]  ( .D(n468), .CK(clk), .RN(n1414), .Q(\x[4][7] ) );
  DFFRX1 \x_reg[4][6]  ( .D(n469), .CK(clk), .RN(n1414), .Q(\x[4][6] ) );
  DFFRX1 \y_reg[4][7]  ( .D(n528), .CK(clk), .RN(n1413), .Q(\y[4][7] ) );
  DFFRX1 \y_reg[4][6]  ( .D(n529), .CK(clk), .RN(n1413), .Q(\y[4][6] ) );
  DFFRX1 \x_reg[5][7]  ( .D(n478), .CK(clk), .RN(n1419), .Q(\x[5][7] ) );
  DFFRX1 \x_reg[5][6]  ( .D(n479), .CK(clk), .RN(n1419), .Q(\x[5][6] ) );
  DFFRX1 \y_reg[5][7]  ( .D(n538), .CK(clk), .RN(n1418), .Q(\y[5][7] ) );
  DFFRX1 \y_reg[5][6]  ( .D(n539), .CK(clk), .RN(n1418), .Q(\y[5][6] ) );
  DFFRX1 \x_reg[3][8]  ( .D(n457), .CK(clk), .RN(n1422), .Q(\x[3][8] ) );
  DFFRX1 \x_reg[3][7]  ( .D(n458), .CK(clk), .RN(n1422), .Q(\x[3][7] ) );
  DFFRX1 \x_reg[3][6]  ( .D(n459), .CK(clk), .RN(n1422), .Q(\x[3][6] ) );
  DFFRX1 \y_reg[3][7]  ( .D(n518), .CK(clk), .RN(n1421), .Q(\y[3][7] ) );
  DFFRX1 \y_reg[3][6]  ( .D(n519), .CK(clk), .RN(n1421), .Q(\y[3][6] ) );
  DFFRX1 \x_reg[1][8]  ( .D(n437), .CK(clk), .RN(n1420), .Q(\x[1][8] ) );
  DFFRX1 \x_reg[1][7]  ( .D(n438), .CK(clk), .RN(n1420), .Q(\x[1][7] ) );
  DFFRX1 \x_reg[1][6]  ( .D(n439), .CK(clk), .RN(n1420), .Q(\x[1][6] ) );
  DFFRX1 \y_reg[1][7]  ( .D(n498), .CK(clk), .RN(n1419), .Q(\y[1][7] ) );
  DFFRX1 \y_reg[1][6]  ( .D(n499), .CK(clk), .RN(n1419), .Q(\y[1][6] ) );
  DFFRX1 \x_reg[0][8]  ( .D(n427), .CK(clk), .RN(n1417), .Q(\x[0][8] ), .QN(
        n41) );
  DFFRX1 \x_reg[0][7]  ( .D(n428), .CK(clk), .RN(n1417), .Q(\x[0][7] ), .QN(
        n44) );
  DFFRX1 \x_reg[0][6]  ( .D(n429), .CK(clk), .RN(n1417), .Q(\x[0][6] ), .QN(
        n47) );
  DFFRX1 \y_reg[0][7]  ( .D(n488), .CK(clk), .RN(n1416), .Q(\y[0][7] ), .QN(
        n84) );
  DFFRX1 \y_reg[0][6]  ( .D(n489), .CK(clk), .RN(n1416), .Q(\y[0][6] ), .QN(
        n87) );
  DFFRX1 \x_reg[2][5]  ( .D(n450), .CK(clk), .RN(n1415), .Q(\x[2][5] ), .QN(
        n70) );
  DFFRX1 \x_reg[2][4]  ( .D(n451), .CK(clk), .RN(n1415), .Q(\x[2][4] ), .QN(
        n71) );
  DFFRX1 \x_reg[2][3]  ( .D(n452), .CK(clk), .RN(n1415), .Q(\x[2][3] ), .QN(
        n72) );
  DFFRX1 \y_reg[2][5]  ( .D(n510), .CK(clk), .RN(n1414), .Q(\y[2][5] ), .QN(
        n110) );
  DFFRX1 \y_reg[2][4]  ( .D(n511), .CK(clk), .RN(n1414), .Q(\y[2][4] ), .QN(
        n111) );
  DFFRX1 \y_reg[2][3]  ( .D(n512), .CK(clk), .RN(n1414), .Q(\y[2][3] ), .QN(
        n112) );
  DFFRX1 \y_reg[2][2]  ( .D(n513), .CK(clk), .RN(n1414), .Q(\y[2][2] ), .QN(
        n113) );
  DFFRX1 \x_reg[4][5]  ( .D(n470), .CK(clk), .RN(n1413), .Q(\x[4][5] ) );
  DFFRX1 \x_reg[4][4]  ( .D(n471), .CK(clk), .RN(n1413), .Q(\x[4][4] ) );
  DFFRX1 \y_reg[4][5]  ( .D(n530), .CK(clk), .RN(n1413), .Q(\y[4][5] ) );
  DFFRX1 \y_reg[4][4]  ( .D(n531), .CK(clk), .RN(n1413), .Q(\y[4][4] ) );
  DFFRX1 \y_reg[4][3]  ( .D(n532), .CK(clk), .RN(n1412), .Q(\y[4][3] ) );
  DFFRX1 \x_reg[5][5]  ( .D(n480), .CK(clk), .RN(n1418), .Q(\x[5][5] ) );
  DFFRX1 \x_reg[5][4]  ( .D(n481), .CK(clk), .RN(n1418), .Q(\x[5][4] ) );
  DFFRX1 \x_reg[5][3]  ( .D(n482), .CK(clk), .RN(n1418), .Q(\x[5][3] ) );
  DFFRX1 \y_reg[5][5]  ( .D(n540), .CK(clk), .RN(n1418), .Q(\y[5][5] ) );
  DFFRX1 \y_reg[5][4]  ( .D(n541), .CK(clk), .RN(n1418), .Q(\y[5][4] ) );
  DFFRX1 \y_reg[5][3]  ( .D(n542), .CK(clk), .RN(n1417), .Q(\y[5][3] ) );
  DFFRX1 \y_reg[5][2]  ( .D(n543), .CK(clk), .RN(n1417), .Q(\y[5][2] ) );
  DFFRX1 \x_reg[3][5]  ( .D(n460), .CK(clk), .RN(n1422), .Q(\x[3][5] ) );
  DFFRX1 \x_reg[3][4]  ( .D(n461), .CK(clk), .RN(n1422), .Q(\x[3][4] ) );
  DFFRX1 \y_reg[3][5]  ( .D(n520), .CK(clk), .RN(n1421), .Q(\y[3][5] ) );
  DFFRX1 \y_reg[3][4]  ( .D(n521), .CK(clk), .RN(n1421), .Q(\y[3][4] ) );
  DFFRX1 \y_reg[3][3]  ( .D(n522), .CK(clk), .RN(n1421), .Q(\y[3][3] ) );
  DFFRX1 \x_reg[1][5]  ( .D(n440), .CK(clk), .RN(n1420), .Q(\x[1][5] ) );
  DFFRX1 \x_reg[1][4]  ( .D(n441), .CK(clk), .RN(n1420), .Q(\x[1][4] ) );
  DFFRX1 \y_reg[1][5]  ( .D(n500), .CK(clk), .RN(n1419), .Q(\y[1][5] ) );
  DFFRX1 \y_reg[1][4]  ( .D(n501), .CK(clk), .RN(n1419), .Q(\y[1][4] ) );
  DFFRX1 \y_reg[1][3]  ( .D(n502), .CK(clk), .RN(n1419), .Q(\y[1][3] ) );
  DFFRX1 \x_reg[0][5]  ( .D(n430), .CK(clk), .RN(n1417), .Q(\x[0][5] ), .QN(
        n50) );
  DFFRX1 \x_reg[0][4]  ( .D(n431), .CK(clk), .RN(n1417), .Q(\x[0][4] ), .QN(
        n53) );
  DFFRX1 \x_reg[0][3]  ( .D(n432), .CK(clk), .RN(n1417), .Q(\x[0][3] ), .QN(
        n56) );
  DFFRX1 \y_reg[0][5]  ( .D(n490), .CK(clk), .RN(n1416), .Q(\y[0][5] ), .QN(
        n90) );
  DFFRX1 \y_reg[0][4]  ( .D(n491), .CK(clk), .RN(n1416), .Q(\y[0][4] ), .QN(
        n93) );
  DFFRX1 \y_reg[0][3]  ( .D(n492), .CK(clk), .RN(n1416), .Q(\y[0][3] ), .QN(
        n96) );
  DFFRX1 \x_reg[2][2]  ( .D(n453), .CK(clk), .RN(n1415), .Q(\x[2][2] ), .QN(
        n73) );
  DFFRX1 \x_reg[2][1]  ( .D(n454), .CK(clk), .RN(n1415), .Q(\x[2][1] ), .QN(
        n74) );
  DFFRX1 \x_reg[2][0]  ( .D(n455), .CK(clk), .RN(n1415), .Q(\x[2][0] ), .QN(
        n75) );
  DFFRX1 \y_reg[2][1]  ( .D(n514), .CK(clk), .RN(n1414), .Q(\y[2][1] ), .QN(
        n114) );
  DFFRX1 \y_reg[2][0]  ( .D(n515), .CK(clk), .RN(n1414), .Q(\y[2][0] ), .QN(
        n115) );
  DFFRX1 \x_reg[4][3]  ( .D(n472), .CK(clk), .RN(n1413), .Q(\x[4][3] ) );
  DFFRX1 \x_reg[4][2]  ( .D(n473), .CK(clk), .RN(n1413), .Q(\x[4][2] ) );
  DFFRX1 \x_reg[4][1]  ( .D(n474), .CK(clk), .RN(n1413), .Q(\x[4][1] ) );
  DFFRX1 \x_reg[4][0]  ( .D(n475), .CK(clk), .RN(n1413), .Q(\x[4][0] ) );
  DFFRX1 \y_reg[4][2]  ( .D(n533), .CK(clk), .RN(n1412), .Q(\y[4][2] ) );
  DFFRX1 \y_reg[4][1]  ( .D(n534), .CK(clk), .RN(n1412), .Q(\y[4][1] ) );
  DFFRX1 \y_reg[4][0]  ( .D(n535), .CK(clk), .RN(n1412), .Q(\y[4][0] ) );
  DFFRX1 \x_reg[5][2]  ( .D(n483), .CK(clk), .RN(n1418), .Q(\x[5][2] ) );
  DFFRX1 \x_reg[5][1]  ( .D(n484), .CK(clk), .RN(n1418), .Q(\x[5][1] ) );
  DFFRX1 \x_reg[5][0]  ( .D(n485), .CK(clk), .RN(n1418), .Q(\x[5][0] ) );
  DFFRX1 \y_reg[5][1]  ( .D(n544), .CK(clk), .RN(n1417), .Q(\y[5][1] ) );
  DFFRX1 \y_reg[5][0]  ( .D(n545), .CK(clk), .RN(n1417), .Q(\y[5][0] ) );
  DFFRX1 \x_reg[3][3]  ( .D(n462), .CK(clk), .RN(n1422), .Q(\x[3][3] ) );
  DFFRX1 \x_reg[3][2]  ( .D(n463), .CK(clk), .RN(n1422), .Q(\x[3][2] ) );
  DFFRX1 \x_reg[3][1]  ( .D(n464), .CK(clk), .RN(n1421), .Q(\x[3][1] ) );
  DFFRX1 \x_reg[3][0]  ( .D(n465), .CK(clk), .RN(n1421), .Q(\x[3][0] ) );
  DFFRX1 \y_reg[3][2]  ( .D(n523), .CK(clk), .RN(n1421), .Q(\y[3][2] ) );
  DFFRX1 \y_reg[3][1]  ( .D(n524), .CK(clk), .RN(n1421), .Q(\y[3][1] ) );
  DFFRX1 \y_reg[3][0]  ( .D(n525), .CK(clk), .RN(n1421), .Q(\y[3][0] ) );
  DFFRX1 \x_reg[1][3]  ( .D(n442), .CK(clk), .RN(n1420), .Q(\x[1][3] ) );
  DFFRX1 \x_reg[1][2]  ( .D(n443), .CK(clk), .RN(n1420), .Q(\x[1][2] ) );
  DFFRX1 \x_reg[1][1]  ( .D(n444), .CK(clk), .RN(n1420), .Q(\x[1][1] ) );
  DFFRX1 \x_reg[1][0]  ( .D(n445), .CK(clk), .RN(n1420), .Q(\x[1][0] ) );
  DFFRX1 \y_reg[1][2]  ( .D(n503), .CK(clk), .RN(n1419), .Q(\y[1][2] ) );
  DFFRX1 \y_reg[1][1]  ( .D(n504), .CK(clk), .RN(n1419), .Q(\y[1][1] ) );
  DFFRX1 \y_reg[1][0]  ( .D(n505), .CK(clk), .RN(n1419), .Q(\y[1][0] ) );
  DFFRX1 \x_reg[0][2]  ( .D(n433), .CK(clk), .RN(n1417), .Q(\x[0][2] ), .QN(
        n59) );
  DFFRX1 \x_reg[0][1]  ( .D(n434), .CK(clk), .RN(n1416), .Q(\x[0][1] ), .QN(
        n62) );
  DFFRX1 \y_reg[0][2]  ( .D(n493), .CK(clk), .RN(n1416), .Q(\y[0][2] ), .QN(
        n99) );
  DFFRX1 \y_reg[0][1]  ( .D(n494), .CK(clk), .RN(n1416), .Q(\y[0][1] ), .QN(
        n102) );
  DFFRX1 \counter_RESULT_reg[2]  ( .D(n569), .CK(clk), .RN(n1422), .Q(
        counter_RESULT[2]), .QN(n128) );
  DFFRX1 \counter_IN_reg[0]  ( .D(n573), .CK(clk), .RN(n1424), .Q(
        counter_IN[0]), .QN(n125) );
  DFFRX1 \state_reg[1]  ( .D(nx_state[1]), .CK(clk), .RN(n1424), .Q(state[1])
         );
  DFFRX1 \counter_IN_reg[1]  ( .D(n574), .CK(clk), .RN(n1424), .Q(
        counter_IN[1]), .QN(n124) );
  DFFRX1 \counter_IN_reg[2]  ( .D(n572), .CK(clk), .RN(n1424), .Q(
        counter_IN[2]), .QN(n121) );
  DFFRX1 \counter_INSIDE_reg[2]  ( .D(n423), .CK(clk), .RN(n1423), .Q(
        counter_det_A[2]), .QN(n136) );
  DFFRX1 \counter_INSIDE_reg[1]  ( .D(n425), .CK(clk), .RN(n1424), .Q(
        counter_det_A[1]), .QN(n140) );
  DFFRX1 \counter_RESULT_reg[1]  ( .D(n571), .CK(clk), .RN(n1423), .Q(
        counter_RESULT[1]), .QN(counter_B[1]) );
  DFFRX1 valid_reg ( .D(n1450), .CK(clk), .RN(n1429), .QN(n1179) );
  DFFRX1 is_inside_reg ( .D(N336), .CK(clk), .RN(n1429), .QN(n1178) );
  DFFRX1 \match_array_reg[5]  ( .D(n422), .CK(clk), .RN(n1429), .QN(n33) );
  DFFRX1 \match_array_reg[4]  ( .D(n421), .CK(clk), .RN(n1429), .QN(n32) );
  DFFRX1 \match_array_reg[3]  ( .D(n420), .CK(clk), .RN(n1429), .QN(n31) );
  DFFRX2 \counter_INSIDE_reg[0]  ( .D(n424), .CK(clk), .RN(n1429), .Q(
        counter_det_A[0]), .QN(n1241) );
  DFFRX2 \counter_RESULT_reg[0]  ( .D(n570), .CK(clk), .RN(n1429), .Q(
        counter_B[0]), .QN(n1503) );
  DFFRX2 \y_reg[0][0]  ( .D(n495), .CK(clk), .RN(n1429), .Q(\y[0][0] ), .QN(
        n105) );
  DFFRX2 \x_reg[0][0]  ( .D(n435), .CK(clk), .RN(n1429), .Q(\x[0][0] ), .QN(
        n65) );
  XNOR2X2 U1135 ( .A(counter_RESULT[2]), .B(counter_B[1]), .Y(counter_B[2]) );
  OAI21X2 U1136 ( .A0(counter_RESULT[1]), .A1(n1503), .B0(n280), .Y(
        counter_A[1]) );
  NOR3BX2 U1137 ( .AN(nx_state[0]), .B(nx_state[1]), .C(nx_state[2]), .Y(n275)
         );
  OAI31X1 U1138 ( .A0(n121), .A1(n1456), .A2(n358), .B0(n359), .Y(nx_state[1])
         );
  CLKAND2X3 U1139 ( .A(n1194), .B(n140), .Y(n1175) );
  CLKAND2X3 U1140 ( .A(n1299), .B(counter_RESULT[1]), .Y(n1176) );
  CLKAND2X3 U1141 ( .A(n1195), .B(n140), .Y(n1177) );
  INVX12 U1142 ( .A(n1178), .Y(is_inside) );
  INVX12 U1143 ( .A(n1179), .Y(valid) );
  INVX3 U1144 ( .A(reset), .Y(n1429) );
  NAND2X1 U1145 ( .A(n273), .B(n274), .Y(n1182) );
  OR2X1 U1146 ( .A(n1355), .B(n1353), .Y(n1183) );
  NOR2X1 U1147 ( .A(n1503), .B(counter_B[1]), .Y(n292) );
  NAND2X1 U1148 ( .A(n305), .B(n306), .Y(n1184) );
  NAND2X1 U1149 ( .A(nx_state[0]), .B(nx_state[1]), .Y(n175) );
  NAND2X1 U1150 ( .A(n348), .B(n275), .Y(n349) );
  OAI222XL U1151 ( .A0(n125), .A1(n320), .B0(n1503), .B1(n334), .C0(n276), 
        .C1(n332), .Y(n331) );
  BUFX4 U1152 ( .A(n210), .Y(n1387) );
  BUFX4 U1153 ( .A(n182), .Y(n1401) );
  NAND2BX1 U1154 ( .AN(n412), .B(n1241), .Y(n1185) );
  NAND2BX1 U1155 ( .AN(n412), .B(counter_det_A[0]), .Y(n1186) );
  NAND2BX1 U1156 ( .AN(n411), .B(n1241), .Y(n1187) );
  CLKINVX1 U1157 ( .A(counter_det_A[2]), .Y(n1240) );
  NAND3X1 U1158 ( .A(n411), .B(n1241), .C(n412), .Y(n1188) );
  NAND2X1 U1159 ( .A(n1455), .B(n136), .Y(n167) );
  CLKINVX1 U1160 ( .A(n1189), .Y(n1394) );
  CLKINVX1 U1161 ( .A(n1189), .Y(n1395) );
  CLKINVX1 U1162 ( .A(n1189), .Y(n1396) );
  NAND2X1 U1163 ( .A(N583), .B(n1454), .Y(n276) );
  INVX3 U1164 ( .A(n1182), .Y(n1405) );
  CLKINVX1 U1165 ( .A(n1182), .Y(n1406) );
  CLKINVX1 U1166 ( .A(n1190), .Y(n1372) );
  CLKINVX1 U1167 ( .A(n1190), .Y(n1373) );
  CLKINVX1 U1168 ( .A(n1190), .Y(n1374) );
  CLKBUFX3 U1169 ( .A(n250), .Y(n1366) );
  NAND2X1 U1170 ( .A(n346), .B(n1500), .Y(n250) );
  INVX3 U1171 ( .A(n1183), .Y(n1370) );
  INVX3 U1172 ( .A(n1183), .Y(n1371) );
  AND2X2 U1173 ( .A(n291), .B(n1500), .Y(n1189) );
  CLKINVX1 U1174 ( .A(n1191), .Y(n1367) );
  CLKINVX1 U1175 ( .A(n1192), .Y(n1397) );
  CLKINVX1 U1176 ( .A(n1191), .Y(n1368) );
  CLKINVX1 U1177 ( .A(n1192), .Y(n1398) );
  CLKINVX1 U1178 ( .A(n1191), .Y(n1369) );
  CLKINVX1 U1179 ( .A(n1192), .Y(n1399) );
  CLKBUFX3 U1180 ( .A(n1408), .Y(n1413) );
  CLKBUFX3 U1181 ( .A(n1407), .Y(n1414) );
  CLKBUFX3 U1182 ( .A(n1410), .Y(n1415) );
  CLKBUFX3 U1183 ( .A(n1409), .Y(n1416) );
  CLKBUFX3 U1184 ( .A(n1407), .Y(n1417) );
  CLKBUFX3 U1185 ( .A(n1407), .Y(n1418) );
  CLKBUFX3 U1186 ( .A(n1408), .Y(n1419) );
  CLKBUFX3 U1187 ( .A(n1408), .Y(n1420) );
  CLKBUFX3 U1188 ( .A(n1409), .Y(n1421) );
  CLKBUFX3 U1189 ( .A(n1408), .Y(n1422) );
  CLKBUFX3 U1190 ( .A(n1409), .Y(n1423) );
  CLKBUFX3 U1191 ( .A(n1407), .Y(n1424) );
  NOR2X1 U1192 ( .A(n1365), .B(n1354), .Y(n333) );
  AND2X2 U1193 ( .A(n305), .B(n1504), .Y(n212) );
  AND2X2 U1194 ( .A(n305), .B(n1504), .Y(n1389) );
  AND2X2 U1195 ( .A(n273), .B(n1502), .Y(n1403) );
  AND2X2 U1196 ( .A(n273), .B(n1502), .Y(n1404) );
  AND2X2 U1197 ( .A(n305), .B(n1504), .Y(n1390) );
  AND2X2 U1198 ( .A(n273), .B(n1502), .Y(n184) );
  AND2X2 U1199 ( .A(n333), .B(n332), .Y(n1190) );
  INVX3 U1200 ( .A(n1184), .Y(n1391) );
  CLKINVX1 U1201 ( .A(n1184), .Y(n1392) );
  CLKBUFX3 U1202 ( .A(n1375), .Y(n1376) );
  NAND2BX1 U1203 ( .AN(n332), .B(n333), .Y(n1375) );
  NOR2X1 U1204 ( .A(n1365), .B(n1393), .Y(n291) );
  NOR2X1 U1205 ( .A(n1365), .B(n1353), .Y(n346) );
  BUFX4 U1206 ( .A(n198), .Y(n1400) );
  NOR2X1 U1207 ( .A(n1355), .B(n1393), .Y(n198) );
  AND2X2 U1208 ( .A(n346), .B(n292), .Y(n1191) );
  AND2X2 U1209 ( .A(n291), .B(n292), .Y(n1192) );
  CLKINVX1 U1210 ( .A(n1193), .Y(n1380) );
  CLKINVX1 U1211 ( .A(n1193), .Y(n1381) );
  CLKINVX1 U1212 ( .A(n1193), .Y(n1382) );
  CLKINVX1 U1213 ( .A(n1365), .Y(n1454) );
  CLKBUFX3 U1214 ( .A(n1453), .Y(n1355) );
  CLKINVX1 U1215 ( .A(n275), .Y(n1453) );
  CLKINVX1 U1216 ( .A(n335), .Y(n1451) );
  NAND2X1 U1217 ( .A(n1355), .B(n1365), .Y(n354) );
  NAND2X1 U1218 ( .A(n1355), .B(n175), .Y(n178) );
  CLKINVX1 U1219 ( .A(n274), .Y(n1502) );
  CLKINVX1 U1220 ( .A(n175), .Y(n1455) );
  CLKBUFX3 U1221 ( .A(n349), .Y(n1425) );
  CLKBUFX3 U1222 ( .A(n349), .Y(n1426) );
  CLKINVX1 U1223 ( .A(n292), .Y(n1500) );
  CLKBUFX3 U1224 ( .A(n1410), .Y(n1411) );
  CLKBUFX3 U1225 ( .A(n1410), .Y(n1412) );
  CLKBUFX3 U1226 ( .A(n1410), .Y(n1407) );
  CLKBUFX3 U1227 ( .A(n1409), .Y(n1408) );
  NOR2X2 U1228 ( .A(n276), .B(counter_A[2]), .Y(n278) );
  CLKBUFX3 U1229 ( .A(n1287), .Y(n1298) );
  NOR2BX1 U1230 ( .AN(n1245), .B(counter_A[1]), .Y(n1287) );
  NAND3BX1 U1231 ( .AN(n276), .B(counter_A[2]), .C(n1501), .Y(n334) );
  BUFX4 U1232 ( .A(n1428), .Y(n1354) );
  CLKINVX1 U1233 ( .A(n331), .Y(n1428) );
  AND2X2 U1234 ( .A(n1387), .B(n1454), .Y(n305) );
  AND2X2 U1235 ( .A(n1401), .B(n1454), .Y(n273) );
  CLKBUFX3 U1236 ( .A(n1288), .Y(n1297) );
  NOR2BX1 U1237 ( .AN(n1244), .B(counter_A[1]), .Y(n1288) );
  CLKBUFX3 U1238 ( .A(n1289), .Y(n1296) );
  AND2X2 U1239 ( .A(n1244), .B(counter_A[1]), .Y(n1289) );
  CLKBUFX3 U1240 ( .A(n1285), .Y(n1294) );
  AND2X2 U1241 ( .A(n1245), .B(counter_A[1]), .Y(n1285) );
  CLKINVX1 U1242 ( .A(counter_B[2]), .Y(n1346) );
  NOR2X1 U1243 ( .A(n1365), .B(n227), .Y(n319) );
  CLKINVX1 U1244 ( .A(counter_A[2]), .Y(n1292) );
  BUFX4 U1245 ( .A(n199), .Y(n1393) );
  AOI22X1 U1246 ( .A0(n1501), .A1(n278), .B0(n279), .B1(n1457), .Y(n199) );
  CLKINVX1 U1247 ( .A(n294), .Y(n1457) );
  BUFX4 U1248 ( .A(n226), .Y(n1386) );
  NOR2X1 U1249 ( .A(n1355), .B(n1378), .Y(n226) );
  CLKBUFX3 U1250 ( .A(n209), .Y(n1388) );
  NAND2X1 U1251 ( .A(n275), .B(n1387), .Y(n209) );
  CLKBUFX3 U1252 ( .A(n181), .Y(n1402) );
  NAND2X1 U1253 ( .A(n275), .B(n1401), .Y(n181) );
  CLKBUFX3 U1254 ( .A(n240), .Y(n1377) );
  NAND2X1 U1255 ( .A(n275), .B(n331), .Y(n240) );
  AND2X2 U1256 ( .A(n319), .B(counter_B[2]), .Y(n1193) );
  CLKBUFX3 U1257 ( .A(n1427), .Y(n1353) );
  CLKBUFX3 U1258 ( .A(n1341), .Y(n1347) );
  NOR2X1 U1259 ( .A(n1503), .B(n1346), .Y(n1341) );
  CLKBUFX3 U1260 ( .A(n1286), .Y(n1293) );
  NOR2X1 U1261 ( .A(counter_B[0]), .B(n1292), .Y(n1286) );
  INVX3 U1262 ( .A(n1384), .Y(n1385) );
  CLKINVX1 U1263 ( .A(n1383), .Y(n1384) );
  NAND2BX1 U1264 ( .AN(counter_B[2]), .B(n319), .Y(n1383) );
  NAND2BX1 U1265 ( .AN(n167), .B(N337), .Y(n165) );
  NAND2X2 U1266 ( .A(n179), .B(n177), .Y(n411) );
  NAND2BX1 U1267 ( .AN(n180), .B(n177), .Y(n412) );
  NOR2X1 U1268 ( .A(n169), .B(n171), .Y(n180) );
  CLKBUFX3 U1269 ( .A(n1236), .Y(n1242) );
  NOR2X1 U1270 ( .A(n1241), .B(n1240), .Y(n1236) );
  INVX3 U1271 ( .A(n1185), .Y(n1362) );
  INVX3 U1272 ( .A(n1186), .Y(n1358) );
  INVX3 U1273 ( .A(n1186), .Y(n1359) );
  INVX3 U1274 ( .A(n1187), .Y(n1363) );
  INVX3 U1275 ( .A(n1188), .Y(n1360) );
  CLKINVX1 U1276 ( .A(n1188), .Y(n1361) );
  CLKINVX1 U1277 ( .A(N622), .Y(n1480) );
  CLKINVX1 U1278 ( .A(N621), .Y(n1481) );
  CLKINVX1 U1279 ( .A(N620), .Y(n1482) );
  CLKINVX1 U1280 ( .A(N619), .Y(n1483) );
  CLKINVX1 U1281 ( .A(N618), .Y(n1484) );
  CLKINVX1 U1282 ( .A(N617), .Y(n1485) );
  CLKINVX1 U1283 ( .A(N616), .Y(n1486) );
  CLKINVX1 U1284 ( .A(N615), .Y(n1487) );
  CLKINVX1 U1285 ( .A(N614), .Y(n1488) );
  CLKINVX1 U1286 ( .A(N613), .Y(n1489) );
  CLKINVX1 U1287 ( .A(N750), .Y(n1460) );
  CLKINVX1 U1288 ( .A(N749), .Y(n1461) );
  CLKINVX1 U1289 ( .A(N748), .Y(n1462) );
  CLKINVX1 U1290 ( .A(N747), .Y(n1463) );
  CLKINVX1 U1291 ( .A(N746), .Y(n1464) );
  CLKINVX1 U1292 ( .A(N745), .Y(n1465) );
  CLKINVX1 U1293 ( .A(N744), .Y(n1466) );
  CLKINVX1 U1294 ( .A(N743), .Y(n1467) );
  CLKINVX1 U1295 ( .A(N742), .Y(n1468) );
  CLKINVX1 U1296 ( .A(N741), .Y(n1469) );
  CLKINVX1 U1297 ( .A(N600), .Y(n1490) );
  CLKINVX1 U1298 ( .A(N599), .Y(n1491) );
  CLKINVX1 U1299 ( .A(N598), .Y(n1492) );
  CLKINVX1 U1300 ( .A(N597), .Y(n1493) );
  CLKINVX1 U1301 ( .A(N596), .Y(n1494) );
  CLKINVX1 U1302 ( .A(N595), .Y(n1495) );
  CLKINVX1 U1303 ( .A(N594), .Y(n1496) );
  CLKINVX1 U1304 ( .A(N593), .Y(n1497) );
  CLKINVX1 U1305 ( .A(N592), .Y(n1498) );
  CLKINVX1 U1306 ( .A(N591), .Y(n1499) );
  CLKINVX1 U1307 ( .A(N644), .Y(n1470) );
  CLKINVX1 U1308 ( .A(N643), .Y(n1471) );
  CLKINVX1 U1309 ( .A(N642), .Y(n1472) );
  CLKINVX1 U1310 ( .A(N641), .Y(n1473) );
  CLKINVX1 U1311 ( .A(N640), .Y(n1474) );
  CLKINVX1 U1312 ( .A(N639), .Y(n1475) );
  CLKINVX1 U1313 ( .A(N638), .Y(n1476) );
  CLKINVX1 U1314 ( .A(N637), .Y(n1477) );
  CLKINVX1 U1315 ( .A(N636), .Y(n1478) );
  CLKINVX1 U1316 ( .A(N635), .Y(n1479) );
  NOR2X1 U1317 ( .A(n1355), .B(n348), .Y(n335) );
  CLKINVX1 U1318 ( .A(n308), .Y(n1456) );
  CLKBUFX3 U1319 ( .A(n293), .Y(n1365) );
  NAND2BX1 U1320 ( .AN(nx_state[0]), .B(nx_state[1]), .Y(n293) );
  CLKINVX1 U1321 ( .A(counter_A[1]), .Y(n1501) );
  NAND2BX1 U1322 ( .AN(n280), .B(counter_B[2]), .Y(n332) );
  OAI22XL U1323 ( .A0(counter_B[1]), .A1(n354), .B0(n1501), .B1(n1365), .Y(
        n571) );
  NOR2X1 U1324 ( .A(n280), .B(counter_B[2]), .Y(n274) );
  CLKINVX1 U1325 ( .A(n306), .Y(n1504) );
  CLKINVX1 U1326 ( .A(n357), .Y(n1450) );
  CLKBUFX3 U1327 ( .A(n1429), .Y(n1410) );
  CLKBUFX3 U1328 ( .A(n1429), .Y(n1409) );
  XNOR2X2 U1329 ( .A(n292), .B(n128), .Y(counter_A[2]) );
  OAI221XL U1330 ( .A0(n1373), .A1(n1480), .B0(n1376), .B1(n1460), .C0(n330), 
        .Y(n535) );
  AOI2BB2X1 U1331 ( .B0(\y[4][0] ), .B1(n1354), .A0N(n1377), .A1N(n1449), .Y(
        n330) );
  OAI221XL U1332 ( .A0(n1372), .A1(n1481), .B0(n1375), .B1(n1461), .C0(n329), 
        .Y(n534) );
  AOI2BB2X1 U1333 ( .B0(\y[4][1] ), .B1(n1354), .A0N(n1377), .A1N(n1448), .Y(
        n329) );
  OAI221XL U1334 ( .A0(n1374), .A1(n1482), .B0(n1376), .B1(n1462), .C0(n328), 
        .Y(n533) );
  AOI2BB2X1 U1335 ( .B0(\y[4][2] ), .B1(n1354), .A0N(n1377), .A1N(n1447), .Y(
        n328) );
  OAI221XL U1336 ( .A0(n1374), .A1(n1483), .B0(n1375), .B1(n1463), .C0(n327), 
        .Y(n532) );
  AOI2BB2X1 U1337 ( .B0(\y[4][3] ), .B1(n1354), .A0N(n1377), .A1N(n1446), .Y(
        n327) );
  OAI221XL U1338 ( .A0(n1373), .A1(n1484), .B0(n1376), .B1(n1464), .C0(n326), 
        .Y(n531) );
  AOI2BB2X1 U1339 ( .B0(\y[4][4] ), .B1(n1354), .A0N(n1377), .A1N(n1445), .Y(
        n326) );
  OAI221XL U1340 ( .A0(n1372), .A1(n1485), .B0(n1375), .B1(n1465), .C0(n325), 
        .Y(n530) );
  AOI2BB2X1 U1341 ( .B0(\y[4][5] ), .B1(n1354), .A0N(n1377), .A1N(n1444), .Y(
        n325) );
  OAI221XL U1342 ( .A0(n1372), .A1(n1486), .B0(n1376), .B1(n1466), .C0(n324), 
        .Y(n529) );
  AOI2BB2X1 U1343 ( .B0(\y[4][6] ), .B1(n1354), .A0N(n1377), .A1N(n1443), .Y(
        n324) );
  OAI221XL U1344 ( .A0(n1374), .A1(n1487), .B0(n1375), .B1(n1467), .C0(n323), 
        .Y(n528) );
  AOI2BB2X1 U1345 ( .B0(\y[4][7] ), .B1(n1354), .A0N(n1377), .A1N(n1442), .Y(
        n323) );
  OAI221XL U1346 ( .A0(n1373), .A1(n1488), .B0(n1376), .B1(n1468), .C0(n322), 
        .Y(n527) );
  AOI2BB2X1 U1347 ( .B0(\y[4][8] ), .B1(n1354), .A0N(n1377), .A1N(n1441), .Y(
        n322) );
  OAI221XL U1348 ( .A0(n1373), .A1(n1489), .B0(n1375), .B1(n1469), .C0(n321), 
        .Y(n526) );
  AOI2BB2X1 U1349 ( .B0(\y[4][9] ), .B1(n1354), .A0N(n1377), .A1N(n1440), .Y(
        n321) );
  OAI221XL U1350 ( .A0(n1490), .A1(n1372), .B0(n1470), .B1(n1376), .C0(n249), 
        .Y(n475) );
  AOI2BB2X1 U1351 ( .B0(\x[4][0] ), .B1(n1354), .A0N(n1439), .A1N(n1377), .Y(
        n249) );
  OAI221XL U1352 ( .A0(n1491), .A1(n1374), .B0(n1471), .B1(n1375), .C0(n248), 
        .Y(n474) );
  AOI2BB2X1 U1353 ( .B0(\x[4][1] ), .B1(n1354), .A0N(n1438), .A1N(n1377), .Y(
        n248) );
  OAI221XL U1354 ( .A0(n1492), .A1(n1374), .B0(n1472), .B1(n1376), .C0(n247), 
        .Y(n473) );
  AOI2BB2X1 U1355 ( .B0(\x[4][2] ), .B1(n1354), .A0N(n1437), .A1N(n1377), .Y(
        n247) );
  OAI221XL U1356 ( .A0(n1493), .A1(n1373), .B0(n1473), .B1(n1376), .C0(n246), 
        .Y(n472) );
  AOI2BB2X1 U1357 ( .B0(\x[4][3] ), .B1(n1354), .A0N(n1436), .A1N(n1377), .Y(
        n246) );
  OAI221XL U1358 ( .A0(n1494), .A1(n1372), .B0(n1474), .B1(n1376), .C0(n245), 
        .Y(n471) );
  AOI2BB2X1 U1359 ( .B0(\x[4][4] ), .B1(n1354), .A0N(n1435), .A1N(n1377), .Y(
        n245) );
  OAI221XL U1360 ( .A0(n1495), .A1(n1372), .B0(n1475), .B1(n1376), .C0(n244), 
        .Y(n470) );
  AOI2BB2X1 U1361 ( .B0(\x[4][5] ), .B1(n1354), .A0N(n1434), .A1N(n1377), .Y(
        n244) );
  OAI221XL U1362 ( .A0(n1496), .A1(n1374), .B0(n1476), .B1(n1376), .C0(n243), 
        .Y(n469) );
  AOI2BB2X1 U1363 ( .B0(\x[4][6] ), .B1(n1354), .A0N(n1433), .A1N(n1377), .Y(
        n243) );
  OAI221XL U1364 ( .A0(n1497), .A1(n1373), .B0(n1477), .B1(n1376), .C0(n242), 
        .Y(n468) );
  AOI2BB2X1 U1365 ( .B0(\x[4][7] ), .B1(n1354), .A0N(n1432), .A1N(n1377), .Y(
        n242) );
  OAI221XL U1366 ( .A0(n1498), .A1(n1373), .B0(n1478), .B1(n1376), .C0(n241), 
        .Y(n467) );
  AOI2BB2X1 U1367 ( .B0(\x[4][8] ), .B1(n1354), .A0N(n1431), .A1N(n1377), .Y(
        n241) );
  OAI221XL U1368 ( .A0(n1499), .A1(n1372), .B0(n1479), .B1(n1376), .C0(n239), 
        .Y(n466) );
  AOI2BB2X1 U1369 ( .B0(\x[4][9] ), .B1(n1354), .A0N(n1430), .A1N(n1377), .Y(
        n239) );
  OAI221XL U1370 ( .A0(n1388), .A1(n1449), .B0(n1387), .B1(n115), .C0(n304), 
        .Y(n515) );
  AOI22X1 U1371 ( .A0(N622), .A1(n1389), .B0(N750), .B1(n1391), .Y(n304) );
  OAI221XL U1372 ( .A0(n1388), .A1(n1448), .B0(n1387), .B1(n114), .C0(n303), 
        .Y(n514) );
  AOI22X1 U1373 ( .A0(N621), .A1(n212), .B0(N749), .B1(n1391), .Y(n303) );
  OAI221XL U1374 ( .A0(n1388), .A1(n1447), .B0(n1387), .B1(n113), .C0(n302), 
        .Y(n513) );
  AOI22X1 U1375 ( .A0(N620), .A1(n212), .B0(N748), .B1(n1392), .Y(n302) );
  OAI221XL U1376 ( .A0(n1388), .A1(n1446), .B0(n1387), .B1(n112), .C0(n301), 
        .Y(n512) );
  AOI22X1 U1377 ( .A0(N619), .A1(n1389), .B0(N747), .B1(n1392), .Y(n301) );
  OAI221XL U1378 ( .A0(n1388), .A1(n1445), .B0(n1387), .B1(n111), .C0(n300), 
        .Y(n511) );
  AOI22X1 U1379 ( .A0(N618), .A1(n1390), .B0(N746), .B1(n1391), .Y(n300) );
  OAI221XL U1380 ( .A0(n1388), .A1(n1444), .B0(n1387), .B1(n110), .C0(n299), 
        .Y(n510) );
  AOI22X1 U1381 ( .A0(N617), .A1(n212), .B0(N745), .B1(n1391), .Y(n299) );
  OAI221XL U1382 ( .A0(n1388), .A1(n1443), .B0(n1387), .B1(n109), .C0(n298), 
        .Y(n509) );
  AOI22X1 U1383 ( .A0(N616), .A1(n1389), .B0(N744), .B1(n1391), .Y(n298) );
  OAI221XL U1384 ( .A0(n1388), .A1(n1442), .B0(n1387), .B1(n108), .C0(n297), 
        .Y(n508) );
  AOI22X1 U1385 ( .A0(N615), .A1(n1390), .B0(N743), .B1(n1392), .Y(n297) );
  OAI221XL U1386 ( .A0(n1388), .A1(n1441), .B0(n1387), .B1(n107), .C0(n296), 
        .Y(n507) );
  AOI22X1 U1387 ( .A0(N614), .A1(n212), .B0(N742), .B1(n1391), .Y(n296) );
  OAI221XL U1388 ( .A0(n1388), .A1(n1440), .B0(n1387), .B1(n106), .C0(n295), 
        .Y(n506) );
  AOI22X1 U1389 ( .A0(N613), .A1(n1389), .B0(N741), .B1(n1391), .Y(n295) );
  OAI221XL U1390 ( .A0(n1439), .A1(n1388), .B0(n1387), .B1(n75), .C0(n222), 
        .Y(n455) );
  AOI22X1 U1391 ( .A0(n1390), .A1(N600), .B0(n1391), .B1(N644), .Y(n222) );
  OAI221XL U1392 ( .A0(n1438), .A1(n1388), .B0(n1387), .B1(n74), .C0(n221), 
        .Y(n454) );
  AOI22X1 U1393 ( .A0(n212), .A1(N599), .B0(n1392), .B1(N643), .Y(n221) );
  OAI221XL U1394 ( .A0(n1437), .A1(n1388), .B0(n1387), .B1(n73), .C0(n220), 
        .Y(n453) );
  AOI22X1 U1395 ( .A0(n1389), .A1(N598), .B0(n1392), .B1(N642), .Y(n220) );
  OAI221XL U1396 ( .A0(n1436), .A1(n1388), .B0(n1387), .B1(n72), .C0(n219), 
        .Y(n452) );
  AOI22X1 U1397 ( .A0(n1390), .A1(N597), .B0(n1391), .B1(N641), .Y(n219) );
  OAI221XL U1398 ( .A0(n1435), .A1(n1388), .B0(n1387), .B1(n71), .C0(n218), 
        .Y(n451) );
  AOI22X1 U1399 ( .A0(n212), .A1(N596), .B0(n1391), .B1(N640), .Y(n218) );
  OAI221XL U1400 ( .A0(n1434), .A1(n1388), .B0(n1387), .B1(n70), .C0(n217), 
        .Y(n450) );
  AOI22X1 U1401 ( .A0(n1389), .A1(N595), .B0(n1391), .B1(N639), .Y(n217) );
  OAI221XL U1402 ( .A0(n1433), .A1(n1388), .B0(n1387), .B1(n69), .C0(n216), 
        .Y(n449) );
  AOI22X1 U1403 ( .A0(n1390), .A1(N594), .B0(n1392), .B1(N638), .Y(n216) );
  OAI221XL U1404 ( .A0(n1432), .A1(n1388), .B0(n1387), .B1(n68), .C0(n215), 
        .Y(n448) );
  AOI22X1 U1405 ( .A0(n212), .A1(N593), .B0(n1391), .B1(N637), .Y(n215) );
  OAI221XL U1406 ( .A0(n1431), .A1(n1388), .B0(n1387), .B1(n67), .C0(n214), 
        .Y(n447) );
  AOI22X1 U1407 ( .A0(n1389), .A1(N592), .B0(n1391), .B1(N636), .Y(n214) );
  OAI221XL U1408 ( .A0(n1430), .A1(n1388), .B0(n1387), .B1(n66), .C0(n211), 
        .Y(n446) );
  AOI22X1 U1409 ( .A0(n1390), .A1(N591), .B0(n1391), .B1(N635), .Y(n211) );
  OAI221XL U1410 ( .A0(n1402), .A1(n1449), .B0(n1401), .B1(n105), .C0(n272), 
        .Y(n495) );
  AOI22X1 U1411 ( .A0(N622), .A1(n1403), .B0(N750), .B1(n1405), .Y(n272) );
  OAI221XL U1412 ( .A0(n1402), .A1(n1448), .B0(n1401), .B1(n102), .C0(n271), 
        .Y(n494) );
  AOI22X1 U1413 ( .A0(N621), .A1(n1404), .B0(N749), .B1(n1405), .Y(n271) );
  OAI221XL U1414 ( .A0(n1402), .A1(n1447), .B0(n1401), .B1(n99), .C0(n270), 
        .Y(n493) );
  AOI22X1 U1415 ( .A0(N620), .A1(n184), .B0(N748), .B1(n1406), .Y(n270) );
  OAI221XL U1416 ( .A0(n1402), .A1(n1446), .B0(n1401), .B1(n96), .C0(n269), 
        .Y(n492) );
  AOI22X1 U1417 ( .A0(N619), .A1(n1403), .B0(N747), .B1(n1406), .Y(n269) );
  OAI221XL U1418 ( .A0(n1402), .A1(n1445), .B0(n1401), .B1(n93), .C0(n268), 
        .Y(n491) );
  AOI22X1 U1419 ( .A0(N618), .A1(n1404), .B0(N746), .B1(n1405), .Y(n268) );
  OAI221XL U1420 ( .A0(n1402), .A1(n1444), .B0(n1401), .B1(n90), .C0(n267), 
        .Y(n490) );
  AOI22X1 U1421 ( .A0(N617), .A1(n184), .B0(N745), .B1(n1405), .Y(n267) );
  OAI221XL U1422 ( .A0(n1402), .A1(n1443), .B0(n1401), .B1(n87), .C0(n266), 
        .Y(n489) );
  AOI22X1 U1423 ( .A0(N616), .A1(n1403), .B0(N744), .B1(n1405), .Y(n266) );
  OAI221XL U1424 ( .A0(n1402), .A1(n1442), .B0(n1401), .B1(n84), .C0(n265), 
        .Y(n488) );
  AOI22X1 U1425 ( .A0(N615), .A1(n1404), .B0(N743), .B1(n1406), .Y(n265) );
  OAI221XL U1426 ( .A0(n1402), .A1(n1441), .B0(n1401), .B1(n81), .C0(n264), 
        .Y(n487) );
  AOI22X1 U1427 ( .A0(N614), .A1(n184), .B0(N742), .B1(n1405), .Y(n264) );
  OAI221XL U1428 ( .A0(n1402), .A1(n1440), .B0(n1401), .B1(n78), .C0(n263), 
        .Y(n486) );
  AOI22X1 U1429 ( .A0(N613), .A1(n1403), .B0(N741), .B1(n1405), .Y(n263) );
  OAI221XL U1430 ( .A0(n1402), .A1(n1439), .B0(n1401), .B1(n65), .C0(n194), 
        .Y(n435) );
  AOI22X1 U1431 ( .A0(N600), .A1(n1404), .B0(N644), .B1(n1405), .Y(n194) );
  OAI221XL U1432 ( .A0(n1402), .A1(n1438), .B0(n1401), .B1(n62), .C0(n193), 
        .Y(n434) );
  AOI22X1 U1433 ( .A0(N599), .A1(n184), .B0(N643), .B1(n1406), .Y(n193) );
  OAI221XL U1434 ( .A0(n1402), .A1(n1437), .B0(n1401), .B1(n59), .C0(n192), 
        .Y(n433) );
  AOI22X1 U1435 ( .A0(N598), .A1(n1403), .B0(N642), .B1(n1406), .Y(n192) );
  OAI221XL U1436 ( .A0(n1402), .A1(n1436), .B0(n1401), .B1(n56), .C0(n191), 
        .Y(n432) );
  AOI22X1 U1437 ( .A0(N597), .A1(n1404), .B0(N641), .B1(n1405), .Y(n191) );
  OAI221XL U1438 ( .A0(n1402), .A1(n1435), .B0(n1401), .B1(n53), .C0(n190), 
        .Y(n431) );
  AOI22X1 U1439 ( .A0(N596), .A1(n184), .B0(N640), .B1(n1405), .Y(n190) );
  OAI221XL U1440 ( .A0(n1402), .A1(n1434), .B0(n1401), .B1(n50), .C0(n189), 
        .Y(n430) );
  AOI22X1 U1441 ( .A0(N595), .A1(n1403), .B0(N639), .B1(n1405), .Y(n189) );
  OAI221XL U1442 ( .A0(n1402), .A1(n1433), .B0(n1401), .B1(n47), .C0(n188), 
        .Y(n429) );
  AOI22X1 U1443 ( .A0(N594), .A1(n1404), .B0(N638), .B1(n1406), .Y(n188) );
  OAI221XL U1444 ( .A0(n1402), .A1(n1432), .B0(n1401), .B1(n44), .C0(n187), 
        .Y(n428) );
  AOI22X1 U1445 ( .A0(N593), .A1(n184), .B0(N637), .B1(n1405), .Y(n187) );
  OAI221XL U1446 ( .A0(n1402), .A1(n1431), .B0(n1401), .B1(n41), .C0(n186), 
        .Y(n427) );
  AOI22X1 U1447 ( .A0(N592), .A1(n1403), .B0(N636), .B1(n1405), .Y(n186) );
  OAI221XL U1448 ( .A0(n1402), .A1(n1430), .B0(n1401), .B1(n38), .C0(n183), 
        .Y(n426) );
  AOI22X1 U1449 ( .A0(N591), .A1(n1404), .B0(N635), .B1(n1405), .Y(n183) );
  OAI21XL U1450 ( .A0(n276), .A1(n1504), .B0(n307), .Y(n210) );
  AOI32X1 U1451 ( .A0(counter_A[1]), .A1(counter_B[0]), .A2(n278), .B0(n279), 
        .B1(n308), .Y(n307) );
  OAI21XL U1452 ( .A0(n276), .A1(n1502), .B0(n277), .Y(n182) );
  AOI32X1 U1453 ( .A0(counter_B[0]), .A1(n1501), .A2(n278), .B0(n279), .B1(
        n124), .Y(n277) );
  AOI2BB2X2 U1454 ( .B0(counter_A[1]), .B1(n278), .A0N(counter_IN[0]), .A1N(
        n320), .Y(n1379) );
  AOI2BB2X2 U1455 ( .B0(counter_A[1]), .B1(n278), .A0N(counter_IN[0]), .A1N(
        n320), .Y(n1378) );
  AOI2BB2X2 U1456 ( .B0(counter_A[1]), .B1(n278), .A0N(counter_IN[0]), .A1N(
        n320), .Y(n227) );
  OAI221XL U1457 ( .A0(n1366), .A1(n1480), .B0(n1368), .B1(n1460), .C0(n345), 
        .Y(n545) );
  AOI22X1 U1458 ( .A0(Y[0]), .A1(n1370), .B0(\y[5][0] ), .B1(n1353), .Y(n345)
         );
  OAI221XL U1459 ( .A0(n1366), .A1(n1481), .B0(n1367), .B1(n1461), .C0(n344), 
        .Y(n544) );
  AOI22X1 U1460 ( .A0(Y[1]), .A1(n1371), .B0(\y[5][1] ), .B1(n1353), .Y(n344)
         );
  OAI221XL U1461 ( .A0(n1366), .A1(n1482), .B0(n1369), .B1(n1462), .C0(n343), 
        .Y(n543) );
  AOI22X1 U1462 ( .A0(Y[2]), .A1(n1370), .B0(\y[5][2] ), .B1(n1353), .Y(n343)
         );
  OAI221XL U1463 ( .A0(n1366), .A1(n1483), .B0(n1369), .B1(n1463), .C0(n342), 
        .Y(n542) );
  AOI22X1 U1464 ( .A0(Y[3]), .A1(n1371), .B0(\y[5][3] ), .B1(n1353), .Y(n342)
         );
  OAI221XL U1465 ( .A0(n1366), .A1(n1484), .B0(n1368), .B1(n1464), .C0(n341), 
        .Y(n541) );
  AOI22X1 U1466 ( .A0(Y[4]), .A1(n1370), .B0(\y[5][4] ), .B1(n1353), .Y(n341)
         );
  OAI221XL U1467 ( .A0(n1366), .A1(n1485), .B0(n1367), .B1(n1465), .C0(n340), 
        .Y(n540) );
  AOI22X1 U1468 ( .A0(Y[5]), .A1(n1371), .B0(\y[5][5] ), .B1(n1353), .Y(n340)
         );
  OAI221XL U1469 ( .A0(n1366), .A1(n1486), .B0(n1367), .B1(n1466), .C0(n339), 
        .Y(n539) );
  AOI22X1 U1470 ( .A0(Y[6]), .A1(n1370), .B0(\y[5][6] ), .B1(n1353), .Y(n339)
         );
  OAI221XL U1471 ( .A0(n1366), .A1(n1487), .B0(n1369), .B1(n1467), .C0(n338), 
        .Y(n538) );
  AOI22X1 U1472 ( .A0(Y[7]), .A1(n1371), .B0(\y[5][7] ), .B1(n1353), .Y(n338)
         );
  OAI221XL U1473 ( .A0(n1366), .A1(n1488), .B0(n1368), .B1(n1468), .C0(n337), 
        .Y(n537) );
  AOI22X1 U1474 ( .A0(Y[8]), .A1(n1370), .B0(\y[5][8] ), .B1(n1353), .Y(n337)
         );
  OAI221XL U1475 ( .A0(n1366), .A1(n1489), .B0(n1368), .B1(n1469), .C0(n336), 
        .Y(n536) );
  AOI22X1 U1476 ( .A0(Y[9]), .A1(n1371), .B0(\y[5][9] ), .B1(n1353), .Y(n336)
         );
  OAI221XL U1477 ( .A0(n1395), .A1(n1480), .B0(n1398), .B1(n1460), .C0(n290), 
        .Y(n505) );
  AOI22X1 U1478 ( .A0(Y[0]), .A1(n1400), .B0(\y[1][0] ), .B1(n1393), .Y(n290)
         );
  OAI221XL U1479 ( .A0(n1394), .A1(n1481), .B0(n1397), .B1(n1461), .C0(n289), 
        .Y(n504) );
  AOI22X1 U1480 ( .A0(Y[1]), .A1(n1400), .B0(\y[1][1] ), .B1(n1393), .Y(n289)
         );
  OAI221XL U1481 ( .A0(n1396), .A1(n1482), .B0(n1399), .B1(n1462), .C0(n288), 
        .Y(n503) );
  AOI22X1 U1482 ( .A0(Y[2]), .A1(n1400), .B0(\y[1][2] ), .B1(n1393), .Y(n288)
         );
  OAI221XL U1483 ( .A0(n1396), .A1(n1483), .B0(n1399), .B1(n1463), .C0(n287), 
        .Y(n502) );
  AOI22X1 U1484 ( .A0(Y[3]), .A1(n1400), .B0(\y[1][3] ), .B1(n1393), .Y(n287)
         );
  OAI221XL U1485 ( .A0(n1395), .A1(n1484), .B0(n1398), .B1(n1464), .C0(n286), 
        .Y(n501) );
  AOI22X1 U1486 ( .A0(Y[4]), .A1(n1400), .B0(\y[1][4] ), .B1(n1393), .Y(n286)
         );
  OAI221XL U1487 ( .A0(n1394), .A1(n1485), .B0(n1397), .B1(n1465), .C0(n285), 
        .Y(n500) );
  AOI22X1 U1488 ( .A0(Y[5]), .A1(n1400), .B0(\y[1][5] ), .B1(n1393), .Y(n285)
         );
  OAI221XL U1489 ( .A0(n1394), .A1(n1486), .B0(n1397), .B1(n1466), .C0(n284), 
        .Y(n499) );
  AOI22X1 U1490 ( .A0(Y[6]), .A1(n1400), .B0(\y[1][6] ), .B1(n1393), .Y(n284)
         );
  OAI221XL U1491 ( .A0(n1396), .A1(n1487), .B0(n1399), .B1(n1467), .C0(n283), 
        .Y(n498) );
  AOI22X1 U1492 ( .A0(Y[7]), .A1(n1400), .B0(\y[1][7] ), .B1(n1393), .Y(n283)
         );
  OAI221XL U1493 ( .A0(n1395), .A1(n1488), .B0(n1398), .B1(n1468), .C0(n282), 
        .Y(n497) );
  AOI22X1 U1494 ( .A0(Y[8]), .A1(n1400), .B0(\y[1][8] ), .B1(n1393), .Y(n282)
         );
  OAI221XL U1495 ( .A0(n1395), .A1(n1489), .B0(n1398), .B1(n1469), .C0(n281), 
        .Y(n496) );
  AOI22X1 U1496 ( .A0(Y[9]), .A1(n1400), .B0(\y[1][9] ), .B1(n1393), .Y(n281)
         );
  OAI221XL U1497 ( .A0(n1381), .A1(n1480), .B0(n1385), .B1(n1460), .C0(n318), 
        .Y(n525) );
  AOI22X1 U1498 ( .A0(Y[0]), .A1(n1386), .B0(\y[3][0] ), .B1(n1379), .Y(n318)
         );
  OAI221XL U1499 ( .A0(n1380), .A1(n1481), .B0(n1383), .B1(n1461), .C0(n317), 
        .Y(n524) );
  AOI22X1 U1500 ( .A0(Y[1]), .A1(n1386), .B0(\y[3][1] ), .B1(n1379), .Y(n317)
         );
  OAI221XL U1501 ( .A0(n1382), .A1(n1482), .B0(n1385), .B1(n1462), .C0(n316), 
        .Y(n523) );
  AOI22X1 U1502 ( .A0(Y[2]), .A1(n1386), .B0(\y[3][2] ), .B1(n227), .Y(n316)
         );
  OAI221XL U1503 ( .A0(n1382), .A1(n1483), .B0(n1385), .B1(n1463), .C0(n315), 
        .Y(n522) );
  AOI22X1 U1504 ( .A0(Y[3]), .A1(n1386), .B0(\y[3][3] ), .B1(n1378), .Y(n315)
         );
  OAI221XL U1505 ( .A0(n1381), .A1(n1484), .B0(n1385), .B1(n1464), .C0(n314), 
        .Y(n521) );
  AOI22X1 U1506 ( .A0(Y[4]), .A1(n1386), .B0(\y[3][4] ), .B1(n1379), .Y(n314)
         );
  OAI221XL U1507 ( .A0(n1380), .A1(n1485), .B0(n1383), .B1(n1465), .C0(n313), 
        .Y(n520) );
  AOI22X1 U1508 ( .A0(Y[5]), .A1(n1386), .B0(\y[3][5] ), .B1(n227), .Y(n313)
         );
  OAI221XL U1509 ( .A0(n1380), .A1(n1486), .B0(n1385), .B1(n1466), .C0(n312), 
        .Y(n519) );
  AOI22X1 U1510 ( .A0(Y[6]), .A1(n1386), .B0(\y[3][6] ), .B1(n1378), .Y(n312)
         );
  OAI221XL U1511 ( .A0(n1382), .A1(n1487), .B0(n1385), .B1(n1467), .C0(n311), 
        .Y(n518) );
  AOI22X1 U1512 ( .A0(Y[7]), .A1(n1386), .B0(\y[3][7] ), .B1(n1379), .Y(n311)
         );
  OAI221XL U1513 ( .A0(n1381), .A1(n1488), .B0(n1385), .B1(n1468), .C0(n310), 
        .Y(n517) );
  AOI22X1 U1514 ( .A0(Y[8]), .A1(n1386), .B0(\y[3][8] ), .B1(n227), .Y(n310)
         );
  OAI221XL U1515 ( .A0(n1381), .A1(n1489), .B0(n1385), .B1(n1469), .C0(n309), 
        .Y(n516) );
  AOI22X1 U1516 ( .A0(Y[9]), .A1(n1386), .B0(\y[3][9] ), .B1(n1378), .Y(n309)
         );
  OAI221XL U1517 ( .A0(n1490), .A1(n1366), .B0(n1470), .B1(n1367), .C0(n262), 
        .Y(n485) );
  AOI22X1 U1518 ( .A0(n1370), .A1(X[0]), .B0(\x[5][0] ), .B1(n1353), .Y(n262)
         );
  OAI221XL U1519 ( .A0(n1491), .A1(n1366), .B0(n1471), .B1(n1369), .C0(n261), 
        .Y(n484) );
  AOI22X1 U1520 ( .A0(n1371), .A1(X[1]), .B0(\x[5][1] ), .B1(n1353), .Y(n261)
         );
  OAI221XL U1521 ( .A0(n1492), .A1(n1366), .B0(n1472), .B1(n1369), .C0(n260), 
        .Y(n483) );
  AOI22X1 U1522 ( .A0(n1370), .A1(X[2]), .B0(\x[5][2] ), .B1(n1353), .Y(n260)
         );
  OAI221XL U1523 ( .A0(n1493), .A1(n1366), .B0(n1473), .B1(n1368), .C0(n259), 
        .Y(n482) );
  AOI22X1 U1524 ( .A0(n1371), .A1(X[3]), .B0(\x[5][3] ), .B1(n1427), .Y(n259)
         );
  OAI221XL U1525 ( .A0(n1494), .A1(n1366), .B0(n1474), .B1(n1367), .C0(n258), 
        .Y(n481) );
  AOI22X1 U1526 ( .A0(n1370), .A1(X[4]), .B0(\x[5][4] ), .B1(n1427), .Y(n258)
         );
  OAI221XL U1527 ( .A0(n1495), .A1(n1366), .B0(n1475), .B1(n1367), .C0(n257), 
        .Y(n480) );
  AOI22X1 U1528 ( .A0(n1371), .A1(X[5]), .B0(\x[5][5] ), .B1(n1427), .Y(n257)
         );
  OAI221XL U1529 ( .A0(n1496), .A1(n1366), .B0(n1476), .B1(n1369), .C0(n256), 
        .Y(n479) );
  AOI22X1 U1530 ( .A0(n1370), .A1(X[6]), .B0(\x[5][6] ), .B1(n1427), .Y(n256)
         );
  OAI221XL U1531 ( .A0(n1497), .A1(n1366), .B0(n1477), .B1(n1368), .C0(n255), 
        .Y(n478) );
  AOI22X1 U1532 ( .A0(n1371), .A1(X[7]), .B0(\x[5][7] ), .B1(n1427), .Y(n255)
         );
  OAI221XL U1533 ( .A0(n1498), .A1(n1366), .B0(n1478), .B1(n1368), .C0(n254), 
        .Y(n477) );
  AOI22X1 U1534 ( .A0(n1370), .A1(X[8]), .B0(\x[5][8] ), .B1(n1353), .Y(n254)
         );
  OAI221XL U1535 ( .A0(n1499), .A1(n1366), .B0(n1479), .B1(n1367), .C0(n252), 
        .Y(n476) );
  AOI22X1 U1536 ( .A0(n1371), .A1(X[9]), .B0(\x[5][9] ), .B1(n1353), .Y(n252)
         );
  OAI221XL U1537 ( .A0(n1490), .A1(n1394), .B0(n1470), .B1(n1397), .C0(n208), 
        .Y(n445) );
  AOI22X1 U1538 ( .A0(n1400), .A1(X[0]), .B0(\x[1][0] ), .B1(n1393), .Y(n208)
         );
  OAI221XL U1539 ( .A0(n1491), .A1(n1396), .B0(n1471), .B1(n1399), .C0(n207), 
        .Y(n444) );
  AOI22X1 U1540 ( .A0(n1400), .A1(X[1]), .B0(\x[1][1] ), .B1(n1393), .Y(n207)
         );
  OAI221XL U1541 ( .A0(n1492), .A1(n1396), .B0(n1472), .B1(n1399), .C0(n206), 
        .Y(n443) );
  AOI22X1 U1542 ( .A0(n1400), .A1(X[2]), .B0(\x[1][2] ), .B1(n1393), .Y(n206)
         );
  OAI221XL U1543 ( .A0(n1493), .A1(n1395), .B0(n1473), .B1(n1398), .C0(n205), 
        .Y(n442) );
  AOI22X1 U1544 ( .A0(n1400), .A1(X[3]), .B0(\x[1][3] ), .B1(n1393), .Y(n205)
         );
  OAI221XL U1545 ( .A0(n1494), .A1(n1394), .B0(n1474), .B1(n1397), .C0(n204), 
        .Y(n441) );
  AOI22X1 U1546 ( .A0(n1400), .A1(X[4]), .B0(\x[1][4] ), .B1(n1393), .Y(n204)
         );
  OAI221XL U1547 ( .A0(n1495), .A1(n1394), .B0(n1475), .B1(n1397), .C0(n203), 
        .Y(n440) );
  AOI22X1 U1548 ( .A0(n1400), .A1(X[5]), .B0(\x[1][5] ), .B1(n1393), .Y(n203)
         );
  OAI221XL U1549 ( .A0(n1496), .A1(n1396), .B0(n1476), .B1(n1399), .C0(n202), 
        .Y(n439) );
  AOI22X1 U1550 ( .A0(n1400), .A1(X[6]), .B0(\x[1][6] ), .B1(n1393), .Y(n202)
         );
  OAI221XL U1551 ( .A0(n1497), .A1(n1395), .B0(n1477), .B1(n1398), .C0(n201), 
        .Y(n438) );
  AOI22X1 U1552 ( .A0(n1400), .A1(X[7]), .B0(\x[1][7] ), .B1(n1393), .Y(n201)
         );
  OAI221XL U1553 ( .A0(n1498), .A1(n1395), .B0(n1478), .B1(n1398), .C0(n200), 
        .Y(n437) );
  AOI22X1 U1554 ( .A0(n1400), .A1(X[8]), .B0(\x[1][8] ), .B1(n1393), .Y(n200)
         );
  OAI221XL U1555 ( .A0(n1499), .A1(n1394), .B0(n1479), .B1(n1397), .C0(n197), 
        .Y(n436) );
  AOI22X1 U1556 ( .A0(n1400), .A1(X[9]), .B0(\x[1][9] ), .B1(n1393), .Y(n197)
         );
  OAI221XL U1557 ( .A0(n1490), .A1(n1380), .B0(n1470), .B1(n1385), .C0(n236), 
        .Y(n465) );
  AOI22X1 U1558 ( .A0(n1386), .A1(X[0]), .B0(\x[3][0] ), .B1(n1379), .Y(n236)
         );
  OAI221XL U1559 ( .A0(n1491), .A1(n1382), .B0(n1471), .B1(n1383), .C0(n235), 
        .Y(n464) );
  AOI22X1 U1560 ( .A0(n1386), .A1(X[1]), .B0(\x[3][1] ), .B1(n227), .Y(n235)
         );
  OAI221XL U1561 ( .A0(n1492), .A1(n1382), .B0(n1472), .B1(n1385), .C0(n234), 
        .Y(n463) );
  AOI22X1 U1562 ( .A0(n1386), .A1(X[2]), .B0(\x[3][2] ), .B1(n1378), .Y(n234)
         );
  OAI221XL U1563 ( .A0(n1493), .A1(n1381), .B0(n1473), .B1(n1383), .C0(n233), 
        .Y(n462) );
  AOI22X1 U1564 ( .A0(n1386), .A1(X[3]), .B0(\x[3][3] ), .B1(n1379), .Y(n233)
         );
  OAI221XL U1565 ( .A0(n1494), .A1(n1380), .B0(n1474), .B1(n1385), .C0(n232), 
        .Y(n461) );
  AOI22X1 U1566 ( .A0(n1386), .A1(X[4]), .B0(\x[3][4] ), .B1(n227), .Y(n232)
         );
  OAI221XL U1567 ( .A0(n1495), .A1(n1380), .B0(n1475), .B1(n1383), .C0(n231), 
        .Y(n460) );
  AOI22X1 U1568 ( .A0(n1386), .A1(X[5]), .B0(\x[3][5] ), .B1(n1378), .Y(n231)
         );
  OAI221XL U1569 ( .A0(n1496), .A1(n1382), .B0(n1476), .B1(n1385), .C0(n230), 
        .Y(n459) );
  AOI22X1 U1570 ( .A0(n1386), .A1(X[6]), .B0(\x[3][6] ), .B1(n1379), .Y(n230)
         );
  OAI221XL U1571 ( .A0(n1497), .A1(n1381), .B0(n1477), .B1(n1383), .C0(n229), 
        .Y(n458) );
  AOI22X1 U1572 ( .A0(n1386), .A1(X[7]), .B0(\x[3][7] ), .B1(n227), .Y(n229)
         );
  OAI221XL U1573 ( .A0(n1498), .A1(n1381), .B0(n1478), .B1(n1385), .C0(n228), 
        .Y(n457) );
  AOI22X1 U1574 ( .A0(n1386), .A1(X[8]), .B0(\x[3][8] ), .B1(n1378), .Y(n228)
         );
  OAI221XL U1575 ( .A0(n1499), .A1(n1380), .B0(n1479), .B1(n1385), .C0(n225), 
        .Y(n456) );
  AOI22X1 U1576 ( .A0(n1386), .A1(X[9]), .B0(\x[3][9] ), .B1(n1379), .Y(n225)
         );
  NOR2X2 U1577 ( .A(n1346), .B(counter_B[0]), .Y(n1349) );
  NOR2X2 U1578 ( .A(n1346), .B(counter_B[0]), .Y(n1339) );
  NOR2X2 U1579 ( .A(n1292), .B(n1503), .Y(n1284) );
  NOR2X2 U1580 ( .A(n1292), .B(n1503), .Y(n1295) );
  NAND2X1 U1581 ( .A(counter_RESULT[1]), .B(n1503), .Y(n280) );
  CLKINVX1 U1582 ( .A(n347), .Y(n1427) );
  OAI31XL U1583 ( .A0(n294), .A1(n121), .A2(n1451), .B0(n334), .Y(n347) );
  INVX3 U1584 ( .A(n1352), .Y(n1351) );
  CLKINVX1 U1585 ( .A(n1342), .Y(n1352) );
  NOR2BX1 U1586 ( .AN(n1300), .B(counter_B[1]), .Y(n1342) );
  CLKBUFX3 U1587 ( .A(n1343), .Y(n1350) );
  AND2X2 U1588 ( .A(n1299), .B(counter_B[1]), .Y(n1343) );
  CLKBUFX3 U1589 ( .A(n1340), .Y(n1348) );
  AND2X2 U1590 ( .A(n1300), .B(counter_B[1]), .Y(n1340) );
  CLKAND2X3 U1591 ( .A(n1195), .B(counter_det_A[1]), .Y(n1235) );
  OAI211X1 U1592 ( .A0(n56), .A1(n1356), .B0(n397), .C0(n398), .Y(N378) );
  AOI22X1 U1593 ( .A0(n1358), .A1(\x[2][3] ), .B0(\x[1][3] ), .B1(n1360), .Y(
        n397) );
  OAI211X1 U1594 ( .A0(n50), .A1(n1357), .B0(n401), .C0(n402), .Y(N376) );
  AOI22X1 U1595 ( .A0(n1358), .A1(\x[2][5] ), .B0(\x[1][5] ), .B1(n1360), .Y(
        n401) );
  OAI22XL U1596 ( .A0(n165), .A1(n1458), .B0(n168), .B1(n29), .Y(n418) );
  NOR2X1 U1597 ( .A(n167), .B(n1458), .Y(n168) );
  CLKINVX1 U1598 ( .A(n169), .Y(n1458) );
  OAI22XL U1599 ( .A0(n165), .A1(n172), .B0(n173), .B1(n31), .Y(n420) );
  NOR2X1 U1600 ( .A(n167), .B(n172), .Y(n173) );
  OAI22XL U1601 ( .A0(n1459), .A1(n165), .B0(n170), .B1(n30), .Y(n419) );
  NOR2X1 U1602 ( .A(n1459), .B(n167), .Y(n170) );
  CLKINVX1 U1603 ( .A(n171), .Y(n1459) );
  OAI22XL U1604 ( .A0(n164), .A1(n165), .B0(n166), .B1(n28), .Y(n417) );
  NOR2X1 U1605 ( .A(n167), .B(n164), .Y(n166) );
  OAI211X1 U1606 ( .A0(n62), .A1(n365), .B0(n393), .C0(n394), .Y(N380) );
  OAI211X1 U1607 ( .A0(n59), .A1(n1357), .B0(n395), .C0(n396), .Y(N379) );
  AOI22X1 U1608 ( .A0(n1359), .A1(\x[2][2] ), .B0(\x[1][2] ), .B1(n1361), .Y(
        n395) );
  OAI211X1 U1609 ( .A0(n53), .A1(n365), .B0(n399), .C0(n400), .Y(N377) );
  AOI22X1 U1610 ( .A0(n1359), .A1(\x[2][4] ), .B0(\x[1][4] ), .B1(n1360), .Y(
        n399) );
  OAI211X1 U1611 ( .A0(n65), .A1(n1356), .B0(n391), .C0(n392), .Y(N381) );
  AOI22X1 U1612 ( .A0(n1359), .A1(\x[2][0] ), .B0(\x[1][0] ), .B1(n1360), .Y(
        n391) );
  AOI222XL U1613 ( .A0(n1362), .A1(\x[3][0] ), .B0(n1363), .B1(\x[5][0] ), 
        .C0(n370), .C1(\x[4][0] ), .Y(n392) );
  OAI211X1 U1614 ( .A0(n105), .A1(n1357), .B0(n366), .C0(n367), .Y(N429) );
  AOI22X1 U1615 ( .A0(n1359), .A1(\y[2][0] ), .B0(\y[1][0] ), .B1(n1360), .Y(
        n366) );
  AOI222XL U1616 ( .A0(n1362), .A1(\y[3][0] ), .B0(n1363), .B1(\y[5][0] ), 
        .C0(n370), .C1(\y[4][0] ), .Y(n367) );
  NOR2X2 U1617 ( .A(n411), .B(n1241), .Y(n370) );
  NOR2X2 U1618 ( .A(n411), .B(n1241), .Y(n1364) );
  AOI222XL U1619 ( .A0(n1362), .A1(\x[3][1] ), .B0(n1363), .B1(\x[5][1] ), 
        .C0(n1364), .C1(\x[4][1] ), .Y(n394) );
  AOI222XL U1620 ( .A0(n1362), .A1(\x[3][2] ), .B0(n1363), .B1(\x[5][2] ), 
        .C0(n370), .C1(\x[4][2] ), .Y(n396) );
  AOI222XL U1621 ( .A0(n1362), .A1(\x[3][3] ), .B0(n1363), .B1(\x[5][3] ), 
        .C0(n1364), .C1(\x[4][3] ), .Y(n398) );
  AOI222XL U1622 ( .A0(n1362), .A1(\x[3][4] ), .B0(n1363), .B1(\x[5][4] ), 
        .C0(n370), .C1(\x[4][4] ), .Y(n400) );
  AOI222XL U1623 ( .A0(n1362), .A1(\y[3][1] ), .B0(n1363), .B1(\y[5][1] ), 
        .C0(n1364), .C1(\y[4][1] ), .Y(n374) );
  AOI222XL U1624 ( .A0(n1362), .A1(\y[3][2] ), .B0(n1363), .B1(\y[5][2] ), 
        .C0(n370), .C1(\y[4][2] ), .Y(n376) );
  AOI222XL U1625 ( .A0(n1362), .A1(\y[3][3] ), .B0(n1363), .B1(\y[5][3] ), 
        .C0(n1364), .C1(\y[4][3] ), .Y(n378) );
  NAND3X2 U1626 ( .A(n412), .B(n411), .C(counter_det_A[0]), .Y(n1356) );
  NAND3X2 U1627 ( .A(n412), .B(n411), .C(counter_det_A[0]), .Y(n1357) );
  NOR2X2 U1628 ( .A(n1240), .B(counter_det_A[0]), .Y(n1243) );
  NOR2X2 U1629 ( .A(n1240), .B(counter_det_A[0]), .Y(n1234) );
  NAND3X1 U1630 ( .A(n412), .B(n411), .C(counter_det_A[0]), .Y(n365) );
  NAND2X1 U1631 ( .A(counter_det_A[0]), .B(counter_det_A[1]), .Y(n172) );
  XOR2X1 U1632 ( .A(n172), .B(n136), .Y(n179) );
  CLKAND2X3 U1633 ( .A(n1194), .B(counter_det_A[1]), .Y(n1237) );
  NOR2X1 U1634 ( .A(n140), .B(counter_det_A[0]), .Y(n171) );
  NOR2X1 U1635 ( .A(n1241), .B(counter_det_A[1]), .Y(n169) );
  OAI211X1 U1636 ( .A0(n96), .A1(n1357), .B0(n377), .C0(n378), .Y(N426) );
  AOI22X1 U1637 ( .A0(n1358), .A1(\y[2][3] ), .B0(\y[1][3] ), .B1(n1361), .Y(
        n377) );
  OAI211X1 U1638 ( .A0(n93), .A1(n1356), .B0(n379), .C0(n380), .Y(N425) );
  AOI22X1 U1639 ( .A0(n1359), .A1(\y[2][4] ), .B0(\y[1][4] ), .B1(n1360), .Y(
        n379) );
  OAI211X1 U1640 ( .A0(n87), .A1(n1357), .B0(n383), .C0(n384), .Y(N423) );
  AOI22X1 U1641 ( .A0(n1359), .A1(\y[2][6] ), .B0(\y[1][6] ), .B1(n1360), .Y(
        n383) );
  OAI211X1 U1642 ( .A0(n90), .A1(n365), .B0(n381), .C0(n382), .Y(N424) );
  AOI22X1 U1643 ( .A0(n1358), .A1(\y[2][5] ), .B0(\y[1][5] ), .B1(n1360), .Y(
        n381) );
  OAI211X1 U1644 ( .A0(n84), .A1(n1356), .B0(n385), .C0(n386), .Y(N422) );
  AOI22X1 U1645 ( .A0(n1358), .A1(\y[2][7] ), .B0(\y[1][7] ), .B1(n1361), .Y(
        n385) );
  OAI211X1 U1646 ( .A0(n81), .A1(n365), .B0(n387), .C0(n388), .Y(N421) );
  AOI22X1 U1647 ( .A0(n1359), .A1(\y[2][8] ), .B0(\y[1][8] ), .B1(n1361), .Y(
        n387) );
  OAI211X1 U1648 ( .A0(n44), .A1(n365), .B0(n405), .C0(n406), .Y(N374) );
  AOI22X1 U1649 ( .A0(n1358), .A1(\x[2][7] ), .B0(\x[1][7] ), .B1(n1361), .Y(
        n405) );
  NAND2X1 U1650 ( .A(n169), .B(counter_det_A[2]), .Y(n177) );
  AOI22X1 U1651 ( .A0(n1358), .A1(\x[2][1] ), .B0(\x[1][1] ), .B1(n1360), .Y(
        n393) );
  AOI22X1 U1652 ( .A0(n1358), .A1(\y[2][1] ), .B0(\y[1][1] ), .B1(n1360), .Y(
        n373) );
  OAI2BB2XL U1653 ( .B0(n176), .B1(n33), .A0N(N337), .A1N(n176), .Y(n422) );
  NOR2X1 U1654 ( .A(n177), .B(n175), .Y(n176) );
  OAI2BB2XL U1655 ( .B0(n174), .B1(n32), .A0N(N337), .A1N(n174), .Y(n421) );
  NOR3X1 U1656 ( .A(n175), .B(n136), .C(n164), .Y(n174) );
  OAI211X1 U1657 ( .A0(n47), .A1(n1356), .B0(n403), .C0(n404), .Y(N375) );
  AOI22X1 U1658 ( .A0(n1359), .A1(\x[2][6] ), .B0(\x[1][6] ), .B1(n1361), .Y(
        n403) );
  OAI211X1 U1659 ( .A0(n41), .A1(n1357), .B0(n407), .C0(n408), .Y(N373) );
  AOI22X1 U1660 ( .A0(n1359), .A1(\x[2][8] ), .B0(\x[1][8] ), .B1(n1360), .Y(
        n407) );
  OAI211X1 U1661 ( .A0(n102), .A1(n1356), .B0(n373), .C0(n374), .Y(N428) );
  OAI211X1 U1662 ( .A0(n99), .A1(n365), .B0(n375), .C0(n376), .Y(N427) );
  AOI22X1 U1663 ( .A0(n1359), .A1(\y[2][2] ), .B0(\y[1][2] ), .B1(n1360), .Y(
        n375) );
  OAI211X1 U1664 ( .A0(n38), .A1(n1356), .B0(n409), .C0(n410), .Y(N372) );
  AOI22X1 U1665 ( .A0(n1358), .A1(\x[2][9] ), .B0(\x[1][9] ), .B1(n1360), .Y(
        n409) );
  AOI222XL U1666 ( .A0(n1362), .A1(\x[3][5] ), .B0(n1363), .B1(\x[5][5] ), 
        .C0(n1364), .C1(\x[4][5] ), .Y(n402) );
  AOI222XL U1667 ( .A0(n1362), .A1(\y[3][4] ), .B0(n1363), .B1(\y[5][4] ), 
        .C0(n370), .C1(\y[4][4] ), .Y(n380) );
  AOI222XL U1668 ( .A0(n1362), .A1(\y[3][6] ), .B0(n1363), .B1(\y[5][6] ), 
        .C0(n370), .C1(\y[4][6] ), .Y(n384) );
  AOI222XL U1669 ( .A0(n1362), .A1(\y[3][5] ), .B0(n1363), .B1(\y[5][5] ), 
        .C0(n1364), .C1(\y[4][5] ), .Y(n382) );
  OAI211X1 U1670 ( .A0(n78), .A1(n1357), .B0(n389), .C0(n390), .Y(N420) );
  AOI22X1 U1671 ( .A0(n1358), .A1(\y[2][9] ), .B0(\y[1][9] ), .B1(n1360), .Y(
        n389) );
  AOI222XL U1672 ( .A0(n1362), .A1(\x[3][6] ), .B0(n1363), .B1(\x[5][6] ), 
        .C0(n370), .C1(\x[4][6] ), .Y(n404) );
  AOI222XL U1673 ( .A0(n1362), .A1(\x[3][7] ), .B0(n1363), .B1(\x[5][7] ), 
        .C0(n1364), .C1(\x[4][7] ), .Y(n406) );
  AOI222XL U1674 ( .A0(n1362), .A1(\x[3][8] ), .B0(n1363), .B1(\x[5][8] ), 
        .C0(n370), .C1(\x[4][8] ), .Y(n408) );
  AOI222XL U1675 ( .A0(n1362), .A1(\x[3][9] ), .B0(n1363), .B1(\x[5][9] ), 
        .C0(n1364), .C1(\x[4][9] ), .Y(n410) );
  AOI222XL U1676 ( .A0(n1362), .A1(\y[3][7] ), .B0(n1363), .B1(\y[5][7] ), 
        .C0(n1364), .C1(\y[4][7] ), .Y(n386) );
  AOI222XL U1677 ( .A0(n1362), .A1(\y[3][8] ), .B0(n1363), .B1(\y[5][8] ), 
        .C0(n370), .C1(\y[4][8] ), .Y(n388) );
  AOI222XL U1678 ( .A0(n1362), .A1(\y[3][9] ), .B0(n1363), .B1(\y[5][9] ), 
        .C0(n1364), .C1(\y[4][9] ), .Y(n390) );
  CLKINVX1 U1679 ( .A(Y[0]), .Y(n1449) );
  CLKINVX1 U1680 ( .A(Y[1]), .Y(n1448) );
  CLKINVX1 U1681 ( .A(Y[2]), .Y(n1447) );
  CLKINVX1 U1682 ( .A(Y[3]), .Y(n1446) );
  CLKINVX1 U1683 ( .A(Y[4]), .Y(n1445) );
  CLKINVX1 U1684 ( .A(Y[5]), .Y(n1444) );
  CLKINVX1 U1685 ( .A(Y[6]), .Y(n1443) );
  CLKINVX1 U1686 ( .A(Y[7]), .Y(n1442) );
  CLKINVX1 U1687 ( .A(Y[8]), .Y(n1441) );
  CLKINVX1 U1688 ( .A(Y[9]), .Y(n1440) );
  CLKINVX1 U1689 ( .A(X[0]), .Y(n1439) );
  CLKINVX1 U1690 ( .A(X[1]), .Y(n1438) );
  CLKINVX1 U1691 ( .A(X[2]), .Y(n1437) );
  CLKINVX1 U1692 ( .A(X[3]), .Y(n1436) );
  CLKINVX1 U1693 ( .A(X[4]), .Y(n1435) );
  CLKINVX1 U1694 ( .A(X[5]), .Y(n1434) );
  CLKINVX1 U1695 ( .A(X[6]), .Y(n1433) );
  CLKINVX1 U1696 ( .A(X[7]), .Y(n1432) );
  CLKINVX1 U1697 ( .A(X[8]), .Y(n1431) );
  CLKINVX1 U1698 ( .A(X[9]), .Y(n1430) );
  OAI2BB2XL U1699 ( .B0(n1449), .B1(n1426), .A0N(obj_y[0]), .A1N(n1426), .Y(
        n555) );
  OAI2BB2XL U1700 ( .B0(n1448), .B1(n1425), .A0N(obj_y[1]), .A1N(n1426), .Y(
        n554) );
  OAI2BB2XL U1701 ( .B0(n1447), .B1(n1425), .A0N(obj_y[2]), .A1N(n1426), .Y(
        n553) );
  OAI2BB2XL U1702 ( .B0(n1446), .B1(n1425), .A0N(obj_y[3]), .A1N(n1426), .Y(
        n552) );
  OAI2BB2XL U1703 ( .B0(n1445), .B1(n1425), .A0N(obj_y[4]), .A1N(n1425), .Y(
        n551) );
  OAI2BB2XL U1704 ( .B0(n1444), .B1(n1425), .A0N(obj_y[5]), .A1N(n1425), .Y(
        n550) );
  OAI2BB2XL U1705 ( .B0(n1443), .B1(n1426), .A0N(obj_y[6]), .A1N(n1425), .Y(
        n549) );
  OAI2BB2XL U1706 ( .B0(n1442), .B1(n1426), .A0N(obj_y[7]), .A1N(n1425), .Y(
        n548) );
  OAI2BB2XL U1707 ( .B0(n1441), .B1(n1426), .A0N(obj_y[8]), .A1N(n1425), .Y(
        n547) );
  OAI2BB2XL U1708 ( .B0(n1440), .B1(n1425), .A0N(obj_y[9]), .A1N(n1425), .Y(
        n546) );
  OAI2BB2XL U1709 ( .B0(n1439), .B1(n1426), .A0N(obj_x[0]), .A1N(n1426), .Y(
        n565) );
  OAI2BB2XL U1710 ( .B0(n1438), .B1(n1425), .A0N(obj_x[1]), .A1N(n1425), .Y(
        n564) );
  OAI2BB2XL U1711 ( .B0(n1437), .B1(n349), .A0N(obj_x[2]), .A1N(n1426), .Y(
        n563) );
  OAI2BB2XL U1712 ( .B0(n1436), .B1(n349), .A0N(obj_x[3]), .A1N(n1426), .Y(
        n562) );
  OAI2BB2XL U1713 ( .B0(n1435), .B1(n349), .A0N(obj_x[4]), .A1N(n1426), .Y(
        n561) );
  OAI2BB2XL U1714 ( .B0(n1434), .B1(n349), .A0N(obj_x[5]), .A1N(n1426), .Y(
        n560) );
  OAI2BB2XL U1715 ( .B0(n1433), .B1(n1425), .A0N(obj_x[6]), .A1N(n1426), .Y(
        n559) );
  OAI2BB2XL U1716 ( .B0(n1432), .B1(n349), .A0N(obj_x[7]), .A1N(n1426), .Y(
        n558) );
  OAI2BB2XL U1717 ( .B0(n1431), .B1(n1425), .A0N(obj_x[8]), .A1N(n1426), .Y(
        n557) );
  OAI2BB2XL U1718 ( .B0(n1430), .B1(n1425), .A0N(obj_x[9]), .A1N(n1426), .Y(
        n556) );
  OAI211X1 U1719 ( .A0(n143), .A1(n360), .B0(n142), .C0(state[1]), .Y(n359) );
  OAI211X1 U1720 ( .A0(state[1]), .A1(n361), .B0(n362), .C0(n363), .Y(
        nx_state[0]) );
  AO21X1 U1721 ( .A0(n308), .A1(counter_IN[2]), .B0(n358), .Y(n362) );
  AOI33X1 U1722 ( .A0(counter_RES[2]), .A1(n135), .A2(n364), .B0(n361), .B1(
        n360), .B2(state[1]), .Y(n363) );
  NOR3X1 U1723 ( .A(counter_RES[1]), .B(state[2]), .C(state[0]), .Y(n364) );
  OAI31X1 U1724 ( .A0(n142), .A1(state[1]), .A2(state[0]), .B0(n357), .Y(
        nx_state[2]) );
  NOR2X1 U1725 ( .A(n143), .B(state[2]), .Y(n361) );
  NOR2X1 U1726 ( .A(n124), .B(n125), .Y(n308) );
  NOR2X1 U1727 ( .A(n1451), .B(counter_IN[2]), .Y(n279) );
  NAND3X1 U1728 ( .A(counter_IN[2]), .B(n124), .C(n335), .Y(n320) );
  NAND3BX1 U1729 ( .AN(n360), .B(n361), .C(state[1]), .Y(n357) );
  NAND2X1 U1730 ( .A(counter_det_A[2]), .B(n171), .Y(n360) );
  NAND2BX1 U1731 ( .AN(state[1]), .B(n361), .Y(n358) );
  OAI31X1 U1732 ( .A0(n1500), .A1(counter_RESULT[2]), .A2(n1365), .B0(n1355), 
        .Y(n353) );
  OAI222XL U1733 ( .A0(n1355), .A1(n294), .B0(n1355), .B1(n356), .C0(n124), 
        .C1(n354), .Y(n574) );
  NAND2X1 U1734 ( .A(counter_IN[0]), .B(n124), .Y(n356) );
  OAI32X1 U1735 ( .A0(n1355), .A1(counter_IN[2]), .A2(n1456), .B0(n355), .B1(
        n121), .Y(n572) );
  OA21XL U1736 ( .A0(n308), .A1(n1355), .B0(n354), .Y(n355) );
  OAI32X1 U1737 ( .A0(n134), .A1(counter_RES[2]), .A2(n350), .B0(n351), .B1(
        n133), .Y(n566) );
  OA21XL U1738 ( .A0(counter_RES[1]), .A1(n1365), .B0(n352), .Y(n351) );
  OAI32X1 U1739 ( .A0(n1365), .A1(counter_RES[0]), .A2(n1452), .B0(n135), .B1(
        n353), .Y(n568) );
  CLKINVX1 U1740 ( .A(n353), .Y(n1452) );
  OAI22XL U1741 ( .A0(n1241), .A1(n178), .B0(counter_det_A[0]), .B1(n175), .Y(
        n424) );
  NAND3X1 U1742 ( .A(n1454), .B(n353), .C(counter_RES[0]), .Y(n350) );
  NOR3X1 U1743 ( .A(counter_B[0]), .B(counter_RESULT[1]), .C(counter_B[2]), 
        .Y(n306) );
  OAI22XL U1744 ( .A0(n140), .A1(n178), .B0(n180), .B1(n175), .Y(n425) );
  OAI22XL U1745 ( .A0(n1503), .A1(n354), .B0(counter_B[0]), .B1(n1365), .Y(
        n570) );
  OAI22XL U1746 ( .A0(n125), .A1(n354), .B0(counter_IN[0]), .B1(n1355), .Y(
        n573) );
  OAI22XL U1747 ( .A0(n352), .A1(n134), .B0(counter_RES[1]), .B1(n350), .Y(
        n567) );
  OAI2BB2XL U1748 ( .B0(n128), .B1(n354), .A0N(counter_A[2]), .A1N(n1454), .Y(
        n569) );
  OAI2BB2XL U1749 ( .B0(n136), .B1(n178), .A0N(n179), .A1N(n1455), .Y(n423) );
  OA21XL U1750 ( .A0(counter_RES[0]), .A1(n1365), .B0(n353), .Y(n352) );
  NOR3X1 U1751 ( .A(counter_IN[1]), .B(counter_IN[2]), .C(counter_IN[0]), .Y(
        n348) );
  NAND2X1 U1752 ( .A(counter_IN[1]), .B(n125), .Y(n294) );
  NAND2X1 U1753 ( .A(n140), .B(n1241), .Y(n164) );
  NAND3X1 U1754 ( .A(n32), .B(n33), .C(n31), .Y(n416) );
  OA21XL U1755 ( .A0(n413), .A1(n414), .B0(n1450), .Y(N336) );
  NOR4X1 U1756 ( .A(n415), .B(n33), .C(n31), .D(n32), .Y(n414) );
  NOR4X1 U1757 ( .A(n416), .B(match_array[0]), .C(match_array[2]), .D(
        match_array[1]), .Y(n413) );
  NAND3X1 U1758 ( .A(match_array[1]), .B(match_array[0]), .C(match_array[2]), 
        .Y(n415) );
  NOR2X1 U1759 ( .A(n1241), .B(counter_det_A[2]), .Y(n1195) );
  AOI222XL U1760 ( .A0(\y[5][0] ), .A1(n1242), .B0(\y[3][0] ), .B1(n1235), 
        .C0(\y[4][0] ), .C1(n1243), .Y(n1197) );
  NOR2X1 U1761 ( .A(counter_det_A[2]), .B(counter_det_A[0]), .Y(n1194) );
  AOI222XL U1762 ( .A0(\y[2][0] ), .A1(n1237), .B0(\y[0][0] ), .B1(n1175), 
        .C0(\y[1][0] ), .C1(n1177), .Y(n1196) );
  NAND2X1 U1763 ( .A(n1197), .B(n1196), .Y(N445) );
  AOI222XL U1764 ( .A0(\y[5][1] ), .A1(n1242), .B0(\y[3][1] ), .B1(n1235), 
        .C0(\y[4][1] ), .C1(n1234), .Y(n1199) );
  AOI222XL U1765 ( .A0(\y[2][1] ), .A1(n1237), .B0(\y[0][1] ), .B1(n1175), 
        .C0(\y[1][1] ), .C1(n1177), .Y(n1198) );
  NAND2X1 U1766 ( .A(n1199), .B(n1198), .Y(N444) );
  AOI222XL U1767 ( .A0(\y[5][2] ), .A1(n1242), .B0(\y[3][2] ), .B1(n1235), 
        .C0(\y[4][2] ), .C1(n1243), .Y(n1201) );
  AOI222XL U1768 ( .A0(\y[2][2] ), .A1(n1237), .B0(\y[0][2] ), .B1(n1175), 
        .C0(\y[1][2] ), .C1(n1177), .Y(n1200) );
  NAND2X1 U1769 ( .A(n1201), .B(n1200), .Y(N443) );
  AOI222XL U1770 ( .A0(\y[5][3] ), .A1(n1242), .B0(\y[3][3] ), .B1(n1235), 
        .C0(\y[4][3] ), .C1(n1234), .Y(n1203) );
  AOI222XL U1771 ( .A0(\y[2][3] ), .A1(n1237), .B0(\y[0][3] ), .B1(n1175), 
        .C0(\y[1][3] ), .C1(n1177), .Y(n1202) );
  NAND2X1 U1772 ( .A(n1203), .B(n1202), .Y(N442) );
  AOI222XL U1773 ( .A0(\y[5][4] ), .A1(n1242), .B0(\y[3][4] ), .B1(n1235), 
        .C0(\y[4][4] ), .C1(n1243), .Y(n1205) );
  AOI222XL U1774 ( .A0(\y[2][4] ), .A1(n1237), .B0(\y[0][4] ), .B1(n1175), 
        .C0(\y[1][4] ), .C1(n1177), .Y(n1204) );
  NAND2X1 U1775 ( .A(n1205), .B(n1204), .Y(N441) );
  AOI222XL U1776 ( .A0(\y[5][5] ), .A1(n1242), .B0(\y[3][5] ), .B1(n1235), 
        .C0(\y[4][5] ), .C1(n1234), .Y(n1207) );
  AOI222XL U1777 ( .A0(\y[2][5] ), .A1(n1237), .B0(\y[0][5] ), .B1(n1175), 
        .C0(\y[1][5] ), .C1(n1177), .Y(n1206) );
  NAND2X1 U1778 ( .A(n1207), .B(n1206), .Y(N440) );
  AOI222XL U1779 ( .A0(\y[5][6] ), .A1(n1242), .B0(\y[3][6] ), .B1(n1235), 
        .C0(\y[4][6] ), .C1(n1243), .Y(n1209) );
  AOI222XL U1780 ( .A0(\y[2][6] ), .A1(n1237), .B0(\y[0][6] ), .B1(n1175), 
        .C0(\y[1][6] ), .C1(n1177), .Y(n1208) );
  NAND2X1 U1781 ( .A(n1209), .B(n1208), .Y(N439) );
  AOI222XL U1782 ( .A0(\y[5][7] ), .A1(n1242), .B0(\y[3][7] ), .B1(n1235), 
        .C0(\y[4][7] ), .C1(n1234), .Y(n1211) );
  AOI222XL U1783 ( .A0(\y[2][7] ), .A1(n1237), .B0(\y[0][7] ), .B1(n1175), 
        .C0(\y[1][7] ), .C1(n1177), .Y(n1210) );
  NAND2X1 U1784 ( .A(n1211), .B(n1210), .Y(N438) );
  AOI222XL U1785 ( .A0(\y[5][8] ), .A1(n1242), .B0(\y[3][8] ), .B1(n1235), 
        .C0(\y[4][8] ), .C1(n1243), .Y(n1213) );
  AOI222XL U1786 ( .A0(\y[2][8] ), .A1(n1237), .B0(\y[0][8] ), .B1(n1175), 
        .C0(\y[1][8] ), .C1(n1177), .Y(n1212) );
  NAND2X1 U1787 ( .A(n1213), .B(n1212), .Y(N437) );
  AOI222XL U1788 ( .A0(\y[5][9] ), .A1(n1242), .B0(\y[3][9] ), .B1(n1235), 
        .C0(\y[4][9] ), .C1(n1234), .Y(n1215) );
  AOI222XL U1789 ( .A0(\y[2][9] ), .A1(n1237), .B0(\y[0][9] ), .B1(n1175), 
        .C0(\y[1][9] ), .C1(n1177), .Y(n1214) );
  NAND2X1 U1790 ( .A(n1215), .B(n1214), .Y(N436) );
  AOI222XL U1791 ( .A0(\x[5][0] ), .A1(n1242), .B0(\x[3][0] ), .B1(n1235), 
        .C0(\x[4][0] ), .C1(n1243), .Y(n1217) );
  AOI222XL U1792 ( .A0(\x[2][0] ), .A1(n1237), .B0(\x[0][0] ), .B1(n1175), 
        .C0(\x[1][0] ), .C1(n1177), .Y(n1216) );
  NAND2X1 U1793 ( .A(n1217), .B(n1216), .Y(N397) );
  AOI222XL U1794 ( .A0(\x[5][1] ), .A1(n1242), .B0(\x[3][1] ), .B1(n1235), 
        .C0(\x[4][1] ), .C1(n1234), .Y(n1219) );
  AOI222XL U1795 ( .A0(\x[2][1] ), .A1(n1237), .B0(\x[0][1] ), .B1(n1175), 
        .C0(\x[1][1] ), .C1(n1177), .Y(n1218) );
  NAND2X1 U1796 ( .A(n1219), .B(n1218), .Y(N396) );
  AOI222XL U1797 ( .A0(\x[5][2] ), .A1(n1242), .B0(\x[3][2] ), .B1(n1235), 
        .C0(\x[4][2] ), .C1(n1243), .Y(n1221) );
  AOI222XL U1798 ( .A0(\x[2][2] ), .A1(n1237), .B0(\x[0][2] ), .B1(n1175), 
        .C0(\x[1][2] ), .C1(n1177), .Y(n1220) );
  NAND2X1 U1799 ( .A(n1221), .B(n1220), .Y(N395) );
  AOI222XL U1800 ( .A0(\x[5][3] ), .A1(n1242), .B0(\x[3][3] ), .B1(n1235), 
        .C0(\x[4][3] ), .C1(n1234), .Y(n1223) );
  AOI222XL U1801 ( .A0(\x[2][3] ), .A1(n1237), .B0(\x[0][3] ), .B1(n1175), 
        .C0(\x[1][3] ), .C1(n1177), .Y(n1222) );
  NAND2X1 U1802 ( .A(n1223), .B(n1222), .Y(N394) );
  AOI222XL U1803 ( .A0(\x[5][4] ), .A1(n1242), .B0(\x[3][4] ), .B1(n1235), 
        .C0(\x[4][4] ), .C1(n1243), .Y(n1225) );
  AOI222XL U1804 ( .A0(\x[2][4] ), .A1(n1237), .B0(\x[0][4] ), .B1(n1175), 
        .C0(\x[1][4] ), .C1(n1177), .Y(n1224) );
  NAND2X1 U1805 ( .A(n1225), .B(n1224), .Y(N393) );
  AOI222XL U1806 ( .A0(\x[5][5] ), .A1(n1242), .B0(\x[3][5] ), .B1(n1235), 
        .C0(\x[4][5] ), .C1(n1234), .Y(n1227) );
  AOI222XL U1807 ( .A0(\x[2][5] ), .A1(n1237), .B0(\x[0][5] ), .B1(n1175), 
        .C0(\x[1][5] ), .C1(n1177), .Y(n1226) );
  NAND2X1 U1808 ( .A(n1227), .B(n1226), .Y(N392) );
  AOI222XL U1809 ( .A0(\x[5][6] ), .A1(n1242), .B0(\x[3][6] ), .B1(n1235), 
        .C0(\x[4][6] ), .C1(n1243), .Y(n1229) );
  AOI222XL U1810 ( .A0(\x[2][6] ), .A1(n1237), .B0(\x[0][6] ), .B1(n1175), 
        .C0(\x[1][6] ), .C1(n1177), .Y(n1228) );
  NAND2X1 U1811 ( .A(n1229), .B(n1228), .Y(N391) );
  AOI222XL U1812 ( .A0(\x[5][7] ), .A1(n1242), .B0(\x[3][7] ), .B1(n1235), 
        .C0(\x[4][7] ), .C1(n1234), .Y(n1231) );
  AOI222XL U1813 ( .A0(\x[2][7] ), .A1(n1237), .B0(\x[0][7] ), .B1(n1175), 
        .C0(\x[1][7] ), .C1(n1177), .Y(n1230) );
  NAND2X1 U1814 ( .A(n1231), .B(n1230), .Y(N390) );
  AOI222XL U1815 ( .A0(\x[5][8] ), .A1(n1242), .B0(\x[3][8] ), .B1(n1235), 
        .C0(\x[4][8] ), .C1(n1243), .Y(n1233) );
  AOI222XL U1816 ( .A0(\x[2][8] ), .A1(n1237), .B0(\x[0][8] ), .B1(n1175), 
        .C0(\x[1][8] ), .C1(n1177), .Y(n1232) );
  NAND2X1 U1817 ( .A(n1233), .B(n1232), .Y(N389) );
  AOI222XL U1818 ( .A0(\x[5][9] ), .A1(n1242), .B0(\x[3][9] ), .B1(n1235), 
        .C0(\x[4][9] ), .C1(n1234), .Y(n1239) );
  AOI222XL U1819 ( .A0(\x[2][9] ), .A1(n1237), .B0(\x[0][9] ), .B1(n1175), 
        .C0(\x[1][9] ), .C1(n1177), .Y(n1238) );
  NAND2X1 U1820 ( .A(n1239), .B(n1238), .Y(N388) );
  NOR2X1 U1821 ( .A(counter_B[0]), .B(counter_A[2]), .Y(n1245) );
  AOI222XL U1822 ( .A0(\y[5][0] ), .A1(n1293), .B0(\y[3][0] ), .B1(n1294), 
        .C0(\y[4][0] ), .C1(n1295), .Y(n1247) );
  NOR2X1 U1823 ( .A(counter_A[2]), .B(n1503), .Y(n1244) );
  AOI222XL U1824 ( .A0(\y[2][0] ), .A1(n1296), .B0(\y[0][0] ), .B1(n1297), 
        .C0(\y[1][0] ), .C1(n1298), .Y(n1246) );
  NAND2X1 U1825 ( .A(n1247), .B(n1246), .Y(N750) );
  AOI222XL U1826 ( .A0(\y[5][1] ), .A1(n1293), .B0(\y[3][1] ), .B1(n1294), 
        .C0(\y[4][1] ), .C1(n1284), .Y(n1249) );
  AOI222XL U1827 ( .A0(\y[2][1] ), .A1(n1296), .B0(\y[0][1] ), .B1(n1297), 
        .C0(\y[1][1] ), .C1(n1298), .Y(n1248) );
  NAND2X1 U1828 ( .A(n1249), .B(n1248), .Y(N749) );
  AOI222XL U1829 ( .A0(\y[5][2] ), .A1(n1293), .B0(\y[3][2] ), .B1(n1294), 
        .C0(\y[4][2] ), .C1(n1295), .Y(n1251) );
  AOI222XL U1830 ( .A0(\y[2][2] ), .A1(n1296), .B0(\y[0][2] ), .B1(n1297), 
        .C0(\y[1][2] ), .C1(n1298), .Y(n1250) );
  NAND2X1 U1831 ( .A(n1251), .B(n1250), .Y(N748) );
  AOI222XL U1832 ( .A0(\y[5][3] ), .A1(n1293), .B0(\y[3][3] ), .B1(n1294), 
        .C0(\y[4][3] ), .C1(n1284), .Y(n1253) );
  AOI222XL U1833 ( .A0(\y[2][3] ), .A1(n1296), .B0(\y[0][3] ), .B1(n1297), 
        .C0(\y[1][3] ), .C1(n1298), .Y(n1252) );
  NAND2X1 U1834 ( .A(n1253), .B(n1252), .Y(N747) );
  AOI222XL U1835 ( .A0(\y[5][4] ), .A1(n1293), .B0(\y[3][4] ), .B1(n1294), 
        .C0(\y[4][4] ), .C1(n1295), .Y(n1255) );
  AOI222XL U1836 ( .A0(\y[2][4] ), .A1(n1296), .B0(\y[0][4] ), .B1(n1297), 
        .C0(\y[1][4] ), .C1(n1298), .Y(n1254) );
  NAND2X1 U1837 ( .A(n1255), .B(n1254), .Y(N746) );
  AOI222XL U1838 ( .A0(\y[5][5] ), .A1(n1293), .B0(\y[3][5] ), .B1(n1294), 
        .C0(\y[4][5] ), .C1(n1284), .Y(n1257) );
  AOI222XL U1839 ( .A0(\y[2][5] ), .A1(n1296), .B0(\y[0][5] ), .B1(n1297), 
        .C0(\y[1][5] ), .C1(n1298), .Y(n1256) );
  NAND2X1 U1840 ( .A(n1257), .B(n1256), .Y(N745) );
  AOI222XL U1841 ( .A0(\y[5][6] ), .A1(n1293), .B0(\y[3][6] ), .B1(n1294), 
        .C0(\y[4][6] ), .C1(n1295), .Y(n1259) );
  AOI222XL U1842 ( .A0(\y[2][6] ), .A1(n1296), .B0(\y[0][6] ), .B1(n1297), 
        .C0(\y[1][6] ), .C1(n1298), .Y(n1258) );
  NAND2X1 U1843 ( .A(n1259), .B(n1258), .Y(N744) );
  AOI222XL U1844 ( .A0(\y[5][7] ), .A1(n1293), .B0(\y[3][7] ), .B1(n1294), 
        .C0(\y[4][7] ), .C1(n1284), .Y(n1261) );
  AOI222XL U1845 ( .A0(\y[2][7] ), .A1(n1296), .B0(\y[0][7] ), .B1(n1297), 
        .C0(\y[1][7] ), .C1(n1298), .Y(n1260) );
  NAND2X1 U1846 ( .A(n1261), .B(n1260), .Y(N743) );
  AOI222XL U1847 ( .A0(\y[5][8] ), .A1(n1293), .B0(\y[3][8] ), .B1(n1294), 
        .C0(\y[4][8] ), .C1(n1295), .Y(n1263) );
  AOI222XL U1848 ( .A0(\y[2][8] ), .A1(n1296), .B0(\y[0][8] ), .B1(n1297), 
        .C0(\y[1][8] ), .C1(n1298), .Y(n1262) );
  NAND2X1 U1849 ( .A(n1263), .B(n1262), .Y(N742) );
  AOI222XL U1850 ( .A0(\y[5][9] ), .A1(n1293), .B0(\y[3][9] ), .B1(n1294), 
        .C0(\y[4][9] ), .C1(n1284), .Y(n1265) );
  AOI222XL U1851 ( .A0(\y[2][9] ), .A1(n1296), .B0(\y[0][9] ), .B1(n1297), 
        .C0(\y[1][9] ), .C1(n1298), .Y(n1264) );
  NAND2X1 U1852 ( .A(n1265), .B(n1264), .Y(N741) );
  AOI222XL U1853 ( .A0(\x[5][0] ), .A1(n1293), .B0(\x[3][0] ), .B1(n1294), 
        .C0(\x[4][0] ), .C1(n1295), .Y(n1267) );
  AOI222XL U1854 ( .A0(\x[2][0] ), .A1(n1296), .B0(\x[0][0] ), .B1(n1297), 
        .C0(\x[1][0] ), .C1(n1298), .Y(n1266) );
  NAND2X1 U1855 ( .A(n1267), .B(n1266), .Y(N644) );
  AOI222XL U1856 ( .A0(\x[5][1] ), .A1(n1293), .B0(\x[3][1] ), .B1(n1294), 
        .C0(\x[4][1] ), .C1(n1284), .Y(n1269) );
  AOI222XL U1857 ( .A0(\x[2][1] ), .A1(n1296), .B0(\x[0][1] ), .B1(n1297), 
        .C0(\x[1][1] ), .C1(n1298), .Y(n1268) );
  NAND2X1 U1858 ( .A(n1269), .B(n1268), .Y(N643) );
  AOI222XL U1859 ( .A0(\x[5][2] ), .A1(n1293), .B0(\x[3][2] ), .B1(n1294), 
        .C0(\x[4][2] ), .C1(n1295), .Y(n1271) );
  AOI222XL U1860 ( .A0(\x[2][2] ), .A1(n1296), .B0(\x[0][2] ), .B1(n1297), 
        .C0(\x[1][2] ), .C1(n1298), .Y(n1270) );
  NAND2X1 U1861 ( .A(n1271), .B(n1270), .Y(N642) );
  AOI222XL U1862 ( .A0(\x[5][3] ), .A1(n1293), .B0(\x[3][3] ), .B1(n1294), 
        .C0(\x[4][3] ), .C1(n1284), .Y(n1273) );
  AOI222XL U1863 ( .A0(\x[2][3] ), .A1(n1296), .B0(\x[0][3] ), .B1(n1297), 
        .C0(\x[1][3] ), .C1(n1298), .Y(n1272) );
  NAND2X1 U1864 ( .A(n1273), .B(n1272), .Y(N641) );
  AOI222XL U1865 ( .A0(\x[5][4] ), .A1(n1293), .B0(\x[3][4] ), .B1(n1294), 
        .C0(\x[4][4] ), .C1(n1295), .Y(n1275) );
  AOI222XL U1866 ( .A0(\x[2][4] ), .A1(n1296), .B0(\x[0][4] ), .B1(n1297), 
        .C0(\x[1][4] ), .C1(n1298), .Y(n1274) );
  NAND2X1 U1867 ( .A(n1275), .B(n1274), .Y(N640) );
  AOI222XL U1868 ( .A0(\x[5][5] ), .A1(n1293), .B0(\x[3][5] ), .B1(n1294), 
        .C0(\x[4][5] ), .C1(n1284), .Y(n1277) );
  AOI222XL U1869 ( .A0(\x[2][5] ), .A1(n1296), .B0(\x[0][5] ), .B1(n1297), 
        .C0(\x[1][5] ), .C1(n1298), .Y(n1276) );
  NAND2X1 U1870 ( .A(n1277), .B(n1276), .Y(N639) );
  AOI222XL U1871 ( .A0(\x[5][6] ), .A1(n1293), .B0(\x[3][6] ), .B1(n1294), 
        .C0(\x[4][6] ), .C1(n1295), .Y(n1279) );
  AOI222XL U1872 ( .A0(\x[2][6] ), .A1(n1296), .B0(\x[0][6] ), .B1(n1297), 
        .C0(\x[1][6] ), .C1(n1298), .Y(n1278) );
  NAND2X1 U1873 ( .A(n1279), .B(n1278), .Y(N638) );
  AOI222XL U1874 ( .A0(\x[5][7] ), .A1(n1293), .B0(\x[3][7] ), .B1(n1294), 
        .C0(\x[4][7] ), .C1(n1284), .Y(n1281) );
  AOI222XL U1875 ( .A0(\x[2][7] ), .A1(n1296), .B0(\x[0][7] ), .B1(n1297), 
        .C0(\x[1][7] ), .C1(n1298), .Y(n1280) );
  NAND2X1 U1876 ( .A(n1281), .B(n1280), .Y(N637) );
  AOI222XL U1877 ( .A0(\x[5][8] ), .A1(n1293), .B0(\x[3][8] ), .B1(n1294), 
        .C0(\x[4][8] ), .C1(n1295), .Y(n1283) );
  AOI222XL U1878 ( .A0(\x[2][8] ), .A1(n1296), .B0(\x[0][8] ), .B1(n1297), 
        .C0(\x[1][8] ), .C1(n1298), .Y(n1282) );
  NAND2X1 U1879 ( .A(n1283), .B(n1282), .Y(N636) );
  AOI222XL U1880 ( .A0(\x[5][9] ), .A1(n1293), .B0(\x[3][9] ), .B1(n1294), 
        .C0(\x[4][9] ), .C1(n1284), .Y(n1291) );
  AOI222XL U1881 ( .A0(\x[2][9] ), .A1(n1296), .B0(\x[0][9] ), .B1(n1297), 
        .C0(\x[1][9] ), .C1(n1298), .Y(n1290) );
  NAND2X1 U1882 ( .A(n1291), .B(n1290), .Y(N635) );
  NOR2X1 U1883 ( .A(n1503), .B(counter_B[2]), .Y(n1300) );
  AOI222XL U1884 ( .A0(\y[5][0] ), .A1(n1347), .B0(\y[3][0] ), .B1(n1348), 
        .C0(\y[4][0] ), .C1(n1349), .Y(n1302) );
  NOR2X1 U1885 ( .A(counter_B[2]), .B(counter_B[0]), .Y(n1299) );
  AOI222XL U1886 ( .A0(\y[2][0] ), .A1(n1350), .B0(\y[0][0] ), .B1(n1176), 
        .C0(\y[1][0] ), .C1(n1351), .Y(n1301) );
  NAND2X1 U1887 ( .A(n1302), .B(n1301), .Y(N622) );
  AOI222XL U1888 ( .A0(\y[5][1] ), .A1(n1347), .B0(\y[3][1] ), .B1(n1348), 
        .C0(\y[4][1] ), .C1(n1339), .Y(n1304) );
  AOI222XL U1889 ( .A0(\y[2][1] ), .A1(n1350), .B0(\y[0][1] ), .B1(n1176), 
        .C0(\y[1][1] ), .C1(n1351), .Y(n1303) );
  NAND2X1 U1890 ( .A(n1304), .B(n1303), .Y(N621) );
  AOI222XL U1891 ( .A0(\y[5][2] ), .A1(n1347), .B0(\y[3][2] ), .B1(n1348), 
        .C0(\y[4][2] ), .C1(n1349), .Y(n1306) );
  AOI222XL U1892 ( .A0(\y[2][2] ), .A1(n1350), .B0(\y[0][2] ), .B1(n1176), 
        .C0(\y[1][2] ), .C1(n1351), .Y(n1305) );
  NAND2X1 U1893 ( .A(n1306), .B(n1305), .Y(N620) );
  AOI222XL U1894 ( .A0(\y[5][3] ), .A1(n1347), .B0(\y[3][3] ), .B1(n1348), 
        .C0(\y[4][3] ), .C1(n1339), .Y(n1308) );
  AOI222XL U1895 ( .A0(\y[2][3] ), .A1(n1350), .B0(\y[0][3] ), .B1(n1176), 
        .C0(\y[1][3] ), .C1(n1351), .Y(n1307) );
  NAND2X1 U1896 ( .A(n1308), .B(n1307), .Y(N619) );
  AOI222XL U1897 ( .A0(\y[5][4] ), .A1(n1347), .B0(\y[3][4] ), .B1(n1348), 
        .C0(\y[4][4] ), .C1(n1349), .Y(n1310) );
  AOI222XL U1898 ( .A0(\y[2][4] ), .A1(n1350), .B0(\y[0][4] ), .B1(n1176), 
        .C0(\y[1][4] ), .C1(n1351), .Y(n1309) );
  NAND2X1 U1899 ( .A(n1310), .B(n1309), .Y(N618) );
  AOI222XL U1900 ( .A0(\y[5][5] ), .A1(n1347), .B0(\y[3][5] ), .B1(n1348), 
        .C0(\y[4][5] ), .C1(n1339), .Y(n1312) );
  AOI222XL U1901 ( .A0(\y[2][5] ), .A1(n1350), .B0(\y[0][5] ), .B1(n1176), 
        .C0(\y[1][5] ), .C1(n1351), .Y(n1311) );
  NAND2X1 U1902 ( .A(n1312), .B(n1311), .Y(N617) );
  AOI222XL U1903 ( .A0(\y[5][6] ), .A1(n1347), .B0(\y[3][6] ), .B1(n1348), 
        .C0(\y[4][6] ), .C1(n1349), .Y(n1314) );
  AOI222XL U1904 ( .A0(\y[2][6] ), .A1(n1350), .B0(\y[0][6] ), .B1(n1176), 
        .C0(\y[1][6] ), .C1(n1351), .Y(n1313) );
  NAND2X1 U1905 ( .A(n1314), .B(n1313), .Y(N616) );
  AOI222XL U1906 ( .A0(\y[5][7] ), .A1(n1347), .B0(\y[3][7] ), .B1(n1348), 
        .C0(\y[4][7] ), .C1(n1339), .Y(n1316) );
  AOI222XL U1907 ( .A0(\y[2][7] ), .A1(n1350), .B0(\y[0][7] ), .B1(n1176), 
        .C0(\y[1][7] ), .C1(n1351), .Y(n1315) );
  NAND2X1 U1908 ( .A(n1316), .B(n1315), .Y(N615) );
  AOI222XL U1909 ( .A0(\y[5][8] ), .A1(n1347), .B0(\y[3][8] ), .B1(n1348), 
        .C0(\y[4][8] ), .C1(n1349), .Y(n1318) );
  AOI222XL U1910 ( .A0(\y[2][8] ), .A1(n1350), .B0(\y[0][8] ), .B1(n1176), 
        .C0(\y[1][8] ), .C1(n1351), .Y(n1317) );
  NAND2X1 U1911 ( .A(n1318), .B(n1317), .Y(N614) );
  AOI222XL U1912 ( .A0(\y[5][9] ), .A1(n1347), .B0(\y[3][9] ), .B1(n1348), 
        .C0(\y[4][9] ), .C1(n1339), .Y(n1320) );
  AOI222XL U1913 ( .A0(\y[2][9] ), .A1(n1350), .B0(\y[0][9] ), .B1(n1176), 
        .C0(\y[1][9] ), .C1(n1351), .Y(n1319) );
  NAND2X1 U1914 ( .A(n1320), .B(n1319), .Y(N613) );
  AOI222XL U1915 ( .A0(\x[5][0] ), .A1(n1347), .B0(\x[3][0] ), .B1(n1348), 
        .C0(\x[4][0] ), .C1(n1349), .Y(n1322) );
  AOI222XL U1916 ( .A0(\x[2][0] ), .A1(n1350), .B0(\x[0][0] ), .B1(n1176), 
        .C0(\x[1][0] ), .C1(n1351), .Y(n1321) );
  NAND2X1 U1917 ( .A(n1322), .B(n1321), .Y(N600) );
  AOI222XL U1918 ( .A0(\x[5][1] ), .A1(n1347), .B0(\x[3][1] ), .B1(n1348), 
        .C0(\x[4][1] ), .C1(n1339), .Y(n1324) );
  AOI222XL U1919 ( .A0(\x[2][1] ), .A1(n1350), .B0(\x[0][1] ), .B1(n1176), 
        .C0(\x[1][1] ), .C1(n1351), .Y(n1323) );
  NAND2X1 U1920 ( .A(n1324), .B(n1323), .Y(N599) );
  AOI222XL U1921 ( .A0(\x[5][2] ), .A1(n1347), .B0(\x[3][2] ), .B1(n1348), 
        .C0(\x[4][2] ), .C1(n1349), .Y(n1326) );
  AOI222XL U1922 ( .A0(\x[2][2] ), .A1(n1350), .B0(\x[0][2] ), .B1(n1176), 
        .C0(\x[1][2] ), .C1(n1351), .Y(n1325) );
  NAND2X1 U1923 ( .A(n1326), .B(n1325), .Y(N598) );
  AOI222XL U1924 ( .A0(\x[5][3] ), .A1(n1347), .B0(\x[3][3] ), .B1(n1348), 
        .C0(\x[4][3] ), .C1(n1339), .Y(n1328) );
  AOI222XL U1925 ( .A0(\x[2][3] ), .A1(n1350), .B0(\x[0][3] ), .B1(n1176), 
        .C0(\x[1][3] ), .C1(n1351), .Y(n1327) );
  NAND2X1 U1926 ( .A(n1328), .B(n1327), .Y(N597) );
  AOI222XL U1927 ( .A0(\x[5][4] ), .A1(n1347), .B0(\x[3][4] ), .B1(n1348), 
        .C0(\x[4][4] ), .C1(n1349), .Y(n1330) );
  AOI222XL U1928 ( .A0(\x[2][4] ), .A1(n1350), .B0(\x[0][4] ), .B1(n1176), 
        .C0(\x[1][4] ), .C1(n1351), .Y(n1329) );
  NAND2X1 U1929 ( .A(n1330), .B(n1329), .Y(N596) );
  AOI222XL U1930 ( .A0(\x[5][5] ), .A1(n1347), .B0(\x[3][5] ), .B1(n1348), 
        .C0(\x[4][5] ), .C1(n1339), .Y(n1332) );
  AOI222XL U1931 ( .A0(\x[2][5] ), .A1(n1350), .B0(\x[0][5] ), .B1(n1176), 
        .C0(\x[1][5] ), .C1(n1351), .Y(n1331) );
  NAND2X1 U1932 ( .A(n1332), .B(n1331), .Y(N595) );
  AOI222XL U1933 ( .A0(\x[5][6] ), .A1(n1347), .B0(\x[3][6] ), .B1(n1348), 
        .C0(\x[4][6] ), .C1(n1349), .Y(n1334) );
  AOI222XL U1934 ( .A0(\x[2][6] ), .A1(n1350), .B0(\x[0][6] ), .B1(n1176), 
        .C0(\x[1][6] ), .C1(n1351), .Y(n1333) );
  NAND2X1 U1935 ( .A(n1334), .B(n1333), .Y(N594) );
  AOI222XL U1936 ( .A0(\x[5][7] ), .A1(n1347), .B0(\x[3][7] ), .B1(n1348), 
        .C0(\x[4][7] ), .C1(n1339), .Y(n1336) );
  AOI222XL U1937 ( .A0(\x[2][7] ), .A1(n1350), .B0(\x[0][7] ), .B1(n1176), 
        .C0(\x[1][7] ), .C1(n1351), .Y(n1335) );
  NAND2X1 U1938 ( .A(n1336), .B(n1335), .Y(N593) );
  AOI222XL U1939 ( .A0(\x[5][8] ), .A1(n1347), .B0(\x[3][8] ), .B1(n1348), 
        .C0(\x[4][8] ), .C1(n1349), .Y(n1338) );
  AOI222XL U1940 ( .A0(\x[2][8] ), .A1(n1350), .B0(\x[0][8] ), .B1(n1176), 
        .C0(\x[1][8] ), .C1(n1351), .Y(n1337) );
  NAND2X1 U1941 ( .A(n1338), .B(n1337), .Y(N592) );
  AOI222XL U1942 ( .A0(\x[5][9] ), .A1(n1347), .B0(\x[3][9] ), .B1(n1348), 
        .C0(\x[4][9] ), .C1(n1339), .Y(n1345) );
  AOI222XL U1943 ( .A0(\x[2][9] ), .A1(n1350), .B0(\x[0][9] ), .B1(n1176), 
        .C0(\x[1][9] ), .C1(n1351), .Y(n1344) );
  NAND2X1 U1944 ( .A(n1345), .B(n1344), .Y(N591) );
endmodule

