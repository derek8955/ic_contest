/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Tue Mar  8 22:37:15 2022
/////////////////////////////////////////////////////////////


module STI ( clk, reset, load, pi_fill, pi_msb, pi_low, pi_length, pi_data, 
        pi_end, so_valid, so_data );
  input [1:0] pi_length;
  input [15:0] pi_data;
  input clk, reset, load, pi_fill, pi_msb, pi_low, pi_end;
  output so_valid, so_data;
  wire   N43, N44, N45, N46, N47, n102, \counter[4] , N64, N73, N104, N105,
         N106, N107, N109, N110, N111, N112, n58, n59, n61, n64, n65, n66, n67,
         n68, n69, n70, \add_152/carry[4] , \add_152/carry[3] ,
         \add_152/carry[2] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n60, n62, n63, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101;
  wire   [2:0] state;
  wire   [2:0] nx_state;

  DFFRX1 \counter_reg[0]  ( .D(n69), .CK(clk), .RN(n101), .Q(N44), .QN(n64) );
  DFFRX1 \counter_reg[4]  ( .D(n70), .CK(clk), .RN(n101), .Q(\counter[4] ), 
        .QN(n61) );
  DFFRX1 \counter_reg[3]  ( .D(n66), .CK(clk), .RN(n101), .Q(N43), .QN(N47) );
  DFFRX2 \counter_reg[1]  ( .D(n68), .CK(clk), .RN(n101), .Q(N45), .QN(n38) );
  DFFRXL so_valid_reg ( .D(n65), .CK(clk), .RN(n101), .Q(n102), .QN(n100) );
  DFFRX1 \state_reg[2]  ( .D(nx_state[2]), .CK(clk), .RN(n101), .Q(state[2])
         );
  DFFRX1 \state_reg[1]  ( .D(nx_state[1]), .CK(clk), .RN(n101), .Q(state[1]), 
        .QN(n93) );
  DFFRX1 \state_reg[0]  ( .D(nx_state[0]), .CK(clk), .RN(n101), .Q(state[0])
         );
  DFFRX1 so_data_reg ( .D(n59), .CK(clk), .RN(n101), .QN(n58) );
  DFFRX1 \counter_reg[2]  ( .D(n67), .CK(clk), .RN(n101), .Q(N46), .QN(n37) );
  INVX16 U3 ( .A(n58), .Y(so_data) );
  INVX3 U4 ( .A(reset), .Y(n101) );
  BUFX16 U5 ( .A(n102), .Y(so_valid) );
  CLKINVX1 U6 ( .A(n3), .Y(n22) );
  CLKBUFX3 U7 ( .A(N44), .Y(n3) );
  CLKINVX1 U8 ( .A(N46), .Y(n7) );
  ADDHXL U9 ( .A(N45), .B(n3), .CO(\add_152/carry[2] ), .S(N109) );
  ADDHXL U10 ( .A(N46), .B(\add_152/carry[2] ), .CO(\add_152/carry[3] ), .S(
        N110) );
  ADDHXL U11 ( .A(N43), .B(\add_152/carry[3] ), .CO(\add_152/carry[4] ), .S(
        N111) );
  NOR2X1 U12 ( .A(N45), .B(n3), .Y(n4) );
  AO21X1 U13 ( .A0(n3), .A1(N45), .B0(n4), .Y(N104) );
  NAND2X1 U14 ( .A(n4), .B(n7), .Y(n5) );
  OAI21XL U15 ( .A0(n4), .A1(n7), .B0(n5), .Y(N105) );
  XNOR2X1 U16 ( .A(N43), .B(n5), .Y(N106) );
  NOR2X1 U17 ( .A(N43), .B(n5), .Y(n6) );
  XOR2X1 U18 ( .A(\counter[4] ), .B(n6), .Y(N107) );
  XOR2X1 U19 ( .A(\add_152/carry[4] ), .B(\counter[4] ), .Y(N112) );
  NOR2X1 U20 ( .A(n38), .B(n3), .Y(n17) );
  NOR2X1 U21 ( .A(n38), .B(n22), .Y(n16) );
  NOR2X1 U22 ( .A(n22), .B(N45), .Y(n14) );
  NOR2X1 U23 ( .A(n3), .B(N45), .Y(n13) );
  AO22X1 U24 ( .A0(pi_data[5]), .A1(n14), .B0(pi_data[4]), .B1(n13), .Y(n8) );
  AOI221XL U25 ( .A0(pi_data[6]), .A1(n17), .B0(pi_data[7]), .B1(n16), .C0(n8), 
        .Y(n11) );
  AO22X1 U26 ( .A0(pi_data[1]), .A1(n14), .B0(pi_data[0]), .B1(n13), .Y(n9) );
  AOI221XL U27 ( .A0(pi_data[2]), .A1(n17), .B0(pi_data[3]), .B1(n16), .C0(n9), 
        .Y(n10) );
  OA22X1 U28 ( .A0(n7), .A1(n11), .B0(N46), .B1(n10), .Y(n21) );
  AO22X1 U29 ( .A0(pi_data[13]), .A1(n14), .B0(pi_data[12]), .B1(n13), .Y(n12)
         );
  AOI221XL U30 ( .A0(pi_data[14]), .A1(n17), .B0(pi_data[15]), .B1(n16), .C0(
        n12), .Y(n19) );
  AO22X1 U31 ( .A0(pi_data[9]), .A1(n14), .B0(pi_data[8]), .B1(n13), .Y(n15)
         );
  AOI221XL U32 ( .A0(pi_data[10]), .A1(n17), .B0(pi_data[11]), .B1(n16), .C0(
        n15), .Y(n18) );
  OAI22XL U33 ( .A0(n19), .A1(n7), .B0(N46), .B1(n18), .Y(n20) );
  OAI2BB2XL U34 ( .B0(n21), .B1(N43), .A0N(N43), .A1N(n20), .Y(N73) );
  NOR2X1 U35 ( .A(n38), .B(n3), .Y(n32) );
  NOR2X1 U36 ( .A(n38), .B(n22), .Y(n31) );
  NOR2X1 U37 ( .A(n64), .B(N45), .Y(n29) );
  NOR2X1 U38 ( .A(n3), .B(N45), .Y(n28) );
  AO22X1 U39 ( .A0(pi_data[5]), .A1(n29), .B0(pi_data[4]), .B1(n28), .Y(n23)
         );
  AOI221XL U40 ( .A0(pi_data[6]), .A1(n32), .B0(pi_data[7]), .B1(n31), .C0(n23), .Y(n26) );
  AO22X1 U41 ( .A0(pi_data[1]), .A1(n29), .B0(pi_data[0]), .B1(n28), .Y(n24)
         );
  AOI221XL U42 ( .A0(pi_data[2]), .A1(n32), .B0(pi_data[3]), .B1(n31), .C0(n24), .Y(n25) );
  OA22X1 U43 ( .A0(n37), .A1(n26), .B0(N46), .B1(n25), .Y(n36) );
  AO22X1 U44 ( .A0(pi_data[13]), .A1(n29), .B0(pi_data[12]), .B1(n28), .Y(n27)
         );
  AOI221XL U45 ( .A0(pi_data[14]), .A1(n32), .B0(pi_data[15]), .B1(n31), .C0(
        n27), .Y(n34) );
  AO22X1 U46 ( .A0(pi_data[9]), .A1(n29), .B0(pi_data[8]), .B1(n28), .Y(n30)
         );
  AOI221XL U47 ( .A0(pi_data[10]), .A1(n32), .B0(pi_data[11]), .B1(n31), .C0(
        n30), .Y(n33) );
  OAI22XL U48 ( .A0(n34), .A1(n37), .B0(N46), .B1(n33), .Y(n35) );
  OAI2BB2XL U49 ( .B0(n36), .B1(N47), .A0N(N47), .A1N(n35), .Y(N64) );
  MXI2X1 U50 ( .A(n39), .B(n40), .S0(state[1]), .Y(nx_state[2]) );
  NAND2BX1 U51 ( .AN(state[2]), .B(state[0]), .Y(n40) );
  OAI21XL U52 ( .A0(pi_end), .A1(state[0]), .B0(state[2]), .Y(n39) );
  OAI21XL U53 ( .A0(n41), .A1(n42), .B0(n43), .Y(nx_state[1]) );
  OAI221XL U54 ( .A0(state[1]), .A1(n44), .B0(load), .B1(n45), .C0(n43), .Y(
        nx_state[0]) );
  NAND2X1 U55 ( .A(n46), .B(state[1]), .Y(n43) );
  AOI21X1 U56 ( .A0(state[0]), .A1(n41), .B0(state[2]), .Y(n44) );
  MXI3X1 U57 ( .A(n47), .B(n48), .C(n49), .S0(n50), .S1(pi_length[1]), .Y(n41)
         );
  OAI31XL U58 ( .A0(n51), .A1(n52), .A2(n53), .B0(n54), .Y(n49) );
  NAND2X1 U59 ( .A(\counter[4] ), .B(n55), .Y(n53) );
  XOR2X1 U60 ( .A(n50), .B(N47), .Y(n52) );
  NAND3BX1 U61 ( .AN(n38), .B(n3), .C(n56), .Y(n51) );
  MXI2X1 U62 ( .A(n57), .B(n60), .S0(pi_low), .Y(n48) );
  NAND2X1 U63 ( .A(n62), .B(n63), .Y(n60) );
  OAI31XL U64 ( .A0(n71), .A1(n3), .A2(n56), .B0(n72), .Y(n63) );
  NAND3X1 U65 ( .A(n37), .B(n61), .C(n38), .Y(n71) );
  OA21XL U66 ( .A0(n72), .A1(n62), .B0(n54), .Y(n57) );
  OAI21XL U67 ( .A0(N47), .A1(n72), .B0(n54), .Y(n47) );
  NAND4X1 U68 ( .A(pi_msb), .B(n64), .C(n73), .D(n38), .Y(n54) );
  NOR2BX1 U69 ( .AN(n74), .B(n55), .Y(n73) );
  NAND3X1 U70 ( .A(n61), .B(n55), .C(n75), .Y(n72) );
  NOR3X1 U71 ( .A(n38), .B(pi_msb), .C(n64), .Y(n75) );
  CLKINVX1 U72 ( .A(n37), .Y(n55) );
  OAI221XL U73 ( .A0(n61), .A1(n76), .B0(n77), .B1(n78), .C0(n79), .Y(n70) );
  AOI22X1 U74 ( .A0(N112), .A1(n80), .B0(N107), .B1(n81), .Y(n79) );
  CLKINVX1 U75 ( .A(n82), .Y(n78) );
  OAI211X1 U76 ( .A0(n64), .A1(n76), .B0(n83), .C0(n84), .Y(n69) );
  AOI21X1 U77 ( .A0(n64), .A1(n80), .B0(n82), .Y(n84) );
  NAND2X1 U78 ( .A(n64), .B(n81), .Y(n83) );
  OAI211X1 U79 ( .A0(n38), .A1(n76), .B0(n85), .C0(n86), .Y(n68) );
  AOI21X1 U80 ( .A0(N109), .A1(n80), .B0(n82), .Y(n86) );
  NAND2X1 U81 ( .A(N104), .B(n81), .Y(n85) );
  OAI211X1 U82 ( .A0(n37), .A1(n76), .B0(n87), .C0(n88), .Y(n67) );
  AOI21X1 U83 ( .A0(N110), .A1(n80), .B0(n82), .Y(n88) );
  NAND2X1 U84 ( .A(N105), .B(n81), .Y(n87) );
  OAI211X1 U85 ( .A0(N47), .A1(n76), .B0(n89), .C0(n90), .Y(n66) );
  AOI22X1 U86 ( .A0(N111), .A1(n80), .B0(N106), .B1(n81), .Y(n90) );
  NOR2X1 U87 ( .A(n42), .B(n56), .Y(n81) );
  NOR2X1 U88 ( .A(n42), .B(pi_msb), .Y(n80) );
  MXI2X1 U89 ( .A(n91), .B(n82), .S0(pi_length[0]), .Y(n89) );
  NOR2X1 U90 ( .A(n45), .B(n56), .Y(n82) );
  CLKINVX1 U91 ( .A(pi_msb), .Y(n56) );
  NOR3BXL U92 ( .AN(pi_low), .B(n45), .C(pi_length[1]), .Y(n91) );
  NAND2X1 U93 ( .A(n42), .B(n45), .Y(n76) );
  OAI21XL U94 ( .A0(n92), .A1(n100), .B0(n42), .Y(n65) );
  OA21XL U95 ( .A0(n46), .A1(n93), .B0(n45), .Y(n92) );
  NAND2BX1 U96 ( .AN(state[0]), .B(n93), .Y(n45) );
  NOR2X1 U97 ( .A(state[2]), .B(state[0]), .Y(n46) );
  MXI2X1 U98 ( .A(n94), .B(n58), .S0(n42), .Y(n59) );
  NAND3BX1 U99 ( .AN(state[2]), .B(n93), .C(state[0]), .Y(n42) );
  AOI32X1 U100 ( .A0(pi_fill), .A1(N64), .A2(n95), .B0(N73), .B1(n96), .Y(n94)
         );
  NAND2X1 U101 ( .A(n97), .B(pi_length[1]), .Y(n96) );
  MXI2X1 U102 ( .A(n98), .B(n99), .S0(n61), .Y(n97) );
  NOR2X1 U103 ( .A(n50), .B(n99), .Y(n98) );
  CLKINVX1 U104 ( .A(pi_fill), .Y(n99) );
  CLKINVX1 U105 ( .A(pi_length[0]), .Y(n50) );
  NOR3X1 U106 ( .A(n77), .B(pi_length[0]), .C(n74), .Y(n95) );
  NOR2X1 U107 ( .A(\counter[4] ), .B(n62), .Y(n74) );
  CLKINVX1 U108 ( .A(N47), .Y(n62) );
  CLKINVX1 U109 ( .A(pi_length[1]), .Y(n77) );
endmodule


module DAC ( clk, reset, so_valid, so_data, pi_end, oem_finish, odd1_wr, 
        odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr, 
        oem_addr, oem_dataout );
  output [4:0] oem_addr;
  output [7:0] oem_dataout;
  input clk, reset, so_valid, so_data, pi_end;
  output oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr,
         even3_wr, even4_wr;
  wire   n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, output_valid, N89, N108, N109,
         N110, N111, N112, n3, n4, n5, n6, n7, n10, n12, n13, n15, n16, n19,
         n20, n22, n24, n25, n28, n30, n32, n34, n35, n36, n37, n38, n39, n41,
         n42, n43, n45, n47, n48, n49, n51, n53, n54, n56, n58, n60, n61, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         \r394/carry[4] , \r394/carry[3] , \r394/carry[2] , n1, n2, n8, n9,
         n11, n139, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169;
  wire   [7:0] ptr;

  DFFSX1 \counter_reg[2]  ( .D(n106), .CK(clk), .SN(n169), .Q(n167), .QN(n112)
         );
  DFFSX1 \counter_reg[0]  ( .D(n109), .CK(clk), .SN(n169), .Q(n153), .QN(n114)
         );
  DFFRX1 odd4_wr_reg ( .D(n124), .CK(clk), .RN(n143), .Q(n174), .QN(n139) );
  DFFRX1 \oem_dataout_reg[0]  ( .D(n98), .CK(clk), .RN(n169), .Q(n186), .QN(
        n97) );
  DFFRX1 \oem_dataout_reg[1]  ( .D(n99), .CK(clk), .RN(n169), .Q(n185), .QN(
        n96) );
  DFFRX1 \oem_dataout_reg[2]  ( .D(n100), .CK(clk), .RN(n169), .Q(n184), .QN(
        n95) );
  DFFRX1 \oem_dataout_reg[3]  ( .D(n101), .CK(clk), .RN(n169), .Q(n183), .QN(
        n94) );
  DFFRX1 \oem_dataout_reg[4]  ( .D(n102), .CK(clk), .RN(n169), .Q(n182), .QN(
        n93) );
  DFFRX1 \oem_dataout_reg[5]  ( .D(n103), .CK(clk), .RN(n169), .Q(n181), .QN(
        n92) );
  DFFRX1 \oem_dataout_reg[6]  ( .D(n104), .CK(clk), .RN(n169), .Q(n180), .QN(
        n91) );
  DFFRX1 \oem_dataout_reg[7]  ( .D(n105), .CK(clk), .RN(n169), .Q(n179), .QN(
        n90) );
  DFFRX1 odd2_wr_reg ( .D(n128), .CK(clk), .RN(n143), .Q(n172), .QN(n75) );
  DFFRX1 even2_wr_reg ( .D(n127), .CK(clk), .RN(n143), .Q(n176), .QN(n76) );
  DFFRX1 odd1_wr_reg ( .D(n130), .CK(clk), .RN(n143), .Q(n171), .QN(n73) );
  DFFRX1 even1_wr_reg ( .D(n129), .CK(clk), .RN(n143), .Q(n175), .QN(n74) );
  DFFRX1 even4_wr_reg ( .D(n123), .CK(clk), .RN(n143), .Q(n178), .QN(n79) );
  DFFRX1 odd3_wr_reg ( .D(n126), .CK(clk), .RN(n143), .Q(n173), .QN(n77) );
  DFFRX1 even3_wr_reg ( .D(n125), .CK(clk), .RN(n143), .Q(n177), .QN(n78) );
  DFFRX1 oem_finish_reg ( .D(n107), .CK(clk), .RN(n143), .Q(n170), .QN(n89) );
  DFFSX1 \counter_reg[1]  ( .D(n108), .CK(clk), .SN(n169), .Q(n154), .QN(n113)
         );
  DFFRX1 \oem_addr_reg[3]  ( .D(ptr[3]), .CK(clk), .RN(n169), .QN(n9) );
  DFFRX1 \oem_addr_reg[1]  ( .D(ptr[1]), .CK(clk), .RN(n169), .QN(n2) );
  DFFRX1 \oem_addr_reg[4]  ( .D(ptr[4]), .CK(clk), .RN(n169), .QN(n11) );
  DFFRX1 \oem_addr_reg[0]  ( .D(ptr[0]), .CK(clk), .RN(n169), .QN(n1) );
  DFFRX1 finish_reg ( .D(n111), .CK(clk), .RN(n169), .QN(n88) );
  DFFRX1 \data_in_reg[1]  ( .D(n116), .CK(clk), .RN(n169), .QN(n81) );
  DFFRX1 \data_in_reg[7]  ( .D(n122), .CK(clk), .RN(n169), .QN(n87) );
  DFFRX1 \data_in_reg[4]  ( .D(n119), .CK(clk), .RN(n169), .QN(n84) );
  DFFRX1 \data_in_reg[2]  ( .D(n117), .CK(clk), .RN(n169), .QN(n82) );
  DFFRX1 \data_in_reg[5]  ( .D(n120), .CK(clk), .RN(n169), .QN(n85) );
  DFFRX1 \data_in_reg[6]  ( .D(n121), .CK(clk), .RN(n169), .QN(n86) );
  DFFRX1 \data_in_reg[0]  ( .D(n115), .CK(clk), .RN(n169), .QN(n80) );
  DFFRX1 \data_in_reg[3]  ( .D(n118), .CK(clk), .RN(n169), .QN(n83) );
  DFFRX1 \ptr_reg[5]  ( .D(n133), .CK(clk), .RN(n169), .Q(ptr[5]), .QN(n165)
         );
  DFFRX1 \ptr_reg[7]  ( .D(n131), .CK(clk), .RN(n169), .Q(ptr[7]), .QN(n166)
         );
  DFFRX1 \ptr_reg[6]  ( .D(n132), .CK(clk), .RN(n169), .Q(ptr[6]), .QN(n164)
         );
  DFFRX1 \ptr_reg[4]  ( .D(n134), .CK(clk), .RN(n169), .Q(ptr[4]) );
  DFFRX1 \ptr_reg[3]  ( .D(n135), .CK(clk), .RN(n169), .Q(ptr[3]) );
  DFFRX1 \ptr_reg[1]  ( .D(n138), .CK(clk), .RN(n169), .Q(ptr[1]) );
  DFFRX1 \ptr_reg[0]  ( .D(n137), .CK(clk), .RN(n169), .Q(ptr[0]), .QN(N108)
         );
  DFFRX1 output_valid_reg ( .D(N89), .CK(clk), .RN(n169), .Q(output_valid) );
  DFFRXL \oem_addr_reg[2]  ( .D(ptr[2]), .CK(clk), .RN(n169), .QN(n8) );
  DFFRX2 \ptr_reg[2]  ( .D(n136), .CK(clk), .RN(n169), .Q(ptr[2]) );
  INVX12 U3 ( .A(n1), .Y(oem_addr[0]) );
  INVX12 U4 ( .A(n11), .Y(oem_addr[4]) );
  INVX12 U5 ( .A(n2), .Y(oem_addr[1]) );
  INVX12 U6 ( .A(n9), .Y(oem_addr[3]) );
  INVX12 U7 ( .A(n8), .Y(oem_addr[2]) );
  INVX6 U8 ( .A(reset), .Y(n169) );
  BUFX12 U9 ( .A(n170), .Y(oem_finish) );
  BUFX12 U10 ( .A(n177), .Y(even3_wr) );
  BUFX12 U11 ( .A(n173), .Y(odd3_wr) );
  BUFX12 U12 ( .A(n178), .Y(even4_wr) );
  BUFX12 U13 ( .A(n175), .Y(even1_wr) );
  BUFX12 U14 ( .A(n171), .Y(odd1_wr) );
  BUFX12 U15 ( .A(n176), .Y(even2_wr) );
  BUFX12 U16 ( .A(n172), .Y(odd2_wr) );
  BUFX12 U17 ( .A(n179), .Y(oem_dataout[7]) );
  BUFX12 U18 ( .A(n180), .Y(oem_dataout[6]) );
  BUFX12 U19 ( .A(n181), .Y(oem_dataout[5]) );
  BUFX12 U20 ( .A(n182), .Y(oem_dataout[4]) );
  BUFX12 U21 ( .A(n183), .Y(oem_dataout[3]) );
  BUFX12 U22 ( .A(n184), .Y(oem_dataout[2]) );
  BUFX12 U23 ( .A(n185), .Y(oem_dataout[1]) );
  BUFX12 U24 ( .A(n186), .Y(oem_dataout[0]) );
  INVX12 U25 ( .A(n139), .Y(odd4_wr) );
  NOR3X1 U26 ( .A(ptr[6]), .B(ptr[7]), .C(ptr[5]), .Y(n5) );
  NOR3X1 U27 ( .A(n164), .B(ptr[5]), .C(n166), .Y(n35) );
  NOR3X1 U28 ( .A(ptr[5]), .B(ptr[6]), .C(n166), .Y(n42) );
  NOR3X1 U29 ( .A(ptr[5]), .B(ptr[7]), .C(n164), .Y(n48) );
  NOR3X1 U30 ( .A(n165), .B(ptr[7]), .C(n164), .Y(n49) );
  NOR3X1 U31 ( .A(n165), .B(ptr[6]), .C(n166), .Y(n43) );
  CLKBUFX3 U32 ( .A(output_valid), .Y(n142) );
  CLKINVX1 U33 ( .A(n7), .Y(n152) );
  NOR2X1 U34 ( .A(n69), .B(n163), .Y(n70) );
  NOR2X1 U35 ( .A(n168), .B(n153), .Y(n7) );
  XNOR2X1 U36 ( .A(n167), .B(n3), .Y(n106) );
  NAND2X1 U37 ( .A(n68), .B(n142), .Y(n69) );
  NOR4X1 U38 ( .A(n35), .B(n42), .C(n48), .D(n5), .Y(n68) );
  NOR3X1 U39 ( .A(n164), .B(n165), .C(n166), .Y(n37) );
  OAI22XL U40 ( .A0(n142), .A1(n166), .B0(n58), .B1(n155), .Y(n131) );
  AOI211X1 U41 ( .A0(n49), .A1(n163), .B0(n60), .C0(n61), .Y(n58) );
  OR2X1 U42 ( .A(n43), .B(n42), .Y(n60) );
  OAI22XL U43 ( .A0(n142), .A1(n164), .B0(n63), .B1(n155), .Y(n132) );
  AOI211X1 U44 ( .A0(n49), .A1(n64), .B0(n65), .C0(n61), .Y(n63) );
  NAND2BX1 U45 ( .AN(n48), .B(n67), .Y(n65) );
  OAI21XL U46 ( .A0(n54), .A1(n43), .B0(n163), .Y(n67) );
  OAI22XL U47 ( .A0(n142), .A1(n165), .B0(n68), .B1(n155), .Y(n133) );
  NAND2X1 U48 ( .A(n154), .B(n153), .Y(n22) );
  INVX3 U49 ( .A(n142), .Y(n155) );
  CLKINVX1 U50 ( .A(n64), .Y(n163) );
  AO21X1 U51 ( .A0(n64), .A1(n37), .B0(n35), .Y(n61) );
  CLKBUFX3 U52 ( .A(n169), .Y(n143) );
  OAI22XL U53 ( .A0(n147), .A1(n12), .B0(n84), .B1(n24), .Y(n119) );
  CLKINVX1 U54 ( .A(n24), .Y(n147) );
  OAI31XL U55 ( .A0(n25), .A1(n153), .A2(n154), .B0(n141), .Y(n24) );
  OAI22XL U56 ( .A0(n146), .A1(n12), .B0(n85), .B1(n28), .Y(n120) );
  CLKINVX1 U57 ( .A(n28), .Y(n146) );
  OAI31XL U58 ( .A0(n25), .A1(n114), .A2(n154), .B0(n141), .Y(n28) );
  OAI22XL U59 ( .A0(n145), .A1(n12), .B0(n86), .B1(n30), .Y(n121) );
  CLKINVX1 U60 ( .A(n30), .Y(n145) );
  OAI31XL U61 ( .A0(n25), .A1(n113), .A2(n153), .B0(n141), .Y(n30) );
  OAI22XL U62 ( .A0(n149), .A1(n12), .B0(n82), .B1(n19), .Y(n117) );
  CLKINVX1 U63 ( .A(n19), .Y(n149) );
  OAI31XL U64 ( .A0(n167), .A1(n113), .A2(n152), .B0(n141), .Y(n19) );
  OAI22XL U65 ( .A0(n80), .A1(n10), .B0(n151), .B1(n12), .Y(n115) );
  CLKINVX1 U66 ( .A(n10), .Y(n151) );
  OAI21XL U67 ( .A0(n167), .A1(n3), .B0(n141), .Y(n10) );
  OAI22XL U68 ( .A0(n83), .A1(n20), .B0(n148), .B1(n12), .Y(n118) );
  CLKINVX1 U69 ( .A(n20), .Y(n148) );
  OAI31XL U70 ( .A0(n22), .A1(n168), .A2(n167), .B0(n141), .Y(n20) );
  OAI22XL U71 ( .A0(n144), .A1(n12), .B0(n87), .B1(n32), .Y(n122) );
  CLKINVX1 U72 ( .A(n32), .Y(n144) );
  OAI21XL U73 ( .A0(n22), .A1(n25), .B0(n141), .Y(n32) );
  CLKBUFX3 U74 ( .A(n13), .Y(n141) );
  NAND3BX1 U75 ( .AN(n88), .B(n168), .C(pi_end), .Y(n13) );
  OAI22XL U76 ( .A0(n150), .A1(n12), .B0(n81), .B1(n15), .Y(n116) );
  CLKINVX1 U77 ( .A(n15), .Y(n150) );
  NAND2X1 U78 ( .A(n141), .B(n16), .Y(n15) );
  NAND4XL U79 ( .A(n112), .B(n113), .C(so_valid), .D(n153), .Y(n16) );
  AOI21X1 U80 ( .A0(n141), .A1(n72), .B0(n142), .Y(N89) );
  NAND3X1 U81 ( .A(n113), .B(n114), .C(n112), .Y(n72) );
  OAI2BB1X1 U82 ( .A0N(n168), .A1N(pi_end), .B0(n88), .Y(n111) );
  INVX1 U83 ( .A(so_valid), .Y(n168) );
  NAND2X1 U84 ( .A(n113), .B(n7), .Y(n3) );
  NAND2X2 U85 ( .A(so_data), .B(so_valid), .Y(n12) );
  NAND2X1 U86 ( .A(so_valid), .B(n167), .Y(n25) );
  OAI21XL U87 ( .A0(so_valid), .A1(n114), .B0(n152), .Y(n109) );
  OAI21XL U88 ( .A0(n113), .A1(n7), .B0(n3), .Y(n108) );
  NAND2X1 U89 ( .A(n89), .B(n4), .Y(n107) );
  NAND4BXL U90 ( .AN(ptr[0]), .B(n5), .C(n174), .D(n6), .Y(n4) );
  NOR4X1 U91 ( .A(ptr[4]), .B(ptr[3]), .C(ptr[2]), .D(ptr[1]), .Y(n6) );
  OAI2BB2XL U92 ( .B0(n155), .B1(n39), .A0N(n39), .A1N(n174), .Y(n124) );
  OAI22XL U93 ( .A0(n37), .A1(n36), .B0(n35), .B1(n38), .Y(n39) );
  AO22X1 U94 ( .A0(n69), .A1(ptr[4]), .B0(N112), .B1(n70), .Y(n134) );
  AO22X1 U95 ( .A0(n69), .A1(ptr[2]), .B0(N110), .B1(n70), .Y(n136) );
  AO22X1 U96 ( .A0(n69), .A1(ptr[3]), .B0(N111), .B1(n70), .Y(n135) );
  AO22X1 U97 ( .A0(n69), .A1(ptr[0]), .B0(N108), .B1(n70), .Y(n137) );
  AO22X1 U98 ( .A0(n69), .A1(ptr[1]), .B0(N109), .B1(n70), .Y(n138) );
  NAND2BX2 U99 ( .AN(ptr[2]), .B(n142), .Y(n38) );
  NAND2X2 U100 ( .A(ptr[2]), .B(n142), .Y(n36) );
  NOR3X1 U101 ( .A(ptr[6]), .B(ptr[7]), .C(n165), .Y(n54) );
  NAND4X1 U102 ( .A(ptr[0]), .B(ptr[2]), .C(ptr[1]), .D(n71), .Y(n64) );
  AND2X2 U103 ( .A(ptr[3]), .B(ptr[4]), .Y(n71) );
  OAI22XL U104 ( .A0(n158), .A1(n75), .B0(n155), .B1(n51), .Y(n128) );
  CLKINVX1 U105 ( .A(n51), .Y(n158) );
  OAI22XL U106 ( .A0(n49), .A1(n36), .B0(n48), .B1(n38), .Y(n51) );
  OAI22XL U107 ( .A0(n76), .A1(n159), .B0(n155), .B1(n47), .Y(n127) );
  CLKINVX1 U108 ( .A(n47), .Y(n159) );
  OAI22XL U109 ( .A0(n48), .A1(n36), .B0(n49), .B1(n38), .Y(n47) );
  OAI22XL U110 ( .A0(n156), .A1(n73), .B0(n155), .B1(n56), .Y(n130) );
  CLKINVX1 U111 ( .A(n56), .Y(n156) );
  OAI22XL U112 ( .A0(n54), .A1(n36), .B0(n5), .B1(n38), .Y(n56) );
  OAI22XL U113 ( .A0(n74), .A1(n157), .B0(n155), .B1(n53), .Y(n129) );
  CLKINVX1 U114 ( .A(n53), .Y(n157) );
  OAI22XL U115 ( .A0(n5), .A1(n36), .B0(n54), .B1(n38), .Y(n53) );
  OAI22XL U116 ( .A0(n79), .A1(n162), .B0(n155), .B1(n34), .Y(n123) );
  CLKINVX1 U117 ( .A(n34), .Y(n162) );
  OAI22XL U118 ( .A0(n35), .A1(n36), .B0(n37), .B1(n38), .Y(n34) );
  OAI22XL U119 ( .A0(n160), .A1(n77), .B0(n155), .B1(n45), .Y(n126) );
  CLKINVX1 U120 ( .A(n45), .Y(n160) );
  OAI22XL U121 ( .A0(n43), .A1(n36), .B0(n42), .B1(n38), .Y(n45) );
  OAI22XL U122 ( .A0(n78), .A1(n161), .B0(n155), .B1(n41), .Y(n125) );
  CLKINVX1 U123 ( .A(n41), .Y(n161) );
  OAI22XL U124 ( .A0(n42), .A1(n36), .B0(n43), .B1(n38), .Y(n41) );
  OAI22XL U125 ( .A0(n142), .A1(n97), .B0(n80), .B1(n155), .Y(n98) );
  OAI22XL U126 ( .A0(n142), .A1(n96), .B0(n81), .B1(n155), .Y(n99) );
  OAI22XL U127 ( .A0(n142), .A1(n95), .B0(n82), .B1(n155), .Y(n100) );
  OAI22XL U128 ( .A0(n142), .A1(n94), .B0(n83), .B1(n155), .Y(n101) );
  OAI22XL U129 ( .A0(n142), .A1(n93), .B0(n84), .B1(n155), .Y(n102) );
  OAI22XL U130 ( .A0(n142), .A1(n92), .B0(n85), .B1(n155), .Y(n103) );
  OAI22XL U131 ( .A0(n142), .A1(n91), .B0(n86), .B1(n155), .Y(n104) );
  OAI22XL U132 ( .A0(n142), .A1(n90), .B0(n87), .B1(n155), .Y(n105) );
  ADDHXL U133 ( .A(ptr[2]), .B(\r394/carry[2] ), .CO(\r394/carry[3] ), .S(N110) );
  ADDHXL U134 ( .A(ptr[1]), .B(ptr[0]), .CO(\r394/carry[2] ), .S(N109) );
  ADDHXL U135 ( .A(ptr[3]), .B(\r394/carry[3] ), .CO(\r394/carry[4] ), .S(N111) );
  XOR2X1 U136 ( .A(\r394/carry[4] ), .B(ptr[4]), .Y(N112) );
endmodule


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


  STI sti ( .clk(clk), .reset(reset), .load(load), .pi_fill(pi_fill), .pi_msb(
        pi_msb), .pi_low(pi_low), .pi_length(pi_length), .pi_data(pi_data), 
        .pi_end(pi_end), .so_valid(so_valid), .so_data(so_data) );
  DAC dac ( .clk(clk), .reset(reset), .so_valid(so_valid), .so_data(so_data), 
        .pi_end(pi_end), .oem_finish(oem_finish), .odd1_wr(odd1_wr), .odd2_wr(
        odd2_wr), .odd3_wr(odd3_wr), .odd4_wr(odd4_wr), .even1_wr(even1_wr), 
        .even2_wr(even2_wr), .even3_wr(even3_wr), .even4_wr(even4_wr), 
        .oem_addr(oem_addr), .oem_dataout(oem_dataout) );
endmodule

