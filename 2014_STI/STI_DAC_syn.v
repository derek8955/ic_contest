/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Mar  9 17:46:15 2022
/////////////////////////////////////////////////////////////


module STI ( clk, reset, load_i, pi_fill_i, pi_msb_i, pi_low_i, pi_length_i, 
        pi_data_i, pi_end_i, so_valid_o, so_data_o );
  input [1:0] pi_length_i;
  input [15:0] pi_data_i;
  input clk, reset, load_i, pi_fill_i, pi_msb_i, pi_low_i, pi_end_i;
  output so_valid_o, so_data_o;
  wire   N40, N41, N42, N43, N44, n105, \counter_sti[4] , N60, N67, n8, n12,
         n61, n62, n63, n64, n65, n66, n67, \add_112/carry[4] ,
         \add_112/carry[3] , \add_112/carry[2] , n1, n4, n5, n6, n7, n9, n10,
         n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104;
  wire   [2:0] state;
  wire   [4:0] counter_PLUS;
  wire   [4:0] counter_MINUS;
  wire   [2:0] nx_state;

  DFFRX1 \counter_sti_reg[0]  ( .D(n66), .CK(clk), .RN(n104), .Q(N41), .QN(n12) );
  DFFRX1 \counter_sti_reg[3]  ( .D(n63), .CK(clk), .RN(n104), .Q(N40), .QN(N44) );
  DFFRX1 \counter_sti_reg[4]  ( .D(n67), .CK(clk), .RN(n104), .Q(
        \counter_sti[4] ), .QN(n8) );
  DFFRX1 \state_reg[2]  ( .D(nx_state[2]), .CK(clk), .RN(n104), .Q(state[2])
         );
  DFFRX1 \state_reg[1]  ( .D(nx_state[1]), .CK(clk), .RN(n104), .Q(state[1]), 
        .QN(n1) );
  DFFRX1 \state_reg[0]  ( .D(nx_state[0]), .CK(clk), .RN(n104), .Q(state[0])
         );
  DFFRXL so_valid_o_reg ( .D(n61), .CK(clk), .RN(n104), .Q(n105) );
  DFFRX1 so_data_o_reg ( .D(n62), .CK(clk), .RN(n104), .QN(n103) );
  DFFRX2 \counter_sti_reg[1]  ( .D(n65), .CK(clk), .RN(n104), .Q(N42), .QN(n24) );
  DFFRX2 \counter_sti_reg[2]  ( .D(n64), .CK(clk), .RN(n104), .Q(N43), .QN(n40) );
  NOR3BX1 U3 ( .AN(state[0]), .B(state[2]), .C(state[1]), .Y(n48) );
  NOR3XL U4 ( .A(n24), .B(n12), .C(n40), .Y(n69) );
  NAND4XL U5 ( .A(n24), .B(n40), .C(n12), .D(n76), .Y(n68) );
  INVX16 U6 ( .A(n103), .Y(so_data_o) );
  INVX3 U7 ( .A(reset), .Y(n104) );
  BUFX16 U8 ( .A(n105), .Y(so_valid_o) );
  NAND2XL U9 ( .A(n48), .B(n49), .Y(n44) );
  INVX1 U10 ( .A(n48), .Y(n93) );
  NAND2XL U11 ( .A(n8), .B(n101), .Y(n100) );
  NOR4XL U12 ( .A(n8), .B(n52), .C(n46), .D(n101), .Y(n98) );
  NAND2XL U13 ( .A(N44), .B(n8), .Y(n78) );
  OAI2BB1XL U14 ( .A0N(so_valid_o), .A1N(n102), .B0(n93), .Y(n61) );
  CLKINVX1 U15 ( .A(n4), .Y(n25) );
  CLKBUFX3 U16 ( .A(N41), .Y(n4) );
  ADDHXL U17 ( .A(N42), .B(n4), .CO(\add_112/carry[2] ), .S(counter_PLUS[1])
         );
  ADDHXL U18 ( .A(N43), .B(\add_112/carry[2] ), .CO(\add_112/carry[3] ), .S(
        counter_PLUS[2]) );
  ADDHXL U19 ( .A(N40), .B(\add_112/carry[3] ), .CO(\add_112/carry[4] ), .S(
        counter_PLUS[3]) );
  XOR2X1 U20 ( .A(\add_112/carry[4] ), .B(\counter_sti[4] ), .Y(
        counter_PLUS[4]) );
  NOR2X1 U21 ( .A(N42), .B(n4), .Y(n5) );
  AO21X1 U22 ( .A0(n4), .A1(N42), .B0(n5), .Y(counter_MINUS[1]) );
  NAND2X1 U23 ( .A(n5), .B(n40), .Y(n6) );
  OAI21XL U24 ( .A0(n5), .A1(n40), .B0(n6), .Y(counter_MINUS[2]) );
  XNOR2X1 U25 ( .A(N40), .B(n6), .Y(counter_MINUS[3]) );
  NOR2X1 U26 ( .A(N40), .B(n6), .Y(n7) );
  XOR2X1 U27 ( .A(\counter_sti[4] ), .B(n7), .Y(counter_MINUS[4]) );
  NOR2X1 U28 ( .A(n24), .B(n4), .Y(n19) );
  NOR2X1 U29 ( .A(n24), .B(n25), .Y(n18) );
  NOR2X1 U30 ( .A(n25), .B(N42), .Y(n16) );
  NOR2X1 U31 ( .A(n4), .B(N42), .Y(n15) );
  AO22X1 U32 ( .A0(pi_data_i[5]), .A1(n16), .B0(pi_data_i[4]), .B1(n15), .Y(n9) );
  AOI221XL U33 ( .A0(pi_data_i[6]), .A1(n19), .B0(pi_data_i[7]), .B1(n18), 
        .C0(n9), .Y(n13) );
  AO22X1 U34 ( .A0(pi_data_i[1]), .A1(n16), .B0(pi_data_i[0]), .B1(n15), .Y(
        n10) );
  AOI221XL U35 ( .A0(pi_data_i[2]), .A1(n19), .B0(pi_data_i[3]), .B1(n18), 
        .C0(n10), .Y(n11) );
  OA22X1 U36 ( .A0(n40), .A1(n13), .B0(N43), .B1(n11), .Y(n23) );
  AO22X1 U37 ( .A0(pi_data_i[13]), .A1(n16), .B0(pi_data_i[12]), .B1(n15), .Y(
        n14) );
  AOI221XL U38 ( .A0(pi_data_i[14]), .A1(n19), .B0(pi_data_i[15]), .B1(n18), 
        .C0(n14), .Y(n21) );
  AO22X1 U39 ( .A0(pi_data_i[9]), .A1(n16), .B0(pi_data_i[8]), .B1(n15), .Y(
        n17) );
  AOI221XL U40 ( .A0(pi_data_i[10]), .A1(n19), .B0(pi_data_i[11]), .B1(n18), 
        .C0(n17), .Y(n20) );
  OAI22XL U41 ( .A0(n21), .A1(n40), .B0(N43), .B1(n20), .Y(n22) );
  OAI2BB2XL U42 ( .B0(n23), .B1(N40), .A0N(N40), .A1N(n22), .Y(N60) );
  NOR2X1 U43 ( .A(n24), .B(n4), .Y(n35) );
  NOR2X1 U44 ( .A(n24), .B(n12), .Y(n34) );
  NOR2X1 U45 ( .A(n25), .B(N42), .Y(n32) );
  NOR2X1 U46 ( .A(n4), .B(N42), .Y(n31) );
  AO22X1 U47 ( .A0(pi_data_i[5]), .A1(n32), .B0(pi_data_i[4]), .B1(n31), .Y(
        n26) );
  AOI221XL U48 ( .A0(pi_data_i[6]), .A1(n35), .B0(pi_data_i[7]), .B1(n34), 
        .C0(n26), .Y(n29) );
  AO22X1 U49 ( .A0(pi_data_i[1]), .A1(n32), .B0(pi_data_i[0]), .B1(n31), .Y(
        n27) );
  AOI221XL U50 ( .A0(pi_data_i[2]), .A1(n35), .B0(pi_data_i[3]), .B1(n34), 
        .C0(n27), .Y(n28) );
  OA22X1 U51 ( .A0(n40), .A1(n29), .B0(N43), .B1(n28), .Y(n39) );
  AO22X1 U52 ( .A0(pi_data_i[13]), .A1(n32), .B0(pi_data_i[12]), .B1(n31), .Y(
        n30) );
  AOI221XL U53 ( .A0(pi_data_i[14]), .A1(n35), .B0(pi_data_i[15]), .B1(n34), 
        .C0(n30), .Y(n37) );
  AO22X1 U54 ( .A0(pi_data_i[9]), .A1(n32), .B0(pi_data_i[8]), .B1(n31), .Y(
        n33) );
  AOI221XL U55 ( .A0(pi_data_i[10]), .A1(n35), .B0(pi_data_i[11]), .B1(n34), 
        .C0(n33), .Y(n36) );
  OAI22XL U56 ( .A0(n37), .A1(n40), .B0(N43), .B1(n36), .Y(n38) );
  OAI2BB2XL U57 ( .B0(n39), .B1(N44), .A0N(N44), .A1N(n38), .Y(N67) );
  MXI2X1 U58 ( .A(n41), .B(n42), .S0(state[1]), .Y(nx_state[2]) );
  NAND2BX1 U59 ( .AN(state[2]), .B(state[0]), .Y(n42) );
  OAI21XL U60 ( .A0(pi_end_i), .A1(state[0]), .B0(state[2]), .Y(n41) );
  OAI221XL U61 ( .A0(n43), .A1(n44), .B0(n45), .B1(n46), .C0(n47), .Y(
        nx_state[1]) );
  CLKMX2X2 U62 ( .A(n50), .B(n51), .S0(n52), .Y(n43) );
  OAI221XL U63 ( .A0(state[1]), .A1(n53), .B0(load_i), .B1(n54), .C0(n47), .Y(
        nx_state[0]) );
  NAND2X1 U64 ( .A(n55), .B(state[1]), .Y(n47) );
  AOI21X1 U65 ( .A0(n56), .A1(state[0]), .B0(state[2]), .Y(n53) );
  MX3XL U66 ( .A(n51), .B(n50), .C(n45), .S0(pi_length_i[0]), .S1(
        pi_length_i[1]), .Y(n56) );
  CLKINVX1 U67 ( .A(n57), .Y(n45) );
  OAI31XL U68 ( .A0(n58), .A1(n59), .A2(n60), .B0(n68), .Y(n57) );
  CLKINVX1 U69 ( .A(n69), .Y(n60) );
  XOR2X1 U70 ( .A(n70), .B(pi_length_i[0]), .Y(n59) );
  OR2X1 U71 ( .A(n8), .B(pi_msb_i), .Y(n58) );
  OA21XL U72 ( .A0(N44), .A1(n71), .B0(n68), .Y(n50) );
  MXI2X1 U73 ( .A(n72), .B(n73), .S0(pi_low_i), .Y(n51) );
  AOI21X1 U74 ( .A0(n71), .A1(n74), .B0(N44), .Y(n73) );
  NAND4X1 U75 ( .A(pi_msb_i), .B(n8), .C(n75), .D(n12), .Y(n74) );
  AND2X1 U76 ( .A(n40), .B(n24), .Y(n75) );
  OAI21XL U77 ( .A0(n71), .A1(n70), .B0(n68), .Y(n72) );
  NOR2X1 U78 ( .A(n77), .B(n78), .Y(n76) );
  CLKINVX1 U79 ( .A(N44), .Y(n70) );
  NAND3X1 U80 ( .A(n8), .B(n77), .C(n69), .Y(n71) );
  OAI221XL U81 ( .A0(n49), .A1(n79), .B0(n8), .B1(n80), .C0(n81), .Y(n67) );
  AOI22X1 U82 ( .A0(counter_PLUS[4]), .A1(n82), .B0(counter_MINUS[4]), .B1(n83), .Y(n81) );
  CLKINVX1 U83 ( .A(n84), .Y(n79) );
  CLKINVX1 U84 ( .A(pi_length_i[1]), .Y(n49) );
  OAI211X1 U85 ( .A0(n12), .A1(n80), .B0(n85), .C0(n86), .Y(n66) );
  AOI21X1 U86 ( .A0(n25), .A1(n82), .B0(n84), .Y(n86) );
  NAND2X1 U87 ( .A(n12), .B(n83), .Y(n85) );
  OAI211X1 U88 ( .A0(n24), .A1(n80), .B0(n87), .C0(n88), .Y(n65) );
  AOI21X1 U89 ( .A0(counter_PLUS[1]), .A1(n82), .B0(n84), .Y(n88) );
  NAND2X1 U90 ( .A(counter_MINUS[1]), .B(n83), .Y(n87) );
  OAI211X1 U91 ( .A0(n40), .A1(n80), .B0(n89), .C0(n90), .Y(n64) );
  AOI21X1 U92 ( .A0(counter_PLUS[2]), .A1(n82), .B0(n84), .Y(n90) );
  NAND2X1 U93 ( .A(counter_MINUS[2]), .B(n83), .Y(n89) );
  OAI211X1 U94 ( .A0(N44), .A1(n80), .B0(n91), .C0(n92), .Y(n63) );
  AOI22X1 U95 ( .A0(counter_PLUS[3]), .A1(n82), .B0(counter_MINUS[3]), .B1(n83), .Y(n92) );
  NOR2X1 U96 ( .A(n93), .B(n77), .Y(n83) );
  NOR2X1 U97 ( .A(n93), .B(pi_msb_i), .Y(n82) );
  MXI2X1 U98 ( .A(n94), .B(n84), .S0(pi_length_i[0]), .Y(n91) );
  NOR2X1 U99 ( .A(n54), .B(n77), .Y(n84) );
  CLKINVX1 U100 ( .A(pi_msb_i), .Y(n77) );
  NOR3BXL U101 ( .AN(pi_low_i), .B(n54), .C(pi_length_i[1]), .Y(n94) );
  NAND2X1 U102 ( .A(n93), .B(n54), .Y(n80) );
  OAI221XL U103 ( .A0(n95), .A1(n96), .B0(n48), .B1(n103), .C0(n97), .Y(n62)
         );
  OAI21XL U104 ( .A0(n98), .A1(n99), .B0(N60), .Y(n97) );
  MXI2X1 U105 ( .A(n100), .B(n93), .S0(n46), .Y(n99) );
  CLKINVX1 U106 ( .A(pi_fill_i), .Y(n101) );
  NAND2X1 U107 ( .A(pi_fill_i), .B(N67), .Y(n96) );
  NAND3BX1 U108 ( .AN(n46), .B(n78), .C(n52), .Y(n95) );
  CLKINVX1 U109 ( .A(pi_length_i[0]), .Y(n52) );
  NAND2X1 U110 ( .A(pi_length_i[1]), .B(n48), .Y(n46) );
  OAI21XL U111 ( .A0(n55), .A1(n1), .B0(n54), .Y(n102) );
  NAND2BX1 U112 ( .AN(state[0]), .B(n1), .Y(n54) );
  NOR2X1 U113 ( .A(state[2]), .B(state[0]), .Y(n55) );
endmodule


module DAC ( clk, reset, so_valid_i, so_data_i, pi_end_dac, oem_finish_o, 
        odd1_wr_o, odd2_wr_o, odd3_wr_o, odd4_wr_o, even1_wr_o, even2_wr_o, 
        even3_wr_o, even4_wr_o, oem_addr_o, oem_dataout_o );
  output [4:0] oem_addr_o;
  output [7:0] oem_dataout_o;
  input clk, reset, so_valid_i, so_data_i, pi_end_dac;
  output oem_finish_o, odd1_wr_o, odd2_wr_o, odd3_wr_o, odd4_wr_o, even1_wr_o,
         even2_wr_o, even3_wr_o, even4_wr_o;
  wire   n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, output_valid, N65, n2, n3, n7,
         n10, n11, n13, n14, n15, n16, n17, n18, n20, n22, n24, n26, n28, n29,
         n32, n33, n35, n37, n38, n41, n43, n45, n46, n47, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         \add_389/carry[4] , \add_389/carry[3] , \add_389/carry[2] , n1, n4,
         n5, n6, n8, n9, n12, n19, n21, n127, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150;
  wire   [4:0] ptr;
  wire   [2:0] ptr_mem;
  wire   [4:0] ptr_tmp;

  DFFRX1 \ptr_mem_reg[2]  ( .D(n118), .CK(clk), .RN(n132), .Q(ptr_mem[2]), 
        .QN(n12) );
  DFFRX1 \ptr_reg[4]  ( .D(n88), .CK(clk), .RN(n131), .Q(ptr[4]) );
  DFFRX1 output_valid_reg ( .D(N65), .CK(clk), .RN(n131), .Q(output_valid) );
  DFFRX1 \ptr_mem_reg[0]  ( .D(n93), .CK(clk), .RN(n131), .Q(ptr_mem[0]) );
  DFFRX1 \ptr_reg[1]  ( .D(n92), .CK(clk), .RN(n131), .Q(ptr[1]), .QN(n19) );
  DFFRX1 \ptr_reg[0]  ( .D(n91), .CK(clk), .RN(n131), .Q(ptr[0]), .QN(n21) );
  DFFRX1 \ptr_reg[3]  ( .D(n89), .CK(clk), .RN(n131), .Q(ptr[3]) );
  DFFRX1 \ptr_reg[2]  ( .D(n90), .CK(clk), .RN(n131), .Q(ptr[2]), .QN(n1) );
  DFFRX1 odd4_wr_o_reg ( .D(n113), .CK(clk), .RN(n132), .Q(n155), .QN(n127) );
  DFFRX1 \oem_dataout_o_reg[0]  ( .D(n79), .CK(clk), .RN(n150), .Q(n167), .QN(
        n78) );
  DFFRX1 \oem_dataout_o_reg[1]  ( .D(n80), .CK(clk), .RN(n150), .Q(n166), .QN(
        n77) );
  DFFRX1 \oem_dataout_o_reg[2]  ( .D(n81), .CK(clk), .RN(n132), .Q(n165), .QN(
        n76) );
  DFFRX1 \oem_dataout_o_reg[3]  ( .D(n82), .CK(clk), .RN(n131), .Q(n164), .QN(
        n75) );
  DFFRX1 \oem_dataout_o_reg[4]  ( .D(n83), .CK(clk), .RN(n131), .Q(n163), .QN(
        n74) );
  DFFRX1 \oem_dataout_o_reg[5]  ( .D(n84), .CK(clk), .RN(n131), .Q(n162), .QN(
        n73) );
  DFFRX1 \oem_dataout_o_reg[6]  ( .D(n85), .CK(clk), .RN(n150), .Q(n161), .QN(
        n72) );
  DFFRX1 \oem_dataout_o_reg[7]  ( .D(n86), .CK(clk), .RN(n150), .Q(n160), .QN(
        n71) );
  DFFRX1 odd3_wr_o_reg ( .D(n111), .CK(clk), .RN(n132), .Q(n154), .QN(n59) );
  DFFRX1 even3_wr_o_reg ( .D(n110), .CK(clk), .RN(n132), .Q(n158), .QN(n60) );
  DFFRX1 even4_wr_o_reg ( .D(n112), .CK(clk), .RN(n132), .Q(n159), .QN(n58) );
  DFFRX1 odd1_wr_o_reg ( .D(n117), .CK(clk), .RN(n132), .Q(n152), .QN(n54) );
  DFFRX1 even1_wr_o_reg ( .D(n116), .CK(clk), .RN(n132), .Q(n156), .QN(n55) );
  DFFRX1 odd2_wr_o_reg ( .D(n115), .CK(clk), .RN(n132), .Q(n153), .QN(n56) );
  DFFRX1 even2_wr_o_reg ( .D(n114), .CK(clk), .RN(n132), .Q(n157), .QN(n57) );
  DFFRX1 oem_finish_o_reg ( .D(n87), .CK(clk), .RN(n132), .Q(n151), .QN(n70)
         );
  DFFSX1 \counter_dac_reg[1]  ( .D(n95), .CK(clk), .SN(n150), .Q(n143), .QN(
        n100) );
  DFFSX1 \counter_dac_reg[0]  ( .D(n96), .CK(clk), .SN(n150), .Q(n141), .QN(
        n101) );
  DFFSX1 \counter_dac_reg[2]  ( .D(n94), .CK(clk), .SN(n150), .Q(n144), .QN(
        n99) );
  DFFRX1 \ptr_mem_reg[1]  ( .D(n119), .CK(clk), .RN(n150), .Q(ptr_mem[1]), 
        .QN(n148) );
  DFFRX1 \oem_addr_o_reg[1]  ( .D(ptr[1]), .CK(clk), .RN(n150), .QN(n5) );
  DFFRX1 \oem_addr_o_reg[3]  ( .D(ptr[3]), .CK(clk), .RN(n150), .QN(n8) );
  DFFRX1 \oem_addr_o_reg[4]  ( .D(ptr[4]), .CK(clk), .RN(n150), .QN(n9) );
  DFFRX1 \oem_addr_o_reg[2]  ( .D(ptr[2]), .CK(clk), .RN(n150), .QN(n6) );
  DFFRX1 \oem_addr_o_reg[0]  ( .D(ptr[0]), .CK(clk), .RN(n150), .QN(n4) );
  DFFRX1 finish_reg ( .D(n98), .CK(clk), .RN(n150), .QN(n69) );
  DFFRX1 \data_in_reg[1]  ( .D(n103), .CK(clk), .RN(n150), .QN(n62) );
  DFFRX1 \data_in_reg[7]  ( .D(n109), .CK(clk), .RN(n150), .QN(n68) );
  DFFRX1 \data_in_reg[6]  ( .D(n108), .CK(clk), .RN(n150), .QN(n67) );
  DFFRX1 \data_in_reg[4]  ( .D(n106), .CK(clk), .RN(n150), .QN(n65) );
  DFFRX1 \data_in_reg[5]  ( .D(n107), .CK(clk), .RN(n150), .QN(n66) );
  DFFRX1 \data_in_reg[2]  ( .D(n104), .CK(clk), .RN(n150), .QN(n63) );
  DFFRX1 \data_in_reg[0]  ( .D(n102), .CK(clk), .RN(n150), .QN(n61) );
  DFFRX1 \data_in_reg[3]  ( .D(n105), .CK(clk), .RN(n150), .QN(n64) );
  INVX12 U3 ( .A(n4), .Y(oem_addr_o[0]) );
  INVX12 U4 ( .A(n6), .Y(oem_addr_o[2]) );
  INVX12 U5 ( .A(n9), .Y(oem_addr_o[4]) );
  INVX12 U6 ( .A(n8), .Y(oem_addr_o[3]) );
  INVX12 U7 ( .A(n5), .Y(oem_addr_o[1]) );
  INVX4 U8 ( .A(reset), .Y(n150) );
  BUFX12 U9 ( .A(n151), .Y(oem_finish_o) );
  BUFX12 U10 ( .A(n157), .Y(even2_wr_o) );
  BUFX12 U11 ( .A(n153), .Y(odd2_wr_o) );
  BUFX12 U12 ( .A(n156), .Y(even1_wr_o) );
  BUFX12 U13 ( .A(n152), .Y(odd1_wr_o) );
  BUFX12 U14 ( .A(n159), .Y(even4_wr_o) );
  BUFX12 U15 ( .A(n158), .Y(even3_wr_o) );
  BUFX12 U16 ( .A(n154), .Y(odd3_wr_o) );
  BUFX12 U17 ( .A(n160), .Y(oem_dataout_o[7]) );
  BUFX12 U18 ( .A(n161), .Y(oem_dataout_o[6]) );
  BUFX12 U19 ( .A(n162), .Y(oem_dataout_o[5]) );
  BUFX12 U20 ( .A(n163), .Y(oem_dataout_o[4]) );
  BUFX12 U21 ( .A(n164), .Y(oem_dataout_o[3]) );
  BUFX12 U22 ( .A(n165), .Y(oem_dataout_o[2]) );
  BUFX12 U23 ( .A(n166), .Y(oem_dataout_o[1]) );
  BUFX12 U24 ( .A(n167), .Y(oem_dataout_o[0]) );
  INVX12 U25 ( .A(n127), .Y(odd4_wr_o) );
  XOR2X1 U26 ( .A(n1), .B(ptr_mem[0]), .Y(n47) );
  CLKINVX1 U27 ( .A(n20), .Y(n142) );
  CLKINVX1 U28 ( .A(n13), .Y(n146) );
  NAND2X1 U29 ( .A(n130), .B(n12), .Y(n50) );
  CLKINVX1 U30 ( .A(n47), .Y(n147) );
  NAND2X1 U31 ( .A(n143), .B(n141), .Y(n35) );
  INVX3 U32 ( .A(n130), .Y(n145) );
  CLKBUFX3 U33 ( .A(n150), .Y(n132) );
  CLKBUFX3 U34 ( .A(n150), .Y(n131) );
  OAI22XL U35 ( .A0(n133), .A1(n24), .B0(n68), .B1(n45), .Y(n109) );
  CLKINVX1 U36 ( .A(n45), .Y(n133) );
  OAI21XL U37 ( .A0(n35), .A1(n38), .B0(n129), .Y(n45) );
  OAI22XL U38 ( .A0(n61), .A1(n22), .B0(n140), .B1(n24), .Y(n102) );
  CLKINVX1 U39 ( .A(n22), .Y(n140) );
  OAI21XL U40 ( .A0(n144), .A1(n18), .B0(n129), .Y(n22) );
  OAI22XL U41 ( .A0(n64), .A1(n33), .B0(n137), .B1(n24), .Y(n105) );
  CLKINVX1 U42 ( .A(n33), .Y(n137) );
  OAI31XL U43 ( .A0(n35), .A1(n149), .A2(n144), .B0(n129), .Y(n33) );
  OAI22XL U44 ( .A0(n138), .A1(n24), .B0(n63), .B1(n32), .Y(n104) );
  CLKINVX1 U45 ( .A(n32), .Y(n138) );
  OAI31XL U46 ( .A0(n144), .A1(n100), .A2(n20), .B0(n129), .Y(n32) );
  OAI22XL U47 ( .A0(n136), .A1(n24), .B0(n65), .B1(n37), .Y(n106) );
  CLKINVX1 U48 ( .A(n37), .Y(n136) );
  OAI31XL U49 ( .A0(n38), .A1(n141), .A2(n143), .B0(n129), .Y(n37) );
  OAI22XL U50 ( .A0(n135), .A1(n24), .B0(n66), .B1(n41), .Y(n107) );
  CLKINVX1 U51 ( .A(n41), .Y(n135) );
  OAI31XL U52 ( .A0(n38), .A1(n101), .A2(n143), .B0(n129), .Y(n41) );
  OAI22XL U53 ( .A0(n134), .A1(n24), .B0(n67), .B1(n43), .Y(n108) );
  CLKINVX1 U54 ( .A(n43), .Y(n134) );
  OAI31XL U55 ( .A0(n38), .A1(n100), .A2(n141), .B0(n129), .Y(n43) );
  CLKBUFX3 U56 ( .A(n26), .Y(n129) );
  NAND3BX1 U57 ( .AN(n69), .B(n149), .C(pi_end_dac), .Y(n26) );
  OAI22XL U58 ( .A0(n139), .A1(n24), .B0(n62), .B1(n28), .Y(n103) );
  CLKINVX1 U59 ( .A(n28), .Y(n139) );
  NAND2X1 U60 ( .A(n129), .B(n29), .Y(n28) );
  NAND4XL U61 ( .A(n99), .B(n100), .C(so_valid_i), .D(n141), .Y(n29) );
  AOI21X1 U62 ( .A0(n129), .A1(n53), .B0(n130), .Y(N65) );
  NAND3X1 U63 ( .A(n100), .B(n101), .C(n99), .Y(n53) );
  OAI2BB1XL U64 ( .A0N(n149), .A1N(pi_end_dac), .B0(n69), .Y(n98) );
  NAND2X2 U65 ( .A(so_data_i), .B(so_valid_i), .Y(n24) );
  NAND2X1 U66 ( .A(so_valid_i), .B(n144), .Y(n38) );
  NAND2XL U67 ( .A(so_valid_i), .B(n101), .Y(n20) );
  INVXL U68 ( .A(so_valid_i), .Y(n149) );
  OAI21XL U69 ( .A0(so_valid_i), .A1(n101), .B0(n20), .Y(n96) );
  NAND2X1 U70 ( .A(n100), .B(n142), .Y(n18) );
  XOR2X1 U71 ( .A(n99), .B(n18), .Y(n94) );
  OAI21XL U72 ( .A0(n100), .A1(n142), .B0(n18), .Y(n95) );
  NAND2X2 U73 ( .A(ptr_mem[0]), .B(n130), .Y(n13) );
  AND4X2 U74 ( .A(ptr[3]), .B(ptr[2]), .C(ptr[4]), .D(n52), .Y(n10) );
  NOR3X1 U75 ( .A(n19), .B(n13), .C(n21), .Y(n52) );
  OAI32X1 U76 ( .A0(n148), .A1(n46), .A2(n147), .B0(n145), .B1(n127), .Y(n113)
         );
  XOR2X1 U77 ( .A(ptr_mem[1]), .B(n10), .Y(n119) );
  OAI21XL U78 ( .A0(n2), .A1(n3), .B0(n70), .Y(n87) );
  OR4X1 U79 ( .A(ptr[3]), .B(ptr[4]), .C(n7), .D(ptr_mem[0]), .Y(n2) );
  NAND4XL U80 ( .A(n155), .B(n21), .C(n19), .D(n1), .Y(n3) );
  NAND2X1 U81 ( .A(n12), .B(n148), .Y(n7) );
  XOR2X1 U82 ( .A(n12), .B(n51), .Y(n118) );
  NAND2X1 U83 ( .A(n10), .B(ptr_mem[1]), .Y(n51) );
  CLKBUFX3 U84 ( .A(output_valid), .Y(n130) );
  NOR2X1 U85 ( .A(n10), .B(n11), .Y(n88) );
  AOI22X1 U86 ( .A0(ptr_tmp[4]), .A1(n146), .B0(ptr[4]), .B1(n13), .Y(n11) );
  NOR2X1 U87 ( .A(n10), .B(n14), .Y(n89) );
  AOI22X1 U88 ( .A0(ptr_tmp[3]), .A1(n146), .B0(ptr[3]), .B1(n13), .Y(n14) );
  NOR2X1 U89 ( .A(n10), .B(n15), .Y(n90) );
  AOI22X1 U90 ( .A0(ptr_tmp[2]), .A1(n146), .B0(ptr[2]), .B1(n13), .Y(n15) );
  NOR2X1 U91 ( .A(n10), .B(n16), .Y(n91) );
  AOI22X1 U92 ( .A0(n21), .A1(n146), .B0(ptr[0]), .B1(n13), .Y(n16) );
  NOR2X1 U93 ( .A(n10), .B(n17), .Y(n92) );
  AOI22X1 U94 ( .A0(ptr_tmp[1]), .A1(n146), .B0(ptr[1]), .B1(n13), .Y(n17) );
  OAI32X1 U95 ( .A0(n148), .A1(n47), .A2(n46), .B0(n58), .B1(n145), .Y(n112)
         );
  OAI32X1 U96 ( .A0(n50), .A1(n47), .A2(n148), .B0(n57), .B1(n145), .Y(n114)
         );
  OAI32X1 U97 ( .A0(n147), .A1(ptr_mem[1]), .A2(n46), .B0(n145), .B1(n59), .Y(
        n111) );
  OAI32X1 U98 ( .A0(n46), .A1(ptr_mem[1]), .A2(n47), .B0(n60), .B1(n145), .Y(
        n110) );
  OAI32X1 U99 ( .A0(n50), .A1(ptr_mem[1]), .A2(n147), .B0(n145), .B1(n54), .Y(
        n117) );
  OAI32X1 U100 ( .A0(n50), .A1(ptr_mem[1]), .A2(n47), .B0(n55), .B1(n145), .Y(
        n116) );
  OAI32X1 U101 ( .A0(n50), .A1(n148), .A2(n147), .B0(n145), .B1(n56), .Y(n115)
         );
  NAND2X1 U102 ( .A(ptr_mem[2]), .B(n130), .Y(n46) );
  OAI22XL U103 ( .A0(n130), .A1(n78), .B0(n61), .B1(n145), .Y(n79) );
  OAI22XL U104 ( .A0(n130), .A1(n77), .B0(n62), .B1(n145), .Y(n80) );
  OAI22XL U105 ( .A0(n130), .A1(n76), .B0(n63), .B1(n145), .Y(n81) );
  OAI22XL U106 ( .A0(n130), .A1(n75), .B0(n64), .B1(n145), .Y(n82) );
  OAI22XL U107 ( .A0(n130), .A1(n74), .B0(n65), .B1(n145), .Y(n83) );
  OAI22XL U108 ( .A0(n130), .A1(n73), .B0(n66), .B1(n145), .Y(n84) );
  OAI22XL U109 ( .A0(n130), .A1(n72), .B0(n67), .B1(n145), .Y(n85) );
  OAI22XL U110 ( .A0(n130), .A1(n71), .B0(n68), .B1(n145), .Y(n86) );
  XOR2X1 U111 ( .A(ptr_mem[0]), .B(n130), .Y(n93) );
  ADDHXL U112 ( .A(ptr[2]), .B(\add_389/carry[2] ), .CO(\add_389/carry[3] ), 
        .S(ptr_tmp[2]) );
  ADDHXL U113 ( .A(ptr[1]), .B(ptr[0]), .CO(\add_389/carry[2] ), .S(ptr_tmp[1]) );
  ADDHXL U114 ( .A(ptr[3]), .B(\add_389/carry[3] ), .CO(\add_389/carry[4] ), 
        .S(ptr_tmp[3]) );
  XOR2X1 U115 ( .A(\add_389/carry[4] ), .B(ptr[4]), .Y(ptr_tmp[4]) );
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


  STI sti ( .clk(clk), .reset(reset), .load_i(load), .pi_fill_i(pi_fill), 
        .pi_msb_i(pi_msb), .pi_low_i(pi_low), .pi_length_i(pi_length), 
        .pi_data_i(pi_data), .pi_end_i(pi_end), .so_valid_o(so_valid), 
        .so_data_o(so_data) );
  DAC dac ( .clk(clk), .reset(reset), .so_valid_i(so_valid), .so_data_i(
        so_data), .pi_end_dac(pi_end), .oem_finish_o(oem_finish), .odd1_wr_o(
        odd1_wr), .odd2_wr_o(odd2_wr), .odd3_wr_o(odd3_wr), .odd4_wr_o(odd4_wr), .even1_wr_o(even1_wr), .even2_wr_o(even2_wr), .even3_wr_o(even3_wr), 
        .even4_wr_o(even4_wr), .oem_addr_o(oem_addr), .oem_dataout_o(
        oem_dataout) );
endmodule

