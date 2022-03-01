/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Tue Mar  1 16:18:03 2022
/////////////////////////////////////////////////////////////


module geofence_DW_cmp_0 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [20:0] A;
  input [20:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186;

  CLKINVX1 U57 ( .A(A[17]), .Y(n126) );
  CLKINVX1 U58 ( .A(A[14]), .Y(n127) );
  CLKINVX1 U59 ( .A(B[13]), .Y(n137) );
  CLKINVX1 U60 ( .A(B[15]), .Y(n136) );
  CLKINVX1 U61 ( .A(A[19]), .Y(n125) );
  CLKINVX1 U62 ( .A(B[18]), .Y(n135) );
  CLKINVX1 U63 ( .A(A[12]), .Y(n128) );
  CLKINVX1 U64 ( .A(B[11]), .Y(n138) );
  CLKINVX1 U65 ( .A(A[8]), .Y(n131) );
  CLKINVX1 U66 ( .A(A[10]), .Y(n129) );
  CLKINVX1 U67 ( .A(B[9]), .Y(n139) );
  CLKINVX1 U68 ( .A(A[5]), .Y(n132) );
  CLKINVX1 U69 ( .A(B[6]), .Y(n140) );
  CLKINVX1 U70 ( .A(A[20]), .Y(n124) );
  CLKINVX1 U71 ( .A(n161), .Y(n130) );
  CLKINVX1 U72 ( .A(B[4]), .Y(n141) );
  CLKINVX1 U73 ( .A(n175), .Y(n134) );
  CLKINVX1 U74 ( .A(A[3]), .Y(n133) );
  CLKINVX1 U75 ( .A(B[1]), .Y(n142) );
  NAND2X1 U76 ( .A(n143), .B(n144), .Y(GE_LT_GT_LE) );
  OAI211X1 U77 ( .A0(B[20]), .A1(n124), .B0(n145), .C0(n146), .Y(n144) );
  OAI21XL U78 ( .A0(n147), .A1(n148), .B0(n149), .Y(n146) );
  OAI222XL U79 ( .A0(A[15]), .A1(n150), .B0(n136), .B1(n150), .C0(A[15]), .C1(
        n136), .Y(n149) );
  OAI222XL U80 ( .A0(B[14]), .A1(n127), .B0(B[14]), .B1(n151), .C0(n127), .C1(
        n151), .Y(n150) );
  OAI222XL U81 ( .A0(A[13]), .A1(n152), .B0(n137), .B1(n152), .C0(A[13]), .C1(
        n137), .Y(n151) );
  OAI222XL U82 ( .A0(B[12]), .A1(n128), .B0(B[12]), .B1(n153), .C0(n128), .C1(
        n153), .Y(n152) );
  NAND2X1 U83 ( .A(A[11]), .B(n138), .Y(n153) );
  OAI21XL U84 ( .A0(A[15]), .A1(n136), .B0(n154), .Y(n148) );
  OAI22XL U85 ( .A0(n155), .A1(n127), .B0(B[14]), .B1(n155), .Y(n154) );
  OAI21XL U86 ( .A0(A[13]), .A1(n137), .B0(n156), .Y(n155) );
  OAI22XL U87 ( .A0(n157), .A1(n128), .B0(B[12]), .B1(n157), .Y(n156) );
  NOR2X1 U88 ( .A(n138), .B(A[11]), .Y(n157) );
  AOI221XL U89 ( .A0(A[10]), .A1(n130), .B0(n158), .B1(n159), .C0(n160), .Y(
        n147) );
  OAI22XL U90 ( .A0(B[10]), .A1(n129), .B0(B[10]), .B1(n161), .Y(n160) );
  OAI22XL U91 ( .A0(n129), .A1(n162), .B0(B[10]), .B1(n162), .Y(n159) );
  OAI21XL U92 ( .A0(A[9]), .A1(n139), .B0(n163), .Y(n162) );
  OAI22XL U93 ( .A0(n164), .A1(n131), .B0(B[8]), .B1(n164), .Y(n163) );
  NOR2BX1 U94 ( .AN(B[7]), .B(A[7]), .Y(n164) );
  OAI21XL U95 ( .A0(n165), .A1(n166), .B0(n167), .Y(n158) );
  OAI222XL U96 ( .A0(A[6]), .A1(n168), .B0(n140), .B1(n168), .C0(A[6]), .C1(
        n140), .Y(n167) );
  OAI222XL U97 ( .A0(B[5]), .A1(n132), .B0(B[5]), .B1(n169), .C0(n132), .C1(
        n169), .Y(n168) );
  NAND2X1 U98 ( .A(A[4]), .B(n141), .Y(n169) );
  OAI21XL U99 ( .A0(A[6]), .A1(n140), .B0(n170), .Y(n166) );
  OAI22XL U100 ( .A0(n171), .A1(n132), .B0(B[5]), .B1(n171), .Y(n170) );
  NOR2X1 U101 ( .A(n141), .B(A[4]), .Y(n171) );
  AOI221XL U102 ( .A0(A[3]), .A1(n134), .B0(n172), .B1(n173), .C0(n174), .Y(
        n165) );
  OAI22XL U103 ( .A0(B[3]), .A1(n133), .B0(B[3]), .B1(n175), .Y(n174) );
  OAI22XL U104 ( .A0(n176), .A1(n133), .B0(B[3]), .B1(n176), .Y(n173) );
  NOR2BX1 U105 ( .AN(B[2]), .B(A[2]), .Y(n176) );
  AO22X1 U106 ( .A0(n177), .A1(A[0]), .B0(A[1]), .B1(n142), .Y(n172) );
  AOI2BB1X1 U107 ( .A0N(n142), .A1N(A[1]), .B0(B[0]), .Y(n177) );
  NAND2BX1 U108 ( .AN(B[2]), .B(A[2]), .Y(n175) );
  OAI222XL U109 ( .A0(A[9]), .A1(n178), .B0(n178), .B1(n139), .C0(A[9]), .C1(
        n139), .Y(n161) );
  OAI222XL U110 ( .A0(B[8]), .A1(n131), .B0(B[8]), .B1(n179), .C0(n179), .C1(
        n131), .Y(n178) );
  NAND2BX1 U111 ( .AN(B[7]), .B(A[7]), .Y(n179) );
  OAI22XL U112 ( .A0(n180), .A1(n125), .B0(B[19]), .B1(n180), .Y(n145) );
  OAI21XL U113 ( .A0(A[18]), .A1(n135), .B0(n181), .Y(n180) );
  OAI22XL U114 ( .A0(n182), .A1(n126), .B0(B[17]), .B1(n182), .Y(n181) );
  NOR2BX1 U115 ( .AN(B[16]), .B(A[16]), .Y(n182) );
  OAI222XL U116 ( .A0(B[20]), .A1(n183), .B0(n124), .B1(n183), .C0(B[20]), 
        .C1(n124), .Y(n143) );
  OAI222XL U117 ( .A0(B[19]), .A1(n125), .B0(B[19]), .B1(n184), .C0(n125), 
        .C1(n184), .Y(n183) );
  OAI222XL U118 ( .A0(A[18]), .A1(n185), .B0(n135), .B1(n185), .C0(A[18]), 
        .C1(n135), .Y(n184) );
  OAI222XL U119 ( .A0(B[17]), .A1(n126), .B0(B[17]), .B1(n186), .C0(n126), 
        .C1(n186), .Y(n185) );
  NAND2BX1 U120 ( .AN(B[16]), .B(A[16]), .Y(n186) );
endmodule


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  XNOR2X1 U2 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
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

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  XNOR2X1 U8 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
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

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  XNOR2X1 U5 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
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

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n6) );
  XNOR2X1 U9 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  XNOR2X1 U5 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
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

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n8) );
  XNOR2X1 U7 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
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

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  XNOR2X1 U2 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
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

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n6) );
  XNOR2X1 U9 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW_mult_tc_0 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n27), .B(n31), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n34), .B(n32), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n35), .B(n39), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n40), .B(n44), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n45), .B(n51), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n52), .B(n57), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n58), .B(n65), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n66), .B(n73), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n74), .B(n79), .CI(n14), .CO(n13), .S(product[10]) );
  ADDFXL U15 ( .A(n80), .B(n86), .CI(n15), .CO(n14), .S(product[9]) );
  ADDFXL U16 ( .A(n87), .B(n91), .CI(n16), .CO(n15), .S(product[8]) );
  ADDFXL U17 ( .A(n92), .B(n96), .CI(n17), .CO(n16), .S(product[7]) );
  ADDFXL U18 ( .A(n98), .B(n97), .CI(n18), .CO(n17), .S(product[6]) );
  ADDFXL U19 ( .A(n99), .B(n102), .CI(n19), .CO(n18), .S(product[5]) );
  ADDFXL U20 ( .A(n103), .B(n104), .CI(n20), .CO(n19), .S(product[4]) );
  ADDFXL U21 ( .A(n105), .B(n110), .CI(n21), .CO(n20), .S(product[3]) );
  ADDFXL U22 ( .A(n176), .B(n166), .CI(n22), .CO(n21), .S(product[2]) );
  ADDHXL U23 ( .A(n111), .B(n177), .CO(n22), .S(product[1]) );
  ADDFXL U25 ( .A(n28), .B(n123), .CI(n113), .CO(n24), .S(n25) );
  ADDFXL U26 ( .A(n360), .B(n114), .CI(n30), .CO(n26), .S(n27) );
  CMPR42X1 U28 ( .A(n134), .B(n124), .C(n36), .D(n115), .ICI(n33), .S(n32), 
        .ICO(n30), .CO(n31) );
  CMPR42X1 U29 ( .A(n125), .B(n116), .C(n362), .D(n41), .ICI(n38), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n135), .B(n126), .C(n42), .D(n46), .ICI(n43), .S(n40), 
        .ICO(n38), .CO(n39) );
  ADDFXL U32 ( .A(n48), .B(n144), .CI(n117), .CO(n41), .S(n42) );
  CMPR42X1 U33 ( .A(n365), .B(n53), .C(n54), .D(n47), .ICI(n50), .S(n45), 
        .ICO(n43), .CO(n44) );
  ADDFXL U34 ( .A(n127), .B(n118), .CI(n136), .CO(n46), .S(n47) );
  CMPR42X1 U36 ( .A(n137), .B(n128), .C(n55), .D(n60), .ICI(n56), .S(n52), 
        .ICO(n50), .CO(n51) );
  CMPR42X1 U37 ( .A(n155), .B(n119), .C(n62), .D(n145), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U38 ( .A(n363), .B(n67), .C(n68), .D(n61), .ICI(n64), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U39 ( .A(n129), .B(n156), .C(n146), .D(n120), .ICI(n70), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n138), .B(n71), .C(n76), .D(n69), .ICI(n72), .S(n66), 
        .ICO(n64), .CO(n65) );
  CMPR42X1 U42 ( .A(n157), .B(n106), .C(n147), .D(n130), .ICI(n75), .S(n69), 
        .ICO(n67), .CO(n68) );
  CMPR42X1 U45 ( .A(n148), .B(n83), .C(n77), .D(n81), .ICI(n78), .S(n74), 
        .ICO(n72), .CO(n73) );
  CMPR42X1 U46 ( .A(n122), .B(n139), .C(n168), .D(n158), .ICI(n131), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U47 ( .A(n169), .B(n84), .C(n85), .D(n88), .ICI(n82), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDFXL U48 ( .A(n140), .B(n149), .CI(n159), .CO(n81), .S(n82) );
  ADDHXL U49 ( .A(n132), .B(n107), .CO(n83), .S(n84) );
  CMPR42X1 U50 ( .A(n160), .B(n141), .C(n93), .D(n90), .ICI(n89), .S(n87), 
        .ICO(n85), .CO(n86) );
  ADDFXL U51 ( .A(n150), .B(n133), .CI(n170), .CO(n88), .S(n89) );
  CMPR42X1 U52 ( .A(n171), .B(n151), .C(n161), .D(n95), .ICI(n94), .S(n92), 
        .ICO(n90), .CO(n91) );
  ADDHXL U53 ( .A(n142), .B(n108), .CO(n93), .S(n94) );
  CMPR42X1 U54 ( .A(n143), .B(n172), .C(n162), .D(n152), .ICI(n100), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDFXL U55 ( .A(n163), .B(n173), .CI(n101), .CO(n98), .S(n99) );
  ADDHXL U56 ( .A(n153), .B(n109), .CO(n100), .S(n101) );
  ADDFXL U57 ( .A(n174), .B(n154), .CI(n164), .CO(n102), .S(n103) );
  ADDHXL U58 ( .A(n175), .B(n165), .CO(n104), .S(n105) );
  CLKINVX1 U262 ( .A(n48), .Y(n365) );
  INVX3 U263 ( .A(n374), .Y(n359) );
  CLKINVX1 U264 ( .A(n62), .Y(n363) );
  CLKINVX1 U265 ( .A(n36), .Y(n362) );
  CLKBUFX3 U266 ( .A(n387), .Y(n351) );
  NAND2X1 U267 ( .A(n352), .B(n450), .Y(n387) );
  INVX3 U268 ( .A(a[3]), .Y(n367) );
  CLKBUFX3 U269 ( .A(n405), .Y(n349) );
  NAND2X1 U270 ( .A(n350), .B(n449), .Y(n405) );
  CLKBUFX3 U271 ( .A(n393), .Y(n355) );
  NAND2X1 U272 ( .A(n356), .B(n452), .Y(n393) );
  NAND2X2 U273 ( .A(a[1]), .B(n369), .Y(n378) );
  INVX3 U274 ( .A(a[7]), .Y(n364) );
  INVX3 U275 ( .A(a[5]), .Y(n366) );
  INVX3 U276 ( .A(a[9]), .Y(n361) );
  INVX3 U277 ( .A(a[1]), .Y(n368) );
  CLKBUFX3 U278 ( .A(n403), .Y(n350) );
  XNOR2X1 U279 ( .A(a[2]), .B(a[1]), .Y(n403) );
  CLKBUFX3 U280 ( .A(n384), .Y(n352) );
  XNOR2X1 U281 ( .A(a[4]), .B(a[3]), .Y(n384) );
  CLKBUFX3 U282 ( .A(n382), .Y(n354) );
  XNOR2X1 U283 ( .A(a[6]), .B(a[5]), .Y(n382) );
  CLKBUFX3 U284 ( .A(n381), .Y(n353) );
  NAND2X1 U285 ( .A(n354), .B(n451), .Y(n381) );
  CLKBUFX3 U286 ( .A(n390), .Y(n356) );
  XNOR2X1 U287 ( .A(a[8]), .B(a[7]), .Y(n390) );
  CLKINVX1 U288 ( .A(n28), .Y(n360) );
  CLKINVX1 U289 ( .A(n357), .Y(n370) );
  INVX3 U290 ( .A(a[0]), .Y(n369) );
  CLKBUFX3 U291 ( .A(a[10]), .Y(n358) );
  CLKBUFX3 U292 ( .A(b[0]), .Y(n357) );
  XOR2X1 U293 ( .A(n371), .B(n372), .Y(product[20]) );
  XOR2X1 U294 ( .A(n4), .B(n24), .Y(n372) );
  NAND2X1 U295 ( .A(n373), .B(n374), .Y(n371) );
  XOR2X1 U296 ( .A(b[10]), .B(n358), .Y(n373) );
  NOR2X1 U297 ( .A(n369), .B(n370), .Y(product[0]) );
  XOR2X1 U298 ( .A(n375), .B(n376), .Y(n71) );
  NAND2BX1 U299 ( .AN(n376), .B(n375), .Y(n70) );
  NAND2X1 U300 ( .A(n377), .B(n374), .Y(n375) );
  XOR2X1 U301 ( .A(b[1]), .B(n358), .Y(n377) );
  OAI2BB1X1 U302 ( .A0N(n369), .A1N(n378), .B0(n379), .Y(n376) );
  OAI22XL U303 ( .A0(n380), .A1(n353), .B0(n354), .B1(n383), .Y(n62) );
  OAI22XL U304 ( .A0(n352), .A1(n385), .B0(n386), .B1(n351), .Y(n48) );
  OAI22XL U305 ( .A0(n354), .A1(n388), .B0(n389), .B1(n353), .Y(n36) );
  OAI22XL U306 ( .A0(n356), .A1(n391), .B0(n392), .B1(n355), .Y(n28) );
  OAI22XL U307 ( .A0(n357), .A1(n378), .B0(n394), .B1(n369), .Y(n177) );
  OAI22XL U308 ( .A0(n394), .A1(n378), .B0(n395), .B1(n369), .Y(n176) );
  XOR2X1 U309 ( .A(b[1]), .B(n368), .Y(n394) );
  OAI22XL U310 ( .A0(n395), .A1(n378), .B0(n396), .B1(n369), .Y(n175) );
  XOR2X1 U311 ( .A(b[2]), .B(n368), .Y(n395) );
  OAI22XL U312 ( .A0(n396), .A1(n378), .B0(n397), .B1(n369), .Y(n174) );
  XOR2X1 U313 ( .A(b[3]), .B(n368), .Y(n396) );
  OAI22XL U314 ( .A0(n397), .A1(n378), .B0(n398), .B1(n369), .Y(n173) );
  XOR2X1 U315 ( .A(b[4]), .B(n368), .Y(n397) );
  OAI22XL U316 ( .A0(n398), .A1(n378), .B0(n399), .B1(n369), .Y(n172) );
  XOR2X1 U317 ( .A(b[5]), .B(n368), .Y(n398) );
  OAI22XL U318 ( .A0(n399), .A1(n378), .B0(n400), .B1(n369), .Y(n171) );
  XOR2X1 U319 ( .A(b[6]), .B(n368), .Y(n399) );
  OAI22XL U320 ( .A0(n400), .A1(n378), .B0(n401), .B1(n369), .Y(n170) );
  XOR2X1 U321 ( .A(b[7]), .B(n368), .Y(n400) );
  OAI22XL U322 ( .A0(n401), .A1(n378), .B0(n402), .B1(n369), .Y(n169) );
  XOR2X1 U323 ( .A(b[8]), .B(n368), .Y(n401) );
  OAI2BB2XL U324 ( .B0(n402), .B1(n378), .A0N(n379), .A1N(a[0]), .Y(n168) );
  XOR2X1 U325 ( .A(b[10]), .B(a[1]), .Y(n379) );
  XOR2X1 U326 ( .A(b[9]), .B(n368), .Y(n402) );
  NOR2X1 U327 ( .A(n350), .B(n370), .Y(n166) );
  OAI22XL U328 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n165) );
  XOR2X1 U329 ( .A(n367), .B(n357), .Y(n404) );
  OAI22XL U330 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n164) );
  XOR2X1 U331 ( .A(b[1]), .B(n367), .Y(n406) );
  OAI22XL U332 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n163) );
  XOR2X1 U333 ( .A(b[2]), .B(n367), .Y(n407) );
  OAI22XL U334 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n162) );
  XOR2X1 U335 ( .A(b[3]), .B(n367), .Y(n408) );
  OAI22XL U336 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n161) );
  XOR2X1 U337 ( .A(b[4]), .B(n367), .Y(n409) );
  OAI22XL U338 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n160) );
  XOR2X1 U339 ( .A(b[5]), .B(n367), .Y(n410) );
  OAI22XL U340 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n159) );
  XOR2X1 U341 ( .A(b[6]), .B(n367), .Y(n411) );
  OAI22XL U342 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n158) );
  XOR2X1 U343 ( .A(b[7]), .B(n367), .Y(n412) );
  OAI22XL U344 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n157) );
  XOR2X1 U345 ( .A(b[8]), .B(n367), .Y(n413) );
  OAI22XL U346 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n156) );
  XOR2X1 U347 ( .A(b[9]), .B(n367), .Y(n414) );
  AO21X1 U348 ( .A0(n349), .A1(n350), .B0(n415), .Y(n155) );
  XOR2X1 U349 ( .A(b[10]), .B(n367), .Y(n415) );
  NOR2X1 U350 ( .A(n352), .B(n370), .Y(n154) );
  OAI22XL U351 ( .A0(n416), .A1(n351), .B0(n352), .B1(n417), .Y(n153) );
  XOR2X1 U352 ( .A(n366), .B(n357), .Y(n416) );
  OAI22XL U353 ( .A0(n417), .A1(n351), .B0(n352), .B1(n418), .Y(n152) );
  XOR2X1 U354 ( .A(b[1]), .B(n366), .Y(n417) );
  OAI22XL U355 ( .A0(n418), .A1(n351), .B0(n352), .B1(n419), .Y(n151) );
  XOR2X1 U356 ( .A(b[2]), .B(n366), .Y(n418) );
  OAI22XL U357 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n150) );
  XOR2X1 U358 ( .A(b[3]), .B(n366), .Y(n419) );
  OAI22XL U359 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n149) );
  XOR2X1 U360 ( .A(b[4]), .B(n366), .Y(n420) );
  OAI22XL U361 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n148) );
  XOR2X1 U362 ( .A(b[5]), .B(n366), .Y(n421) );
  OAI22XL U363 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n147) );
  XOR2X1 U364 ( .A(b[6]), .B(n366), .Y(n422) );
  OAI22XL U365 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n146) );
  XOR2X1 U366 ( .A(b[7]), .B(n366), .Y(n423) );
  OAI22XL U367 ( .A0(n424), .A1(n351), .B0(n352), .B1(n386), .Y(n145) );
  XOR2X1 U368 ( .A(b[9]), .B(n366), .Y(n386) );
  XOR2X1 U369 ( .A(b[8]), .B(n366), .Y(n424) );
  AO21X1 U370 ( .A0(n351), .A1(n352), .B0(n385), .Y(n144) );
  XOR2X1 U371 ( .A(b[10]), .B(n366), .Y(n385) );
  NOR2X1 U372 ( .A(n354), .B(n370), .Y(n143) );
  OAI22XL U373 ( .A0(n425), .A1(n353), .B0(n354), .B1(n426), .Y(n142) );
  XOR2X1 U374 ( .A(n364), .B(n357), .Y(n425) );
  OAI22XL U375 ( .A0(n426), .A1(n353), .B0(n354), .B1(n427), .Y(n141) );
  XOR2X1 U376 ( .A(b[1]), .B(n364), .Y(n426) );
  OAI22XL U377 ( .A0(n427), .A1(n353), .B0(n354), .B1(n428), .Y(n140) );
  XOR2X1 U378 ( .A(b[2]), .B(n364), .Y(n427) );
  OAI22XL U379 ( .A0(n428), .A1(n353), .B0(n354), .B1(n429), .Y(n139) );
  XOR2X1 U380 ( .A(b[3]), .B(n364), .Y(n428) );
  OAI22XL U381 ( .A0(n429), .A1(n353), .B0(n354), .B1(n380), .Y(n138) );
  XOR2X1 U382 ( .A(b[5]), .B(n364), .Y(n380) );
  XOR2X1 U383 ( .A(b[4]), .B(n364), .Y(n429) );
  OAI22XL U384 ( .A0(n383), .A1(n353), .B0(n354), .B1(n430), .Y(n137) );
  XOR2X1 U385 ( .A(b[6]), .B(n364), .Y(n383) );
  OAI22XL U386 ( .A0(n430), .A1(n353), .B0(n354), .B1(n431), .Y(n136) );
  XOR2X1 U387 ( .A(b[7]), .B(n364), .Y(n430) );
  OAI22XL U388 ( .A0(n431), .A1(n353), .B0(n354), .B1(n389), .Y(n135) );
  XOR2X1 U389 ( .A(b[9]), .B(n364), .Y(n389) );
  XOR2X1 U390 ( .A(b[8]), .B(n364), .Y(n431) );
  AO21X1 U391 ( .A0(n353), .A1(n354), .B0(n388), .Y(n134) );
  XOR2X1 U392 ( .A(b[10]), .B(n364), .Y(n388) );
  NOR2X1 U393 ( .A(n356), .B(n370), .Y(n133) );
  OAI22XL U394 ( .A0(n432), .A1(n355), .B0(n356), .B1(n433), .Y(n132) );
  XOR2X1 U395 ( .A(n361), .B(n357), .Y(n432) );
  OAI22XL U396 ( .A0(n433), .A1(n355), .B0(n356), .B1(n434), .Y(n131) );
  XOR2X1 U397 ( .A(b[1]), .B(n361), .Y(n433) );
  OAI22XL U398 ( .A0(n434), .A1(n355), .B0(n356), .B1(n435), .Y(n130) );
  XOR2X1 U399 ( .A(b[2]), .B(n361), .Y(n434) );
  OAI22XL U400 ( .A0(n435), .A1(n355), .B0(n356), .B1(n436), .Y(n129) );
  XOR2X1 U401 ( .A(b[3]), .B(n361), .Y(n435) );
  OAI22XL U402 ( .A0(n436), .A1(n355), .B0(n356), .B1(n437), .Y(n128) );
  XOR2X1 U403 ( .A(b[4]), .B(n361), .Y(n436) );
  OAI22XL U404 ( .A0(n437), .A1(n355), .B0(n356), .B1(n438), .Y(n127) );
  XOR2X1 U405 ( .A(b[5]), .B(n361), .Y(n437) );
  OAI22XL U406 ( .A0(n438), .A1(n355), .B0(n356), .B1(n439), .Y(n126) );
  XOR2X1 U407 ( .A(b[6]), .B(n361), .Y(n438) );
  OAI22XL U408 ( .A0(n439), .A1(n355), .B0(n356), .B1(n440), .Y(n125) );
  XOR2X1 U409 ( .A(b[7]), .B(n361), .Y(n439) );
  OAI22XL U410 ( .A0(n440), .A1(n355), .B0(n356), .B1(n392), .Y(n124) );
  XOR2X1 U411 ( .A(b[9]), .B(n361), .Y(n392) );
  XOR2X1 U412 ( .A(b[8]), .B(n361), .Y(n440) );
  AO21X1 U413 ( .A0(n355), .A1(n356), .B0(n391), .Y(n123) );
  XOR2X1 U414 ( .A(b[10]), .B(n361), .Y(n391) );
  NOR2X1 U415 ( .A(n359), .B(n370), .Y(n122) );
  NOR2X1 U416 ( .A(n359), .B(n441), .Y(n120) );
  XNOR2X1 U417 ( .A(b[2]), .B(n358), .Y(n441) );
  NOR2X1 U418 ( .A(n359), .B(n442), .Y(n119) );
  XNOR2X1 U419 ( .A(b[3]), .B(n358), .Y(n442) );
  NOR2X1 U420 ( .A(n359), .B(n443), .Y(n118) );
  XNOR2X1 U421 ( .A(b[4]), .B(n358), .Y(n443) );
  NOR2X1 U422 ( .A(n359), .B(n444), .Y(n117) );
  XNOR2X1 U423 ( .A(b[5]), .B(n358), .Y(n444) );
  NOR2X1 U424 ( .A(n359), .B(n445), .Y(n116) );
  XNOR2X1 U425 ( .A(b[6]), .B(n358), .Y(n445) );
  NOR2X1 U426 ( .A(n359), .B(n446), .Y(n115) );
  XNOR2X1 U427 ( .A(b[7]), .B(n358), .Y(n446) );
  NOR2X1 U428 ( .A(n359), .B(n447), .Y(n114) );
  XNOR2X1 U429 ( .A(b[8]), .B(n358), .Y(n447) );
  NOR2X1 U430 ( .A(n359), .B(n448), .Y(n113) );
  XNOR2X1 U431 ( .A(b[9]), .B(n358), .Y(n448) );
  OAI21XL U432 ( .A0(n357), .A1(n368), .B0(n378), .Y(n111) );
  OAI32X1 U433 ( .A0(n367), .A1(n357), .A2(n350), .B0(n367), .B1(n349), .Y(
        n110) );
  XOR2X1 U434 ( .A(a[3]), .B(a[2]), .Y(n449) );
  OAI32X1 U435 ( .A0(n366), .A1(n357), .A2(n352), .B0(n366), .B1(n351), .Y(
        n109) );
  XOR2X1 U436 ( .A(a[5]), .B(a[4]), .Y(n450) );
  OAI32X1 U437 ( .A0(n364), .A1(n357), .A2(n354), .B0(n364), .B1(n353), .Y(
        n108) );
  XOR2X1 U438 ( .A(a[7]), .B(a[6]), .Y(n451) );
  OAI32X1 U439 ( .A0(n361), .A1(n357), .A2(n356), .B0(n361), .B1(n355), .Y(
        n107) );
  XOR2X1 U440 ( .A(a[9]), .B(a[8]), .Y(n452) );
  NOR3BXL U441 ( .AN(n358), .B(n357), .C(n359), .Y(n106) );
  XOR2X1 U442 ( .A(n358), .B(a[9]), .Y(n374) );
endmodule


module geofence_DW_mult_tc_1 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n27), .B(n31), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n34), .B(n32), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n35), .B(n39), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n40), .B(n44), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n45), .B(n51), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n52), .B(n57), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n58), .B(n65), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n66), .B(n73), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n74), .B(n79), .CI(n14), .CO(n13), .S(product[10]) );
  ADDFXL U15 ( .A(n80), .B(n86), .CI(n15), .CO(n14), .S(product[9]) );
  ADDFXL U16 ( .A(n87), .B(n91), .CI(n16), .CO(n15), .S(product[8]) );
  ADDFXL U17 ( .A(n92), .B(n96), .CI(n17), .CO(n16), .S(product[7]) );
  ADDFXL U18 ( .A(n98), .B(n97), .CI(n18), .CO(n17), .S(product[6]) );
  ADDFXL U19 ( .A(n99), .B(n102), .CI(n19), .CO(n18), .S(product[5]) );
  ADDFXL U20 ( .A(n103), .B(n104), .CI(n20), .CO(n19), .S(product[4]) );
  ADDFXL U21 ( .A(n105), .B(n110), .CI(n21), .CO(n20), .S(product[3]) );
  ADDFXL U22 ( .A(n176), .B(n166), .CI(n22), .CO(n21), .S(product[2]) );
  ADDHXL U23 ( .A(n111), .B(n177), .CO(n22), .S(product[1]) );
  ADDFXL U25 ( .A(n28), .B(n123), .CI(n113), .CO(n24), .S(n25) );
  ADDFXL U26 ( .A(n360), .B(n114), .CI(n30), .CO(n26), .S(n27) );
  CMPR42X1 U28 ( .A(n134), .B(n124), .C(n36), .D(n115), .ICI(n33), .S(n32), 
        .ICO(n30), .CO(n31) );
  CMPR42X1 U29 ( .A(n125), .B(n116), .C(n362), .D(n41), .ICI(n38), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n135), .B(n126), .C(n42), .D(n46), .ICI(n43), .S(n40), 
        .ICO(n38), .CO(n39) );
  ADDFXL U32 ( .A(n48), .B(n144), .CI(n117), .CO(n41), .S(n42) );
  CMPR42X1 U33 ( .A(n365), .B(n53), .C(n54), .D(n47), .ICI(n50), .S(n45), 
        .ICO(n43), .CO(n44) );
  ADDFXL U34 ( .A(n127), .B(n118), .CI(n136), .CO(n46), .S(n47) );
  CMPR42X1 U36 ( .A(n137), .B(n128), .C(n55), .D(n60), .ICI(n56), .S(n52), 
        .ICO(n50), .CO(n51) );
  CMPR42X1 U37 ( .A(n155), .B(n119), .C(n62), .D(n145), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U38 ( .A(n363), .B(n67), .C(n68), .D(n61), .ICI(n64), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U39 ( .A(n129), .B(n156), .C(n146), .D(n120), .ICI(n70), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n138), .B(n71), .C(n76), .D(n69), .ICI(n72), .S(n66), 
        .ICO(n64), .CO(n65) );
  CMPR42X1 U42 ( .A(n157), .B(n106), .C(n147), .D(n130), .ICI(n75), .S(n69), 
        .ICO(n67), .CO(n68) );
  CMPR42X1 U45 ( .A(n148), .B(n83), .C(n77), .D(n81), .ICI(n78), .S(n74), 
        .ICO(n72), .CO(n73) );
  CMPR42X1 U46 ( .A(n122), .B(n139), .C(n168), .D(n158), .ICI(n131), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U47 ( .A(n169), .B(n84), .C(n85), .D(n88), .ICI(n82), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDFXL U48 ( .A(n140), .B(n149), .CI(n159), .CO(n81), .S(n82) );
  ADDHXL U49 ( .A(n132), .B(n107), .CO(n83), .S(n84) );
  CMPR42X1 U50 ( .A(n160), .B(n141), .C(n93), .D(n90), .ICI(n89), .S(n87), 
        .ICO(n85), .CO(n86) );
  ADDFXL U51 ( .A(n150), .B(n133), .CI(n170), .CO(n88), .S(n89) );
  CMPR42X1 U52 ( .A(n171), .B(n151), .C(n161), .D(n95), .ICI(n94), .S(n92), 
        .ICO(n90), .CO(n91) );
  ADDHXL U53 ( .A(n142), .B(n108), .CO(n93), .S(n94) );
  CMPR42X1 U54 ( .A(n143), .B(n172), .C(n162), .D(n152), .ICI(n100), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDFXL U55 ( .A(n163), .B(n173), .CI(n101), .CO(n98), .S(n99) );
  ADDHXL U56 ( .A(n153), .B(n109), .CO(n100), .S(n101) );
  ADDFXL U57 ( .A(n174), .B(n154), .CI(n164), .CO(n102), .S(n103) );
  ADDHXL U58 ( .A(n175), .B(n165), .CO(n104), .S(n105) );
  CLKINVX1 U262 ( .A(n48), .Y(n365) );
  INVX3 U263 ( .A(n374), .Y(n359) );
  CLKINVX1 U264 ( .A(n62), .Y(n363) );
  CLKINVX1 U265 ( .A(n36), .Y(n362) );
  CLKBUFX3 U266 ( .A(n387), .Y(n351) );
  NAND2X1 U267 ( .A(n352), .B(n450), .Y(n387) );
  INVX3 U268 ( .A(a[5]), .Y(n366) );
  INVX3 U269 ( .A(a[3]), .Y(n367) );
  INVX3 U270 ( .A(a[1]), .Y(n368) );
  CLKBUFX3 U271 ( .A(n403), .Y(n350) );
  XNOR2X1 U272 ( .A(a[2]), .B(a[1]), .Y(n403) );
  CLKBUFX3 U273 ( .A(n384), .Y(n352) );
  XNOR2X1 U274 ( .A(a[4]), .B(a[3]), .Y(n384) );
  CLKBUFX3 U275 ( .A(n405), .Y(n349) );
  NAND2X1 U276 ( .A(n350), .B(n449), .Y(n405) );
  CLKBUFX3 U277 ( .A(n393), .Y(n355) );
  NAND2X1 U278 ( .A(n356), .B(n452), .Y(n393) );
  NAND2X2 U279 ( .A(a[1]), .B(n369), .Y(n378) );
  INVX3 U280 ( .A(a[7]), .Y(n364) );
  INVX3 U281 ( .A(a[9]), .Y(n361) );
  CLKBUFX3 U282 ( .A(n390), .Y(n356) );
  XNOR2X1 U283 ( .A(a[8]), .B(a[7]), .Y(n390) );
  CLKBUFX3 U284 ( .A(n382), .Y(n354) );
  XNOR2X1 U285 ( .A(a[6]), .B(a[5]), .Y(n382) );
  CLKBUFX3 U286 ( .A(n381), .Y(n353) );
  NAND2X1 U287 ( .A(n354), .B(n451), .Y(n381) );
  CLKINVX1 U288 ( .A(n28), .Y(n360) );
  INVX3 U289 ( .A(a[0]), .Y(n369) );
  CLKBUFX3 U290 ( .A(a[10]), .Y(n358) );
  CLKINVX1 U291 ( .A(n357), .Y(n370) );
  CLKBUFX3 U292 ( .A(b[0]), .Y(n357) );
  XOR2X1 U293 ( .A(n371), .B(n372), .Y(product[20]) );
  XOR2X1 U294 ( .A(n4), .B(n24), .Y(n372) );
  NAND2X1 U295 ( .A(n373), .B(n374), .Y(n371) );
  XOR2X1 U296 ( .A(b[10]), .B(n358), .Y(n373) );
  NOR2X1 U297 ( .A(n369), .B(n370), .Y(product[0]) );
  XOR2X1 U298 ( .A(n375), .B(n376), .Y(n71) );
  NAND2BX1 U299 ( .AN(n376), .B(n375), .Y(n70) );
  NAND2X1 U300 ( .A(n377), .B(n374), .Y(n375) );
  XOR2X1 U301 ( .A(b[1]), .B(n358), .Y(n377) );
  OAI2BB1X1 U302 ( .A0N(n369), .A1N(n378), .B0(n379), .Y(n376) );
  OAI22XL U303 ( .A0(n380), .A1(n353), .B0(n354), .B1(n383), .Y(n62) );
  OAI22XL U304 ( .A0(n352), .A1(n385), .B0(n386), .B1(n351), .Y(n48) );
  OAI22XL U305 ( .A0(n354), .A1(n388), .B0(n389), .B1(n353), .Y(n36) );
  OAI22XL U306 ( .A0(n356), .A1(n391), .B0(n392), .B1(n355), .Y(n28) );
  OAI22XL U307 ( .A0(n357), .A1(n378), .B0(n394), .B1(n369), .Y(n177) );
  OAI22XL U308 ( .A0(n394), .A1(n378), .B0(n395), .B1(n369), .Y(n176) );
  XOR2X1 U309 ( .A(b[1]), .B(n368), .Y(n394) );
  OAI22XL U310 ( .A0(n395), .A1(n378), .B0(n396), .B1(n369), .Y(n175) );
  XOR2X1 U311 ( .A(b[2]), .B(n368), .Y(n395) );
  OAI22XL U312 ( .A0(n396), .A1(n378), .B0(n397), .B1(n369), .Y(n174) );
  XOR2X1 U313 ( .A(b[3]), .B(n368), .Y(n396) );
  OAI22XL U314 ( .A0(n397), .A1(n378), .B0(n398), .B1(n369), .Y(n173) );
  XOR2X1 U315 ( .A(b[4]), .B(n368), .Y(n397) );
  OAI22XL U316 ( .A0(n398), .A1(n378), .B0(n399), .B1(n369), .Y(n172) );
  XOR2X1 U317 ( .A(b[5]), .B(n368), .Y(n398) );
  OAI22XL U318 ( .A0(n399), .A1(n378), .B0(n400), .B1(n369), .Y(n171) );
  XOR2X1 U319 ( .A(b[6]), .B(n368), .Y(n399) );
  OAI22XL U320 ( .A0(n400), .A1(n378), .B0(n401), .B1(n369), .Y(n170) );
  XOR2X1 U321 ( .A(b[7]), .B(n368), .Y(n400) );
  OAI22XL U322 ( .A0(n401), .A1(n378), .B0(n402), .B1(n369), .Y(n169) );
  XOR2X1 U323 ( .A(b[8]), .B(n368), .Y(n401) );
  OAI2BB2XL U324 ( .B0(n402), .B1(n378), .A0N(n379), .A1N(a[0]), .Y(n168) );
  XOR2X1 U325 ( .A(b[10]), .B(a[1]), .Y(n379) );
  XOR2X1 U326 ( .A(b[9]), .B(n368), .Y(n402) );
  NOR2X1 U327 ( .A(n350), .B(n370), .Y(n166) );
  OAI22XL U328 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n165) );
  XOR2X1 U329 ( .A(n367), .B(n357), .Y(n404) );
  OAI22XL U330 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n164) );
  XOR2X1 U331 ( .A(b[1]), .B(n367), .Y(n406) );
  OAI22XL U332 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n163) );
  XOR2X1 U333 ( .A(b[2]), .B(n367), .Y(n407) );
  OAI22XL U334 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n162) );
  XOR2X1 U335 ( .A(b[3]), .B(n367), .Y(n408) );
  OAI22XL U336 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n161) );
  XOR2X1 U337 ( .A(b[4]), .B(n367), .Y(n409) );
  OAI22XL U338 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n160) );
  XOR2X1 U339 ( .A(b[5]), .B(n367), .Y(n410) );
  OAI22XL U340 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n159) );
  XOR2X1 U341 ( .A(b[6]), .B(n367), .Y(n411) );
  OAI22XL U342 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n158) );
  XOR2X1 U343 ( .A(b[7]), .B(n367), .Y(n412) );
  OAI22XL U344 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n157) );
  XOR2X1 U345 ( .A(b[8]), .B(n367), .Y(n413) );
  OAI22XL U346 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n156) );
  XOR2X1 U347 ( .A(b[9]), .B(n367), .Y(n414) );
  AO21X1 U348 ( .A0(n349), .A1(n350), .B0(n415), .Y(n155) );
  XOR2X1 U349 ( .A(b[10]), .B(n367), .Y(n415) );
  NOR2X1 U350 ( .A(n352), .B(n370), .Y(n154) );
  OAI22XL U351 ( .A0(n416), .A1(n351), .B0(n352), .B1(n417), .Y(n153) );
  XOR2X1 U352 ( .A(n366), .B(n357), .Y(n416) );
  OAI22XL U353 ( .A0(n417), .A1(n351), .B0(n352), .B1(n418), .Y(n152) );
  XOR2X1 U354 ( .A(b[1]), .B(n366), .Y(n417) );
  OAI22XL U355 ( .A0(n418), .A1(n351), .B0(n352), .B1(n419), .Y(n151) );
  XOR2X1 U356 ( .A(b[2]), .B(n366), .Y(n418) );
  OAI22XL U357 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n150) );
  XOR2X1 U358 ( .A(b[3]), .B(n366), .Y(n419) );
  OAI22XL U359 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n149) );
  XOR2X1 U360 ( .A(b[4]), .B(n366), .Y(n420) );
  OAI22XL U361 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n148) );
  XOR2X1 U362 ( .A(b[5]), .B(n366), .Y(n421) );
  OAI22XL U363 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n147) );
  XOR2X1 U364 ( .A(b[6]), .B(n366), .Y(n422) );
  OAI22XL U365 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n146) );
  XOR2X1 U366 ( .A(b[7]), .B(n366), .Y(n423) );
  OAI22XL U367 ( .A0(n424), .A1(n351), .B0(n352), .B1(n386), .Y(n145) );
  XOR2X1 U368 ( .A(b[9]), .B(n366), .Y(n386) );
  XOR2X1 U369 ( .A(b[8]), .B(n366), .Y(n424) );
  AO21X1 U370 ( .A0(n351), .A1(n352), .B0(n385), .Y(n144) );
  XOR2X1 U371 ( .A(b[10]), .B(n366), .Y(n385) );
  NOR2X1 U372 ( .A(n354), .B(n370), .Y(n143) );
  OAI22XL U373 ( .A0(n425), .A1(n353), .B0(n354), .B1(n426), .Y(n142) );
  XOR2X1 U374 ( .A(n364), .B(n357), .Y(n425) );
  OAI22XL U375 ( .A0(n426), .A1(n353), .B0(n354), .B1(n427), .Y(n141) );
  XOR2X1 U376 ( .A(b[1]), .B(n364), .Y(n426) );
  OAI22XL U377 ( .A0(n427), .A1(n353), .B0(n354), .B1(n428), .Y(n140) );
  XOR2X1 U378 ( .A(b[2]), .B(n364), .Y(n427) );
  OAI22XL U379 ( .A0(n428), .A1(n353), .B0(n354), .B1(n429), .Y(n139) );
  XOR2X1 U380 ( .A(b[3]), .B(n364), .Y(n428) );
  OAI22XL U381 ( .A0(n429), .A1(n353), .B0(n354), .B1(n380), .Y(n138) );
  XOR2X1 U382 ( .A(b[5]), .B(n364), .Y(n380) );
  XOR2X1 U383 ( .A(b[4]), .B(n364), .Y(n429) );
  OAI22XL U384 ( .A0(n383), .A1(n353), .B0(n354), .B1(n430), .Y(n137) );
  XOR2X1 U385 ( .A(b[6]), .B(n364), .Y(n383) );
  OAI22XL U386 ( .A0(n430), .A1(n353), .B0(n354), .B1(n431), .Y(n136) );
  XOR2X1 U387 ( .A(b[7]), .B(n364), .Y(n430) );
  OAI22XL U388 ( .A0(n431), .A1(n353), .B0(n354), .B1(n389), .Y(n135) );
  XOR2X1 U389 ( .A(b[9]), .B(n364), .Y(n389) );
  XOR2X1 U390 ( .A(b[8]), .B(n364), .Y(n431) );
  AO21X1 U391 ( .A0(n353), .A1(n354), .B0(n388), .Y(n134) );
  XOR2X1 U392 ( .A(b[10]), .B(n364), .Y(n388) );
  NOR2X1 U393 ( .A(n356), .B(n370), .Y(n133) );
  OAI22XL U394 ( .A0(n432), .A1(n355), .B0(n356), .B1(n433), .Y(n132) );
  XOR2X1 U395 ( .A(n361), .B(n357), .Y(n432) );
  OAI22XL U396 ( .A0(n433), .A1(n355), .B0(n356), .B1(n434), .Y(n131) );
  XOR2X1 U397 ( .A(b[1]), .B(n361), .Y(n433) );
  OAI22XL U398 ( .A0(n434), .A1(n355), .B0(n356), .B1(n435), .Y(n130) );
  XOR2X1 U399 ( .A(b[2]), .B(n361), .Y(n434) );
  OAI22XL U400 ( .A0(n435), .A1(n355), .B0(n356), .B1(n436), .Y(n129) );
  XOR2X1 U401 ( .A(b[3]), .B(n361), .Y(n435) );
  OAI22XL U402 ( .A0(n436), .A1(n355), .B0(n356), .B1(n437), .Y(n128) );
  XOR2X1 U403 ( .A(b[4]), .B(n361), .Y(n436) );
  OAI22XL U404 ( .A0(n437), .A1(n355), .B0(n356), .B1(n438), .Y(n127) );
  XOR2X1 U405 ( .A(b[5]), .B(n361), .Y(n437) );
  OAI22XL U406 ( .A0(n438), .A1(n355), .B0(n356), .B1(n439), .Y(n126) );
  XOR2X1 U407 ( .A(b[6]), .B(n361), .Y(n438) );
  OAI22XL U408 ( .A0(n439), .A1(n355), .B0(n356), .B1(n440), .Y(n125) );
  XOR2X1 U409 ( .A(b[7]), .B(n361), .Y(n439) );
  OAI22XL U410 ( .A0(n440), .A1(n355), .B0(n356), .B1(n392), .Y(n124) );
  XOR2X1 U411 ( .A(b[9]), .B(n361), .Y(n392) );
  XOR2X1 U412 ( .A(b[8]), .B(n361), .Y(n440) );
  AO21X1 U413 ( .A0(n355), .A1(n356), .B0(n391), .Y(n123) );
  XOR2X1 U414 ( .A(b[10]), .B(n361), .Y(n391) );
  NOR2X1 U415 ( .A(n359), .B(n370), .Y(n122) );
  NOR2X1 U416 ( .A(n359), .B(n441), .Y(n120) );
  XNOR2X1 U417 ( .A(b[2]), .B(n358), .Y(n441) );
  NOR2X1 U418 ( .A(n359), .B(n442), .Y(n119) );
  XNOR2X1 U419 ( .A(b[3]), .B(n358), .Y(n442) );
  NOR2X1 U420 ( .A(n359), .B(n443), .Y(n118) );
  XNOR2X1 U421 ( .A(b[4]), .B(n358), .Y(n443) );
  NOR2X1 U422 ( .A(n359), .B(n444), .Y(n117) );
  XNOR2X1 U423 ( .A(b[5]), .B(n358), .Y(n444) );
  NOR2X1 U424 ( .A(n359), .B(n445), .Y(n116) );
  XNOR2X1 U425 ( .A(b[6]), .B(n358), .Y(n445) );
  NOR2X1 U426 ( .A(n359), .B(n446), .Y(n115) );
  XNOR2X1 U427 ( .A(b[7]), .B(n358), .Y(n446) );
  NOR2X1 U428 ( .A(n359), .B(n447), .Y(n114) );
  XNOR2X1 U429 ( .A(b[8]), .B(n358), .Y(n447) );
  NOR2X1 U430 ( .A(n359), .B(n448), .Y(n113) );
  XNOR2X1 U431 ( .A(b[9]), .B(n358), .Y(n448) );
  OAI21XL U432 ( .A0(n357), .A1(n368), .B0(n378), .Y(n111) );
  OAI32X1 U433 ( .A0(n367), .A1(n357), .A2(n350), .B0(n367), .B1(n349), .Y(
        n110) );
  XOR2X1 U434 ( .A(a[3]), .B(a[2]), .Y(n449) );
  OAI32X1 U435 ( .A0(n366), .A1(n357), .A2(n352), .B0(n366), .B1(n351), .Y(
        n109) );
  XOR2X1 U436 ( .A(a[5]), .B(a[4]), .Y(n450) );
  OAI32X1 U437 ( .A0(n364), .A1(n357), .A2(n354), .B0(n364), .B1(n353), .Y(
        n108) );
  XOR2X1 U438 ( .A(a[7]), .B(a[6]), .Y(n451) );
  OAI32X1 U439 ( .A0(n361), .A1(n357), .A2(n356), .B0(n361), .B1(n355), .Y(
        n107) );
  XOR2X1 U440 ( .A(a[9]), .B(a[8]), .Y(n452) );
  NOR3BXL U441 ( .AN(n358), .B(n357), .C(n359), .Y(n106) );
  XOR2X1 U442 ( .A(n358), .B(a[9]), .Y(n374) );
endmodule


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   \x[0][9] , \x[0][8] , \x[0][7] , \x[0][6] , \x[0][5] , \x[0][4] ,
         \x[0][3] , \x[0][2] , \x[0][1] , \x[0][0] , \x[1][9] , \x[1][8] ,
         \x[1][7] , \x[1][6] , \x[1][5] , \x[1][4] , \x[1][3] , \x[1][2] ,
         \x[1][1] , \x[1][0] , \x[2][9] , \x[2][8] , \x[2][7] , \x[2][6] ,
         \x[2][5] , \x[2][4] , \x[2][3] , \x[2][2] , \x[2][1] , \x[2][0] ,
         \x[3][9] , \x[3][8] , \x[3][7] , \x[3][6] , \x[3][5] , \x[3][4] ,
         \x[3][3] , \x[3][2] , \x[3][1] , \x[3][0] , \x[4][9] , \x[4][8] ,
         \x[4][7] , \x[4][6] , \x[4][5] , \x[4][4] , \x[4][3] , \x[4][2] ,
         \x[4][1] , \x[4][0] , \x[5][9] , \x[5][8] , \x[5][7] , \x[5][6] ,
         \x[5][5] , \x[5][4] , \x[5][3] , \x[5][2] , \x[5][1] , \x[5][0] ,
         \y[0][9] , \y[0][8] , \y[0][7] , \y[0][6] , \y[0][5] , \y[0][4] ,
         \y[0][3] , \y[0][2] , \y[0][1] , \y[0][0] , \y[1][9] , \y[1][8] ,
         \y[1][7] , \y[1][6] , \y[1][5] , \y[1][4] , \y[1][3] , \y[1][2] ,
         \y[1][1] , \y[1][0] , \y[2][9] , \y[2][8] , \y[2][7] , \y[2][6] ,
         \y[2][5] , \y[2][4] , \y[2][3] , \y[2][2] , \y[2][1] , \y[2][0] ,
         \y[3][9] , \y[3][8] , \y[3][7] , \y[3][6] , \y[3][5] , \y[3][4] ,
         \y[3][3] , \y[3][2] , \y[3][1] , \y[3][0] , \y[4][9] , \y[4][8] ,
         \y[4][7] , \y[4][6] , \y[4][5] , \y[4][4] , \y[4][3] , \y[4][2] ,
         \y[4][1] , \y[4][0] , \y[5][9] , \y[5][8] , \y[5][7] , \y[5][6] ,
         \y[5][5] , \y[5][4] , \y[5][3] , \y[5][2] , \y[5][1] , \y[5][0] ,
         N319, N320, N321, N322, N323, N324, N325, N326, N327, N328, N335,
         N336, N337, N338, N339, N340, N341, N342, N343, N344, N364, N365,
         N366, N367, N368, N369, N370, N371, N372, N373, N374, N391, N392,
         N393, N394, N395, N396, N397, N398, N399, N400, N401, N418, N419,
         N420, N421, N422, N423, N424, N425, N426, N427, N428, N445, N446,
         N447, N448, N449, N450, N451, N452, N453, N454, N455, N456, N457,
         N458, N459, N460, N461, N462, N463, N464, N465, N466, N473, N474,
         N475, N476, N477, N478, N479, N480, N481, N482, N483, N484, N485,
         N486, N487, N488, N489, N490, N491, N492, N493, N494, N495, N496,
         N497, N498, N499, N500, N501, N502, N503, N504, N511, N512, N513,
         N514, N515, N516, N517, N518, N519, N520, N521, N522, N523, N524,
         N525, N526, N527, N528, N529, N530, N531, \match_array[1] , N583,
         N584, N620, N621, N622, N623, N624, N625, N626, N627, N628, N629,
         N642, N643, N644, N645, N646, N647, N648, N649, N650, N651, N664,
         N665, N666, N667, N668, N669, N670, N671, N672, N673, N770, N771,
         N772, N773, N774, N775, N776, N777, N778, N779, n28, n29, n30, n32,
         n34, n37, n38, n40, n41, n42, n46, n47, n51, n52, n55, n56, n57, n59,
         n63, n64, n65, n66, n67, n68, n69, n70, n72, n74, n76, n105, n106,
         n107, n110, n111, n112, n113, n114, n115, n116, n117, n118, n120,
         n123, n124, n128, n131, n134, n137, n140, n143, n146, n149, n152,
         n153, n154, n156, n157, n160, n162, n164, n166, n168, n170, n172,
         n174, n176, n177, n178, n179, n220, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n235, n238, n241, n244, n247,
         n250, n253, n256, n259, n262, n263, n264, n266, n268, n270, n272,
         n274, n276, n278, n280, n282, n284, n285, n286, n287, n300, n301,
         n302, n305, n306, n307, n308, n310, n313, n314, n315, n316, n321,
         n322, n324, n325, n327, n328, n330, n331, n333, n334, n336, n337,
         n339, n340, n342, n343, n345, n346, n348, n349, n351, n352, n354,
         n355, n357, n358, n360, n361, n363, n364, n366, n367, n369, n370,
         n372, n373, n375, n376, n377, n378, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n427, n428, n429,
         n430, n431, n432, n434, n435, n437, n438, n439, n440, n441, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n952, n953,
         n954, n955, n956, n957, n958, n961, n962, n963, n964, n965, n966,
         n967, n968, n969, n970, n971, n972, n973, n974, n975, n976, n977,
         n978, n979, n980, n981, n982, n983, n984, n985, n986, n987, n988,
         n989, n990, n991, n992, n993, n994, n995, n996, n997, n998, n999,
         n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009,
         n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019,
         n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029,
         n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039,
         n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049,
         n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059,
         n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069,
         n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079,
         n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089,
         n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099,
         n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109,
         n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119,
         n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129,
         n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139,
         n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149,
         n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159,
         n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169,
         n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179,
         n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189,
         n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199,
         n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209,
         n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219,
         n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229,
         n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239,
         n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249,
         n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259,
         n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269,
         n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279,
         n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289,
         n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299,
         n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309,
         n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318;
  wire   [10:0] Ax;
  wire   [10:0] By;
  wire   [20:0] AxBy;
  wire   [10:0] Bx;
  wire   [10:0] Ay;
  wire   [20:0] BxAy;
  wire   [2:0] counter_A;
  wire   [2:0] counter_B;
  wire   [2:0] state;
  wire   [9:0] obj_x;
  wire   [9:0] obj_y;
  wire   [2:0] nx_state;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  geofence_DW_cmp_0 r578 ( .A(AxBy), .B(BxAy), .TC(1'b1), .GE_LT(1'b0), 
        .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N584) );
  geofence_DW01_sub_0 sub_74 ( .A({1'b0, obj_y}), .B({1'b0, N335, N336, N337, 
        N338, N339, N340, N341, N342, N343, N344}), .CI(1'b0), .DIFF({N504, 
        N503, N502, N501, N500, N499, N498, N497, N496, N495, N494}) );
  geofence_DW01_sub_1 sub_67 ( .A({1'b0, \y[0][9] , \y[0][8] , \y[0][7] , 
        \y[0][6] , \y[0][5] , \y[0][4] , \y[0][3] , \y[0][2] , \y[0][1] , 
        \y[0][0] }), .B({1'b0, N770, N771, N772, N773, N774, N775, N776, N777, 
        N778, N779}), .CI(1'b0), .DIFF({N428, N427, N426, N425, N424, N423, 
        N422, N421, N420, N419, N418}) );
  geofence_DW01_sub_2 sub_73 ( .A({1'b0, N473, N474, N475, N476, N477, N478, 
        N479, N480, N481, N482}), .B({1'b0, N319, N320, N321, N322, N323, N324, 
        N325, N326, N327, N328}), .CI(1'b0), .DIFF({N493, N492, N491, N490, 
        N489, N488, N487, N486, N485, N484, N483}) );
  geofence_DW01_sub_3 sub_66 ( .A({1'b0, \x[0][9] , \x[0][8] , \x[0][7] , 
        \x[0][6] , \x[0][5] , \x[0][4] , \x[0][3] , \x[0][2] , \x[0][1] , 
        \x[0][0] }), .B({1'b0, N620, N621, N622, N623, N624, N625, N626, N627, 
        N628, N629}), .CI(1'b0), .DIFF({N401, N400, N399, N398, N397, N396, 
        N395, N394, N393, N392, N391}) );
  geofence_DW01_sub_4 sub_75 ( .A({1'b0, N511, N512, N513, N514, N515, N516, 
        N517, N518, N519, N520}), .B({1'b0, N335, N336, N337, N338, N339, N340, 
        N341, N342, N343, N344}), .CI(1'b0), .DIFF({N531, N530, N529, N528, 
        N527, N526, N525, N524, N523, N522, N521}) );
  geofence_DW01_sub_5 sub_68 ( .A({1'b0, \y[0][9] , \y[0][8] , \y[0][7] , 
        \y[0][6] , \y[0][5] , \y[0][4] , \y[0][3] , \y[0][2] , \y[0][1] , 
        \y[0][0] }), .B({1'b0, N642, N643, N644, N645, N646, N647, N648, N649, 
        N650, N651}), .CI(1'b0), .DIFF({N455, N454, N453, N452, N451, N450, 
        N449, N448, N447, N446, N445}) );
  geofence_DW01_sub_6 sub_72 ( .A({1'b0, obj_x}), .B({1'b0, N319, N320, N321, 
        N322, N323, N324, N325, N326, N327, N328}), .CI(1'b0), .DIFF({N466, 
        N465, N464, N463, N462, N461, N460, N459, N458, N457, N456}) );
  geofence_DW01_sub_7 sub_65 ( .A({1'b0, \x[0][9] , \x[0][8] , \x[0][7] , 
        \x[0][6] , \x[0][5] , \x[0][4] , \x[0][3] , \x[0][2] , \x[0][1] , 
        \x[0][0] }), .B({1'b0, N664, N665, N666, N667, N668, N669, N670, N671, 
        N672, N673}), .CI(1'b0), .DIFF({N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365, N364}) );
  geofence_DW_mult_tc_0 mult_53 ( .a(Bx), .b(Ay), .product({
        SYNOPSYS_UNCONNECTED__0, BxAy}) );
  geofence_DW_mult_tc_1 mult_52 ( .a(Ax), .b(By), .product({
        SYNOPSYS_UNCONNECTED__1, AxBy}) );
  DFFQX1 \match_array_reg[1]  ( .D(n443), .CK(clk), .Q(\match_array[1] ) );
  EDFFX1 \match_array_reg[2]  ( .D(N584), .E(n428), .CK(clk), .QN(n420) );
  DFFQX1 \y_reg[1][9]  ( .D(n447), .CK(clk), .Q(\y[1][9] ) );
  DFFQX1 \x_reg[1][9]  ( .D(n497), .CK(clk), .Q(\x[1][9] ) );
  DFFQX1 \y_reg[5][9]  ( .D(n487), .CK(clk), .Q(\y[5][9] ) );
  DFFQX1 \y_reg[3][9]  ( .D(n467), .CK(clk), .Q(\y[3][9] ) );
  DFFQX1 \y_reg[1][8]  ( .D(n448), .CK(clk), .Q(\y[1][8] ) );
  DFFQX1 \y_reg[1][7]  ( .D(n449), .CK(clk), .Q(\y[1][7] ) );
  DFFQX1 \y_reg[1][6]  ( .D(n450), .CK(clk), .Q(\y[1][6] ) );
  DFFQX1 \x_reg[1][8]  ( .D(n498), .CK(clk), .Q(\x[1][8] ) );
  DFFQX1 \x_reg[1][7]  ( .D(n499), .CK(clk), .Q(\x[1][7] ) );
  DFFQX1 \y_reg[5][8]  ( .D(n488), .CK(clk), .Q(\y[5][8] ) );
  DFFQX1 \y_reg[5][7]  ( .D(n489), .CK(clk), .Q(\y[5][7] ) );
  DFFQX1 \y_reg[5][6]  ( .D(n490), .CK(clk), .Q(\y[5][6] ) );
  DFFQX1 \y_reg[3][8]  ( .D(n468), .CK(clk), .Q(\y[3][8] ) );
  DFFQX1 \y_reg[3][7]  ( .D(n469), .CK(clk), .Q(\y[3][7] ) );
  DFFQX1 \x_reg[3][9]  ( .D(n517), .CK(clk), .Q(\x[3][9] ) );
  DFFQX1 \x_reg[3][8]  ( .D(n518), .CK(clk), .Q(\x[3][8] ) );
  DFFQX1 \x_reg[3][7]  ( .D(n519), .CK(clk), .Q(\x[3][7] ) );
  DFFQX1 \x_reg[3][6]  ( .D(n520), .CK(clk), .Q(\x[3][6] ) );
  DFFQX1 \y_reg[1][5]  ( .D(n451), .CK(clk), .Q(\y[1][5] ) );
  DFFQX1 \y_reg[1][4]  ( .D(n452), .CK(clk), .Q(\y[1][4] ) );
  DFFQX1 \y_reg[5][5]  ( .D(n491), .CK(clk), .Q(\y[5][5] ) );
  DFFQX1 \y_reg[5][4]  ( .D(n492), .CK(clk), .Q(\y[5][4] ) );
  DFFQX1 \y_reg[3][6]  ( .D(n470), .CK(clk), .Q(\y[3][6] ) );
  DFFQX1 \y_reg[3][5]  ( .D(n471), .CK(clk), .Q(\y[3][5] ) );
  DFFQX1 \y_reg[3][4]  ( .D(n472), .CK(clk), .Q(\y[3][4] ) );
  DFFQX1 \x_reg[3][5]  ( .D(n521), .CK(clk), .Q(\x[3][5] ) );
  DFFQX1 \x_reg[3][4]  ( .D(n522), .CK(clk), .Q(\x[3][4] ) );
  DFFQX1 \y_reg[1][3]  ( .D(n453), .CK(clk), .Q(\y[1][3] ) );
  DFFQX1 \y_reg[1][2]  ( .D(n454), .CK(clk), .Q(\y[1][2] ) );
  DFFQX1 \y_reg[1][1]  ( .D(n455), .CK(clk), .Q(\y[1][1] ) );
  DFFQX1 \y_reg[1][0]  ( .D(n456), .CK(clk), .Q(\y[1][0] ) );
  DFFQX1 \y_reg[5][3]  ( .D(n493), .CK(clk), .Q(\y[5][3] ) );
  DFFQX1 \y_reg[5][2]  ( .D(n494), .CK(clk), .Q(\y[5][2] ) );
  DFFQX1 \y_reg[5][1]  ( .D(n495), .CK(clk), .Q(\y[5][1] ) );
  DFFQX1 \y_reg[5][0]  ( .D(n496), .CK(clk), .Q(\y[5][0] ) );
  DFFQX1 \y_reg[3][3]  ( .D(n473), .CK(clk), .Q(\y[3][3] ) );
  DFFQX1 \y_reg[3][2]  ( .D(n474), .CK(clk), .Q(\y[3][2] ) );
  DFFQX1 \y_reg[3][1]  ( .D(n475), .CK(clk), .Q(\y[3][1] ) );
  DFFQX1 \y_reg[3][0]  ( .D(n476), .CK(clk), .Q(\y[3][0] ) );
  DFFQX1 \x_reg[3][3]  ( .D(n523), .CK(clk), .Q(\x[3][3] ) );
  DFFQX1 \x_reg[3][2]  ( .D(n524), .CK(clk), .Q(\x[3][2] ) );
  DFFQX1 \x_reg[3][1]  ( .D(n525), .CK(clk), .Q(\x[3][1] ) );
  DFFQX1 \x_reg[3][0]  ( .D(n526), .CK(clk), .Q(\x[3][0] ) );
  DFFQX1 \y_reg[2][9]  ( .D(n457), .CK(clk), .Q(\y[2][9] ) );
  DFFQX1 \y_reg[2][8]  ( .D(n458), .CK(clk), .Q(\y[2][8] ) );
  DFFQX1 \x_reg[2][9]  ( .D(n507), .CK(clk), .Q(\x[2][9] ) );
  DFFQX1 \y_reg[2][7]  ( .D(n459), .CK(clk), .Q(\y[2][7] ) );
  DFFQX1 \y_reg[2][6]  ( .D(n460), .CK(clk), .Q(\y[2][6] ) );
  DFFQX1 \x_reg[2][8]  ( .D(n508), .CK(clk), .Q(\x[2][8] ) );
  DFFQX1 \x_reg[2][7]  ( .D(n509), .CK(clk), .Q(\x[2][7] ) );
  DFFQX1 \x_reg[2][6]  ( .D(n510), .CK(clk), .Q(\x[2][6] ) );
  DFFQX1 \y_reg[2][5]  ( .D(n461), .CK(clk), .Q(\y[2][5] ) );
  DFFQX1 \y_reg[2][4]  ( .D(n462), .CK(clk), .Q(\y[2][4] ) );
  DFFQX1 \y_reg[2][3]  ( .D(n463), .CK(clk), .Q(\y[2][3] ) );
  DFFQX1 \x_reg[2][5]  ( .D(n511), .CK(clk), .Q(\x[2][5] ) );
  DFFQX1 \x_reg[2][4]  ( .D(n512), .CK(clk), .Q(\x[2][4] ) );
  DFFQX1 \y_reg[2][2]  ( .D(n464), .CK(clk), .Q(\y[2][2] ) );
  DFFQX1 \y_reg[2][1]  ( .D(n465), .CK(clk), .Q(\y[2][1] ) );
  DFFQX1 \y_reg[2][0]  ( .D(n466), .CK(clk), .Q(\y[2][0] ) );
  DFFQX1 \x_reg[2][3]  ( .D(n513), .CK(clk), .Q(\x[2][3] ) );
  DFFQX1 \x_reg[2][2]  ( .D(n514), .CK(clk), .Q(\x[2][2] ) );
  DFFQX1 \x_reg[2][1]  ( .D(n515), .CK(clk), .Q(\x[2][1] ) );
  DFFQX1 \x_reg[2][0]  ( .D(n516), .CK(clk), .Q(\x[2][0] ) );
  DFFRX1 \counter_INSIDE_reg[1]  ( .D(n445), .CK(clk), .RN(n1140), .QN(n438)
         );
  DFFRX1 \state_reg[1]  ( .D(nx_state[1]), .CK(clk), .RN(n1140), .Q(state[1]), 
        .QN(n1165) );
  DFFRX1 \state_reg[2]  ( .D(nx_state[2]), .CK(clk), .RN(n1140), .Q(state[2]), 
        .QN(n1166) );
  DFFRX1 \state_reg[0]  ( .D(nx_state[0]), .CK(clk), .RN(n1140), .Q(state[0]), 
        .QN(n1164) );
  DFFRX1 \counter_IN_reg[0]  ( .D(n432), .CK(clk), .RN(n1140), .Q(n1167), .QN(
        n435) );
  DFFRX1 \counter_INSIDE_reg[2]  ( .D(n551), .CK(clk), .RN(n1140), .QN(n437)
         );
  DFFRX1 valid_reg ( .D(n1163), .CK(clk), .RN(n1140), .QN(n957) );
  DFFRX1 is_inside_reg ( .D(N583), .CK(clk), .RN(n1140), .QN(n956) );
  DFFRX1 \counter_IN_reg[2]  ( .D(n430), .CK(clk), .RN(n1140), .Q(n1170), .QN(
        n425) );
  DFFRX1 \counter_RES_reg[0]  ( .D(n547), .CK(clk), .RN(n1140), .Q(n1238), 
        .QN(n440) );
  DFFRX1 \counter_RES_reg[1]  ( .D(n548), .CK(clk), .RN(n1140), .QN(n424) );
  DFFRX1 \counter_IN_reg[1]  ( .D(n431), .CK(clk), .RN(n1140), .Q(n1168), .QN(
        n434) );
  EDFFX1 \y_reg[0][0]  ( .D(Y[0]), .E(n441), .CK(clk), .Q(\y[0][0] ), .QN(
        n1200) );
  EDFFX1 \x_reg[0][0]  ( .D(X[0]), .E(n441), .CK(clk), .Q(\x[0][0] ), .QN(
        n1230) );
  EDFFX1 \y_reg[0][9]  ( .D(Y[9]), .E(n441), .CK(clk), .Q(\y[0][9] ), .QN(
        n1173) );
  EDFFX1 \y_reg[0][8]  ( .D(Y[8]), .E(n441), .CK(clk), .Q(\y[0][8] ), .QN(
        n1176) );
  EDFFX1 \y_reg[0][7]  ( .D(Y[7]), .E(n441), .CK(clk), .Q(\y[0][7] ), .QN(
        n1179) );
  EDFFX1 \y_reg[0][6]  ( .D(Y[6]), .E(n441), .CK(clk), .Q(\y[0][6] ), .QN(
        n1182) );
  EDFFX1 \y_reg[0][5]  ( .D(Y[5]), .E(n441), .CK(clk), .Q(\y[0][5] ), .QN(
        n1185) );
  EDFFX1 \y_reg[0][4]  ( .D(Y[4]), .E(n441), .CK(clk), .Q(\y[0][4] ), .QN(
        n1188) );
  EDFFX1 \y_reg[0][3]  ( .D(Y[3]), .E(n441), .CK(clk), .Q(\y[0][3] ), .QN(
        n1191) );
  EDFFX1 \y_reg[0][2]  ( .D(Y[2]), .E(n441), .CK(clk), .Q(\y[0][2] ), .QN(
        n1194) );
  EDFFX1 \y_reg[0][1]  ( .D(Y[1]), .E(n441), .CK(clk), .Q(\y[0][1] ), .QN(
        n1197) );
  EDFFX1 \obj_y_reg[9]  ( .D(Y[9]), .E(n958), .CK(clk), .Q(obj_y[9]) );
  EDFFX1 \obj_y_reg[8]  ( .D(Y[8]), .E(n958), .CK(clk), .Q(obj_y[8]) );
  EDFFX1 \obj_y_reg[7]  ( .D(Y[7]), .E(n958), .CK(clk), .Q(obj_y[7]) );
  EDFFX1 \obj_y_reg[6]  ( .D(Y[6]), .E(n958), .CK(clk), .Q(obj_y[6]) );
  EDFFX1 \obj_y_reg[5]  ( .D(Y[5]), .E(n958), .CK(clk), .Q(obj_y[5]) );
  EDFFX1 \obj_y_reg[4]  ( .D(Y[4]), .E(n958), .CK(clk), .Q(obj_y[4]) );
  EDFFX1 \obj_y_reg[3]  ( .D(Y[3]), .E(n958), .CK(clk), .Q(obj_y[3]) );
  EDFFX1 \obj_y_reg[2]  ( .D(Y[2]), .E(n958), .CK(clk), .Q(obj_y[2]) );
  EDFFX1 \obj_y_reg[1]  ( .D(Y[1]), .E(n958), .CK(clk), .Q(obj_y[1]) );
  EDFFX1 \x_reg[0][9]  ( .D(X[9]), .E(n441), .CK(clk), .Q(\x[0][9] ), .QN(
        n1203) );
  EDFFX1 \x_reg[0][8]  ( .D(X[8]), .E(n441), .CK(clk), .Q(\x[0][8] ), .QN(
        n1206) );
  EDFFX1 \x_reg[0][7]  ( .D(X[7]), .E(n441), .CK(clk), .Q(\x[0][7] ), .QN(
        n1209) );
  EDFFX1 \x_reg[0][6]  ( .D(X[6]), .E(n441), .CK(clk), .Q(\x[0][6] ), .QN(
        n1212) );
  EDFFX1 \x_reg[0][5]  ( .D(X[5]), .E(n441), .CK(clk), .Q(\x[0][5] ), .QN(
        n1215) );
  EDFFX1 \x_reg[0][4]  ( .D(X[4]), .E(n441), .CK(clk), .Q(\x[0][4] ), .QN(
        n1218) );
  EDFFX1 \x_reg[0][3]  ( .D(X[3]), .E(n441), .CK(clk), .Q(\x[0][3] ), .QN(
        n1221) );
  EDFFX1 \x_reg[0][2]  ( .D(X[2]), .E(n441), .CK(clk), .Q(\x[0][2] ), .QN(
        n1224) );
  EDFFX1 \x_reg[0][1]  ( .D(X[1]), .E(n441), .CK(clk), .Q(\x[0][1] ), .QN(
        n1227) );
  EDFFX1 \obj_x_reg[9]  ( .D(X[9]), .E(n958), .CK(clk), .Q(obj_x[9]) );
  EDFFX1 \obj_x_reg[8]  ( .D(X[8]), .E(n958), .CK(clk), .Q(obj_x[8]) );
  EDFFX1 \obj_x_reg[7]  ( .D(X[7]), .E(n958), .CK(clk), .Q(obj_x[7]) );
  EDFFX1 \obj_x_reg[6]  ( .D(X[6]), .E(n958), .CK(clk), .Q(obj_x[6]) );
  EDFFX1 \obj_x_reg[5]  ( .D(X[5]), .E(n958), .CK(clk), .Q(obj_x[5]) );
  EDFFX1 \obj_x_reg[4]  ( .D(X[4]), .E(n958), .CK(clk), .Q(obj_x[4]) );
  EDFFX1 \obj_x_reg[3]  ( .D(X[3]), .E(n958), .CK(clk), .Q(obj_x[3]) );
  EDFFX1 \obj_x_reg[2]  ( .D(X[2]), .E(n958), .CK(clk), .Q(obj_x[2]) );
  EDFFX1 \obj_x_reg[1]  ( .D(X[1]), .E(n958), .CK(clk), .Q(obj_x[1]) );
  EDFFX1 \obj_y_reg[0]  ( .D(Y[0]), .E(n958), .CK(clk), .Q(obj_y[0]) );
  EDFFX1 \obj_x_reg[0]  ( .D(X[0]), .E(n958), .CK(clk), .Q(obj_x[0]) );
  EDFFX1 \match_array_reg[4]  ( .D(N584), .E(n429), .CK(clk), .Q(n421) );
  EDFFX1 \match_array_reg[3]  ( .D(N584), .E(n427), .CK(clk), .Q(n422) );
  DFFQXL \match_array_reg[5]  ( .D(n444), .CK(clk), .Q(n423) );
  EDFFXL \match_array_reg[0]  ( .D(N584), .E(n59), .CK(clk), .QN(n1235) );
  DFFXL \x_reg[1][6]  ( .D(n500), .CK(clk), .Q(\x[1][6] ), .QN(n1252) );
  DFFXL \x_reg[1][5]  ( .D(n501), .CK(clk), .Q(\x[1][5] ), .QN(n1253) );
  DFFXL \x_reg[1][4]  ( .D(n502), .CK(clk), .Q(\x[1][4] ), .QN(n1254) );
  DFFXL \x_reg[1][3]  ( .D(n503), .CK(clk), .Q(\x[1][3] ), .QN(n1255) );
  DFFXL \x_reg[1][2]  ( .D(n504), .CK(clk), .Q(\x[1][2] ), .QN(n1256) );
  DFFXL \x_reg[1][1]  ( .D(n505), .CK(clk), .Q(\x[1][1] ), .QN(n1257) );
  DFFXL \x_reg[1][0]  ( .D(n506), .CK(clk), .Q(\x[1][0] ), .QN(n1258) );
  DFFRX2 \counter_RESULT_reg[0]  ( .D(n550), .CK(clk), .RN(n1140), .Q(
        counter_B[0]), .QN(n1074) );
  DFFRX2 \counter_RESULT_reg[1]  ( .D(n549), .CK(clk), .RN(n1140), .Q(
        counter_B[2]), .QN(n1237) );
  DFFRX2 \counter_INSIDE_reg[0]  ( .D(n446), .CK(clk), .RN(n1140), .Q(n1232), 
        .QN(n439) );
  DFFX1 \x_reg[4][9]  ( .D(n527), .CK(clk), .Q(\x[4][9] ), .QN(n1289) );
  DFFX1 \x_reg[4][8]  ( .D(n528), .CK(clk), .Q(\x[4][8] ), .QN(n1290) );
  DFFX1 \x_reg[4][7]  ( .D(n529), .CK(clk), .Q(\x[4][7] ), .QN(n1291) );
  DFFX1 \x_reg[4][6]  ( .D(n530), .CK(clk), .Q(\x[4][6] ), .QN(n1292) );
  DFFX1 \x_reg[4][5]  ( .D(n531), .CK(clk), .Q(\x[4][5] ), .QN(n1293) );
  DFFX1 \x_reg[4][4]  ( .D(n532), .CK(clk), .Q(\x[4][4] ), .QN(n1294) );
  DFFX1 \x_reg[4][3]  ( .D(n533), .CK(clk), .Q(\x[4][3] ), .QN(n1295) );
  DFFX1 \x_reg[4][2]  ( .D(n534), .CK(clk), .Q(\x[4][2] ), .QN(n1296) );
  DFFX1 \x_reg[4][1]  ( .D(n535), .CK(clk), .Q(\x[4][1] ), .QN(n1297) );
  DFFX1 \x_reg[4][0]  ( .D(n536), .CK(clk), .Q(\x[4][0] ), .QN(n1298) );
  DFFX1 \y_reg[4][9]  ( .D(n477), .CK(clk), .Q(\y[4][9] ), .QN(n1279) );
  DFFX1 \y_reg[4][6]  ( .D(n480), .CK(clk), .Q(\y[4][6] ), .QN(n1282) );
  DFFX1 \y_reg[4][5]  ( .D(n481), .CK(clk), .Q(\y[4][5] ), .QN(n1283) );
  DFFX1 \y_reg[4][4]  ( .D(n482), .CK(clk), .Q(\y[4][4] ), .QN(n1284) );
  DFFX1 \y_reg[4][2]  ( .D(n484), .CK(clk), .Q(\y[4][2] ), .QN(n1286) );
  DFFX1 \y_reg[4][1]  ( .D(n485), .CK(clk), .Q(\y[4][1] ), .QN(n1287) );
  DFFX1 \y_reg[4][0]  ( .D(n486), .CK(clk), .Q(\y[4][0] ), .QN(n1288) );
  DFFX1 \y_reg[4][8]  ( .D(n478), .CK(clk), .Q(\y[4][8] ), .QN(n1280) );
  DFFX1 \y_reg[4][7]  ( .D(n479), .CK(clk), .Q(\y[4][7] ), .QN(n1281) );
  DFFX1 \y_reg[4][3]  ( .D(n483), .CK(clk), .Q(\y[4][3] ), .QN(n1285) );
  DFFX1 \x_reg[5][9]  ( .D(n537), .CK(clk), .Q(\x[5][9] ), .QN(n1309) );
  DFFX1 \x_reg[5][8]  ( .D(n538), .CK(clk), .Q(\x[5][8] ), .QN(n1310) );
  DFFX1 \x_reg[5][7]  ( .D(n539), .CK(clk), .Q(\x[5][7] ), .QN(n1311) );
  DFFX1 \x_reg[5][6]  ( .D(n540), .CK(clk), .Q(\x[5][6] ), .QN(n1312) );
  DFFX1 \x_reg[5][5]  ( .D(n541), .CK(clk), .Q(\x[5][5] ), .QN(n1313) );
  DFFX1 \x_reg[5][4]  ( .D(n542), .CK(clk), .Q(\x[5][4] ), .QN(n1314) );
  DFFX1 \x_reg[5][3]  ( .D(n543), .CK(clk), .Q(\x[5][3] ), .QN(n1315) );
  DFFX1 \x_reg[5][2]  ( .D(n544), .CK(clk), .Q(\x[5][2] ), .QN(n1316) );
  DFFX1 \x_reg[5][1]  ( .D(n545), .CK(clk), .Q(\x[5][1] ), .QN(n1317) );
  DFFX1 \x_reg[5][0]  ( .D(n546), .CK(clk), .Q(\x[5][0] ), .QN(n1318) );
  NOR2X4 U1018 ( .A(n377), .B(n1232), .Y(n952) );
  NOR2X4 U1019 ( .A(n1232), .B(n1127), .Y(n953) );
  CLKAND2X3 U1020 ( .A(n1028), .B(counter_B[2]), .Y(n954) );
  CLKAND2X3 U1021 ( .A(n1029), .B(counter_B[2]), .Y(n955) );
  CLKAND2X3 U1022 ( .A(n1165), .B(n966), .Y(n958) );
  NOR2XL U1023 ( .A(n1232), .B(n438), .Y(n70) );
  AND2X1 U1024 ( .A(n438), .B(n1232), .Y(n69) );
  INVX12 U1025 ( .A(n956), .Y(is_inside) );
  INVX12 U1026 ( .A(n957), .Y(valid) );
  NOR3X4 U1027 ( .A(n1168), .B(n32), .C(n1170), .Y(n441) );
  XOR2X1 U1028 ( .A(n1166), .B(state[0]), .Y(n966) );
  OA21XL U1029 ( .A0(n264), .A1(n1138), .B0(n51), .Y(n961) );
  OA21XL U1030 ( .A0(n264), .A1(n1138), .B0(n51), .Y(n962) );
  CLKINVX1 U1031 ( .A(n47), .Y(n1135) );
  NOR2X1 U1032 ( .A(n263), .B(n285), .Y(n264) );
  CLKINVX1 U1033 ( .A(n1122), .Y(n1123) );
  CLKINVX1 U1034 ( .A(n157), .Y(n1104) );
  NAND2X1 U1035 ( .A(n1102), .B(n1096), .Y(n963) );
  NAND2X1 U1036 ( .A(n1109), .B(n1096), .Y(n964) );
  CLKBUFX3 U1037 ( .A(n74), .Y(n1125) );
  AO22X1 U1038 ( .A0(N392), .A1(n1130), .B0(N484), .B1(n1133), .Y(Bx[1]) );
  AO22X1 U1039 ( .A0(N365), .A1(n1129), .B0(N457), .B1(n1132), .Y(Ax[1]) );
  CLKINVX1 U1040 ( .A(n1122), .Y(n1121) );
  BUFX4 U1041 ( .A(n179), .Y(n1097) );
  NOR2X1 U1042 ( .A(n1237), .B(counter_B[0]), .Y(n285) );
  NOR2X1 U1043 ( .A(n1074), .B(counter_B[2]), .Y(n263) );
  OAI22X1 U1044 ( .A0(n32), .A1(n55), .B0(counter_B[2]), .B1(n1138), .Y(n232)
         );
  CLKBUFX3 U1045 ( .A(n105), .Y(n1115) );
  NAND2BX1 U1046 ( .AN(n378), .B(n1232), .Y(n965) );
  NAND2X1 U1047 ( .A(n435), .B(n1096), .Y(n32) );
  CLKINVX1 U1048 ( .A(N584), .Y(n1139) );
  INVX3 U1049 ( .A(n287), .Y(n1138) );
  INVX3 U1050 ( .A(n1135), .Y(n1132) );
  INVX3 U1051 ( .A(n1135), .Y(n1133) );
  CLKINVX1 U1052 ( .A(n1135), .Y(n1134) );
  CLKINVX1 U1053 ( .A(n300), .Y(n1161) );
  CLKINVX1 U1054 ( .A(n28), .Y(n1163) );
  CLKINVX1 U1055 ( .A(counter_A[2]), .Y(n1019) );
  CLKINVX1 U1056 ( .A(n264), .Y(counter_A[1]) );
  NOR2X1 U1057 ( .A(n1131), .B(n1139), .Y(n287) );
  CLKBUFX3 U1058 ( .A(n72), .Y(n1124) );
  NAND2X1 U1059 ( .A(n1129), .B(n1123), .Y(n72) );
  INVX3 U1060 ( .A(n1027), .Y(n1026) );
  CLKINVX1 U1061 ( .A(n1014), .Y(n1027) );
  NOR2BX1 U1062 ( .AN(n972), .B(counter_A[1]), .Y(n1014) );
  INVX3 U1063 ( .A(n1104), .Y(n1105) );
  CLKBUFX3 U1064 ( .A(n1012), .Y(n1021) );
  AND2X2 U1065 ( .A(n972), .B(counter_A[1]), .Y(n1012) );
  CLKBUFX3 U1066 ( .A(n1137), .Y(n1126) );
  INVX3 U1067 ( .A(n963), .Y(n1106) );
  INVX3 U1068 ( .A(n964), .Y(n1113) );
  INVX3 U1069 ( .A(n961), .Y(n1109) );
  CLKINVX1 U1070 ( .A(n963), .Y(n1107) );
  CLKINVX1 U1071 ( .A(n964), .Y(n1114) );
  INVX3 U1072 ( .A(n962), .Y(n1108) );
  INVX3 U1073 ( .A(n967), .Y(n1087) );
  CLKINVX1 U1074 ( .A(n967), .Y(n1088) );
  INVX3 U1075 ( .A(n1131), .Y(n1129) );
  INVX3 U1076 ( .A(n1131), .Y(n1130) );
  OAI21X1 U1077 ( .A0(n1019), .A1(n1131), .B0(n1162), .Y(n300) );
  NAND2X1 U1078 ( .A(n1132), .B(n29), .Y(n28) );
  CLKINVX1 U1079 ( .A(n264), .Y(n1236) );
  CLKINVX1 U1080 ( .A(n1084), .Y(n1231) );
  NAND2X1 U1081 ( .A(n1162), .B(n1136), .Y(n67) );
  CLKINVX1 U1082 ( .A(n47), .Y(n1136) );
  NOR2X2 U1083 ( .A(n1237), .B(n1074), .Y(counter_A[2]) );
  OAI222XL U1084 ( .A0(n1124), .A1(n1229), .B0(n1125), .B1(n1150), .C0(n1120), 
        .C1(n1258), .Y(n506) );
  OAI222XL U1085 ( .A0(n1124), .A1(n1226), .B0(n1125), .B1(n1149), .C0(n76), 
        .C1(n1257), .Y(n505) );
  OAI222XL U1086 ( .A0(n1124), .A1(n1223), .B0(n1125), .B1(n1148), .C0(n1121), 
        .C1(n1256), .Y(n504) );
  OAI222XL U1087 ( .A0(n1124), .A1(n1220), .B0(n1125), .B1(n1147), .C0(n1123), 
        .C1(n1255), .Y(n503) );
  OAI222XL U1088 ( .A0(n1124), .A1(n1217), .B0(n1125), .B1(n1146), .C0(n1123), 
        .C1(n1254), .Y(n502) );
  OAI222XL U1089 ( .A0(n1124), .A1(n1214), .B0(n1125), .B1(n1145), .C0(n1120), 
        .C1(n1253), .Y(n501) );
  OAI222XL U1090 ( .A0(n1124), .A1(n1211), .B0(n1125), .B1(n1144), .C0(n1121), 
        .C1(n1252), .Y(n500) );
  OAI222XL U1091 ( .A0(n1124), .A1(n1208), .B0(n1125), .B1(n1143), .C0(n1121), 
        .C1(n1251), .Y(n499) );
  OAI222XL U1092 ( .A0(n1124), .A1(n1205), .B0(n1125), .B1(n1142), .C0(n1123), 
        .C1(n1250), .Y(n498) );
  OAI222XL U1093 ( .A0(n1124), .A1(n1202), .B0(n1125), .B1(n1141), .C0(n1119), 
        .C1(n1249), .Y(n497) );
  OAI222XL U1094 ( .A0(n1124), .A1(n1199), .B0(n1125), .B1(n1160), .C0(n1119), 
        .C1(n1248), .Y(n456) );
  OAI222XL U1095 ( .A0(n1124), .A1(n1196), .B0(n1125), .B1(n1159), .C0(n1121), 
        .C1(n1247), .Y(n455) );
  OAI222XL U1096 ( .A0(n1124), .A1(n1193), .B0(n1125), .B1(n1158), .C0(n1123), 
        .C1(n1246), .Y(n454) );
  OAI222XL U1097 ( .A0(n1124), .A1(n1190), .B0(n1125), .B1(n1157), .C0(n1123), 
        .C1(n1245), .Y(n453) );
  OAI222XL U1098 ( .A0(n1124), .A1(n1187), .B0(n1125), .B1(n1156), .C0(n1119), 
        .C1(n1244), .Y(n452) );
  OAI222XL U1099 ( .A0(n1124), .A1(n1184), .B0(n1125), .B1(n1155), .C0(n1121), 
        .C1(n1243), .Y(n451) );
  OAI222XL U1100 ( .A0(n1124), .A1(n1181), .B0(n1125), .B1(n1154), .C0(n1121), 
        .C1(n1242), .Y(n450) );
  OAI222XL U1101 ( .A0(n1124), .A1(n1178), .B0(n1125), .B1(n1153), .C0(n1123), 
        .C1(n1241), .Y(n449) );
  OAI222XL U1102 ( .A0(n1124), .A1(n1175), .B0(n1125), .B1(n1152), .C0(n1119), 
        .C1(n1240), .Y(n448) );
  OAI222XL U1103 ( .A0(n1124), .A1(n1172), .B0(n1125), .B1(n1151), .C0(n76), 
        .C1(n1239), .Y(n447) );
  AO22X1 U1104 ( .A0(N369), .A1(n1129), .B0(N461), .B1(n1132), .Y(Ax[5]) );
  AO22X1 U1105 ( .A0(N396), .A1(n1130), .B0(N488), .B1(n1133), .Y(Bx[5]) );
  AO22X1 U1106 ( .A0(N367), .A1(n1129), .B0(N459), .B1(n1132), .Y(Ax[3]) );
  AO22X1 U1107 ( .A0(N394), .A1(n1130), .B0(N486), .B1(n1133), .Y(Bx[3]) );
  AO22X1 U1108 ( .A0(N448), .A1(n1129), .B0(N524), .B1(n1134), .Y(By[3]) );
  AO22X1 U1109 ( .A0(N421), .A1(n1130), .B0(N497), .B1(n1133), .Y(Ay[3]) );
  AO22X1 U1110 ( .A0(N422), .A1(n1130), .B0(N498), .B1(n1133), .Y(Ay[4]) );
  OAI21XL U1111 ( .A0(n285), .A1(counter_A[2]), .B0(n287), .Y(n286) );
  CLKBUFX3 U1112 ( .A(n106), .Y(n1116) );
  NAND2X1 U1113 ( .A(n1096), .B(n232), .Y(n106) );
  CLKBUFX3 U1114 ( .A(n120), .Y(n1110) );
  NAND3X1 U1115 ( .A(n1129), .B(n1109), .C(n263), .Y(n120) );
  CLKBUFX3 U1116 ( .A(n177), .Y(n1098) );
  NAND2X1 U1117 ( .A(n1129), .B(n1097), .Y(n177) );
  CLKBUFX3 U1118 ( .A(n178), .Y(n1099) );
  NAND2X1 U1119 ( .A(n1096), .B(n1097), .Y(n178) );
  NAND2X1 U1120 ( .A(n1096), .B(n1121), .Y(n74) );
  NOR3BXL U1121 ( .AN(n1102), .B(n285), .C(n1131), .Y(n157) );
  CLKINVX1 U1122 ( .A(n76), .Y(n1122) );
  OAI32X1 U1123 ( .A0(n1138), .A1(counter_A[2]), .A2(n1236), .B0(n1170), .B1(
        n57), .Y(n76) );
  CLKINVX1 U1124 ( .A(n232), .Y(n1137) );
  AO22X1 U1125 ( .A0(N366), .A1(n1129), .B0(N458), .B1(n1132), .Y(Ax[2]) );
  AO22X1 U1126 ( .A0(N368), .A1(n1129), .B0(N460), .B1(n1132), .Y(Ax[4]) );
  INVX3 U1127 ( .A(n1025), .Y(n1024) );
  CLKINVX1 U1128 ( .A(n1015), .Y(n1025) );
  NOR2BX1 U1129 ( .AN(n971), .B(counter_A[1]), .Y(n1015) );
  INVX3 U1130 ( .A(n968), .Y(n1118) );
  INVX3 U1131 ( .A(n968), .Y(n1117) );
  CLKBUFX3 U1132 ( .A(n1016), .Y(n1023) );
  AND2X2 U1133 ( .A(n971), .B(counter_A[1]), .Y(n1016) );
  OAI32X1 U1134 ( .A0(n1138), .A1(counter_A[2]), .A2(n1236), .B0(n1170), .B1(
        n57), .Y(n1120) );
  INVX3 U1135 ( .A(n1111), .Y(n1112) );
  CLKINVX1 U1136 ( .A(n124), .Y(n1111) );
  NOR3BXL U1137 ( .AN(n1108), .B(n263), .C(n1131), .Y(n124) );
  OAI21X1 U1138 ( .A0(n1083), .A1(n69), .B0(n1233), .Y(n378) );
  CLKINVX1 U1139 ( .A(n1086), .Y(n1233) );
  XOR2X1 U1140 ( .A(n1127), .B(n1085), .Y(n305) );
  AO22X1 U1141 ( .A0(N371), .A1(n1129), .B0(N463), .B1(n1132), .Y(Ax[7]) );
  AO22X1 U1142 ( .A0(N398), .A1(n1130), .B0(N490), .B1(n1133), .Y(Bx[7]) );
  AO22X1 U1143 ( .A0(N451), .A1(n1128), .B0(N527), .B1(n1134), .Y(By[6]) );
  AO22X1 U1144 ( .A0(N452), .A1(n1128), .B0(N528), .B1(n1134), .Y(By[7]) );
  AO22X1 U1145 ( .A0(N424), .A1(n1130), .B0(N500), .B1(n1133), .Y(Ay[6]) );
  AO22X1 U1146 ( .A0(N425), .A1(n1130), .B0(N501), .B1(n1133), .Y(Ay[7]) );
  AO22X1 U1147 ( .A0(N449), .A1(n1128), .B0(N525), .B1(n1134), .Y(By[4]) );
  AO22X1 U1148 ( .A0(N447), .A1(n1128), .B0(N523), .B1(n1134), .Y(By[2]) );
  AO22X1 U1149 ( .A0(N420), .A1(n1130), .B0(N496), .B1(n1132), .Y(Ay[2]) );
  AO22X1 U1150 ( .A0(N450), .A1(n1128), .B0(N526), .B1(n1134), .Y(By[5]) );
  AO22X1 U1151 ( .A0(N423), .A1(n1130), .B0(N499), .B1(n1133), .Y(Ay[5]) );
  AO22X1 U1152 ( .A0(N453), .A1(n1128), .B0(N529), .B1(n1134), .Y(By[8]) );
  OR2X1 U1153 ( .A(n305), .B(n1086), .Y(n377) );
  AO22X1 U1154 ( .A0(N446), .A1(n1128), .B0(N522), .B1(n1133), .Y(By[1]) );
  AO22X1 U1155 ( .A0(N419), .A1(n1130), .B0(N495), .B1(n1132), .Y(Ay[1]) );
  AO22X1 U1156 ( .A0(N373), .A1(n1130), .B0(N465), .B1(n1132), .Y(Ax[9]) );
  AO22X1 U1157 ( .A0(N400), .A1(n220), .B0(N492), .B1(n1133), .Y(Bx[9]) );
  AND2X2 U1158 ( .A(n69), .B(n1127), .Y(n64) );
  AND2X2 U1159 ( .A(n69), .B(n1127), .Y(n1082) );
  AND2X2 U1160 ( .A(n69), .B(n1127), .Y(n1081) );
  CLKBUFX3 U1161 ( .A(n315), .Y(n1094) );
  NOR2X1 U1162 ( .A(n378), .B(n1232), .Y(n315) );
  CLKBUFX3 U1163 ( .A(n153), .Y(n1103) );
  NAND3X1 U1164 ( .A(n1129), .B(n154), .C(n285), .Y(n153) );
  AO22X1 U1165 ( .A0(N393), .A1(n1130), .B0(N485), .B1(n1133), .Y(Bx[2]) );
  AO22X1 U1166 ( .A0(N395), .A1(n1130), .B0(N487), .B1(n1133), .Y(Bx[4]) );
  AO22X1 U1167 ( .A0(N372), .A1(n1129), .B0(N464), .B1(n1132), .Y(Ax[8]) );
  AO22X1 U1168 ( .A0(N370), .A1(n1129), .B0(N462), .B1(n1132), .Y(Ax[6]) );
  AO22X1 U1169 ( .A0(N397), .A1(n1130), .B0(N489), .B1(n1133), .Y(Bx[6]) );
  CLKBUFX3 U1170 ( .A(n1013), .Y(n1020) );
  NOR2X1 U1171 ( .A(counter_B[0]), .B(n1019), .Y(n1013) );
  CLKBUFX3 U1172 ( .A(n70), .Y(n1084) );
  CLKBUFX3 U1173 ( .A(n70), .Y(n1083) );
  AND3X2 U1174 ( .A(n378), .B(n1232), .C(n377), .Y(n967) );
  OAI32X1 U1175 ( .A0(n1138), .A1(counter_A[2]), .A2(n1236), .B0(n1170), .B1(
        n57), .Y(n1119) );
  CLKINVX1 U1176 ( .A(n969), .Y(n1091) );
  CLKINVX1 U1177 ( .A(n969), .Y(n1092) );
  INVX3 U1178 ( .A(n965), .Y(n1089) );
  INVX3 U1179 ( .A(n965), .Y(n1090) );
  CLKINVX1 U1180 ( .A(n969), .Y(n1093) );
  OAI211X1 U1181 ( .A0(n1088), .A1(n1227), .B0(n351), .C0(n352), .Y(N481) );
  OAI211X1 U1182 ( .A0(n1087), .A1(n1197), .B0(n321), .C0(n322), .Y(N519) );
  AO22X1 U1183 ( .A0(N374), .A1(n1129), .B0(N466), .B1(n1132), .Y(Ax[10]) );
  AO22X1 U1184 ( .A0(N426), .A1(n1130), .B0(N502), .B1(n1133), .Y(Ay[8]) );
  AO22X1 U1185 ( .A0(N454), .A1(n1129), .B0(N530), .B1(n1132), .Y(By[9]) );
  AO22X1 U1186 ( .A0(N427), .A1(n1130), .B0(N503), .B1(n1133), .Y(Ay[9]) );
  AO22X1 U1187 ( .A0(N455), .A1(n220), .B0(N531), .B1(n1133), .Y(By[10]) );
  AO22X1 U1188 ( .A0(N428), .A1(n1130), .B0(N504), .B1(n1132), .Y(Ay[10]) );
  NOR2X1 U1189 ( .A(n1079), .B(n1136), .Y(n59) );
  AO22X1 U1190 ( .A0(N399), .A1(n1128), .B0(N491), .B1(n1133), .Y(Bx[8]) );
  INVX3 U1191 ( .A(n970), .Y(n1079) );
  INVX3 U1192 ( .A(n970), .Y(n1080) );
  AO22X1 U1193 ( .A0(N401), .A1(n1130), .B0(N493), .B1(n1133), .Y(Bx[10]) );
  NOR2X1 U1194 ( .A(n1164), .B(n30), .Y(n47) );
  CLKINVX1 U1195 ( .A(N673), .Y(n1228) );
  CLKINVX1 U1196 ( .A(N672), .Y(n1225) );
  CLKINVX1 U1197 ( .A(N671), .Y(n1222) );
  CLKINVX1 U1198 ( .A(N670), .Y(n1219) );
  CLKINVX1 U1199 ( .A(N669), .Y(n1216) );
  CLKINVX1 U1200 ( .A(N668), .Y(n1213) );
  CLKINVX1 U1201 ( .A(N667), .Y(n1210) );
  CLKINVX1 U1202 ( .A(N666), .Y(n1207) );
  CLKINVX1 U1203 ( .A(N665), .Y(n1204) );
  CLKINVX1 U1204 ( .A(N664), .Y(n1201) );
  CLKINVX1 U1205 ( .A(N629), .Y(n1229) );
  CLKINVX1 U1206 ( .A(N628), .Y(n1226) );
  CLKINVX1 U1207 ( .A(N627), .Y(n1223) );
  CLKINVX1 U1208 ( .A(N626), .Y(n1220) );
  CLKINVX1 U1209 ( .A(N625), .Y(n1217) );
  CLKINVX1 U1210 ( .A(N624), .Y(n1214) );
  CLKINVX1 U1211 ( .A(N623), .Y(n1211) );
  CLKINVX1 U1212 ( .A(N622), .Y(n1208) );
  CLKINVX1 U1213 ( .A(N621), .Y(n1205) );
  CLKINVX1 U1214 ( .A(N620), .Y(n1202) );
  CLKINVX1 U1215 ( .A(N651), .Y(n1199) );
  CLKINVX1 U1216 ( .A(N650), .Y(n1196) );
  CLKINVX1 U1217 ( .A(N649), .Y(n1193) );
  CLKINVX1 U1218 ( .A(N648), .Y(n1190) );
  CLKINVX1 U1219 ( .A(N647), .Y(n1187) );
  CLKINVX1 U1220 ( .A(N646), .Y(n1184) );
  CLKINVX1 U1221 ( .A(N645), .Y(n1181) );
  CLKINVX1 U1222 ( .A(N644), .Y(n1178) );
  CLKINVX1 U1223 ( .A(N643), .Y(n1175) );
  CLKINVX1 U1224 ( .A(N642), .Y(n1172) );
  CLKINVX1 U1225 ( .A(N779), .Y(n1198) );
  CLKINVX1 U1226 ( .A(N778), .Y(n1195) );
  CLKINVX1 U1227 ( .A(N777), .Y(n1192) );
  CLKINVX1 U1228 ( .A(N776), .Y(n1189) );
  CLKINVX1 U1229 ( .A(N775), .Y(n1186) );
  CLKINVX1 U1230 ( .A(N774), .Y(n1183) );
  CLKINVX1 U1231 ( .A(N773), .Y(n1180) );
  CLKINVX1 U1232 ( .A(N772), .Y(n1177) );
  CLKINVX1 U1233 ( .A(N771), .Y(n1174) );
  CLKINVX1 U1234 ( .A(N770), .Y(n1171) );
  INVX3 U1235 ( .A(n1128), .Y(n1131) );
  OAI221XL U1236 ( .A0(n29), .A1(n30), .B0(n1169), .B1(n32), .C0(n1131), .Y(
        nx_state[1]) );
  CLKINVX1 U1237 ( .A(n34), .Y(n1169) );
  CLKINVX1 U1238 ( .A(n1096), .Y(n1162) );
  NAND2BX1 U1239 ( .AN(n55), .B(n40), .Y(n51) );
  NOR2X1 U1240 ( .A(n1231), .B(n1127), .Y(n29) );
  NOR3BXL U1241 ( .AN(n1127), .B(n1231), .C(n1135), .Y(n428) );
  AND3X2 U1242 ( .A(n1085), .B(n1127), .C(n1132), .Y(n427) );
  OAI32X1 U1243 ( .A0(n1237), .A1(n1129), .A2(n1096), .B0(n264), .B1(n1131), 
        .Y(n549) );
  OAI22XL U1244 ( .A0(n1136), .A1(n305), .B0(n1127), .B1(n67), .Y(n551) );
  OAI222XL U1245 ( .A0(n1098), .A1(n1228), .B0(n1099), .B1(n1150), .C0(n1097), 
        .C1(n1318), .Y(n546) );
  OAI222XL U1246 ( .A0(n1098), .A1(n1225), .B0(n1099), .B1(n1149), .C0(n1097), 
        .C1(n1317), .Y(n545) );
  OAI222XL U1247 ( .A0(n1098), .A1(n1222), .B0(n1099), .B1(n1148), .C0(n1097), 
        .C1(n1316), .Y(n544) );
  OAI222XL U1248 ( .A0(n1098), .A1(n1219), .B0(n1099), .B1(n1147), .C0(n1097), 
        .C1(n1315), .Y(n543) );
  OAI222XL U1249 ( .A0(n1098), .A1(n1216), .B0(n1099), .B1(n1146), .C0(n1097), 
        .C1(n1314), .Y(n542) );
  OAI222XL U1250 ( .A0(n1098), .A1(n1213), .B0(n1099), .B1(n1145), .C0(n1097), 
        .C1(n1313), .Y(n541) );
  OAI222XL U1251 ( .A0(n1098), .A1(n1210), .B0(n1099), .B1(n1144), .C0(n1097), 
        .C1(n1312), .Y(n540) );
  OAI222XL U1252 ( .A0(n1098), .A1(n1207), .B0(n1099), .B1(n1143), .C0(n1097), 
        .C1(n1311), .Y(n539) );
  OAI222XL U1253 ( .A0(n1098), .A1(n1204), .B0(n1099), .B1(n1142), .C0(n1097), 
        .C1(n1310), .Y(n538) );
  OAI222XL U1254 ( .A0(n1098), .A1(n1201), .B0(n1099), .B1(n1141), .C0(n1097), 
        .C1(n1309), .Y(n537) );
  OAI222XL U1255 ( .A0(n1198), .A1(n1098), .B0(n1160), .B1(n1099), .C0(n1097), 
        .C1(n1308), .Y(n496) );
  CLKINVX1 U1256 ( .A(\y[5][0] ), .Y(n1308) );
  OAI222XL U1257 ( .A0(n1195), .A1(n1098), .B0(n1159), .B1(n1099), .C0(n1097), 
        .C1(n1307), .Y(n495) );
  CLKINVX1 U1258 ( .A(\y[5][1] ), .Y(n1307) );
  OAI222XL U1259 ( .A0(n1192), .A1(n1098), .B0(n1158), .B1(n1099), .C0(n1097), 
        .C1(n1306), .Y(n494) );
  CLKINVX1 U1260 ( .A(\y[5][2] ), .Y(n1306) );
  OAI222XL U1261 ( .A0(n1189), .A1(n1098), .B0(n1157), .B1(n1099), .C0(n1097), 
        .C1(n1305), .Y(n493) );
  CLKINVX1 U1262 ( .A(\y[5][3] ), .Y(n1305) );
  OAI222XL U1263 ( .A0(n1186), .A1(n1098), .B0(n1156), .B1(n1099), .C0(n1097), 
        .C1(n1304), .Y(n492) );
  CLKINVX1 U1264 ( .A(\y[5][4] ), .Y(n1304) );
  OAI222XL U1265 ( .A0(n1183), .A1(n1098), .B0(n1155), .B1(n1099), .C0(n1097), 
        .C1(n1303), .Y(n491) );
  CLKINVX1 U1266 ( .A(\y[5][5] ), .Y(n1303) );
  OAI222XL U1267 ( .A0(n1180), .A1(n1098), .B0(n1154), .B1(n1099), .C0(n1097), 
        .C1(n1302), .Y(n490) );
  CLKINVX1 U1268 ( .A(\y[5][6] ), .Y(n1302) );
  OAI222XL U1269 ( .A0(n1177), .A1(n1098), .B0(n1153), .B1(n1099), .C0(n1097), 
        .C1(n1301), .Y(n489) );
  CLKINVX1 U1270 ( .A(\y[5][7] ), .Y(n1301) );
  OAI222XL U1271 ( .A0(n1174), .A1(n1098), .B0(n1152), .B1(n1099), .C0(n1097), 
        .C1(n1300), .Y(n488) );
  CLKINVX1 U1272 ( .A(\y[5][8] ), .Y(n1300) );
  OAI222XL U1273 ( .A0(n1171), .A1(n1098), .B0(n1151), .B1(n1099), .C0(n1097), 
        .C1(n1299), .Y(n487) );
  CLKINVX1 U1274 ( .A(\y[5][9] ), .Y(n1299) );
  OAI221XL U1275 ( .A0(n1103), .A1(n1228), .B0(n1102), .B1(n1298), .C0(n284), 
        .Y(n536) );
  AOI22X1 U1276 ( .A0(N629), .A1(n1105), .B0(X[0]), .B1(n1106), .Y(n284) );
  OAI221XL U1277 ( .A0(n1103), .A1(n1225), .B0(n154), .B1(n1297), .C0(n282), 
        .Y(n535) );
  AOI22X1 U1278 ( .A0(N628), .A1(n1105), .B0(X[1]), .B1(n1106), .Y(n282) );
  OAI221XL U1279 ( .A0(n1103), .A1(n1222), .B0(n1102), .B1(n1296), .C0(n280), 
        .Y(n534) );
  AOI22X1 U1280 ( .A0(N627), .A1(n1105), .B0(X[2]), .B1(n1107), .Y(n280) );
  OAI221XL U1281 ( .A0(n1103), .A1(n1219), .B0(n1102), .B1(n1295), .C0(n278), 
        .Y(n533) );
  AOI22X1 U1282 ( .A0(N626), .A1(n1105), .B0(X[3]), .B1(n1106), .Y(n278) );
  OAI221XL U1283 ( .A0(n1103), .A1(n1216), .B0(n1102), .B1(n1294), .C0(n276), 
        .Y(n532) );
  AOI22X1 U1284 ( .A0(N625), .A1(n1105), .B0(X[4]), .B1(n1106), .Y(n276) );
  OAI221XL U1285 ( .A0(n1103), .A1(n1213), .B0(n1102), .B1(n1293), .C0(n274), 
        .Y(n531) );
  AOI22X1 U1286 ( .A0(N624), .A1(n1105), .B0(X[5]), .B1(n1106), .Y(n274) );
  OAI221XL U1287 ( .A0(n1103), .A1(n1210), .B0(n1102), .B1(n1292), .C0(n272), 
        .Y(n530) );
  AOI22X1 U1288 ( .A0(N623), .A1(n1105), .B0(X[6]), .B1(n1107), .Y(n272) );
  OAI221XL U1289 ( .A0(n1103), .A1(n1207), .B0(n1102), .B1(n1291), .C0(n270), 
        .Y(n529) );
  AOI22X1 U1290 ( .A0(N622), .A1(n1105), .B0(X[7]), .B1(n1107), .Y(n270) );
  OAI221XL U1291 ( .A0(n1103), .A1(n1204), .B0(n1102), .B1(n1290), .C0(n268), 
        .Y(n528) );
  AOI22X1 U1292 ( .A0(N621), .A1(n1105), .B0(X[8]), .B1(n1106), .Y(n268) );
  OAI221XL U1293 ( .A0(n1103), .A1(n1201), .B0(n1102), .B1(n1289), .C0(n266), 
        .Y(n527) );
  AOI22X1 U1294 ( .A0(N620), .A1(n1105), .B0(X[9]), .B1(n1106), .Y(n266) );
  OAI221XL U1295 ( .A0(n1198), .A1(n1103), .B0(n1102), .B1(n1288), .C0(n176), 
        .Y(n486) );
  AOI22X1 U1296 ( .A0(n1105), .A1(N651), .B0(n1106), .B1(Y[0]), .Y(n176) );
  OAI221XL U1297 ( .A0(n1195), .A1(n1103), .B0(n1102), .B1(n1287), .C0(n174), 
        .Y(n485) );
  AOI22X1 U1298 ( .A0(n1105), .A1(N650), .B0(n1106), .B1(Y[1]), .Y(n174) );
  OAI221XL U1299 ( .A0(n1192), .A1(n1103), .B0(n1102), .B1(n1286), .C0(n172), 
        .Y(n484) );
  AOI22X1 U1300 ( .A0(n1105), .A1(N649), .B0(n1106), .B1(Y[2]), .Y(n172) );
  OAI221XL U1301 ( .A0(n1189), .A1(n1103), .B0(n1102), .B1(n1285), .C0(n170), 
        .Y(n483) );
  AOI22X1 U1302 ( .A0(n1105), .A1(N648), .B0(n1107), .B1(Y[3]), .Y(n170) );
  OAI221XL U1303 ( .A0(n1186), .A1(n1103), .B0(n1100), .B1(n1284), .C0(n168), 
        .Y(n482) );
  AOI22X1 U1304 ( .A0(n1105), .A1(N647), .B0(n1106), .B1(Y[4]), .Y(n168) );
  OAI221XL U1305 ( .A0(n1183), .A1(n1103), .B0(n1102), .B1(n1283), .C0(n166), 
        .Y(n481) );
  AOI22X1 U1306 ( .A0(n1105), .A1(N646), .B0(n1106), .B1(Y[5]), .Y(n166) );
  OAI221XL U1307 ( .A0(n1180), .A1(n1103), .B0(n1102), .B1(n1282), .C0(n164), 
        .Y(n480) );
  AOI22X1 U1308 ( .A0(n1105), .A1(N645), .B0(n1106), .B1(Y[6]), .Y(n164) );
  OAI221XL U1309 ( .A0(n1177), .A1(n1103), .B0(n1102), .B1(n1281), .C0(n162), 
        .Y(n479) );
  AOI22X1 U1310 ( .A0(n1105), .A1(N644), .B0(n1107), .B1(Y[7]), .Y(n162) );
  OAI221XL U1311 ( .A0(n1174), .A1(n1103), .B0(n1102), .B1(n1280), .C0(n160), 
        .Y(n478) );
  AOI22X1 U1312 ( .A0(n1105), .A1(N643), .B0(n1107), .B1(Y[8]), .Y(n160) );
  OAI221XL U1313 ( .A0(n1171), .A1(n1103), .B0(n1102), .B1(n1279), .C0(n156), 
        .Y(n477) );
  AOI22X1 U1314 ( .A0(n157), .A1(N642), .B0(n1106), .B1(Y[9]), .Y(n156) );
  OAI221XL U1315 ( .A0(n1110), .A1(n1228), .B0(n1108), .B1(n1278), .C0(n262), 
        .Y(n526) );
  CLKINVX1 U1316 ( .A(\x[3][0] ), .Y(n1278) );
  AOI22X1 U1317 ( .A0(N629), .A1(n1112), .B0(X[0]), .B1(n1113), .Y(n262) );
  OAI221XL U1318 ( .A0(n1110), .A1(n1225), .B0(n1108), .B1(n1277), .C0(n259), 
        .Y(n525) );
  CLKINVX1 U1319 ( .A(\x[3][1] ), .Y(n1277) );
  AOI22X1 U1320 ( .A0(N628), .A1(n124), .B0(X[1]), .B1(n1113), .Y(n259) );
  OAI221XL U1321 ( .A0(n1110), .A1(n1222), .B0(n1109), .B1(n1276), .C0(n256), 
        .Y(n524) );
  CLKINVX1 U1322 ( .A(\x[3][2] ), .Y(n1276) );
  AOI22X1 U1323 ( .A0(N627), .A1(n1112), .B0(X[2]), .B1(n1114), .Y(n256) );
  OAI221XL U1324 ( .A0(n1110), .A1(n1219), .B0(n1109), .B1(n1275), .C0(n253), 
        .Y(n523) );
  CLKINVX1 U1325 ( .A(\x[3][3] ), .Y(n1275) );
  AOI22X1 U1326 ( .A0(N626), .A1(n1112), .B0(X[3]), .B1(n1113), .Y(n253) );
  OAI221XL U1327 ( .A0(n1110), .A1(n1216), .B0(n1108), .B1(n1274), .C0(n250), 
        .Y(n522) );
  CLKINVX1 U1328 ( .A(\x[3][4] ), .Y(n1274) );
  AOI22X1 U1329 ( .A0(N625), .A1(n1112), .B0(X[4]), .B1(n1113), .Y(n250) );
  OAI221XL U1330 ( .A0(n1110), .A1(n1213), .B0(n1108), .B1(n1273), .C0(n247), 
        .Y(n521) );
  CLKINVX1 U1331 ( .A(\x[3][5] ), .Y(n1273) );
  AOI22X1 U1332 ( .A0(N624), .A1(n1112), .B0(X[5]), .B1(n1113), .Y(n247) );
  OAI221XL U1333 ( .A0(n1110), .A1(n1210), .B0(n1109), .B1(n1272), .C0(n244), 
        .Y(n520) );
  CLKINVX1 U1334 ( .A(\x[3][6] ), .Y(n1272) );
  AOI22X1 U1335 ( .A0(N623), .A1(n1112), .B0(X[6]), .B1(n1114), .Y(n244) );
  OAI221XL U1336 ( .A0(n1110), .A1(n1207), .B0(n1109), .B1(n1271), .C0(n241), 
        .Y(n519) );
  CLKINVX1 U1337 ( .A(\x[3][7] ), .Y(n1271) );
  AOI22X1 U1338 ( .A0(N622), .A1(n1112), .B0(X[7]), .B1(n1114), .Y(n241) );
  OAI221XL U1339 ( .A0(n1110), .A1(n1204), .B0(n1108), .B1(n1270), .C0(n238), 
        .Y(n518) );
  CLKINVX1 U1340 ( .A(\x[3][8] ), .Y(n1270) );
  AOI22X1 U1341 ( .A0(N621), .A1(n1112), .B0(X[8]), .B1(n1113), .Y(n238) );
  OAI221XL U1342 ( .A0(n1110), .A1(n1201), .B0(n1108), .B1(n1269), .C0(n235), 
        .Y(n517) );
  CLKINVX1 U1343 ( .A(\x[3][9] ), .Y(n1269) );
  AOI22X1 U1344 ( .A0(N620), .A1(n1112), .B0(X[9]), .B1(n1113), .Y(n235) );
  OAI221XL U1345 ( .A0(n1198), .A1(n1110), .B0(n1109), .B1(n1268), .C0(n152), 
        .Y(n476) );
  CLKINVX1 U1346 ( .A(\y[3][0] ), .Y(n1268) );
  AOI22X1 U1347 ( .A0(n1112), .A1(N651), .B0(n1113), .B1(Y[0]), .Y(n152) );
  OAI221XL U1348 ( .A0(n1195), .A1(n1110), .B0(n1109), .B1(n1267), .C0(n149), 
        .Y(n475) );
  CLKINVX1 U1349 ( .A(\y[3][1] ), .Y(n1267) );
  AOI22X1 U1350 ( .A0(n1112), .A1(N650), .B0(n1113), .B1(Y[1]), .Y(n149) );
  OAI221XL U1351 ( .A0(n1192), .A1(n1110), .B0(n1108), .B1(n1266), .C0(n146), 
        .Y(n474) );
  CLKINVX1 U1352 ( .A(\y[3][2] ), .Y(n1266) );
  AOI22X1 U1353 ( .A0(n1112), .A1(N649), .B0(n1113), .B1(Y[2]), .Y(n146) );
  OAI221XL U1354 ( .A0(n1189), .A1(n1110), .B0(n1108), .B1(n1265), .C0(n143), 
        .Y(n473) );
  CLKINVX1 U1355 ( .A(\y[3][3] ), .Y(n1265) );
  AOI22X1 U1356 ( .A0(n1112), .A1(N648), .B0(n1114), .B1(Y[3]), .Y(n143) );
  OAI221XL U1357 ( .A0(n1186), .A1(n1110), .B0(n1109), .B1(n1264), .C0(n140), 
        .Y(n472) );
  CLKINVX1 U1358 ( .A(\y[3][4] ), .Y(n1264) );
  AOI22X1 U1359 ( .A0(n1112), .A1(N647), .B0(n1113), .B1(Y[4]), .Y(n140) );
  OAI221XL U1360 ( .A0(n1183), .A1(n1110), .B0(n1109), .B1(n1263), .C0(n137), 
        .Y(n471) );
  CLKINVX1 U1361 ( .A(\y[3][5] ), .Y(n1263) );
  AOI22X1 U1362 ( .A0(n1112), .A1(N646), .B0(n1113), .B1(Y[5]), .Y(n137) );
  OAI221XL U1363 ( .A0(n1180), .A1(n1110), .B0(n1108), .B1(n1262), .C0(n134), 
        .Y(n470) );
  CLKINVX1 U1364 ( .A(\y[3][6] ), .Y(n1262) );
  AOI22X1 U1365 ( .A0(n1112), .A1(N645), .B0(n1113), .B1(Y[6]), .Y(n134) );
  OAI221XL U1366 ( .A0(n1177), .A1(n1110), .B0(n1108), .B1(n1261), .C0(n131), 
        .Y(n469) );
  CLKINVX1 U1367 ( .A(\y[3][7] ), .Y(n1261) );
  AOI22X1 U1368 ( .A0(n1112), .A1(N644), .B0(n1114), .B1(Y[7]), .Y(n131) );
  OAI221XL U1369 ( .A0(n1174), .A1(n1110), .B0(n1109), .B1(n1260), .C0(n128), 
        .Y(n468) );
  CLKINVX1 U1370 ( .A(\y[3][8] ), .Y(n1260) );
  AOI22X1 U1371 ( .A0(n1112), .A1(N643), .B0(n1114), .B1(Y[8]), .Y(n128) );
  OAI221XL U1372 ( .A0(n1171), .A1(n1110), .B0(n1109), .B1(n1259), .C0(n123), 
        .Y(n467) );
  CLKINVX1 U1373 ( .A(\y[3][9] ), .Y(n1259) );
  AOI22X1 U1374 ( .A0(n1112), .A1(N642), .B0(n1113), .B1(Y[9]), .Y(n123) );
  OAI221XL U1375 ( .A0(n1115), .A1(n1229), .B0(n1116), .B1(n1150), .C0(n231), 
        .Y(n516) );
  AOI22X1 U1376 ( .A0(N673), .A1(n1118), .B0(\x[2][0] ), .B1(n1126), .Y(n231)
         );
  OAI221XL U1377 ( .A0(n1115), .A1(n1226), .B0(n1116), .B1(n1149), .C0(n230), 
        .Y(n515) );
  AOI22X1 U1378 ( .A0(N672), .A1(n1117), .B0(\x[2][1] ), .B1(n1126), .Y(n230)
         );
  OAI221XL U1379 ( .A0(n1115), .A1(n1223), .B0(n1116), .B1(n1148), .C0(n229), 
        .Y(n514) );
  AOI22X1 U1380 ( .A0(N671), .A1(n1118), .B0(\x[2][2] ), .B1(n1126), .Y(n229)
         );
  OAI221XL U1381 ( .A0(n1115), .A1(n1220), .B0(n1116), .B1(n1147), .C0(n228), 
        .Y(n513) );
  AOI22X1 U1382 ( .A0(N670), .A1(n1117), .B0(\x[2][3] ), .B1(n1126), .Y(n228)
         );
  OAI221XL U1383 ( .A0(n1115), .A1(n1217), .B0(n1116), .B1(n1146), .C0(n227), 
        .Y(n512) );
  AOI22X1 U1384 ( .A0(N669), .A1(n1118), .B0(\x[2][4] ), .B1(n1126), .Y(n227)
         );
  OAI221XL U1385 ( .A0(n1115), .A1(n1214), .B0(n1116), .B1(n1145), .C0(n226), 
        .Y(n511) );
  AOI22X1 U1386 ( .A0(N668), .A1(n1117), .B0(\x[2][5] ), .B1(n1126), .Y(n226)
         );
  OAI221XL U1387 ( .A0(n1115), .A1(n1211), .B0(n1116), .B1(n1144), .C0(n225), 
        .Y(n510) );
  AOI22X1 U1388 ( .A0(N667), .A1(n1118), .B0(\x[2][6] ), .B1(n1126), .Y(n225)
         );
  OAI221XL U1389 ( .A0(n1115), .A1(n1208), .B0(n1116), .B1(n1143), .C0(n224), 
        .Y(n509) );
  AOI22X1 U1390 ( .A0(N666), .A1(n1117), .B0(\x[2][7] ), .B1(n1126), .Y(n224)
         );
  OAI221XL U1391 ( .A0(n1115), .A1(n1205), .B0(n1116), .B1(n1142), .C0(n223), 
        .Y(n508) );
  AOI22X1 U1392 ( .A0(N665), .A1(n1118), .B0(\x[2][8] ), .B1(n1126), .Y(n223)
         );
  OAI221XL U1393 ( .A0(n1115), .A1(n1202), .B0(n1116), .B1(n1141), .C0(n222), 
        .Y(n507) );
  AOI22X1 U1394 ( .A0(N664), .A1(n1117), .B0(\x[2][9] ), .B1(n1126), .Y(n222)
         );
  OAI221XL U1395 ( .A0(n1199), .A1(n1115), .B0(n1160), .B1(n1116), .C0(n118), 
        .Y(n466) );
  AOI22X1 U1396 ( .A0(N779), .A1(n1118), .B0(\y[2][0] ), .B1(n1126), .Y(n118)
         );
  OAI221XL U1397 ( .A0(n1196), .A1(n1115), .B0(n1159), .B1(n1116), .C0(n117), 
        .Y(n465) );
  AOI22X1 U1398 ( .A0(N778), .A1(n1117), .B0(\y[2][1] ), .B1(n1126), .Y(n117)
         );
  OAI221XL U1399 ( .A0(n1193), .A1(n1115), .B0(n1158), .B1(n1116), .C0(n116), 
        .Y(n464) );
  AOI22X1 U1400 ( .A0(N777), .A1(n1118), .B0(\y[2][2] ), .B1(n1137), .Y(n116)
         );
  OAI221XL U1401 ( .A0(n1190), .A1(n1115), .B0(n1157), .B1(n1116), .C0(n115), 
        .Y(n463) );
  AOI22X1 U1402 ( .A0(N776), .A1(n1117), .B0(\y[2][3] ), .B1(n1137), .Y(n115)
         );
  OAI221XL U1403 ( .A0(n1187), .A1(n1115), .B0(n1156), .B1(n1116), .C0(n114), 
        .Y(n462) );
  AOI22X1 U1404 ( .A0(N775), .A1(n1118), .B0(\y[2][4] ), .B1(n1137), .Y(n114)
         );
  OAI221XL U1405 ( .A0(n1184), .A1(n1115), .B0(n1155), .B1(n1116), .C0(n113), 
        .Y(n461) );
  AOI22X1 U1406 ( .A0(N774), .A1(n1117), .B0(\y[2][5] ), .B1(n1137), .Y(n113)
         );
  OAI221XL U1407 ( .A0(n1181), .A1(n1115), .B0(n1154), .B1(n1116), .C0(n112), 
        .Y(n460) );
  AOI22X1 U1408 ( .A0(N773), .A1(n1118), .B0(\y[2][6] ), .B1(n1126), .Y(n112)
         );
  OAI221XL U1409 ( .A0(n1178), .A1(n1115), .B0(n1153), .B1(n1116), .C0(n111), 
        .Y(n459) );
  AOI22X1 U1410 ( .A0(N772), .A1(n1117), .B0(\y[2][7] ), .B1(n1126), .Y(n111)
         );
  OAI221XL U1411 ( .A0(n1175), .A1(n1115), .B0(n1152), .B1(n1116), .C0(n110), 
        .Y(n458) );
  AOI22X1 U1412 ( .A0(N771), .A1(n1118), .B0(\y[2][8] ), .B1(n1126), .Y(n110)
         );
  OAI221XL U1413 ( .A0(n1172), .A1(n1115), .B0(n1151), .B1(n1116), .C0(n107), 
        .Y(n457) );
  AOI22X1 U1414 ( .A0(N770), .A1(n1117), .B0(\y[2][9] ), .B1(n1126), .Y(n107)
         );
  NOR2X2 U1415 ( .A(n1019), .B(n1074), .Y(n1022) );
  OAI22XL U1416 ( .A0(n1019), .A1(n1138), .B0(n425), .B1(n57), .Y(n179) );
  NAND3X1 U1417 ( .A(counter_B[0]), .B(n232), .C(n1129), .Y(n105) );
  OR3X2 U1418 ( .A(n1137), .B(counter_B[0]), .C(n1131), .Y(n968) );
  CLKBUFX3 U1419 ( .A(n1069), .Y(n1076) );
  AND2X2 U1420 ( .A(n1029), .B(n1237), .Y(n1069) );
  INVX3 U1421 ( .A(n1101), .Y(n1102) );
  CLKINVX1 U1422 ( .A(n1100), .Y(n1101) );
  OAI31XL U1423 ( .A0(n1168), .A1(n425), .A2(n32), .B0(n286), .Y(n1100) );
  OAI211X1 U1424 ( .A0(n1080), .A1(n1230), .B0(n400), .C0(n401), .Y(N328) );
  AOI222XL U1425 ( .A0(\x[3][0] ), .A1(n1085), .B0(\x[4][0] ), .B1(n953), .C0(
        \x[5][0] ), .C1(n1086), .Y(n401) );
  AOI22X1 U1426 ( .A0(\x[1][0] ), .A1(n64), .B0(n1084), .B1(\x[2][0] ), .Y(
        n400) );
  OAI211X1 U1427 ( .A0(n1079), .A1(n1227), .B0(n402), .C0(n403), .Y(N327) );
  AOI222XL U1428 ( .A0(\x[3][1] ), .A1(n1085), .B0(\x[4][1] ), .B1(n953), .C0(
        \x[5][1] ), .C1(n1086), .Y(n403) );
  AOI22X1 U1429 ( .A0(\x[1][1] ), .A1(n1081), .B0(n1084), .B1(\x[2][1] ), .Y(
        n402) );
  OAI211X1 U1430 ( .A0(n1079), .A1(n1224), .B0(n404), .C0(n405), .Y(N326) );
  AOI222XL U1431 ( .A0(\x[3][2] ), .A1(n1085), .B0(\x[4][2] ), .B1(n953), .C0(
        \x[5][2] ), .C1(n1086), .Y(n405) );
  AOI22X1 U1432 ( .A0(\x[1][2] ), .A1(n1082), .B0(n1084), .B1(\x[2][2] ), .Y(
        n404) );
  OAI211X1 U1433 ( .A0(n1079), .A1(n1200), .B0(n380), .C0(n381), .Y(N344) );
  AOI222XL U1434 ( .A0(\y[3][0] ), .A1(n1085), .B0(\y[4][0] ), .B1(n953), .C0(
        \y[5][0] ), .C1(n1086), .Y(n381) );
  AOI22X1 U1435 ( .A0(\y[1][0] ), .A1(n1082), .B0(n1083), .B1(\y[2][0] ), .Y(
        n380) );
  NOR2X2 U1436 ( .A(n377), .B(n439), .Y(n316) );
  NOR2X2 U1437 ( .A(n377), .B(n439), .Y(n1095) );
  OAI211X1 U1438 ( .A0(n1087), .A1(n1230), .B0(n348), .C0(n349), .Y(N482) );
  AOI2BB2X1 U1439 ( .B0(n1089), .B1(\x[2][0] ), .A0N(n1258), .A1N(n1092), .Y(
        n348) );
  AOI222XL U1440 ( .A0(n1094), .A1(\x[3][0] ), .B0(n1095), .B1(\x[4][0] ), 
        .C0(n952), .C1(\x[5][0] ), .Y(n349) );
  AOI222XL U1441 ( .A0(n1094), .A1(\x[3][1] ), .B0(n316), .B1(\x[4][1] ), .C0(
        n952), .C1(\x[5][1] ), .Y(n352) );
  AOI222XL U1442 ( .A0(n1094), .A1(\x[3][2] ), .B0(n1095), .B1(\x[4][2] ), 
        .C0(n952), .C1(\x[5][2] ), .Y(n355) );
  AOI222XL U1443 ( .A0(n1094), .A1(\y[3][1] ), .B0(n316), .B1(\y[4][1] ), .C0(
        n952), .C1(\y[5][1] ), .Y(n322) );
  AOI222XL U1444 ( .A0(n1094), .A1(\x[3][3] ), .B0(n316), .B1(\x[4][3] ), .C0(
        n952), .C1(\x[5][3] ), .Y(n358) );
  AOI222XL U1445 ( .A0(n1094), .A1(\y[3][2] ), .B0(n1095), .B1(\y[4][2] ), 
        .C0(n952), .C1(\y[5][2] ), .Y(n325) );
  AOI222XL U1446 ( .A0(n1094), .A1(\y[3][3] ), .B0(n316), .B1(\y[4][3] ), .C0(
        n952), .C1(\y[5][3] ), .Y(n328) );
  OAI211X1 U1447 ( .A0(n1087), .A1(n1200), .B0(n313), .C0(n314), .Y(N520) );
  AOI2BB2X1 U1448 ( .B0(n1089), .B1(\y[2][0] ), .A0N(n1248), .A1N(n1091), .Y(
        n313) );
  AOI222XL U1449 ( .A0(n1094), .A1(\y[3][0] ), .B0(n1095), .B1(\y[4][0] ), 
        .C0(n952), .C1(\y[5][0] ), .Y(n314) );
  NOR2X2 U1450 ( .A(n1237), .B(counter_B[0]), .Y(n1068) );
  NOR2X2 U1451 ( .A(n1237), .B(counter_B[0]), .Y(n1077) );
  NOR2X2 U1452 ( .A(n1074), .B(n1237), .Y(n1070) );
  NOR2X2 U1453 ( .A(n1074), .B(n1237), .Y(n1075) );
  NOR2X2 U1454 ( .A(n1019), .B(n1074), .Y(n1011) );
  AO22X1 U1455 ( .A0(N391), .A1(n1130), .B0(N483), .B1(n1133), .Y(Bx[0]) );
  AO22X1 U1456 ( .A0(N364), .A1(n1130), .B0(N456), .B1(n1133), .Y(Ax[0]) );
  BUFX4 U1457 ( .A(n66), .Y(n1086) );
  NOR2X1 U1458 ( .A(n439), .B(n1127), .Y(n66) );
  BUFX4 U1459 ( .A(n46), .Y(n1085) );
  NOR2X1 U1460 ( .A(n439), .B(n438), .Y(n46) );
  AOI2BB2X1 U1461 ( .B0(n1090), .B1(\x[2][1] ), .A0N(n1257), .A1N(n1093), .Y(
        n351) );
  AOI2BB2X1 U1462 ( .B0(n1090), .B1(\y[2][1] ), .A0N(n1247), .A1N(n1092), .Y(
        n321) );
  CLKBUFX3 U1463 ( .A(n1071), .Y(n1078) );
  AND2X2 U1464 ( .A(n1028), .B(n1237), .Y(n1071) );
  AND3X2 U1465 ( .A(n377), .B(n378), .C(n439), .Y(n969) );
  OAI31XL U1466 ( .A0(n1168), .A1(n425), .A2(n32), .B0(n286), .Y(n154) );
  AO22X1 U1467 ( .A0(N418), .A1(n1130), .B0(N494), .B1(n1132), .Y(Ay[0]) );
  AO22X1 U1468 ( .A0(N445), .A1(n1128), .B0(N521), .B1(n1133), .Y(By[0]) );
  OAI211X1 U1469 ( .A0(n1088), .A1(n1224), .B0(n354), .C0(n355), .Y(N480) );
  AOI2BB2X1 U1470 ( .B0(n1089), .B1(\x[2][2] ), .A0N(n1256), .A1N(n1093), .Y(
        n354) );
  OAI211X1 U1471 ( .A0(n1088), .A1(n1194), .B0(n324), .C0(n325), .Y(N518) );
  AOI2BB2X1 U1472 ( .B0(n1089), .B1(\y[2][2] ), .A0N(n1246), .A1N(n1093), .Y(
        n324) );
  OAI211X1 U1473 ( .A0(n1087), .A1(n1218), .B0(n360), .C0(n361), .Y(N478) );
  AOI2BB2X1 U1474 ( .B0(n1089), .B1(\x[2][4] ), .A0N(n1254), .A1N(n1091), .Y(
        n360) );
  OAI211X1 U1475 ( .A0(n1087), .A1(n1221), .B0(n357), .C0(n358), .Y(N479) );
  AOI2BB2X1 U1476 ( .B0(n1090), .B1(\x[2][3] ), .A0N(n1255), .A1N(n1091), .Y(
        n357) );
  OAI211X1 U1477 ( .A0(n1088), .A1(n1191), .B0(n327), .C0(n328), .Y(N517) );
  AOI2BB2X1 U1478 ( .B0(n1090), .B1(\y[2][3] ), .A0N(n1245), .A1N(n1093), .Y(
        n327) );
  OAI211X1 U1479 ( .A0(n1087), .A1(n1215), .B0(n363), .C0(n364), .Y(N477) );
  AOI2BB2X1 U1480 ( .B0(n1090), .B1(\x[2][5] ), .A0N(n1253), .A1N(n1092), .Y(
        n363) );
  OAI211X1 U1481 ( .A0(n1087), .A1(n1188), .B0(n330), .C0(n331), .Y(N516) );
  AOI2BB2X1 U1482 ( .B0(n1089), .B1(\y[2][4] ), .A0N(n1244), .A1N(n1091), .Y(
        n330) );
  OAI211X1 U1483 ( .A0(n1087), .A1(n1185), .B0(n333), .C0(n334), .Y(N515) );
  AOI2BB2X1 U1484 ( .B0(n1090), .B1(\y[2][5] ), .A0N(n1243), .A1N(n1091), .Y(
        n333) );
  OAI211X1 U1485 ( .A0(n1087), .A1(n1182), .B0(n336), .C0(n337), .Y(N514) );
  AOI2BB2X1 U1486 ( .B0(n1089), .B1(\y[2][6] ), .A0N(n1242), .A1N(n1092), .Y(
        n336) );
  OAI211X1 U1487 ( .A0(n1080), .A1(n1221), .B0(n406), .C0(n407), .Y(N325) );
  AOI222XL U1488 ( .A0(\x[3][3] ), .A1(n1085), .B0(\x[4][3] ), .B1(n953), .C0(
        \x[5][3] ), .C1(n1086), .Y(n407) );
  AOI22X1 U1489 ( .A0(\x[1][3] ), .A1(n64), .B0(n1084), .B1(\x[2][3] ), .Y(
        n406) );
  OAI211X1 U1490 ( .A0(n1080), .A1(n1197), .B0(n382), .C0(n383), .Y(N343) );
  AOI222XL U1491 ( .A0(\y[3][1] ), .A1(n1085), .B0(\y[4][1] ), .B1(n953), .C0(
        \y[5][1] ), .C1(n1086), .Y(n383) );
  AOI22X1 U1492 ( .A0(\y[1][1] ), .A1(n64), .B0(n1083), .B1(\y[2][1] ), .Y(
        n382) );
  OAI211X1 U1493 ( .A0(n1080), .A1(n1218), .B0(n408), .C0(n409), .Y(N324) );
  AOI222XL U1494 ( .A0(\x[3][4] ), .A1(n1085), .B0(\x[4][4] ), .B1(n953), .C0(
        \x[5][4] ), .C1(n1086), .Y(n409) );
  AOI22X1 U1495 ( .A0(\x[1][4] ), .A1(n1081), .B0(n1084), .B1(\x[2][4] ), .Y(
        n408) );
  OAI211X1 U1496 ( .A0(n1080), .A1(n1194), .B0(n384), .C0(n385), .Y(N342) );
  AOI222XL U1497 ( .A0(\y[3][2] ), .A1(n1085), .B0(\y[4][2] ), .B1(n953), .C0(
        \y[5][2] ), .C1(n1086), .Y(n385) );
  AOI22X1 U1498 ( .A0(\y[1][2] ), .A1(n1081), .B0(n1083), .B1(\y[2][2] ), .Y(
        n384) );
  OAI211X1 U1499 ( .A0(n1079), .A1(n1215), .B0(n410), .C0(n411), .Y(N323) );
  AOI222XL U1500 ( .A0(\x[3][5] ), .A1(n1085), .B0(\x[4][5] ), .B1(n953), .C0(
        \x[5][5] ), .C1(n1086), .Y(n411) );
  AOI22X1 U1501 ( .A0(\x[1][5] ), .A1(n1082), .B0(n1084), .B1(\x[2][5] ), .Y(
        n410) );
  OAI211X1 U1502 ( .A0(n1079), .A1(n1191), .B0(n386), .C0(n387), .Y(N341) );
  AOI222XL U1503 ( .A0(\y[3][3] ), .A1(n1085), .B0(\y[4][3] ), .B1(n953), .C0(
        \y[5][3] ), .C1(n1086), .Y(n387) );
  AOI22X1 U1504 ( .A0(\y[1][3] ), .A1(n1082), .B0(n1083), .B1(\y[2][3] ), .Y(
        n386) );
  OAI211X1 U1505 ( .A0(n1079), .A1(n1188), .B0(n388), .C0(n389), .Y(N340) );
  AOI222XL U1506 ( .A0(\y[3][4] ), .A1(n1085), .B0(\y[4][4] ), .B1(n953), .C0(
        \y[5][4] ), .C1(n1086), .Y(n389) );
  AOI22X1 U1507 ( .A0(\y[1][4] ), .A1(n64), .B0(n1083), .B1(\y[2][4] ), .Y(
        n388) );
  AOI222XL U1508 ( .A0(n1094), .A1(\x[3][4] ), .B0(n1095), .B1(\x[4][4] ), 
        .C0(n952), .C1(\x[5][4] ), .Y(n361) );
  AOI222XL U1509 ( .A0(n1094), .A1(\x[3][5] ), .B0(n316), .B1(\x[4][5] ), .C0(
        n952), .C1(\x[5][5] ), .Y(n364) );
  AOI222XL U1510 ( .A0(n1094), .A1(\y[3][4] ), .B0(n1095), .B1(\y[4][4] ), 
        .C0(n952), .C1(\y[5][4] ), .Y(n331) );
  AOI222XL U1511 ( .A0(n1094), .A1(\y[3][5] ), .B0(n316), .B1(\y[4][5] ), .C0(
        n952), .C1(\y[5][5] ), .Y(n334) );
  OAI2BB2XL U1512 ( .B0(n1139), .B1(n63), .A0N(n63), .A1N(\match_array[1] ), 
        .Y(n443) );
  NAND2X1 U1513 ( .A(n1081), .B(n1132), .Y(n63) );
  OAI2BB2XL U1514 ( .B0(n1139), .B1(n65), .A0N(n65), .A1N(n423), .Y(n444) );
  NAND3X1 U1515 ( .A(n438), .B(n1132), .C(n1086), .Y(n65) );
  CLKBUFX3 U1516 ( .A(n437), .Y(n1127) );
  AND3X2 U1517 ( .A(n1127), .B(n439), .C(n438), .Y(n970) );
  OAI211X1 U1518 ( .A0(n1088), .A1(n1212), .B0(n366), .C0(n367), .Y(N476) );
  AOI2BB2X1 U1519 ( .B0(n1089), .B1(\x[2][6] ), .A0N(n1252), .A1N(n1093), .Y(
        n366) );
  OAI211X1 U1520 ( .A0(n1087), .A1(n1206), .B0(n372), .C0(n373), .Y(N474) );
  AOI2BB2X1 U1521 ( .B0(n1089), .B1(\x[2][8] ), .A0N(n1250), .A1N(n1091), .Y(
        n372) );
  OAI211X1 U1522 ( .A0(n1087), .A1(n1209), .B0(n369), .C0(n370), .Y(N475) );
  AOI2BB2X1 U1523 ( .B0(n1090), .B1(\x[2][7] ), .A0N(n1251), .A1N(n1092), .Y(
        n369) );
  OAI211X1 U1524 ( .A0(n1088), .A1(n1179), .B0(n339), .C0(n340), .Y(N513) );
  AOI2BB2X1 U1525 ( .B0(n1090), .B1(\y[2][7] ), .A0N(n1241), .A1N(n1093), .Y(
        n339) );
  OAI211X1 U1526 ( .A0(n1087), .A1(n1176), .B0(n342), .C0(n343), .Y(N512) );
  AOI2BB2X1 U1527 ( .B0(n1089), .B1(\y[2][8] ), .A0N(n1240), .A1N(n1092), .Y(
        n342) );
  OAI211X1 U1528 ( .A0(n1087), .A1(n1173), .B0(n345), .C0(n346), .Y(N511) );
  AOI2BB2X1 U1529 ( .B0(n1090), .B1(\y[2][9] ), .A0N(n1239), .A1N(n1091), .Y(
        n345) );
  OAI211X1 U1530 ( .A0(n1087), .A1(n1203), .B0(n375), .C0(n376), .Y(N473) );
  AOI2BB2X1 U1531 ( .B0(n1090), .B1(\x[2][9] ), .A0N(n1249), .A1N(n1092), .Y(
        n375) );
  OAI211X1 U1532 ( .A0(n1079), .A1(n1212), .B0(n412), .C0(n413), .Y(N322) );
  AOI222XL U1533 ( .A0(\x[3][6] ), .A1(n1085), .B0(\x[4][6] ), .B1(n953), .C0(
        \x[5][6] ), .C1(n1086), .Y(n413) );
  AOI22X1 U1534 ( .A0(\x[1][6] ), .A1(n64), .B0(n1084), .B1(\x[2][6] ), .Y(
        n412) );
  OAI211X1 U1535 ( .A0(n1080), .A1(n1209), .B0(n414), .C0(n415), .Y(N321) );
  AOI222XL U1536 ( .A0(\x[3][7] ), .A1(n1085), .B0(\x[4][7] ), .B1(n953), .C0(
        \x[5][7] ), .C1(n1086), .Y(n415) );
  AOI22X1 U1537 ( .A0(\x[1][7] ), .A1(n1081), .B0(n1084), .B1(\x[2][7] ), .Y(
        n414) );
  OAI211X1 U1538 ( .A0(n1080), .A1(n1185), .B0(n390), .C0(n391), .Y(N339) );
  AOI222XL U1539 ( .A0(\y[3][5] ), .A1(n1085), .B0(\y[4][5] ), .B1(n953), .C0(
        \y[5][5] ), .C1(n1086), .Y(n391) );
  AOI22X1 U1540 ( .A0(\y[1][5] ), .A1(n1081), .B0(n1083), .B1(\y[2][5] ), .Y(
        n390) );
  OAI211X1 U1541 ( .A0(n1080), .A1(n1182), .B0(n392), .C0(n393), .Y(N338) );
  AOI222XL U1542 ( .A0(\y[3][6] ), .A1(n1085), .B0(\y[4][6] ), .B1(n953), .C0(
        \y[5][6] ), .C1(n1086), .Y(n393) );
  AOI22X1 U1543 ( .A0(\y[1][6] ), .A1(n1082), .B0(n1083), .B1(\y[2][6] ), .Y(
        n392) );
  AOI222XL U1544 ( .A0(n1094), .A1(\x[3][6] ), .B0(n1095), .B1(\x[4][6] ), 
        .C0(n952), .C1(\x[5][6] ), .Y(n367) );
  AOI222XL U1545 ( .A0(n1094), .A1(\x[3][7] ), .B0(n316), .B1(\x[4][7] ), .C0(
        n952), .C1(\x[5][7] ), .Y(n370) );
  AOI222XL U1546 ( .A0(n1094), .A1(\y[3][6] ), .B0(n1095), .B1(\y[4][6] ), 
        .C0(n952), .C1(\y[5][6] ), .Y(n337) );
  AOI222XL U1547 ( .A0(n1094), .A1(\y[3][7] ), .B0(n316), .B1(\y[4][7] ), .C0(
        n952), .C1(\y[5][7] ), .Y(n340) );
  AOI222XL U1548 ( .A0(n1094), .A1(\y[3][8] ), .B0(n1095), .B1(\y[4][8] ), 
        .C0(n952), .C1(\y[5][8] ), .Y(n343) );
  AOI222XL U1549 ( .A0(n1094), .A1(\x[3][8] ), .B0(n1095), .B1(\x[4][8] ), 
        .C0(n952), .C1(\x[5][8] ), .Y(n373) );
  NAND2X1 U1550 ( .A(state[1]), .B(n1166), .Y(n30) );
  CLKINVX1 U1551 ( .A(\y[1][1] ), .Y(n1247) );
  CLKINVX1 U1552 ( .A(\y[1][2] ), .Y(n1246) );
  CLKINVX1 U1553 ( .A(\y[1][3] ), .Y(n1245) );
  CLKINVX1 U1554 ( .A(\y[1][0] ), .Y(n1248) );
  CLKBUFX3 U1555 ( .A(n220), .Y(n1128) );
  NOR2X1 U1556 ( .A(n30), .B(state[0]), .Y(n220) );
  OAI211X1 U1557 ( .A0(n1079), .A1(n1179), .B0(n394), .C0(n395), .Y(N337) );
  AOI222XL U1558 ( .A0(\y[3][7] ), .A1(n1085), .B0(\y[4][7] ), .B1(n953), .C0(
        \y[5][7] ), .C1(n1086), .Y(n395) );
  AOI22X1 U1559 ( .A0(\y[1][7] ), .A1(n64), .B0(n1083), .B1(\y[2][7] ), .Y(
        n394) );
  OAI211X1 U1560 ( .A0(n1079), .A1(n1176), .B0(n396), .C0(n397), .Y(N336) );
  AOI222XL U1561 ( .A0(\y[3][8] ), .A1(n1085), .B0(\y[4][8] ), .B1(n953), .C0(
        \y[5][8] ), .C1(n1086), .Y(n397) );
  AOI22X1 U1562 ( .A0(\y[1][8] ), .A1(n1081), .B0(n1083), .B1(\y[2][8] ), .Y(
        n396) );
  OAI211X1 U1563 ( .A0(n1080), .A1(n1206), .B0(n416), .C0(n417), .Y(N320) );
  AOI222XL U1564 ( .A0(\x[3][8] ), .A1(n1085), .B0(\x[4][8] ), .B1(n953), .C0(
        \x[5][8] ), .C1(n1086), .Y(n417) );
  AOI22X1 U1565 ( .A0(\x[1][8] ), .A1(n1082), .B0(n1084), .B1(\x[2][8] ), .Y(
        n416) );
  OAI211X1 U1566 ( .A0(n1079), .A1(n1203), .B0(n418), .C0(n419), .Y(N319) );
  AOI222XL U1567 ( .A0(\x[3][9] ), .A1(n1085), .B0(\x[4][9] ), .B1(n953), .C0(
        \x[5][9] ), .C1(n1086), .Y(n419) );
  AOI22X1 U1568 ( .A0(\x[1][9] ), .A1(n64), .B0(n1084), .B1(\x[2][9] ), .Y(
        n418) );
  AOI222XL U1569 ( .A0(n1094), .A1(\y[3][9] ), .B0(n316), .B1(\y[4][9] ), .C0(
        n952), .C1(\y[5][9] ), .Y(n346) );
  AOI222XL U1570 ( .A0(n1094), .A1(\x[3][9] ), .B0(n316), .B1(\x[4][9] ), .C0(
        n952), .C1(\x[5][9] ), .Y(n376) );
  CLKINVX1 U1571 ( .A(\y[1][4] ), .Y(n1244) );
  CLKINVX1 U1572 ( .A(\y[1][5] ), .Y(n1243) );
  CLKINVX1 U1573 ( .A(\y[1][6] ), .Y(n1242) );
  OAI211X1 U1574 ( .A0(n1080), .A1(n1173), .B0(n398), .C0(n399), .Y(N335) );
  AOI222XL U1575 ( .A0(\y[3][9] ), .A1(n1085), .B0(\y[4][9] ), .B1(n953), .C0(
        \y[5][9] ), .C1(n1086), .Y(n399) );
  AOI22X1 U1576 ( .A0(\y[1][9] ), .A1(n1082), .B0(n1084), .B1(\y[2][9] ), .Y(
        n398) );
  CLKINVX1 U1577 ( .A(X[0]), .Y(n1150) );
  CLKINVX1 U1578 ( .A(X[1]), .Y(n1149) );
  CLKINVX1 U1579 ( .A(X[2]), .Y(n1148) );
  CLKINVX1 U1580 ( .A(X[3]), .Y(n1147) );
  CLKINVX1 U1581 ( .A(X[4]), .Y(n1146) );
  CLKINVX1 U1582 ( .A(X[5]), .Y(n1145) );
  CLKINVX1 U1583 ( .A(X[6]), .Y(n1144) );
  CLKINVX1 U1584 ( .A(X[7]), .Y(n1143) );
  CLKINVX1 U1585 ( .A(X[8]), .Y(n1142) );
  CLKINVX1 U1586 ( .A(X[9]), .Y(n1141) );
  CLKINVX1 U1587 ( .A(Y[0]), .Y(n1160) );
  CLKINVX1 U1588 ( .A(Y[1]), .Y(n1159) );
  CLKINVX1 U1589 ( .A(Y[2]), .Y(n1158) );
  CLKINVX1 U1590 ( .A(Y[3]), .Y(n1157) );
  CLKINVX1 U1591 ( .A(Y[4]), .Y(n1156) );
  CLKINVX1 U1592 ( .A(Y[5]), .Y(n1155) );
  CLKINVX1 U1593 ( .A(Y[6]), .Y(n1154) );
  CLKINVX1 U1594 ( .A(Y[7]), .Y(n1153) );
  CLKINVX1 U1595 ( .A(Y[8]), .Y(n1152) );
  CLKINVX1 U1596 ( .A(Y[9]), .Y(n1151) );
  CLKINVX1 U1597 ( .A(\x[1][7] ), .Y(n1251) );
  CLKINVX1 U1598 ( .A(\y[1][7] ), .Y(n1241) );
  CLKINVX1 U1599 ( .A(\y[1][8] ), .Y(n1240) );
  CLKINVX1 U1600 ( .A(\x[1][8] ), .Y(n1250) );
  CLKINVX1 U1601 ( .A(\x[1][9] ), .Y(n1249) );
  CLKINVX1 U1602 ( .A(\y[1][9] ), .Y(n1239) );
  OAI32X1 U1603 ( .A0(n1238), .A1(n1161), .A2(n1131), .B0(n440), .B1(n300), 
        .Y(n547) );
  OAI221XL U1604 ( .A0(n1167), .A1(n55), .B0(n434), .B1(n1096), .C0(n57), .Y(
        n431) );
  NAND2X1 U1605 ( .A(n434), .B(n40), .Y(n57) );
  OAI221XL U1606 ( .A0(n34), .A1(n1162), .B0(n29), .B1(n1136), .C0(n37), .Y(
        nx_state[0]) );
  AOI211X1 U1607 ( .A0(n38), .A1(n1165), .B0(n40), .C0(n41), .Y(n37) );
  NAND2X1 U1608 ( .A(state[0]), .B(n1166), .Y(n38) );
  OAI31XL U1609 ( .A0(n1166), .A1(state[1]), .A2(state[0]), .B0(n28), .Y(
        nx_state[2]) );
  NOR2X1 U1610 ( .A(n1162), .B(n435), .Y(n40) );
  NOR4X1 U1611 ( .A(n424), .B(n42), .C(n440), .D(n1019), .Y(n41) );
  NAND2X1 U1612 ( .A(n1164), .B(n1166), .Y(n42) );
  OAI22XL U1613 ( .A0(n438), .A1(n67), .B0(n68), .B1(n1136), .Y(n445) );
  NOR2X1 U1614 ( .A(n69), .B(n1083), .Y(n68) );
  NAND2X1 U1615 ( .A(n425), .B(n1168), .Y(n55) );
  OAI21XL U1616 ( .A0(n301), .A1(n424), .B0(n302), .Y(n548) );
  AOI2BB1X1 U1617 ( .A0N(n1131), .A1N(n1238), .B0(n1161), .Y(n301) );
  NAND4X1 U1618 ( .A(n424), .B(n1129), .C(n300), .D(n1238), .Y(n302) );
  AOI2BB1X1 U1619 ( .A0N(n306), .A1N(n307), .B0(n28), .Y(N583) );
  NOR4X1 U1620 ( .A(n310), .B(n423), .C(n421), .D(n422), .Y(n306) );
  NOR4X1 U1621 ( .A(n308), .B(n1234), .C(n420), .D(n1235), .Y(n307) );
  NAND3X1 U1622 ( .A(n1235), .B(n1234), .C(n420), .Y(n310) );
  CLKBUFX3 U1623 ( .A(n56), .Y(n1096) );
  NOR3X1 U1624 ( .A(state[1]), .B(state[2]), .C(n1164), .Y(n56) );
  AND3X2 U1625 ( .A(n438), .B(n1132), .C(n953), .Y(n429) );
  OAI32X1 U1626 ( .A0(n1074), .A1(n1129), .A2(n1096), .B0(counter_B[0]), .B1(
        n1131), .Y(n550) );
  OAI22XL U1627 ( .A0(n1232), .A1(n1136), .B0(n439), .B1(n67), .Y(n446) );
  NOR2X1 U1628 ( .A(n425), .B(n434), .Y(n34) );
  OAI22XL U1629 ( .A0(n435), .A1(n1096), .B0(n34), .B1(n32), .Y(n432) );
  CLKINVX1 U1630 ( .A(\match_array[1] ), .Y(n1234) );
  NAND3X1 U1631 ( .A(n422), .B(n423), .C(n421), .Y(n308) );
  NAND2X1 U1632 ( .A(n51), .B(n52), .Y(n430) );
  OAI21XL U1633 ( .A0(n434), .A1(n1162), .B0(n1170), .Y(n52) );
  INVX3 U1634 ( .A(reset), .Y(n1140) );
  NOR2X1 U1635 ( .A(counter_B[0]), .B(counter_A[2]), .Y(n972) );
  AOI222XL U1636 ( .A0(\y[5][0] ), .A1(n1020), .B0(\y[3][0] ), .B1(n1021), 
        .C0(\y[4][0] ), .C1(n1022), .Y(n974) );
  NOR2X1 U1637 ( .A(counter_A[2]), .B(n1074), .Y(n971) );
  AOI222XL U1638 ( .A0(\y[2][0] ), .A1(n1023), .B0(\y[0][0] ), .B1(n1024), 
        .C0(\y[1][0] ), .C1(n1026), .Y(n973) );
  NAND2X1 U1639 ( .A(n974), .B(n973), .Y(N779) );
  AOI222XL U1640 ( .A0(\y[5][1] ), .A1(n1020), .B0(\y[3][1] ), .B1(n1021), 
        .C0(\y[4][1] ), .C1(n1011), .Y(n976) );
  AOI222XL U1641 ( .A0(\y[2][1] ), .A1(n1023), .B0(\y[0][1] ), .B1(n1024), 
        .C0(\y[1][1] ), .C1(n1026), .Y(n975) );
  NAND2X1 U1642 ( .A(n976), .B(n975), .Y(N778) );
  AOI222XL U1643 ( .A0(\y[5][2] ), .A1(n1020), .B0(\y[3][2] ), .B1(n1021), 
        .C0(\y[4][2] ), .C1(n1022), .Y(n978) );
  AOI222XL U1644 ( .A0(\y[2][2] ), .A1(n1023), .B0(\y[0][2] ), .B1(n1024), 
        .C0(\y[1][2] ), .C1(n1026), .Y(n977) );
  NAND2X1 U1645 ( .A(n978), .B(n977), .Y(N777) );
  AOI222XL U1646 ( .A0(\y[5][3] ), .A1(n1020), .B0(\y[3][3] ), .B1(n1021), 
        .C0(\y[4][3] ), .C1(n1011), .Y(n980) );
  AOI222XL U1647 ( .A0(\y[2][3] ), .A1(n1023), .B0(\y[0][3] ), .B1(n1024), 
        .C0(\y[1][3] ), .C1(n1026), .Y(n979) );
  NAND2X1 U1648 ( .A(n980), .B(n979), .Y(N776) );
  AOI222XL U1649 ( .A0(\y[5][4] ), .A1(n1020), .B0(\y[3][4] ), .B1(n1021), 
        .C0(\y[4][4] ), .C1(n1022), .Y(n982) );
  AOI222XL U1650 ( .A0(\y[2][4] ), .A1(n1023), .B0(\y[0][4] ), .B1(n1024), 
        .C0(\y[1][4] ), .C1(n1026), .Y(n981) );
  NAND2X1 U1651 ( .A(n982), .B(n981), .Y(N775) );
  AOI222XL U1652 ( .A0(\y[5][5] ), .A1(n1020), .B0(\y[3][5] ), .B1(n1021), 
        .C0(\y[4][5] ), .C1(n1011), .Y(n984) );
  AOI222XL U1653 ( .A0(\y[2][5] ), .A1(n1023), .B0(\y[0][5] ), .B1(n1024), 
        .C0(\y[1][5] ), .C1(n1026), .Y(n983) );
  NAND2X1 U1654 ( .A(n984), .B(n983), .Y(N774) );
  AOI222XL U1655 ( .A0(\y[5][6] ), .A1(n1020), .B0(\y[3][6] ), .B1(n1021), 
        .C0(\y[4][6] ), .C1(n1022), .Y(n986) );
  AOI222XL U1656 ( .A0(\y[2][6] ), .A1(n1023), .B0(\y[0][6] ), .B1(n1024), 
        .C0(\y[1][6] ), .C1(n1026), .Y(n985) );
  NAND2X1 U1657 ( .A(n986), .B(n985), .Y(N773) );
  AOI222XL U1658 ( .A0(\y[5][7] ), .A1(n1020), .B0(\y[3][7] ), .B1(n1021), 
        .C0(\y[4][7] ), .C1(n1011), .Y(n988) );
  AOI222XL U1659 ( .A0(\y[2][7] ), .A1(n1023), .B0(\y[0][7] ), .B1(n1024), 
        .C0(\y[1][7] ), .C1(n1026), .Y(n987) );
  NAND2X1 U1660 ( .A(n988), .B(n987), .Y(N772) );
  AOI222XL U1661 ( .A0(\y[5][8] ), .A1(n1020), .B0(\y[3][8] ), .B1(n1021), 
        .C0(\y[4][8] ), .C1(n1022), .Y(n990) );
  AOI222XL U1662 ( .A0(\y[2][8] ), .A1(n1023), .B0(\y[0][8] ), .B1(n1024), 
        .C0(\y[1][8] ), .C1(n1026), .Y(n989) );
  NAND2X1 U1663 ( .A(n990), .B(n989), .Y(N771) );
  AOI222XL U1664 ( .A0(\y[5][9] ), .A1(n1020), .B0(\y[3][9] ), .B1(n1021), 
        .C0(\y[4][9] ), .C1(n1011), .Y(n992) );
  AOI222XL U1665 ( .A0(\y[2][9] ), .A1(n1023), .B0(\y[0][9] ), .B1(n1024), 
        .C0(\y[1][9] ), .C1(n1026), .Y(n991) );
  NAND2X1 U1666 ( .A(n992), .B(n991), .Y(N770) );
  AOI222XL U1667 ( .A0(\x[5][0] ), .A1(n1020), .B0(\x[3][0] ), .B1(n1021), 
        .C0(\x[4][0] ), .C1(n1022), .Y(n994) );
  AOI222XL U1668 ( .A0(\x[2][0] ), .A1(n1023), .B0(\x[0][0] ), .B1(n1024), 
        .C0(\x[1][0] ), .C1(n1026), .Y(n993) );
  NAND2X1 U1669 ( .A(n994), .B(n993), .Y(N673) );
  AOI222XL U1670 ( .A0(\x[5][1] ), .A1(n1020), .B0(\x[3][1] ), .B1(n1021), 
        .C0(\x[4][1] ), .C1(n1011), .Y(n996) );
  AOI222XL U1671 ( .A0(\x[2][1] ), .A1(n1023), .B0(\x[0][1] ), .B1(n1024), 
        .C0(\x[1][1] ), .C1(n1026), .Y(n995) );
  NAND2X1 U1672 ( .A(n996), .B(n995), .Y(N672) );
  AOI222XL U1673 ( .A0(\x[5][2] ), .A1(n1020), .B0(\x[3][2] ), .B1(n1021), 
        .C0(\x[4][2] ), .C1(n1022), .Y(n998) );
  AOI222XL U1674 ( .A0(\x[2][2] ), .A1(n1023), .B0(\x[0][2] ), .B1(n1024), 
        .C0(\x[1][2] ), .C1(n1026), .Y(n997) );
  NAND2X1 U1675 ( .A(n998), .B(n997), .Y(N671) );
  AOI222XL U1676 ( .A0(\x[5][3] ), .A1(n1020), .B0(\x[3][3] ), .B1(n1021), 
        .C0(\x[4][3] ), .C1(n1011), .Y(n1000) );
  AOI222XL U1677 ( .A0(\x[2][3] ), .A1(n1023), .B0(\x[0][3] ), .B1(n1024), 
        .C0(\x[1][3] ), .C1(n1026), .Y(n999) );
  NAND2X1 U1678 ( .A(n1000), .B(n999), .Y(N670) );
  AOI222XL U1679 ( .A0(\x[5][4] ), .A1(n1020), .B0(\x[3][4] ), .B1(n1021), 
        .C0(\x[4][4] ), .C1(n1022), .Y(n1002) );
  AOI222XL U1680 ( .A0(\x[2][4] ), .A1(n1023), .B0(\x[0][4] ), .B1(n1024), 
        .C0(\x[1][4] ), .C1(n1026), .Y(n1001) );
  NAND2X1 U1681 ( .A(n1002), .B(n1001), .Y(N669) );
  AOI222XL U1682 ( .A0(\x[5][5] ), .A1(n1020), .B0(\x[3][5] ), .B1(n1021), 
        .C0(\x[4][5] ), .C1(n1011), .Y(n1004) );
  AOI222XL U1683 ( .A0(\x[2][5] ), .A1(n1023), .B0(\x[0][5] ), .B1(n1024), 
        .C0(\x[1][5] ), .C1(n1026), .Y(n1003) );
  NAND2X1 U1684 ( .A(n1004), .B(n1003), .Y(N668) );
  AOI222XL U1685 ( .A0(\x[5][6] ), .A1(n1020), .B0(\x[3][6] ), .B1(n1021), 
        .C0(\x[4][6] ), .C1(n1022), .Y(n1006) );
  AOI222XL U1686 ( .A0(\x[2][6] ), .A1(n1023), .B0(\x[0][6] ), .B1(n1024), 
        .C0(\x[1][6] ), .C1(n1026), .Y(n1005) );
  NAND2X1 U1687 ( .A(n1006), .B(n1005), .Y(N667) );
  AOI222XL U1688 ( .A0(\x[5][7] ), .A1(n1020), .B0(\x[3][7] ), .B1(n1021), 
        .C0(\x[4][7] ), .C1(n1011), .Y(n1008) );
  AOI222XL U1689 ( .A0(\x[2][7] ), .A1(n1023), .B0(\x[0][7] ), .B1(n1024), 
        .C0(\x[1][7] ), .C1(n1026), .Y(n1007) );
  NAND2X1 U1690 ( .A(n1008), .B(n1007), .Y(N666) );
  AOI222XL U1691 ( .A0(\x[5][8] ), .A1(n1020), .B0(\x[3][8] ), .B1(n1021), 
        .C0(\x[4][8] ), .C1(n1022), .Y(n1010) );
  AOI222XL U1692 ( .A0(\x[2][8] ), .A1(n1023), .B0(\x[0][8] ), .B1(n1024), 
        .C0(\x[1][8] ), .C1(n1026), .Y(n1009) );
  NAND2X1 U1693 ( .A(n1010), .B(n1009), .Y(N665) );
  AOI222XL U1694 ( .A0(\x[5][9] ), .A1(n1020), .B0(\x[3][9] ), .B1(n1021), 
        .C0(\x[4][9] ), .C1(n1011), .Y(n1018) );
  AOI222XL U1695 ( .A0(\x[2][9] ), .A1(n1023), .B0(\x[0][9] ), .B1(n1024), 
        .C0(\x[1][9] ), .C1(n1026), .Y(n1017) );
  NAND2X1 U1696 ( .A(n1018), .B(n1017), .Y(N664) );
  NOR2X1 U1697 ( .A(n1074), .B(counter_B[2]), .Y(n1029) );
  AOI222XL U1698 ( .A0(\y[5][0] ), .A1(n1075), .B0(\y[3][0] ), .B1(n1076), 
        .C0(\y[4][0] ), .C1(n1077), .Y(n1031) );
  NOR2X1 U1699 ( .A(counter_B[2]), .B(counter_B[0]), .Y(n1028) );
  AOI222XL U1700 ( .A0(\y[2][0] ), .A1(n1078), .B0(\y[0][0] ), .B1(n954), .C0(
        \y[1][0] ), .C1(n955), .Y(n1030) );
  NAND2X1 U1701 ( .A(n1031), .B(n1030), .Y(N651) );
  AOI222XL U1702 ( .A0(\y[5][1] ), .A1(n1070), .B0(\y[3][1] ), .B1(n1076), 
        .C0(\y[4][1] ), .C1(n1068), .Y(n1033) );
  AOI222XL U1703 ( .A0(\y[2][1] ), .A1(n1078), .B0(\y[0][1] ), .B1(n954), .C0(
        \y[1][1] ), .C1(n955), .Y(n1032) );
  NAND2X1 U1704 ( .A(n1033), .B(n1032), .Y(N650) );
  AOI222XL U1705 ( .A0(\y[5][2] ), .A1(n1075), .B0(\y[3][2] ), .B1(n1076), 
        .C0(\y[4][2] ), .C1(n1077), .Y(n1035) );
  AOI222XL U1706 ( .A0(\y[2][2] ), .A1(n1078), .B0(\y[0][2] ), .B1(n954), .C0(
        \y[1][2] ), .C1(n955), .Y(n1034) );
  NAND2X1 U1707 ( .A(n1035), .B(n1034), .Y(N649) );
  AOI222XL U1708 ( .A0(\y[5][3] ), .A1(n1070), .B0(\y[3][3] ), .B1(n1076), 
        .C0(\y[4][3] ), .C1(n1068), .Y(n1037) );
  AOI222XL U1709 ( .A0(\y[2][3] ), .A1(n1078), .B0(\y[0][3] ), .B1(n954), .C0(
        \y[1][3] ), .C1(n955), .Y(n1036) );
  NAND2X1 U1710 ( .A(n1037), .B(n1036), .Y(N648) );
  AOI222XL U1711 ( .A0(\y[5][4] ), .A1(n1075), .B0(\y[3][4] ), .B1(n1076), 
        .C0(\y[4][4] ), .C1(n1077), .Y(n1039) );
  AOI222XL U1712 ( .A0(\y[2][4] ), .A1(n1078), .B0(\y[0][4] ), .B1(n954), .C0(
        \y[1][4] ), .C1(n955), .Y(n1038) );
  NAND2X1 U1713 ( .A(n1039), .B(n1038), .Y(N647) );
  AOI222XL U1714 ( .A0(\y[5][5] ), .A1(n1070), .B0(\y[3][5] ), .B1(n1076), 
        .C0(\y[4][5] ), .C1(n1068), .Y(n1041) );
  AOI222XL U1715 ( .A0(\y[2][5] ), .A1(n1078), .B0(\y[0][5] ), .B1(n954), .C0(
        \y[1][5] ), .C1(n955), .Y(n1040) );
  NAND2X1 U1716 ( .A(n1041), .B(n1040), .Y(N646) );
  AOI222XL U1717 ( .A0(\y[5][6] ), .A1(n1075), .B0(\y[3][6] ), .B1(n1076), 
        .C0(\y[4][6] ), .C1(n1077), .Y(n1043) );
  AOI222XL U1718 ( .A0(\y[2][6] ), .A1(n1078), .B0(\y[0][6] ), .B1(n954), .C0(
        \y[1][6] ), .C1(n955), .Y(n1042) );
  NAND2X1 U1719 ( .A(n1043), .B(n1042), .Y(N645) );
  AOI222XL U1720 ( .A0(\y[5][7] ), .A1(n1070), .B0(\y[3][7] ), .B1(n1076), 
        .C0(\y[4][7] ), .C1(n1068), .Y(n1045) );
  AOI222XL U1721 ( .A0(\y[2][7] ), .A1(n1078), .B0(\y[0][7] ), .B1(n954), .C0(
        \y[1][7] ), .C1(n955), .Y(n1044) );
  NAND2X1 U1722 ( .A(n1045), .B(n1044), .Y(N644) );
  AOI222XL U1723 ( .A0(\y[5][8] ), .A1(n1075), .B0(\y[3][8] ), .B1(n1076), 
        .C0(\y[4][8] ), .C1(n1077), .Y(n1047) );
  AOI222XL U1724 ( .A0(\y[2][8] ), .A1(n1078), .B0(\y[0][8] ), .B1(n954), .C0(
        \y[1][8] ), .C1(n955), .Y(n1046) );
  NAND2X1 U1725 ( .A(n1047), .B(n1046), .Y(N643) );
  AOI222XL U1726 ( .A0(\y[5][9] ), .A1(n1070), .B0(\y[3][9] ), .B1(n1076), 
        .C0(\y[4][9] ), .C1(n1068), .Y(n1049) );
  AOI222XL U1727 ( .A0(\y[2][9] ), .A1(n1078), .B0(\y[0][9] ), .B1(n954), .C0(
        \y[1][9] ), .C1(n955), .Y(n1048) );
  NAND2X1 U1728 ( .A(n1049), .B(n1048), .Y(N642) );
  AOI222XL U1729 ( .A0(\x[5][0] ), .A1(n1075), .B0(\x[3][0] ), .B1(n1076), 
        .C0(\x[4][0] ), .C1(n1077), .Y(n1051) );
  AOI222XL U1730 ( .A0(\x[2][0] ), .A1(n1078), .B0(\x[0][0] ), .B1(n954), .C0(
        \x[1][0] ), .C1(n955), .Y(n1050) );
  NAND2X1 U1731 ( .A(n1051), .B(n1050), .Y(N629) );
  AOI222XL U1732 ( .A0(\x[5][1] ), .A1(n1070), .B0(\x[3][1] ), .B1(n1076), 
        .C0(\x[4][1] ), .C1(n1068), .Y(n1053) );
  AOI222XL U1733 ( .A0(\x[2][1] ), .A1(n1078), .B0(\x[0][1] ), .B1(n954), .C0(
        \x[1][1] ), .C1(n955), .Y(n1052) );
  NAND2X1 U1734 ( .A(n1053), .B(n1052), .Y(N628) );
  AOI222XL U1735 ( .A0(\x[5][2] ), .A1(n1075), .B0(\x[3][2] ), .B1(n1076), 
        .C0(\x[4][2] ), .C1(n1077), .Y(n1055) );
  AOI222XL U1736 ( .A0(\x[2][2] ), .A1(n1078), .B0(\x[0][2] ), .B1(n954), .C0(
        \x[1][2] ), .C1(n955), .Y(n1054) );
  NAND2X1 U1737 ( .A(n1055), .B(n1054), .Y(N627) );
  AOI222XL U1738 ( .A0(\x[5][3] ), .A1(n1070), .B0(\x[3][3] ), .B1(n1076), 
        .C0(\x[4][3] ), .C1(n1068), .Y(n1057) );
  AOI222XL U1739 ( .A0(\x[2][3] ), .A1(n1078), .B0(\x[0][3] ), .B1(n954), .C0(
        \x[1][3] ), .C1(n955), .Y(n1056) );
  NAND2X1 U1740 ( .A(n1057), .B(n1056), .Y(N626) );
  AOI222XL U1741 ( .A0(\x[5][4] ), .A1(n1075), .B0(\x[3][4] ), .B1(n1076), 
        .C0(\x[4][4] ), .C1(n1077), .Y(n1059) );
  AOI222XL U1742 ( .A0(\x[2][4] ), .A1(n1078), .B0(\x[0][4] ), .B1(n954), .C0(
        \x[1][4] ), .C1(n955), .Y(n1058) );
  NAND2X1 U1743 ( .A(n1059), .B(n1058), .Y(N625) );
  AOI222XL U1744 ( .A0(\x[5][5] ), .A1(n1070), .B0(\x[3][5] ), .B1(n1076), 
        .C0(\x[4][5] ), .C1(n1068), .Y(n1061) );
  AOI222XL U1745 ( .A0(\x[2][5] ), .A1(n1078), .B0(\x[0][5] ), .B1(n954), .C0(
        \x[1][5] ), .C1(n955), .Y(n1060) );
  NAND2X1 U1746 ( .A(n1061), .B(n1060), .Y(N624) );
  AOI222XL U1747 ( .A0(\x[5][6] ), .A1(n1075), .B0(\x[3][6] ), .B1(n1076), 
        .C0(\x[4][6] ), .C1(n1077), .Y(n1063) );
  AOI222XL U1748 ( .A0(\x[2][6] ), .A1(n1078), .B0(\x[0][6] ), .B1(n954), .C0(
        \x[1][6] ), .C1(n955), .Y(n1062) );
  NAND2X1 U1749 ( .A(n1063), .B(n1062), .Y(N623) );
  AOI222XL U1750 ( .A0(\x[5][7] ), .A1(n1070), .B0(\x[3][7] ), .B1(n1076), 
        .C0(\x[4][7] ), .C1(n1068), .Y(n1065) );
  AOI222XL U1751 ( .A0(\x[2][7] ), .A1(n1078), .B0(\x[0][7] ), .B1(n954), .C0(
        \x[1][7] ), .C1(n955), .Y(n1064) );
  NAND2X1 U1752 ( .A(n1065), .B(n1064), .Y(N622) );
  AOI222XL U1753 ( .A0(\x[5][8] ), .A1(n1075), .B0(\x[3][8] ), .B1(n1076), 
        .C0(\x[4][8] ), .C1(n1077), .Y(n1067) );
  AOI222XL U1754 ( .A0(\x[2][8] ), .A1(n1078), .B0(\x[0][8] ), .B1(n954), .C0(
        \x[1][8] ), .C1(n955), .Y(n1066) );
  NAND2X1 U1755 ( .A(n1067), .B(n1066), .Y(N621) );
  AOI222XL U1756 ( .A0(\x[5][9] ), .A1(n1070), .B0(\x[3][9] ), .B1(n1076), 
        .C0(\x[4][9] ), .C1(n1068), .Y(n1073) );
  AOI222XL U1757 ( .A0(\x[2][9] ), .A1(n1078), .B0(\x[0][9] ), .B1(n954), .C0(
        \x[1][9] ), .C1(n955), .Y(n1072) );
  NAND2X1 U1758 ( .A(n1073), .B(n1072), .Y(N620) );
endmodule

