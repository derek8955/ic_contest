`timescale 1ns/10ps
`define SDFFILE    "./SET_syn.sdf"    // Modify your sdf file name here
`define cycle 15.0
`define terminate_cycle 200000 // Modify your terminate ycle here


module testfixture1;

`define central_pattern "./dat/Central_pattern.dat"
`define radius_pattern "./dat/Radius_pattern.dat"
`define  candidate_result_Length "./dat/candidate_result_Length.dat"
`define  candidate_united_result_Length "./dat/candidate_united_result_Length.dat"
`define  candidate_diff_result_Length "./dat/candidate_diff_result_Length.dat"
`define  candidate_intersect_result_Length "./dat/candidate_intersect_result_Length.dat"

reg clk = 0;
reg rst;
reg en;
reg [23:0] central;
reg [11:0] radius;
reg [1:0] mode;
wire busy;
wire valid;
wire [7:0] candidate;

integer err_cnt;

reg [23:0] central_pat_mem [0:63];
reg [11:0] radius_pat_mem[0:63];
reg [7:0] expected_mem [0:63];

`ifdef SDF
initial $sdf_annotate(`SDFFILE, u_set);
`endif

initial begin
	$fsdbDumpfile("SET.fsdb");
	$fsdbDumpvars;
end

initial begin
	$timeformat(-9, 1, " ns", 9); //Display time in nanoseconds
	$readmemh(`central_pattern, central_pat_mem);
	$readmemh(`radius_pattern, radius_pat_mem);
`ifdef MD1
	$display("--------------------------- [ Function 1. Simulation START !! ] ---------------------------");
	$readmemh(`candidate_result_Length, expected_mem);
`elsif MD2
	$display("--------------------------- [ Function 2. Simulation START !! ] ---------------------------");
	$readmemh(`candidate_united_result_Length, expected_mem);
`elsif MD3
	$display("--------------------------- [ Function 3. Simulation START !! ] ---------------------------");
	$readmemh(`candidate_diff_result_Length, expected_mem);
`elsif MD4
	$display("--------------------------- [ Function 4. Simulation START !! ] ---------------------------");
	$readmemh(`candidate_intersect_result_Length, expected_mem);
`else
	$display("============================================================================");
	$display("|                                                                          |");
	$display("|  Please select one testbench for test !!                                 |");
	$display("|  Simulation can't be initialized !!                                      |");
	$display("|                                                                          |");
	$display("============================================================================");
	#1 $finish;
`endif
end



always #(`cycle/2) clk = ~clk;




initial begin
`ifdef MD1
	mode = 2'b00;
`elsif MD2
	mode = 2'b01;
`elsif MD3
	mode = 2'b10;
`elsif MD4
	mode = 2'b11;
`else
	mode = 2'bx;
`endif
end

SET u_set( .clk(clk), .rst(rst), .en(en), .central(central), .radius(radius), .mode(mode), .busy(busy), .valid(valid), .candidate(candidate) );

integer k;
integer p;
initial begin
	en = 0;
      	rst = 0;
	err_cnt = 0;
# `cycle;     
	rst = 1;
#(`cycle*3);
	rst = 0;
for (k = 0; k<=63; k = k+1) begin
	@(negedge clk);
	//change inputs at strobe point
        #(`cycle/4)	wait(busy == 0);
			en = 1;
			central = central_pat_mem[k];                
      			radius = radius_pat_mem[k];
			#(`cycle) en = 0;
			wait (valid == 1);
          	//Wait for signal output
          	@(negedge clk);
				if (candidate === expected_mem[k])
					$display(" Pattern %d at Mode %d is PASS !", k, mode);
				else begin
					$display(" Pattern %d at Mode %d is FAIL !. Expected candidate = %d, but the Response candidate = %d !! ", k, mode, expected_mem[k], candidate);
					err_cnt = err_cnt + 1;
				end
end
#(`cycle*2); 
     $display("--------------------------- Simulation FINISH !!---------------------------");
     if (err_cnt) begin 
     	$display("============================================================================");
     	$display("\n (T_T) FAIL!! The simulation result is FAIL!!! there were %d errors at all.\n", err_cnt);
	$display("============================================================================");
	end
     else begin 
     	$display("============================================================================");
	$display("\n \\(^o^)/ CONGRATULATIONS!!  The simulation result is PASS!!!\n");
	$display("============================================================================");
	end
$finish;
end


always@(err_cnt) begin
	if (err_cnt == 10) begin
	$display("============================================================================");
     	$display("\n (>_<) FAIL!! The simulation FAIL result is too many ! Please check your code @@ \n");
	$display("============================================================================");
	$finish;
	end
end

initial begin 
	#`terminate_cycle;
	$display("================================================================================================================");
	$display("--------------------------- (/`n`)/ ~#  There was something wrong with your code !! ---------------------------"); 
	$display("--------------------------- The simulation can't finished!!, Please check it !!! ---------------------------"); 
	$display("================================================================================================================");
	$finish;
end


endmodule