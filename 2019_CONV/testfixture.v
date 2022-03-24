`timescale 1ns/10ps
`define CYCLE      10.0          	  // Modify your clock period here
`define SDFFILE    "./conv_syn.sdf"	  // Modify your sdf file name
`define End_CYCLE  100000000              // Modify cycle times once your design need more cycle times!

`define PAT        "./dat_univ/cnn_sti.dat"                 // Modify your "dat" directory path
`define L0_EXP0        "./dat_univ/cnn_layer0_exp0.dat"       
`define L1_EXP0        "./dat_univ/cnn_layer1_exp0.dat"     


module testfixture;


reg	[19:0]	PAT	[0:4095];

reg	[19:0]	L0_EXP0	[0:4095];  
reg	[19:0]	L0_MEM0	[0:4095]; 

 
reg	[19:0]	L1_EXP0	[0:1023];
reg	[19:0]	L1_MEM0	[0:1023];



reg		reset = 0;
reg		clk = 0;
reg		ready = 0;

wire		cwr;
wire		crd;
wire	[19:0]	cdata_wr;
reg	[19:0]	cdata_rd;
wire	[2:0]	csel;
wire	[11:0]	caddr_rd;
wire	[11:0]	caddr_wr;

wire	[11:0]	iaddr;
reg	[19:0]	idata;


integer		p0, p1, p3, p4, p2;
integer		err00, err10;

integer		pat_num;
reg		check0=0, check1=0;

`ifdef SDF
	initial $sdf_annotate(`SDFFILE, u_CONV);
`endif

CONV u_CONV(
			.clk(clk),
			.reset(reset),
			.busy(busy),	
			.ready(ready),	
			.iaddr(iaddr),
			.idata(idata),
			.cwr(cwr),
			.caddr_wr(caddr_wr),
			.cdata_wr(cdata_wr),
			.crd(crd),
			.cdata_rd(cdata_rd),
			.caddr_rd(caddr_rd),
			.csel(csel)
			);
			


always begin #(`CYCLE/2) clk = ~clk; end

initial begin
	$fsdbDumpfile("CONV.fsdb");
	$fsdbDumpvars;
	$fsdbDumpMDA;
end

initial begin  // global control
	$display("-----------------------------------------------------\n");
 	$display("START!!! Simulation Start .....\n");
 	$display("-----------------------------------------------------\n");
	@(negedge clk); #1; reset = 1'b1;  ready = 1'b1;
   	#(`CYCLE*3);  #1;   reset = 1'b0;  
   	wait(busy == 1); #(`CYCLE/4); ready = 1'b0;
end

initial begin // initial pattern and expected result
	wait(reset==1);
	wait ((ready==1) && (busy ==0) ) begin
		$readmemh(`PAT, PAT);
		$readmemh(`L0_EXP0, L0_EXP0);
		$readmemh(`L1_EXP0, L1_EXP0);
	end
		
end

always@(negedge clk) begin // generate the stimulus input data
	#1;
	if ((ready == 0) & (busy == 1)) idata <= PAT[iaddr];
	else idata <= 'hx;
	end


always@(negedge clk) begin
	if (crd == 1) begin
		case(csel)
			3'b001:cdata_rd <= L0_MEM0[caddr_rd] ;
			3'b011:cdata_rd <= L1_MEM0[caddr_rd] ;
		endcase
	end
end

always@(posedge clk) begin 
	if (cwr == 1) begin
		case(csel)
			3'b001: begin check0 <= 1; L0_MEM0[caddr_wr] <= cdata_wr; end
			3'b011: begin check1 <= 1; L1_MEM0[caddr_wr] <= cdata_wr; end 		
		endcase
	end
end


//-------------------------------------------------------------------------------------------------------------------
initial begin  	// layer 0,  conv output
check0<= 0;
wait(busy==1); wait(busy==0);
if (check0 == 1) begin 
	err00 = 0;
	for (p0=0; p0<=4095; p0=p0+1) begin
		if (L0_MEM0[p0] == L0_EXP0[p0]) ;
		else begin
			err00 = err00 + 1;
			begin 
				$display("WRONG! Layer 0 (Convolutional Output) with Kernel 0 , Pixel %d is wrong!", p0);
				$display("               The output data is %h, but the expected data is %h ", L0_MEM0[p0], L0_EXP0[p0]);
			end
		end
	end
	if (err00 == 0) $display("Layer 0 (Convolutional Output) with Kernel 0 is correct !");
	else		 $display("Layer 0 (Convolutional Output) with Kernel 0 be found %d error !", err00);
end
end

//-------------------------------------------------------------------------------------------------------------------
initial begin  	// layer 1,  max-pooling output
check1<= 0;
wait(busy==1); wait(busy==0);
if(check1 == 1) begin
	err10 = 0;
	for (p1=0; p1<=1023; p1=p1+1) begin
		if (L1_MEM0[p1] == L1_EXP0[p1]) ;
		else begin
			err10 = err10 + 1;
			begin 
				$display("WRONG! Layer 1 (Max-pooling Output) with Kernel 0 , Pixel %d is wrong!", p1);
				$display("               The output data is %h, but the expected data is %h ", L1_MEM0[p1], L1_EXP0[p1]);
			end
		end
	end
	if (err10 == 0) $display("Layer 1 (Max-pooling Output) with Kernel 0 is correct!");
	else		 $display("Layer 1 (Max-pooling Output) with Kernel 0 be found %d error !", err10);
end
end




//-------------------------------------------------------------------------------------------------------------------
initial  begin
 #`End_CYCLE ;
 	$display("-----------------------------------------------------\n");
 	$display("Error!!! The simulation can't be terminated under normal operation!\n");
 	$display("-------------------------FAIL------------------------\n");
 	$display("-----------------------------------------------------\n");
 	$finish;
end

initial begin
      wait(busy == 1);
      wait(busy == 0);      
    $display(" ");
	$display("-----------------------------------------------------\n");
	$display("--------------------- S U M M A R Y -----------------\n");
	if( (check0==1)&(err00==0) ) $display("Congratulations! Layer 0 data have been generated successfully! The result is PASS!!\n");
		else if (check0 == 0) $display("Layer 0 output was fail! \n");
		else $display("FAIL!!!  There are %d errors! in Layer 0 \n", err00);
	if( (check1==1)&(err10==0) ) $display("Congratulations! Layer 1 data have been generated successfully! The result is PASS!!\n");
		else if (check1 == 0) $display("Layer 1 output was fail! \n");
		else $display("FAIL!!!  There are %d errors! in Layer 1 \n", err10);
	if ((check0|check1) == 0) $display("FAIL!!! No output data was found!! \n");
	$display("-----------------------------------------------------\n");
      #(`CYCLE/2); $finish;
end



   
endmodule


