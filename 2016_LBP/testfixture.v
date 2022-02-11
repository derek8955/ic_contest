`timescale 1ns/10ps
`define CYCLE      12.5          	  // Modify your clock period here
`define SDFFILE    "./SYN/LBP_syn.sdf"	  // Modify your sdf file name
`define End_CYCLE  100000000000              // Modify cycle times once your design need more cycle times!

`define PAT        "./pattern1.dat"    
`define EXP        "./golden1.dat"     


module testfixture;

parameter N_EXP   = 16384; // 128 x 128 pixel
parameter N_PAT   = N_EXP;

reg   [7:0]   gray_mem   [0:N_PAT-1];
reg   [7:0]   exp_mem    [0:N_EXP-1];

reg [7:0] LBP_dbg;
reg [7:0] exp_dbg;
wire [7:0] lbp_data;
reg   clk = 0;
reg   reset = 0;
reg   result_compare = 0;

integer err = 0;
integer times = 0;
reg over = 0;
integer exp_num = 0;
wire [13:0] gray_addr;
wire [13:0] lbp_addr;
reg [7:0] gray_data;
reg gray_ready = 0;
integer i;

   LBP LBP( .clk(clk), .reset(reset), 
            .gray_addr(gray_addr), .gray_req(gray_req), .gray_ready(gray_ready), .gray_data(gray_data), 
			.lbp_addr(lbp_addr), .lbp_valid(lbp_valid), .lbp_data(lbp_data), .finish(finish));
			
   lbp_mem u_lbp_mem(.lbp_valid(lbp_valid), .lbp_data(lbp_data), .lbp_addr(lbp_addr), .clk(clk));
   

`ifdef SDF
	initial $sdf_annotate(`SDFFILE, LBP);
`endif

initial	$readmemh (`PAT, gray_mem);
initial	$readmemh (`EXP, exp_mem);

always begin #(`CYCLE/2) clk = ~clk; end

initial begin
	$fsdbDumpfile("LBP.fsdb");
	$fsdbDumpvars;
end

initial begin  // data input
   @(negedge clk)  reset = 1'b1; 
   #(`CYCLE*2);    reset = 1'b0; 
   @(negedge clk)  gray_ready = 1'b1;
    while (finish == 0) begin             
      if( gray_req ) begin
         gray_data = gray_mem[gray_addr];  
      end 
      else begin
         gray_data = 'hz;  
      end                    
      @(negedge clk); 
    end     
    gray_ready = 0; gray_data='hz;
	@(posedge clk) result_compare = 1; 
end

initial begin // result compare
	$display("-----------------------------------------------------\n");
 	$display("START!!! Simulation Start .....\n");
 	$display("-----------------------------------------------------\n");
	#(`CYCLE*3); 
	wait( finish ) ;
	@(posedge clk); @(posedge clk);
	for (i=0; i <N_PAT ; i=i+1) begin
			//@(posedge clk);  // TRY IT ! no comment this line for debugging !!
				exp_dbg = exp_mem[i]; LBP_dbg = u_lbp_mem.LBP_M[i];
				if (exp_mem[i] == u_lbp_mem.LBP_M[i]) begin
					err = err;
				end
				else begin
					//$display("pixel %d is FAIL !!", i); 
					err = err+1;
					if (err <= 10) $display("Output pixel %d are wrong!", i);
					if (err == 11) begin $display("Find the wrong pixel reached a total of more than 10 !, Please check the code .....\n");  end
				end
				if( ((i%1000) === 0) || (i == 16383))begin  
					if ( err === 0)
      					$display("Output pixel: 0 ~ %d are correct!\n", i);
					else
					$display("Output Pixel: 0 ~ %d are wrong ! The wrong pixel reached a total of %d or more ! \n", i, err);
					
  				end					
				exp_num = exp_num + 1;
	end
	over = 1;
end


initial  begin
 #`End_CYCLE ;
 	$display("-----------------------------------------------------\n");
 	$display("Error!!! Somethings' wrong with your code ...!\n");
 	$display("-------------------------FAIL------------------------\n");
 	$display("-----------------------------------------------------\n");
 	$finish;
end

initial begin
      @(posedge over)      
      if((over) && (exp_num!='d0)) begin
         $display("-----------------------------------------------------\n");
         if (err == 0)  begin
            $display("Congratulations! All data have been generated successfully!\n");
            $display("-------------------------PASS------------------------\n");
         end
         else begin
            $display("There are %d errors!\n", err);
            $display("-----------------------------------------------------\n");
	    
         end
      end
      #(`CYCLE/2); $finish;
end
   
endmodule


module lbp_mem (lbp_valid, lbp_data, lbp_addr, clk);
input		lbp_valid;
input	[13:0] 	lbp_addr;
input	[7:0]	lbp_data;
input		clk;

reg [7:0] LBP_M [0:16383];
integer i;

initial begin
	for (i=0; i<=16383; i=i+1) LBP_M[i] = 0;
end

always@(negedge clk) 
	if (lbp_valid) LBP_M[ lbp_addr ] <= lbp_data;

endmodule





