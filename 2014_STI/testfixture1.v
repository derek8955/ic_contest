`timescale 1ns/10ps
`define SDFFILE    "./syn/STI_DAC_syn.sdf"    // Modify your sdf file name
`define cycle 10
`define terminate_cycle 100000

module testfixture1;



	`define Pattern "./dat/Pattern.dat"
	`define Stimulus "./dat/Stimulus.dat"
	`define Expected "./dat/Expected_so.dat"
	`define Pat_num 99
	`define Exp_num 1871
	`define Pixel "./dat/Expected_pixel.dat"
	`define odd1 "./dat/Expected_odd_1.dat"
	`define odd2 "./dat/Expected_odd_2.dat"
	`define odd3 "./dat/Expected_odd_3.dat"
	`define odd4 "./dat/Expected_odd_4.dat" 
	`define even1 "./dat/Expected_even_1.dat"
	`define even2 "./dat/Expected_even_2.dat"
	`define even3 "./dat/Expected_even_3.dat"
	`define even4 "./dat/Expected_even_4.dat"



reg [15:0] stimulus_in, pattern_in;

reg Exp_so;

reg pi_end;

reg load, reset;
reg clk = 0;
wire [1:0] pi_length = stimulus_in[13:12];
wire fill_mode = stimulus_in[8];
wire msb_first = stimulus_in[4];
wire low_en = stimulus_in[0];
wire [15:0] pi_data = pattern_in;
wire 		so_data, so_valid;

wire  pixel_finish, pixel_wr, oem_finish, odd1_wr, odd2_wr , odd3_wr , odd4_wr , even1_wr , even2_wr , even3_wr, even4_wr;
wire [7:0] pixel_addr;
wire [7:0] pixel_dataout;
wire [4:0] oem_addr;
wire [7:0] oem_dataout;

integer pp, pixel_err;
reg [7:0] PIXEL_MEM [0 : 233];
integer oo1, oo1_err, oo2, oo2_err, oo3, oo3_err, oo4, oo4_err;
reg [7:0] ODD1_MEM [0 : 31];
reg [7:0] ODD2_MEM [0 : 31];
reg [7:0] ODD3_MEM [0 : 31];
reg [7:0] ODD4_MEM [0 : 31];
integer ee1, ee1_err, ee2, ee2_err, ee3, ee3_err, ee4, ee4_err;
reg [7:0] EVEN1_MEM [0 : 31];
reg [7:0] EVEN2_MEM [0 : 31];
reg [7:0] EVEN3_MEM [0 : 31];
reg [7:0] EVEN4_MEM [0 : 31];
always@(posedge pixel_wr) PIXEL_MEM[pixel_addr] = pixel_dataout;
always@(posedge odd1_wr) ODD1_MEM[oem_addr] = oem_dataout;
always@(posedge odd2_wr) ODD2_MEM[oem_addr] = oem_dataout;
always@(posedge odd3_wr) ODD3_MEM[oem_addr] = oem_dataout;
always@(posedge odd4_wr) ODD4_MEM[oem_addr] = oem_dataout;
always@(posedge even1_wr) EVEN1_MEM[oem_addr] = oem_dataout;
always@(posedge even2_wr) EVEN2_MEM[oem_addr] = oem_dataout;
always@(posedge even3_wr) EVEN3_MEM[oem_addr] = oem_dataout;
always@(posedge even4_wr) EVEN4_MEM[oem_addr] = oem_dataout;

// ---------------------------------------- DUT instance ----------------------------------------------------------------------------------------------------
STI_DAC u_rtl(.clk(clk) ,.reset(reset), .load(load), .pi_data(pi_data), .pi_length(pi_length), 
	      .pi_fill(fill_mode), .pi_msb(msb_first), .pi_low(low_en), .pi_end(pi_end),
	      .so_data(so_data), .so_valid(so_valid),  
	      .oem_finish(oem_finish), .oem_addr(oem_addr), .oem_dataout(oem_dataout), 
	      .odd1_wr(odd1_wr), .odd2_wr(odd2_wr), .odd3_wr(odd3_wr), .odd4_wr(odd4_wr), 
	      .even1_wr(even1_wr), .even2_wr(even2_wr), .even3_wr(even3_wr), .even4_wr(even4_wr));

`ifdef SDF
initial $sdf_annotate(`SDFFILE, u_rtl);
`endif



reg [15:0] 	Pat_memory [0:`Pat_num];
reg 	   	Exp_memory [0:`Exp_num];
reg		Real_memory [0:`Exp_num];
reg [15:0] 	Sti_memory [0:`Pat_num];
reg [7:0] 	Exp_pixel [0:233];
reg [7:0] Exp_odd01 [0:31];
reg [7:0] Exp_odd02 [0:31];
reg [7:0] Exp_odd03 [0:31];
reg [7:0] Exp_odd04 [0:31];
reg [7:0] Exp_even01 [0:31];
reg [7:0] Exp_even02 [0:31];
reg [7:0] Exp_even03 [0:31];
reg [7:0] Exp_even04 [0:31];
initial begin
	$readmemh(`Pattern, Pat_memory);
	$readmemh(`Stimulus, Sti_memory);
	$readmemh(`Expected, Exp_memory);
	$readmemh(`Pixel, Exp_pixel);
	$readmemh(`odd1, Exp_odd01); 
	$readmemh(`odd2, Exp_odd02); 
	$readmemh(`odd3, Exp_odd03); 
	$readmemh(`odd4, Exp_odd04);
	$readmemh(`even1, Exp_even01); 
	$readmemh(`even2, Exp_even02); 
	$readmemh(`even3, Exp_even03); 
	$readmemh(`even4, Exp_even04);
	$display("--------------------------- Simulation Pattern is ready !!---------------------------");
end



always #(`cycle/2) clk = ~clk;

integer k;
integer i;
integer err_cnt;
integer c;
reg so_pass, Real_so, so_exp;
//------------- SPI module test ------------------------------------------------------------------------------------------------------------------------
initial begin
	$fsdbDumpfile("STI_DAC.fsdb");
	$fsdbDumpvars;
	
      $display("--------------------------- [ testfuxture1.v ] Simulation START !!---------------------------");
      $timeformat(-9, 1, " ns", 9); //Display time in nanoseconds
      
      err_cnt = 0;   
      reset = 0;
      load = 0;
      # `cycle;
      stimulus_in = 0;
      pattern_in = 0;
      reset = 1; 
      pi_end = 0;
      # `cycle;
      reset = 0; 
      i = 0;
      
        $display("--------------------------- Simulation at parallel data input stage !!---------------------------");
	for (k = 0; k <= `Pat_num; k = k+1)
	begin      
		
			@(negedge clk)
			//change inputs at strobe point
          		#(`cycle/4) load = 1;
				stimulus_in = Sti_memory[k];                
      				pattern_in = Pat_memory[k];
			#(`cycle) load = 0;
          		//Wait for PSI to process inputs
			if (k==`Pat_num) pi_end = 1;
          		wait(so_valid) 
			record_outputs; //call a task to verify outputs
	
	end
	
	// check_outputs	
	$display("--------------------------- Simulation at serial data output and result verify !! ---------------------------");
	for (c = 0; c <= `Exp_num; c = c+1) 
	begin
		
		if (Real_memory[c] == Exp_memory[c]) begin  so_pass = Real_memory[c]; so_exp =  Exp_memory[c]; end
		else begin err_cnt = err_cnt + 1;  
			$display("---------- ERROR at pattern No. %d,  REAL OUTPUT : so_data = %b,  EXPECTED OUTPUT so_data = %b\n",
      			c, Real_memory[c], Exp_memory[c]); end
	end 
	
     #`cycle 
     $display("--------------------------- so_data simulation FINISH !!---------------------------");
     if (err_cnt) begin 
     	$display("============================================================================");
     	$display("\n (T_T)  The simulation result of so_data is FAIL!!! there were %d errors in all.\n", err_cnt);
	$display("============================================================================");
	end
     else begin 
     	$display("============================================================================");
	$display("\n \\(^o^)/  The simulation result of so_data is PASS!!!\n");
	$display("============================================================================");
	end
     wait ( oem_finish );
     #(`cycle*0.25) ;
     $display("--------------------------- OM-memory and EM-memory simulation FINISH !!---------------------------");
     if ( oo1_err || oo2_err || oo3_err || oo4_err || ee1_err || ee2_err || ee3_err || ee4_err) begin 
     	$display("============================================================================");
     	$display("\n (T_T)  The simulation result of OM-memory and EM-memory is FAIL!!! Please debug your RTL code !!.\n");
	$display("============================================================================");
	end
     else begin 
     	$display("============================================================================");
	$display("\n \\(^o^)/  The simulation result of OM-memory and EM-memory is PASS!!!\n");
	$display("============================================================================");
	end
     //#`cycle    
     $finish;
end


initial begin 
	#`terminate_cycle;
	$display("================================================================================================================");
	$display("--------------------------- (/`n`)/ ~#  There was something wrong with your code !! ---------------------------"); 
	$display("--------------------------- The simulation can't finished!!, Please check it !!! ---------------------------"); 
	$display("================================================================================================================");
	$finish;
end

//--------------------------- check SPI outputs -----------------------------------------------------------------
  task record_outputs;	
  	while(so_valid)  begin
  		@(negedge clk); 
		if (so_valid) begin
		Real_memory[i] = so_data;
		Real_so = Real_memory[i];
		i = i+1;
  		end
	end 
  endtask




//=========================================================================================================================================
//=========================================================================================================================================
//=========================================================================================================================================
//----------------------- Check Pixel data -----------------------------------------------------------------------------------------------------

/*
initial begin
	pixel_err  = 0;
	wait(pixel_finish)
	for (pp=0; pp<=233; pp=pp+1) begin
		if (Exp_pixel[pp] == PIXEL_MEM[pp]);
		else begin
			pixel_err = pixel_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data at pixel address %d = %h,  EXPECTED DATA  = %h\n",
			$realtime, pp, PIXEL_MEM[pp], Exp_pixel[pp]);
		end
	end
end
*/
//----------------------- Check EVEN memory -----------------------------------------------------------------------------------------------------
initial begin
	ee4_err = 0;
	wait(reset); wait(!reset); wait(load); wait(!load);
	wait(oem_finish);
	for (ee4=0; ee4<=31; ee4=ee4+1) begin
		if (Exp_even04[ee4] == EVEN4_MEM[ee4]);
		else begin
			ee4_err = ee4_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data  at EVEN4_MEM address %d = %h, but the EXPECTED DATA  is %h\n",
			$realtime, ee4, EVEN4_MEM[ee4], Exp_even04[ee4]);
		end
	end
end
initial begin
	ee3_err = 0;
	wait(reset); wait(!reset); wait(load); wait(!load);
	wait(oem_finish);
	for (ee3=0; ee3<=31; ee3=ee3+1) begin
		if (Exp_even03[ee3] == EVEN3_MEM[ee3]);
		else begin
			ee3_err = ee3_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data at EVEN3_MEM address %d = %h, but the EXPECTED DATA  is %h\n",
			$realtime, ee3, EVEN3_MEM[ee3], Exp_even03[ee3]);
		end
	end
end
initial begin
	ee2_err = 0;
	wait(reset); wait(!reset); wait(load); wait(!load);
	wait(oem_finish);
	for (ee2=0; ee2<=31; ee2=ee2+1) begin
		if (Exp_even02[ee2] == EVEN2_MEM[ee2]);
		else begin
			ee2_err = ee2_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data at EVEN2_MEM address %d = %h, but the EXPECTED DATA  is %h\n",
			$realtime, ee2, EVEN2_MEM[ee2], Exp_even02[ee2]);
		end
	end
end
initial begin
	ee1_err = 0;
	wait(reset); wait(!reset); wait(load); wait(!load);
	wait(oem_finish);
	for (ee1=0; ee1<=31; ee1=ee1+1) begin
		if (Exp_even01[ee1] == EVEN1_MEM[ee1]);
		else begin
			ee1_err = ee1_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data at EVEN1_MEM address %d = %h, but the EXPECTED DATA  is %h\n",
			$realtime, ee1, EVEN1_MEM[ee1], Exp_even01[ee1]);
		end
	end
end

//----------------------- Check ODD memory -----------------------------------------------------------------------------------------------------
initial begin
	oo4_err = 0;
	wait(reset); wait(!reset); wait(load); wait(!load);
	wait(oem_finish);
	for (oo4=0; oo4<=31; oo4=oo4+1) begin
		if (Exp_odd04[oo4] == ODD4_MEM[oo4]);
		else begin
			oo4_err = oo4_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data at ODD4_MEM address %d = %h, but the EXPECTED DATA  is %h\n",
			$realtime, oo4, ODD4_MEM[oo4], Exp_odd04[oo4]);
		end
	end
end
initial begin
	oo3_err = 0;
	wait(reset); wait(!reset); wait(load); wait(!load);
	wait(oem_finish);
	for (oo3=0; oo3<=31; oo3=oo3+1) begin 
		if (Exp_odd03[oo3] == ODD3_MEM[oo3]);
		else begin
			oo3_err = oo3_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data at ODD3_MEM address %d = %h, but the EXPECTED DATA  = %h\n",
			$realtime, oo3, ODD3_MEM[oo3], Exp_odd03[oo3]);
		end
	end
end
initial begin
	oo2_err = 0;
	wait(reset); wait(!reset); wait(load); wait(!load);
	wait(oem_finish);
	for (oo2=0; oo2<=31; oo2=oo2+1) begin
		if (Exp_odd02[oo2] == ODD2_MEM[oo2]);
		else begin
			oo2_err = oo2_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data at ODD2_MEM address %d = %h, but the EXPECTED DATA  is %h\n",
			$realtime, oo2, ODD2_MEM[oo2], Exp_odd02[oo2]);
		end
	end
end
initial begin
	oo1_err = 0;
	wait(reset); wait(!reset); wait(load); wait(!load);
	wait(oem_finish);
	for (oo1=0; oo1<=31; oo1=oo1+1) begin
		if (Exp_odd01[oo1] == ODD1_MEM[oo1]);
		else begin
			oo1_err = oo1_err + 1;
			$display("---------- ERROR AT %t,  ERROR DATA : the real data at ODD1_MEM address %d = %h, but the EXPECTED DATA  is %h\n",
			$realtime, oo1, ODD1_MEM[oo1], Exp_odd01[oo1]);
		end
	end
end








endmodule
