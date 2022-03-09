/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Mar  9 10:03:41 2022
/////////////////////////////////////////////////////////////


module DAC ( clk, reset, so_valid, so_data, pi_end, oem_finish, odd1_wr, 
        odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr, 
        oem_addr, oem_dataout );
  output [4:0] oem_addr;
  output [7:0] oem_dataout;
  input clk, reset, so_valid, so_data, pi_end;
  output oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr,
         even3_wr, even4_wr;
  wire   n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, output_valid, N89, N108, N109,
         N110, N111, N112, n3, n4, n5, n6, n7, n10, n12, n13, n15, n16, n19,
         n20, n22, n24, n25, n28, n30, n32, n34, n35, n36, n37, n38, n39, n41,
         n42, n43, n45, n47, n48, n49, n51, n53, n54, n56, n58, n60, n61, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n165, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195;
  wire   [7:0] ptr;
  wire   [4:2] \r394/carry ;

  DFFSX1 \counter_reg[2]  ( .D(n106), .CK(clk), .SN(n170), .Q(n195), .QN(n112)
         );
  DFFSX1 \counter_reg[0]  ( .D(n109), .CK(clk), .SN(n170), .Q(n181), .QN(n114)
         );
  DFFRX1 odd4_wr_reg ( .D(n124), .CK(clk), .RN(n169), .Q(n200), .QN(n165) );
  DFFRX1 \oem_dataout_reg[0]  ( .D(n98), .CK(clk), .RN(n170), .Q(n212), .QN(
        n97) );
  DFFRX1 \oem_dataout_reg[1]  ( .D(n99), .CK(clk), .RN(n170), .Q(n211), .QN(
        n96) );
  DFFRX1 \oem_dataout_reg[2]  ( .D(n100), .CK(clk), .RN(n170), .Q(n210), .QN(
        n95) );
  DFFRX1 \oem_dataout_reg[3]  ( .D(n101), .CK(clk), .RN(n170), .Q(n209), .QN(
        n94) );
  DFFRX1 \oem_dataout_reg[4]  ( .D(n102), .CK(clk), .RN(n170), .Q(n208), .QN(
        n93) );
  DFFRX1 \oem_dataout_reg[5]  ( .D(n103), .CK(clk), .RN(n170), .Q(n207), .QN(
        n92) );
  DFFRX1 \oem_dataout_reg[6]  ( .D(n104), .CK(clk), .RN(n170), .Q(n206), .QN(
        n91) );
  DFFRX1 \oem_dataout_reg[7]  ( .D(n105), .CK(clk), .RN(n170), .Q(n205), .QN(
        n90) );
  DFFRX1 odd2_wr_reg ( .D(n128), .CK(clk), .RN(n169), .Q(n198), .QN(n75) );
  DFFRX1 even2_wr_reg ( .D(n127), .CK(clk), .RN(n169), .Q(n202), .QN(n76) );
  DFFRX1 odd1_wr_reg ( .D(n130), .CK(clk), .RN(n169), .Q(n197), .QN(n73) );
  DFFRX1 even1_wr_reg ( .D(n129), .CK(clk), .RN(n169), .Q(n201), .QN(n74) );
  DFFRX1 even4_wr_reg ( .D(n123), .CK(clk), .RN(n169), .Q(n204), .QN(n79) );
  DFFRX1 odd3_wr_reg ( .D(n126), .CK(clk), .RN(n169), .Q(n199), .QN(n77) );
  DFFRX1 even3_wr_reg ( .D(n125), .CK(clk), .RN(n169), .Q(n203), .QN(n78) );
  DFFRX1 oem_finish_reg ( .D(n107), .CK(clk), .RN(n169), .Q(n196), .QN(n89) );
  DFFRX1 \ptr_reg[5]  ( .D(n133), .CK(clk), .RN(n170), .Q(ptr[5]), .QN(n193)
         );
  DFFRX1 \ptr_reg[7]  ( .D(n131), .CK(clk), .RN(n170), .Q(ptr[7]), .QN(n194)
         );
  DFFRX1 \ptr_reg[6]  ( .D(n132), .CK(clk), .RN(n170), .Q(ptr[6]), .QN(n192)
         );
  DFFRX1 \ptr_reg[4]  ( .D(n134), .CK(clk), .RN(n170), .Q(ptr[4]) );
  DFFRX1 \ptr_reg[3]  ( .D(n135), .CK(clk), .RN(n170), .Q(ptr[3]) );
  DFFRX1 \ptr_reg[1]  ( .D(n138), .CK(clk), .RN(n170), .Q(ptr[1]) );
  DFFRX1 \ptr_reg[0]  ( .D(n137), .CK(clk), .RN(n170), .Q(ptr[0]), .QN(N108)
         );
  DFFRX1 output_valid_reg ( .D(N89), .CK(clk), .RN(n170), .Q(output_valid) );
  DFFSX1 \counter_reg[1]  ( .D(n108), .CK(clk), .SN(n170), .Q(n182), .QN(n113)
         );
  DFFRX1 \oem_addr_reg[3]  ( .D(ptr[3]), .CK(clk), .RN(n170), .QN(n142) );
  DFFRX1 \oem_addr_reg[1]  ( .D(ptr[1]), .CK(clk), .RN(n170), .QN(n140) );
  DFFRX1 \oem_addr_reg[4]  ( .D(ptr[4]), .CK(clk), .RN(n170), .QN(n143) );
  DFFRX1 \oem_addr_reg[0]  ( .D(ptr[0]), .CK(clk), .RN(n170), .QN(n139) );
  DFFRX1 finish_reg ( .D(n111), .CK(clk), .RN(n170), .QN(n88) );
  DFFRX1 \data_in_reg[1]  ( .D(n116), .CK(clk), .RN(n170), .QN(n81) );
  DFFRX1 \data_in_reg[7]  ( .D(n122), .CK(clk), .RN(n170), .QN(n87) );
  DFFRX1 \data_in_reg[4]  ( .D(n119), .CK(clk), .RN(n170), .QN(n84) );
  DFFRX1 \data_in_reg[5]  ( .D(n120), .CK(clk), .RN(n170), .QN(n85) );
  DFFRX1 \data_in_reg[6]  ( .D(n121), .CK(clk), .RN(n170), .QN(n86) );
  DFFRX1 \data_in_reg[3]  ( .D(n118), .CK(clk), .RN(n170), .QN(n83) );
  DFFRX1 \data_in_reg[0]  ( .D(n115), .CK(clk), .RN(n170), .QN(n80) );
  DFFRX1 \data_in_reg[2]  ( .D(n117), .CK(clk), .RN(n170), .QN(n82) );
  DFFRXL \oem_addr_reg[2]  ( .D(ptr[2]), .CK(clk), .RN(n170), .QN(n141) );
  DFFRX2 \ptr_reg[2]  ( .D(n136), .CK(clk), .RN(n170), .Q(ptr[2]) );
  NAND2X2 U114 ( .A(so_data), .B(so_valid), .Y(n12) );
  INVX12 U115 ( .A(n139), .Y(oem_addr[0]) );
  INVX12 U116 ( .A(n143), .Y(oem_addr[4]) );
  INVX12 U117 ( .A(n140), .Y(oem_addr[1]) );
  INVX12 U118 ( .A(n142), .Y(oem_addr[3]) );
  INVX12 U119 ( .A(n141), .Y(oem_addr[2]) );
  INVX6 U120 ( .A(reset), .Y(n170) );
  BUFX12 U121 ( .A(n196), .Y(oem_finish) );
  BUFX12 U122 ( .A(n203), .Y(even3_wr) );
  BUFX12 U123 ( .A(n199), .Y(odd3_wr) );
  BUFX12 U124 ( .A(n204), .Y(even4_wr) );
  BUFX12 U125 ( .A(n201), .Y(even1_wr) );
  BUFX12 U126 ( .A(n197), .Y(odd1_wr) );
  BUFX12 U127 ( .A(n202), .Y(even2_wr) );
  BUFX12 U128 ( .A(n198), .Y(odd2_wr) );
  BUFX12 U129 ( .A(n205), .Y(oem_dataout[7]) );
  BUFX12 U130 ( .A(n206), .Y(oem_dataout[6]) );
  BUFX12 U131 ( .A(n207), .Y(oem_dataout[5]) );
  BUFX12 U132 ( .A(n208), .Y(oem_dataout[4]) );
  BUFX12 U133 ( .A(n209), .Y(oem_dataout[3]) );
  BUFX12 U134 ( .A(n210), .Y(oem_dataout[2]) );
  BUFX12 U135 ( .A(n211), .Y(oem_dataout[1]) );
  BUFX12 U136 ( .A(n212), .Y(oem_dataout[0]) );
  INVX12 U137 ( .A(n165), .Y(odd4_wr) );
  NOR3X1 U138 ( .A(ptr[6]), .B(ptr[7]), .C(ptr[5]), .Y(n5) );
  NOR3X1 U139 ( .A(n192), .B(ptr[5]), .C(n194), .Y(n35) );
  NOR3X1 U140 ( .A(ptr[5]), .B(ptr[6]), .C(n194), .Y(n42) );
  NOR3X1 U141 ( .A(ptr[5]), .B(ptr[7]), .C(n192), .Y(n48) );
  NOR3X1 U142 ( .A(n193), .B(ptr[7]), .C(n192), .Y(n49) );
  NOR3X1 U143 ( .A(n193), .B(ptr[6]), .C(n194), .Y(n43) );
  CLKBUFX3 U144 ( .A(output_valid), .Y(n168) );
  CLKINVX1 U145 ( .A(n7), .Y(n172) );
  NOR2X1 U146 ( .A(n69), .B(n191), .Y(n70) );
  NOR2X1 U147 ( .A(n180), .B(n181), .Y(n7) );
  XNOR2X1 U148 ( .A(n195), .B(n3), .Y(n106) );
  NAND2X1 U149 ( .A(n68), .B(n168), .Y(n69) );
  NOR4X1 U150 ( .A(n35), .B(n42), .C(n48), .D(n5), .Y(n68) );
  NOR3X1 U151 ( .A(n192), .B(n193), .C(n194), .Y(n37) );
  OAI22XL U152 ( .A0(n168), .A1(n194), .B0(n58), .B1(n183), .Y(n131) );
  AOI211X1 U153 ( .A0(n49), .A1(n191), .B0(n60), .C0(n61), .Y(n58) );
  OR2X1 U154 ( .A(n43), .B(n42), .Y(n60) );
  OAI22XL U155 ( .A0(n168), .A1(n192), .B0(n63), .B1(n183), .Y(n132) );
  AOI211X1 U156 ( .A0(n49), .A1(n64), .B0(n65), .C0(n61), .Y(n63) );
  NAND2BX1 U157 ( .AN(n48), .B(n67), .Y(n65) );
  OAI21XL U158 ( .A0(n54), .A1(n43), .B0(n191), .Y(n67) );
  OAI22XL U159 ( .A0(n168), .A1(n193), .B0(n68), .B1(n183), .Y(n133) );
  NAND2X1 U160 ( .A(n182), .B(n181), .Y(n22) );
  INVX3 U161 ( .A(n168), .Y(n183) );
  CLKINVX1 U162 ( .A(n64), .Y(n191) );
  AO21X1 U163 ( .A0(n64), .A1(n37), .B0(n35), .Y(n61) );
  CLKBUFX3 U164 ( .A(n170), .Y(n169) );
  OAI22XL U165 ( .A0(n171), .A1(n12), .B0(n82), .B1(n19), .Y(n117) );
  CLKINVX1 U166 ( .A(n19), .Y(n171) );
  OAI31XL U167 ( .A0(n195), .A1(n113), .A2(n172), .B0(n167), .Y(n19) );
  OAI22XL U168 ( .A0(n177), .A1(n12), .B0(n85), .B1(n28), .Y(n120) );
  CLKINVX1 U169 ( .A(n28), .Y(n177) );
  OAI31XL U170 ( .A0(n25), .A1(n114), .A2(n182), .B0(n167), .Y(n28) );
  OAI22XL U171 ( .A0(n176), .A1(n12), .B0(n86), .B1(n30), .Y(n121) );
  CLKINVX1 U172 ( .A(n30), .Y(n176) );
  OAI31XL U173 ( .A0(n25), .A1(n113), .A2(n181), .B0(n167), .Y(n30) );
  OAI22XL U174 ( .A0(n80), .A1(n10), .B0(n173), .B1(n12), .Y(n115) );
  CLKINVX1 U175 ( .A(n10), .Y(n173) );
  OAI21XL U176 ( .A0(n195), .A1(n3), .B0(n167), .Y(n10) );
  NAND2X1 U177 ( .A(so_valid), .B(n195), .Y(n25) );
  NAND2X1 U178 ( .A(n113), .B(n7), .Y(n3) );
  OAI22XL U179 ( .A0(n179), .A1(n12), .B0(n81), .B1(n15), .Y(n116) );
  CLKINVX1 U180 ( .A(n15), .Y(n179) );
  NAND2X1 U181 ( .A(n167), .B(n16), .Y(n15) );
  NAND4X1 U182 ( .A(n112), .B(n113), .C(so_valid), .D(n181), .Y(n16) );
  OAI22XL U183 ( .A0(n178), .A1(n12), .B0(n84), .B1(n24), .Y(n119) );
  CLKINVX1 U184 ( .A(n24), .Y(n178) );
  OAI31XL U185 ( .A0(n25), .A1(n181), .A2(n182), .B0(n167), .Y(n24) );
  OAI22XL U186 ( .A0(n175), .A1(n12), .B0(n87), .B1(n32), .Y(n122) );
  CLKINVX1 U187 ( .A(n32), .Y(n175) );
  OAI21XL U188 ( .A0(n22), .A1(n25), .B0(n167), .Y(n32) );
  CLKINVX1 U189 ( .A(so_valid), .Y(n180) );
  OAI22XL U190 ( .A0(n83), .A1(n20), .B0(n174), .B1(n12), .Y(n118) );
  CLKINVX1 U191 ( .A(n20), .Y(n174) );
  OAI31XL U192 ( .A0(n22), .A1(n180), .A2(n195), .B0(n167), .Y(n20) );
  CLKBUFX3 U193 ( .A(n13), .Y(n167) );
  NAND3BX1 U194 ( .AN(n88), .B(n180), .C(pi_end), .Y(n13) );
  OAI21XL U195 ( .A0(n113), .A1(n7), .B0(n3), .Y(n108) );
  OAI21XL U196 ( .A0(so_valid), .A1(n114), .B0(n172), .Y(n109) );
  AOI21X1 U197 ( .A0(n167), .A1(n72), .B0(n168), .Y(N89) );
  NAND3X1 U198 ( .A(n113), .B(n114), .C(n112), .Y(n72) );
  OAI2BB1X1 U199 ( .A0N(n180), .A1N(pi_end), .B0(n88), .Y(n111) );
  NAND2X1 U200 ( .A(n89), .B(n4), .Y(n107) );
  NAND4BXL U201 ( .AN(ptr[0]), .B(n5), .C(n200), .D(n6), .Y(n4) );
  NOR4X1 U202 ( .A(ptr[4]), .B(ptr[3]), .C(ptr[2]), .D(ptr[1]), .Y(n6) );
  OAI2BB2XL U203 ( .B0(n183), .B1(n39), .A0N(n39), .A1N(n200), .Y(n124) );
  OAI22XL U204 ( .A0(n37), .A1(n36), .B0(n35), .B1(n38), .Y(n39) );
  AO22X1 U205 ( .A0(n69), .A1(ptr[4]), .B0(N112), .B1(n70), .Y(n134) );
  AO22X1 U206 ( .A0(n69), .A1(ptr[2]), .B0(N110), .B1(n70), .Y(n136) );
  AO22X1 U207 ( .A0(n69), .A1(ptr[3]), .B0(N111), .B1(n70), .Y(n135) );
  AO22X1 U208 ( .A0(n69), .A1(ptr[0]), .B0(N108), .B1(n70), .Y(n137) );
  AO22X1 U209 ( .A0(n69), .A1(ptr[1]), .B0(N109), .B1(n70), .Y(n138) );
  NAND2BX2 U210 ( .AN(ptr[2]), .B(n168), .Y(n38) );
  NAND2X2 U211 ( .A(ptr[2]), .B(n168), .Y(n36) );
  NOR3X1 U212 ( .A(ptr[6]), .B(ptr[7]), .C(n193), .Y(n54) );
  NAND4X1 U213 ( .A(ptr[0]), .B(ptr[2]), .C(ptr[1]), .D(n71), .Y(n64) );
  AND2X2 U214 ( .A(ptr[3]), .B(ptr[4]), .Y(n71) );
  OAI22XL U215 ( .A0(n186), .A1(n75), .B0(n183), .B1(n51), .Y(n128) );
  CLKINVX1 U216 ( .A(n51), .Y(n186) );
  OAI22XL U217 ( .A0(n49), .A1(n36), .B0(n48), .B1(n38), .Y(n51) );
  OAI22XL U218 ( .A0(n76), .A1(n187), .B0(n183), .B1(n47), .Y(n127) );
  CLKINVX1 U219 ( .A(n47), .Y(n187) );
  OAI22XL U220 ( .A0(n48), .A1(n36), .B0(n49), .B1(n38), .Y(n47) );
  OAI22XL U221 ( .A0(n184), .A1(n73), .B0(n183), .B1(n56), .Y(n130) );
  CLKINVX1 U222 ( .A(n56), .Y(n184) );
  OAI22XL U223 ( .A0(n54), .A1(n36), .B0(n5), .B1(n38), .Y(n56) );
  OAI22XL U224 ( .A0(n74), .A1(n185), .B0(n183), .B1(n53), .Y(n129) );
  CLKINVX1 U225 ( .A(n53), .Y(n185) );
  OAI22XL U226 ( .A0(n5), .A1(n36), .B0(n54), .B1(n38), .Y(n53) );
  OAI22XL U227 ( .A0(n79), .A1(n190), .B0(n183), .B1(n34), .Y(n123) );
  CLKINVX1 U228 ( .A(n34), .Y(n190) );
  OAI22XL U229 ( .A0(n35), .A1(n36), .B0(n37), .B1(n38), .Y(n34) );
  OAI22XL U230 ( .A0(n188), .A1(n77), .B0(n183), .B1(n45), .Y(n126) );
  CLKINVX1 U231 ( .A(n45), .Y(n188) );
  OAI22XL U232 ( .A0(n43), .A1(n36), .B0(n42), .B1(n38), .Y(n45) );
  OAI22XL U233 ( .A0(n78), .A1(n189), .B0(n183), .B1(n41), .Y(n125) );
  CLKINVX1 U234 ( .A(n41), .Y(n189) );
  OAI22XL U235 ( .A0(n42), .A1(n36), .B0(n43), .B1(n38), .Y(n41) );
  OAI22XL U236 ( .A0(n168), .A1(n97), .B0(n80), .B1(n183), .Y(n98) );
  OAI22XL U237 ( .A0(n168), .A1(n96), .B0(n81), .B1(n183), .Y(n99) );
  OAI22XL U238 ( .A0(n168), .A1(n95), .B0(n82), .B1(n183), .Y(n100) );
  OAI22XL U239 ( .A0(n168), .A1(n94), .B0(n83), .B1(n183), .Y(n101) );
  OAI22XL U240 ( .A0(n168), .A1(n93), .B0(n84), .B1(n183), .Y(n102) );
  OAI22XL U241 ( .A0(n168), .A1(n92), .B0(n85), .B1(n183), .Y(n103) );
  OAI22XL U242 ( .A0(n168), .A1(n91), .B0(n86), .B1(n183), .Y(n104) );
  OAI22XL U243 ( .A0(n168), .A1(n90), .B0(n87), .B1(n183), .Y(n105) );
  ADDHXL U244 ( .A(ptr[2]), .B(\r394/carry [2]), .CO(\r394/carry [3]), .S(N110) );
  ADDHXL U245 ( .A(ptr[1]), .B(ptr[0]), .CO(\r394/carry [2]), .S(N109) );
  ADDHXL U246 ( .A(ptr[3]), .B(\r394/carry [3]), .CO(\r394/carry [4]), .S(N111) );
  XOR2X1 U247 ( .A(\r394/carry [4]), .B(ptr[4]), .Y(N112) );
endmodule

