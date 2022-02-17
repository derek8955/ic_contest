`timescale 1ns/10ps
`define CYCLE      10.0          	  // Modify your clock period here
`define SDFFILE    "DT_syn.sdf"	  // Modify your sdf file name
`define End_CYCLE  100000000             // Modify cycle times once your design need more cycle times!

`ifdef TB1
	`define PAT        "./dat/Geometry_sti.dat"    
	`define FWEXP        "./dat/Geometry_fwexp.dat"  
	`define BCEXP        "./dat/Geometry_bcexp.dat"      
`elsif TB2
	`define PAT        "./dat/ICC17_sti.dat"    
	`define FWEXP        "./dat/ICC17_fwexp.dat"
	`define BCEXP        "./dat/ICC17_bcexp.dat"
`endif

module testfixture;

parameter N_PAT = 16383;

reg   [7:0]   exp_fwpass    [0:N_PAT];
initial	$readmemh (`FWEXP, exp_fwpass);

reg   [7:0]   exp_bcpass    [0:N_PAT];
initial	$readmemh (`BCEXP, exp_bcpass);

`ifdef SDF
	initial $sdf_annotate(`SDFFILE, u_dut);
`endif

wire		fwpass_finish, done;
wire		sti_rd;
wire	[9:0]	sti_addr;
wire		res_wr;
wire		res_rd;
wire	[13:0]	res_addr;
wire	[7:0]	res_do;
wire	[15:0]	sti_di;
wire	[7:0]	res_di;

integer		i, fw_err, bc_err;

reg		fwpass_chk, bcpass_chk; 
reg	[7:0]	exp_pat, rel_pat;

reg	[7:0]	fwexp_pat, bcexp_pat;

reg		clk = 0;
reg		reset;


DT u_dut(		.clk( clk ), .reset( reset ),
			.done( done ),
			.sti_rd( sti_rd ),
			.sti_addr( sti_addr ),
			.sti_di( sti_di ),
			.res_wr( res_wr ),
			.res_rd( res_rd ),
			.res_addr( res_addr ),
			.res_do( res_do ),
			.res_di( res_di ),
			.fw_finish( fwpass_finish ) );
			
sti_ROM  u_sti_ROM(.sti_rd(sti_rd), .sti_data(sti_di), .sti_addr(sti_addr), .clk(clk), .reset(reset));
res_RAM  u_res_RAM(.res_rd(res_rd), .res_wr(res_wr), .res_addr(res_addr), .res_datain(res_do), .res_dataout(res_di), .clk(clk));   


always begin #(`CYCLE/2) clk = ~clk; end

initial begin
	`ifdef FSDB
		$fsdbDumpfile("DT.fsdb");
		$fsdbDumpvars;
		$fsdbDumpMDA(u_sti_ROM.sti_M);
		$fsdbDumpMDA(u_res_RAM.res_M);
	`elsif VCD
		$dumpfile("DT.vcd");
		$dumpvars;
	`endif	
end

initial begin  // data input
	$display("-----------------------------------------------------\n");
 	$display("START!!! Simulation Start .....\n");
 	$display("-----------------------------------------------------\n");
   #1; reset = 1'b1; 
   @(negedge clk) #1; reset = 1'b0; 
   #(`CYCLE*3);    
   @(negedge clk) #1;  reset = 1'b1; 
end

initial begin
	#(`End_CYCLE);
	$display("-----------------------------------------------------\n");
	$display("Error!!! There is something wrong with your code ...!\n");
 	$display("------The test result is .....FAIL ------------------\n");
 	$display("-----------------------------------------------------\n");
 	$finish;
end

/*
initial begin // FW-PASS result compare
fwpass_chk = 0;
	#(`CYCLE*3);
	wait( fwpass_finish ) ;
	fwpass_chk = 1;
	fw_err = 0;
	for (i=0; i <N_PAT ; i=i+1) begin
				exp_pat = exp_fwpass[i];
				rel_pat = u_res_RAM.res_M[i];
				if (exp_pat == rel_pat) begin
					fw_err = fw_err;
				end
				else begin 
					fw_err = fw_err+1;
					if (fw_err <= 30) $display("FWPASS : Output pixel %d are wrong! the real output is %h, but expected result is %h", i, rel_pat, exp_pat);
					if (fw_err == 31) begin $display("FWPASS : Find the wrong pixel reached a total of more than 30 !, Please check the code .....\n");  end
				end
				if( ((i%1000) === 0) || (i == 16383))begin  
					if ( fw_err === 0)
      					$display("FWPASS : Output pixel: 0 ~ %d are correct!\n", i);
					else
					$display("FWPASS : Output Pixel: 0 ~ %d are wrong ! The wrong pixel reached a total of %d or more ! \n", i, fw_err);
					
  				end					
	end
end
*/

initial begin // BC-PASS result compare
bcpass_chk = 0;
	#(`CYCLE*3);
	wait( done ) ;
	bcpass_chk = 1;
	bc_err = 0;
	for (i=0; i <N_PAT ; i=i+1) begin
				exp_pat = exp_bcpass[i]; 
				rel_pat = u_res_RAM.res_M[i];
				if (exp_pat == rel_pat) begin
				        bc_err = bc_err;
				end
				else begin 
					bc_err = bc_err+1;
					if (bc_err <= 30) $display(" Output pixel %d are wrong!the real output is %h, but expected result is %h", i, rel_pat, exp_pat);
					if (bc_err == 31) begin $display(" Find the wrong pixel reached a total of more than 30 !, Please check the code .....\n");  end
				end
				if( ((i%1000) === 0) || (i == 16383))begin  
					if ( bc_err === 0)
      					$display(" Output pixel: 0 ~ %d are correct!\n", i);
					else
					$display(" Output Pixel: 0 ~ %d are wrong ! The wrong pixel reached a total of %d or more ! \n", i, bc_err);
					
  				end					
	end
end

initial begin
      @(posedge bcpass_chk)  #1;    
      if( bc_err == 0 ) begin
            $display("-------------------------------------------------------------\n");
	    $display("Congratulations!!! All data have been generated successfully!\n");
            $display("---------- The test result is ..... PASS --------------------\n");
	    $display("                                                     \n");
         end
	//else if ( fw_err == 0) begin
	    //$display("Forward-Pass PASS! but Back-Pass FAIL, There are %d errors at back-pass run\n", bc_err);
	    //$display("--------------- The test result is .....FAIL ----------------\n");
        // end
       else begin
	    //$display("FAIL! There are %d errors at forward-pass run!\n", fw_err);
	    $display("FAIL! There are %d errors at functional simulation !\n", bc_err);
	    $display("---------- The test result is .....FAIL -------------\n");
         end
	 $display("-----------------------------------------------------\n");
      #(`CYCLE/3); $finish;
end


/*
initial begin
	@(posedge fwpass_chk) #1;
	 if ( fw_err == 0) begin
            $display("                                                     \n");
	    $display("Forward-Pass test PASS! ");
	    $display("                                                     \n");
         end
	 else begin
	    $display("                                                     \n");
	    $display("Forward-Pass FAIL! There are %d errors at forward-pass run!\n", fw_err);
	    $display("---------- The test result is .....FAIL -------------\n");
	    $display("                                                     \n");
	 end   
end
   */
endmodule


//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
module sti_ROM (sti_rd, sti_data, sti_addr, clk, reset);
input		sti_rd;
input	[9:0] 	sti_addr;
output	[15:0]	sti_data;
input		clk, reset;

reg [15:0] sti_M [0:1023];
integer i;

reg	[15:0]	sti_data;

initial begin
	@ (negedge reset) $readmemh (`PAT , sti_M);
	end

always@(negedge clk) 
	if (sti_rd) sti_data <= sti_M[sti_addr];
	
endmodule



//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
module res_RAM (res_rd, res_wr, res_addr, res_datain, res_dataout, clk);
input		res_rd, res_wr;
input	[13:0] 	res_addr;
input	[7:0]	res_datain;
output	[7:0]	res_dataout;
input		clk;

reg [7:0] res_M [0:16383];

integer i;

initial for(i=0;i<=16383;i=i+1) res_M[i] = 8'h0;

reg [7:0] res_dataout;
always@(negedge clk)   // read data at negedge clock
	if (res_rd) res_dataout <= res_M[res_addr];

always@(posedge clk)   // write data at posedge clock
	if (res_wr) res_M[res_addr] <= res_datain;

endmodule



