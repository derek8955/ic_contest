//
//      CONFIDENTIAL AND PROPRIETARY SOFTWARE/DATA OF ARTISAN COMPONENTS, INC.
//      
//      Copyright (c) 2016 Artisan Components, Inc.  All Rights Reserved.
//      
//      Use of this Software/Data is subject to the terms and conditions of
//      the applicable license agreement between Artisan Components, Inc. and
//      Taiwan Semiconductor Manufacturing Company Ltd..  In addition, this Software/Data
//      is protected by copyright law and international treaties.
//      
//      The copyright notice(s) in this Software/Data does not indicate actual
//      or intended publication of this Software/Data.
//      name:			ROM-DIFF-HS ROM Generator
//           			TSMC CL013G Process
//      version:		2002Q3V1
//      comment:		
//      configuration:	 -instname "rom_128x8" -words 128 -bits 8 -frequency 200 -ring_width 5 -code_file "rom_a.dat" -mux 16 -drive 6 -top_layer met8 -power_type rings -horiz met3 -vert met4 -cust_comment "" -left_bus_delim "[" -right_bus_delim "]" -pwr_gnd_rename "VDD:VDD,GND:VSS" -prefix "" -pin_space 0.0 -name_case upper -check_instname on -diodes on -inside_ring_type GND
//
//      Verilog model for Synchronous Single-Port Rom
//
//      Instance Name:  rom_128x8
//      Words:          128
//      Word Width:     8
//
//      Creation Date:  2016-03-04 07:38:37Z
//      Version: 	2002Q3V1
//
//      Verified With: Cadence Verilog-XL
//
//      Modeling Assumptions: This model supports full gate level simulation
//          including proper x-handling and timing check behavior.  Unit
//          delay timing is included in the model. Back-annotation of SDF
//          (v2.1) is supported.  SDF can be created utilyzing the delay
//          calculation views provided with this generator and supported
//          delay calculators.  All buses are modeled [MSB:LSB].  All 
//          ports are padded with Verilog primitives.
//
//      Modeling Limitations: The output hold function has been deleted
//          completely from this model.  Most Verilog simulators are 
//          incapable of scheduling more than 1 event on the rising 
//          edge of clock.  Therefore, it is impossible to model
//          the output hold (to x) action correctly.  It is necessary
//          to run static path timing tools using Artisan supplied
//          timing models to insure that the output hold time is
//          sufficient enough to not violate hold time constraints
//          of downstream flip-flops.
//
//      Known Bugs: None.
//
//      Known Work Arounds: N/A
//


`timescale 1 ns/1 ps
`celldefine

module rom_128x8 (
   Q,
   CLK,
   CEN,
   A
);
   parameter		   BITS = 8;
   parameter		   word_depth = 128;
   parameter		   addr_width = 7;
   parameter		   wordx = {BITS{1'bx}};
   parameter		   addrx = {addr_width{1'bx}};
	
   output [7:0] Q;
   input CLK;
   input CEN;
   input [6:0] A;

   reg [BITS-1:0]	   mem [word_depth-1:0];

   reg			   NOT_CEN;


   reg			   NOT_A0;
   reg			   NOT_A1;
   reg			   NOT_A2;
   reg			   NOT_A3;
   reg			   NOT_A4;
   reg			   NOT_A5;
   reg			   NOT_A6;
   reg [addr_width-1:0]	   NOT_A;

   reg			   NOT_CLK_PER;
   reg			   NOT_CLK_MINH;
   reg			   NOT_CLK_MINL;

   reg			   LAST_NOT_CEN;
   reg [addr_width-1:0]	   LAST_NOT_A;
   reg			   LAST_NOT_CLK_PER;
   reg			   LAST_NOT_CLK_MINH;
   reg			   LAST_NOT_CLK_MINL;


   wire [BITS-1:0]         _Q;
   wire [addr_width-1:0]   _A;
   wire			   _CLK;
   wire			   _CEN;




   reg			   LATCHED_CEN;
   reg [addr_width-1:0]	   LATCHED_A;

   reg			   CENi;
   reg [addr_width-1:0]	   Ai;
   reg [BITS-1:0]	   Qi;

   reg			   LAST_CLK;
 
   wire re_flag ;
   assign re_flag = !(_CEN) ;


   assign _Q = Qi ;

initial 
	$readmemb("rom_128x8_verilog_c.rcf", mem );


   task update_notifier_buses;
   begin
      NOT_A = {
               NOT_A6,
               NOT_A5,
               NOT_A4,
               NOT_A3,
               NOT_A2,
               NOT_A1,
               NOT_A0};
   end
   endtask


   task mem_cycle;
   begin
      casez({CENi})
	1'b0: begin
	   	read_mem(1,0);
	      end
	1'b1: ;
	1'bx: begin
	        read_mem(0,1);
	      end
      endcase
   end
   endtask
      
      
   task update_last_notifiers;
   begin
      LAST_NOT_A = NOT_A;
      LAST_NOT_CEN = NOT_CEN;
      LAST_NOT_CLK_PER = NOT_CLK_PER;
      LAST_NOT_CLK_MINH = NOT_CLK_MINH;
      LAST_NOT_CLK_MINL = NOT_CLK_MINL;
   end
   endtask


   task latch_inputs;
   begin
      LATCHED_A = _A ;
      LATCHED_CEN = _CEN ;
   end
   endtask


   task update_logic;
      integer n;
   begin
      CENi = LATCHED_CEN;
      Ai = LATCHED_A;
   end
   endtask


   task x_inputs;
      integer n;
   begin
      for (n=0; n<addr_width; n=n+1)
	    LATCHED_A[n] = (NOT_A[n]!==LAST_NOT_A[n]) ? 1'bx : LATCHED_A[n] ;
      LATCHED_CEN = (NOT_CEN!==LAST_NOT_CEN) ? 1'bx : LATCHED_CEN ;
   end
   endtask

   task read_mem;
      input r_wb;
      input xflag;
   begin
      if (r_wb)
	    if (valid_address(Ai))
	          Qi=mem[Ai];
	    else
		  Qi=wordx;
      else
	    if (xflag)
		  Qi=wordx;
   end
   endtask

   task process_violations;
   begin
      if ((NOT_CLK_PER!==LAST_NOT_CLK_PER) ||
	  (NOT_CLK_MINH!==LAST_NOT_CLK_MINH) ||
	  (NOT_CLK_MINL!==LAST_NOT_CLK_MINL))
	 begin
	    if (CENi !== 1'b1)
               begin
		  read_mem(0,1);
	       end
	 end
      else
	 begin
	    update_notifier_buses;
	    x_inputs;
	    update_logic;
	    mem_cycle;
	 end
      update_last_notifiers;
   end
   endtask

   function valid_address;
      input [addr_width-1:0] a;
   begin
      valid_address = (^(a) !== 1'bx);
   end
   endfunction

   buf (Q[0], _Q[0]);
   buf (Q[1], _Q[1]);
   buf (Q[2], _Q[2]);
   buf (Q[3], _Q[3]);
   buf (Q[4], _Q[4]);
   buf (Q[5], _Q[5]);
   buf (Q[6], _Q[6]);
   buf (Q[7], _Q[7]);

   buf (_A[0], A[0]);
   buf (_A[1], A[1]);
   buf (_A[2], A[2]);
   buf (_A[3], A[3]);
   buf (_A[4], A[4]);
   buf (_A[5], A[5]);
   buf (_A[6], A[6]);
   buf (_CLK, CLK);
   buf (_CEN, CEN);



   always @(
	    NOT_A0 or
	    NOT_A1 or
	    NOT_A2 or
	    NOT_A3 or
	    NOT_A4 or
	    NOT_A5 or
	    NOT_A6 or
	    NOT_CEN or
	    NOT_CLK_PER or
	    NOT_CLK_MINH or
	    NOT_CLK_MINL
	    )
      begin
         process_violations;
      end


   always @( _CLK )
      begin
         casez({LAST_CLK,_CLK})
	   2'b01: begin
	      latch_inputs;
	      update_logic;
	      mem_cycle;
	   end

	   2'b10,
	   2'bx?,
	   2'b00,
	   2'b11: ;

	   2'b?x: read_mem(0,1);
	   
	 endcase
	 LAST_CLK = _CLK;
      end

   specify
      $setuphold(posedge CLK, posedge CEN, 1.000, 0.500, NOT_CEN);
      $setuphold(posedge CLK, negedge CEN, 1.000, 0.500, NOT_CEN);
      $setuphold(posedge CLK &&& re_flag, posedge A[0], 1.000, 0.500, NOT_A0);
      $setuphold(posedge CLK &&& re_flag, negedge A[0], 1.000, 0.500, NOT_A0);
      $setuphold(posedge CLK &&& re_flag, posedge A[1], 1.000, 0.500, NOT_A1);
      $setuphold(posedge CLK &&& re_flag, negedge A[1], 1.000, 0.500, NOT_A1);
      $setuphold(posedge CLK &&& re_flag, posedge A[2], 1.000, 0.500, NOT_A2);
      $setuphold(posedge CLK &&& re_flag, negedge A[2], 1.000, 0.500, NOT_A2);
      $setuphold(posedge CLK &&& re_flag, posedge A[3], 1.000, 0.500, NOT_A3);
      $setuphold(posedge CLK &&& re_flag, negedge A[3], 1.000, 0.500, NOT_A3);
      $setuphold(posedge CLK &&& re_flag, posedge A[4], 1.000, 0.500, NOT_A4);
      $setuphold(posedge CLK &&& re_flag, negedge A[4], 1.000, 0.500, NOT_A4);
      $setuphold(posedge CLK &&& re_flag, posedge A[5], 1.000, 0.500, NOT_A5);
      $setuphold(posedge CLK &&& re_flag, negedge A[5], 1.000, 0.500, NOT_A5);
      $setuphold(posedge CLK &&& re_flag, posedge A[6], 1.000, 0.500, NOT_A6);
      $setuphold(posedge CLK &&& re_flag, negedge A[6], 1.000, 0.500, NOT_A6);
      $period(posedge CLK, 3.000, NOT_CLK_PER);
      $width(posedge CLK, 1.000, 0, NOT_CLK_MINH);
      $width(negedge CLK, 1.000, 0, NOT_CLK_MINL);


      (CLK => Q[0]) = (1.000, 1.000, 0.500, 1.000, 0.500, 1.000);
      (CLK => Q[1]) = (1.000, 1.000, 0.500, 1.000, 0.500, 1.000);
      (CLK => Q[2]) = (1.000, 1.000, 0.500, 1.000, 0.500, 1.000);
      (CLK => Q[3]) = (1.000, 1.000, 0.500, 1.000, 0.500, 1.000);
      (CLK => Q[4]) = (1.000, 1.000, 0.500, 1.000, 0.500, 1.000);
      (CLK => Q[5]) = (1.000, 1.000, 0.500, 1.000, 0.500, 1.000);
      (CLK => Q[6]) = (1.000, 1.000, 0.500, 1.000, 0.500, 1.000);
      (CLK => Q[7]) = (1.000, 1.000, 0.500, 1.000, 0.500, 1.000);


endspecify

endmodule
`endcelldefine
