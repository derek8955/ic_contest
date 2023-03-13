`timescale 1ns/10ps
`define CYCLE    10.0         	        // Modify your clock period here


`define SDFFILE  "./LCD_CTRL_syn.sdf"	// Modify your sdf file name

`ifdef tb1
  `define EXPECT "./tb1_goal.dat"
  `define CMD "./cmd1.dat"
  `define IMAGE "image1.dat"
`endif

`ifdef tb2
  `define EXPECT "./tb2_goal.dat"
  `define CMD "./cmd2.dat"
  `define IMAGE "image2.dat"
`endif

`ifdef tb3
  `define EXPECT "./tb3_goal.dat"
  `define CMD "./cmd3.dat"
  `define IMAGE "image3.dat"
`endif


module test;
parameter IMAGE_N_PAT = 64;
parameter CMD_N_PAT = 46;
parameter t_reset = `CYCLE*2;


reg clk;
reg reset;
reg [6:0] err_IRAM;
reg [3:0] cmd;
reg cmd_valid;
reg [7:0]  out_mem[0:63];


wire IROM_rd;
wire [5:0] IROM_A;
wire IRAM_valid;
wire [7:0] IRAM_D;
wire [5:0] IRAM_A;
wire busy;
wire done;
wire [7:0]  IROM_Q;


integer i, j, k, l, err;

reg over;
reg   [3:0]   cmd_mem   [0:CMD_N_PAT-1];



	LCD_CTRL LCD_CTRL(.clk(clk), .reset(reset), 
		     .cmd(cmd), .cmd_valid(cmd_valid), 
                     .IROM_rd(IROM_rd), .IROM_A(IROM_A), .IROM_Q(IROM_Q), 
                     .IRAM_valid(IRAM_valid), .IRAM_D(IRAM_D), .IRAM_A(IRAM_A),
		     .busy(busy), .done(done));

	IROM  IROM_1(.IROM_rd(IROM_rd), .IROM_data(IROM_Q), .IROM_addr(IROM_A), .clk(clk), .reset(reset));

	IRAM IRAM_1 (.clk(clk), .IRAM_data(IRAM_D), .IRAM_addr(IRAM_A), .IRAM_valid(IRAM_valid));


//initial $sdf_annotate(`SDFFILE, top);

`ifdef SDF
	initial $sdf_annotate(`SDFFILE, LCD_CTRL);
`endif

initial	$readmemh (`CMD,    cmd_mem);
initial	$readmemh (`EXPECT, out_mem);

initial begin

$fsdbDumpfile("LCD_CTRL.fsdb");
$fsdbDumpvars;
$fsdbDumpMDA;
end





initial begin
   clk         = 1'b0;
   reset       = 1'b0;
   over	       = 1'b0;
   l	       = 0;
   err         = 0;   
end

always begin #(`CYCLE/2) clk = ~clk; end

initial begin
   @(negedge clk)  reset = 1'b1;
   #t_reset        reset = 1'b0;
                                  
end  

            
 always @(negedge clk)
begin

	begin
	if (l < CMD_N_PAT)
	begin
		if(!busy) 
		begin
        	cmd = cmd_mem[l];
        	cmd_valid = 1'b1;
		l=l+1;
		end  
		else
		cmd_valid = 1'b0;
	end
	else
	begin
		l=l;
		cmd_valid = 1'b0;
	end
	end
end


initial @(posedge done) 
begin
   for(k=0;k<64;k=k+1)begin
         if( IRAM_1.IRAM_M[k] !== out_mem[k]) 
		begin
         	$display("ERROR at %d:output %h !=expect %h ",k, IRAM_1.IRAM_M[k], out_mem[k]);
         	err = err+1 ;
		end
         else if ( out_mem[k] === 8'dx)
                begin
                $display("ERROR at %d:output %h !=expect %h ",k, IRAM_1.IRAM_M[k], out_mem[k]);
		err=err+1;
                end   
 over=1'b1;
end
        begin
	if (err === 0 &&  over===1'b1  )  begin
	            $display("All data have been generated successfully!\n");
	            $display("-------------------PASS-------------------\n");
		    #10 $finish;
	         end
	         else if( over===1'b1 )
		 begin 
	            $display("There are %d errors!\n", err);
	            $display("---------------------------------------------\n");
		    #10 $finish;
         	 end
	
	end
end

endmodule


//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
module IROM (IROM_rd, IROM_data, IROM_addr, clk, reset);
input		IROM_rd;
input	[5:0] 	IROM_addr;
output	[7:0]	IROM_data;
input		clk, reset;

reg [7:0] sti_M [0:63];
integer i;

reg	[7:0]	IROM_data;

initial begin
	@ (negedge reset) $readmemb (`IMAGE , sti_M);
	end

always@(negedge clk) 
	if (IROM_rd) IROM_data <= sti_M[IROM_addr];
	
endmodule



//-----------------------------------------------------------------------
//-----------------------------------------------------------------------

module IRAM (IRAM_valid, IRAM_data, IRAM_addr, clk);
input		IRAM_valid;
input	[5:0] 	IRAM_addr;
input	[7:0]	IRAM_data;
input		clk;

reg [7:0] IRAM_M [0:63];
integer i;

initial begin
	for (i=0; i<=63; i=i+1) IRAM_M[i] = 0;
end

always@(negedge clk) 
	if (IRAM_valid) IRAM_M[ IRAM_addr ] <= IRAM_data;

endmodule


