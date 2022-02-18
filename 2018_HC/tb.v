// version 0.9%2018-03-14
// version 0.91% move the section of initial $sdf_annotate
`timescale 1ns/10ps
`define CLK_period 10                // CLK period. DO NOT modify period
`define SDFFILE "./huffman_syn.sdf"  // Modify your sdf file name

`define tb1

`ifdef tb1
  `define PAT "./pattern1.dat"
  `define EXP "./golden1.dat"
`endif

`ifdef tb2
  `define PAT "./pattern2.dat"
  `define EXP "./golden2.dat"
`endif

`ifdef tb3
  `define PAT "./pattern3.dat"
  `define EXP "./golden3.dat"
`endif

//`ifdef tb4
//  `define PAT "./pattern4.dat"
//  `define EXP "./golden4.dat"
//`endif
//
//`ifdef tb5
//  `define PAT "./pattern5.dat"
//  `define EXP "./golden5.dat"
//`endif


module tb;
reg CLK;
reg reset;
reg [7:0] pat_mem [0:99];
reg [7:0] exp_mem [0:17];
reg gray_valid;
reg [7:0] gray_data;
integer i;


wire CNT_valid;
wire [7:0] CNT [1:6];
wire code_valid;
wire [7:0] HC [1:6];
wire [7:0] M [1:6]; 

reg flag1; // CNT PASS or not
reg flag2; // HC PASS or not
reg flag3; // M PASS or not
reg done1;

wire [47:0] CNT_G, CNT_EXP;
wire [47:0] HC_G, HC_EXP;
wire [47:0] M_G, M_EXP;


`ifdef SDF
  initial $sdf_annotate(`SDFFILE, u_huffman);
`endif

//initial begin
//$fsdbDumpfile("huffman.fsdb");
//$fsdbDumpvars;
//end


huffman u_huffman(.clk(CLK), .reset(reset), .gray_valid(gray_valid), .gray_data(gray_data),
    .CNT_valid(CNT_valid), 
    .CNT1(CNT[1]),   // should compare with exp_mem[0]
    .CNT2(CNT[2]),   // should compare with exp_mem[1]
    .CNT3(CNT[3]),   // should compare with exp_mem[2]
    .CNT4(CNT[4]),   // should compare with exp_mem[3]
    .CNT5(CNT[5]),   // should compare with exp_mem[4]
    .CNT6(CNT[6]),   // should compare with exp_mem[5]
    .code_valid(code_valid), 
    .HC1(HC[1]),   // should compare with exp_mem[6]
    .HC2(HC[2]),   // should compare with exp_mem[7]
    .HC3(HC[3]),   // should compare with exp_mem[8]
    .HC4(HC[4]),   // should compare with exp_mem[9]
    .HC5(HC[5]),   // should compare with exp_mem[10]
    .HC6(HC[6]),   // should compare with exp_mem[11]
    .M1(M[1]),   // should compare with exp_mem[12]
    .M2(M[2]),   // should compare with exp_mem[13]
    .M3(M[3]),   // should compare with exp_mem[14]
    .M4(M[4]),   // should compare with exp_mem[15]
    .M5(M[5]),   // should compare with exp_mem[16]
    .M6(M[6]) ); // should compare with exp_mem[17]

assign CNT_G = {CNT[1], CNT[2], CNT[3], CNT[4], CNT[5], CNT[6]};
assign CNT_EXP = {exp_mem[0], exp_mem[1], exp_mem[2], exp_mem[3], exp_mem[4], exp_mem[5]};
assign HC_G = {HC[1], HC[2], HC[3], HC[4], HC[5], HC[6]};
assign HC_EXP = {exp_mem[6], exp_mem[7], exp_mem[8], exp_mem[9], exp_mem[10], exp_mem[11]};
assign M_G = {M[1], M[2], M[3], M[4], M[5], M[6]};
assign M_EXP = {exp_mem[12], exp_mem[13], exp_mem[14], exp_mem[15], exp_mem[16], exp_mem[17]};

initial $readmemh(`PAT, pat_mem);
initial $readmemh(`EXP, exp_mem);
initial $display("%s and %s were used for this simulation.", `PAT, `EXP);   //

initial CLK = 1'b0;

always begin #(`CLK_period/2) CLK = ~CLK; end

initial begin
  #0 reset = 1'b0;
  #`CLK_period reset = 1'b1;
  #(`CLK_period*2) reset = 1'b0;
end

initial begin
  #0 gray_valid = 1'b0;
     i = 0;
  #(`CLK_period*5);
  @(negedge CLK) gray_valid = 1'b1;
  gray_data = pat_mem[i];
  for (i=1;i<100;i=i+1)
    @(negedge CLK) gray_data = pat_mem[i];
  @(negedge CLK) gray_valid = 1'b0;
       gray_data = 8'b0;
end


always@(negedge CLK) begin
  if (reset) begin
    done1 <= 1'b0;
    flag1 <= 1'b0;
    flag2 <= 1'b0;
    flag3 <= 1'b0;
  end else begin

    if(CNT_valid == 1'b1) begin
      if (CNT_G == CNT_EXP) begin     // flag1 1 means PASS, 0 means ERROR
        $display("Check CNT : PASS");
        flag1 <= 1'b1;
      end else begin
        $display("Check CNT : ERROR. Please fixed it first!");
        $display("Simulation stop here.");
        $finish;
      end
      done1 <= 1'b1;
    end

    if(code_valid == 1'b1) begin

      case ({(HC_G == HC_EXP),(M_G == M_EXP)})   // (HC_G == HC_EXP) true means HC PASS
        2'b00: begin                             // (M_G == M_EXP) true means M PASS
                 $display("Check HC : ERROR");
                 $display("Check M : ERROR");
                 $display("Simulation stop here.");
                 $finish;
               end
        2'b01: begin
                 $display("Check HC : ERROR");
                 $display("Check M : PASS");
                 $display("Simulation stop here.");
                 $finish;
               end
        2'b10: begin
                 $display("Check HC : PASS");
                 $display("Check M : ERRPR");
                 $display("Simulation stop here.");
                 $finish;
               end
        2'b11: begin
                 $display("Check HC : PASS");
                 $display("Check M : PASS");
                 if(flag1 == 1'b1)
                   $display("You PASS the contest now.");
                 else
                   $display("Where are those CNT output?");
                 $finish;
                 //$stop;
               end
        endcase
    end

  end
end


/*
initial begin
  for (i=0; i<100; i=i+1) begin
    $display("%3d %h", i, pat_mem[i]);
  end
  $display("--------------------------------------");
  for( i=0; i<18; i=i+1) begin
    $display("%3d %h", i, exp_mem[i]);
  end
end
*/

endmodule

