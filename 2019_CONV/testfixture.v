`timescale 1ms/10ps
`define CYCLE      10         	  // Modify your clock period here
`define SDFFILE    "chip_syn.sdf"	  // Modify your sdf file name
`define End_CYCLE  100000000              // Modify cycle times once your design need more cycle times!

`define PAT        "dat_grad/cnn_sti.dat"                 // Modify your "dat" directory path
`define L0_EXP0        "dat_grad/cnn_layer0_exp0.dat"     
`define L0_EXP1        "dat_grad/cnn_layer0_exp1.dat"     
`define L1_EXP0        "dat_grad/cnn_layer1_exp0.dat"     
`define L1_EXP1        "dat_grad/cnn_layer1_exp1.dat"     
`define L2_EXP        "dat_grad/cnn_layer2_exp.dat"  

module testfixture;


reg	[19:0]	PAT	[0:4095];

reg	[19:0]	L0_EXP0	[0:4095];  
reg	[19:0]	L0_EXP1	[0:4095]; 
reg	[19:0]	L0_MEM0	[0:4095]; 
reg	[19:0]	L0_MEM1	[0:4095]; 
 
reg	[19:0]	L1_EXP0	[0:1023];
reg	[19:0]	L1_EXP1	[0:1023];
reg	[19:0]	L1_MEM0	[0:1023];
reg	[19:0]	L1_MEM1	[0:1023];

reg	[19:0]	L2_EXP	[0:2047];
reg	[19:0]	L2_MEM	[0:2047];

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
integer		err00, err01, err10, err11, err2;

integer		pat_num;
reg		check0=0, check1=0, check2=0;

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
/*
initial begin
	$fsdbDumpfile("CONV.fsdb");
	$fsdbDumpvars;
	$fsdbDumpMDA;
end*/

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
		$readmemh(`L0_EXP1, L0_EXP1);
		$readmemh(`L1_EXP0, L1_EXP0);
		$readmemh(`L1_EXP1, L1_EXP1);
		$readmemh(`L2_EXP , L2_EXP);
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
			3'b010:cdata_rd <= L0_MEM1[caddr_rd] ;
			3'b011:cdata_rd <= L1_MEM0[caddr_rd] ;
			3'b100:cdata_rd <= L1_MEM1[caddr_rd] ;
			3'b101:cdata_rd <= L2_MEM[caddr_rd] ; 
		endcase
	end
end

always@(posedge clk) begin 
	if (cwr == 1) begin
		case(csel)
			3'b001: begin check0 <= 1; L0_MEM0[caddr_wr] <= cdata_wr; end
			3'b010: begin check0 <= 1; L0_MEM1[caddr_wr] <= cdata_wr; end
			3'b011: begin check1 <= 1; L1_MEM0[caddr_wr] <= cdata_wr; end 
			3'b100: begin check1 <= 1; L1_MEM1[caddr_wr] <= cdata_wr; end 
			3'b101: begin check2 <= 1; L2_MEM[caddr_wr] <= cdata_wr; end 
		
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
		/*else if ( (L0_MEM0[p0]+20'h1) == L0_EXP0[p0]) ;
		else if ( (L0_MEM0[p0]-20'h1) == L0_EXP0[p0]) ;
		else if ( (L0_MEM0[p0]+20'h2) == L0_EXP0[p0]) ;
		else if ( (L0_MEM0[p0]-20'h2) == L0_EXP0[p0]) ;
		else if ( (L0_MEM0[p0]+20'h3) == L0_EXP0[p0]) ;
		else if ( (L0_MEM0[p0]-20'h3) == L0_EXP0[p0]) ;*/
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
	err01 = 0;
	for (p0=0; p0<=4095; p0=p0+1) begin
		if (L0_MEM1[p0] == L0_EXP1[p0]) ;
		/*else if (L0_MEM1[p0]+20'h1 == L0_EXP1[p0]) ;
		else if (L0_MEM1[p0]-20'h1 == L0_EXP1[p0]) ;
		else if (L0_MEM1[p0]+20'h2 == L0_EXP1[p0]) ;
		else if (L0_MEM1[p0]-20'h2 == L0_EXP1[p0]) ;
		else if (L0_MEM1[p0]+20'h3 == L0_EXP1[p0]) ;
		else if (L0_MEM1[p0]-20'h3 == L0_EXP1[p0]) ;*/
		else begin
			err01 = err01 + 1;
			begin 
				$display("WRONG! Layer 0 (Convolutional Output) with Kernel 1 , Pixel %d is wrong!", p0);
				$display("               The output data is %h, but the expected data is %h ", L0_MEM1[p0], L0_EXP1[p0]);
			end
		end
	end
	if (err01 == 0) $display("Layer 0 (Convolutional Output) with Kernel 1 is correct!");
	else		 $display("Layer 0 (Convolutional Output) with Kernel 1 be found %d error !", err01);
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
	err11 = 0;
	for (p1=0; p1<=1023; p1=p1+1) begin
		if (L1_MEM1[p1] == L1_EXP1[p1]) ;
		else begin
			err11 = err11 + 1;
			begin 
				$display("WRONG! Layer 1 (Max-pooling Output) with Kernel 1 , Pixel %d is wrong!", p1);
				$display("               The output data is %h, but the expected data is %h ", L1_MEM1[p1], L1_EXP1[p1]);
			end
		end
	end
	if (err11 == 0) $display("Layer 1 (Max-pooling Output) with Kernel 1 is correct!");
	else		$display("Layer 1 (Max-pooling Output) with Kernel 1 be found %d error !", err11);
end
end


//-------------------------------------------------------------------------------------------------------------------
initial begin  	// layer 2,  flatten output
check2<= 0;
wait(busy==1); wait(busy==0);
if (check2 == 1) begin
	err2 = 0;
	for (p2=0; p2<=2047; p2=p2+1) begin
		if (L2_MEM[p2] == L2_EXP[p2]) ;
		else begin
			err2 = err2 + 1;
			begin 
				$display("WRONG! Layer 2 (Flatten  Output), Pixel %d is wrong!", p2);
				$display("               The output data is %h, but the expected data is %h ", L2_MEM[p2], L2_EXP[p2]);
			end
		end
	end
	if (err2 == 0) $display("Layer 2 (Flatten  Output) is correct!");
	else 		$display("Layer 2 (Flatten  Output) be found %d error !", err2);
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
	if( (check0==1)&(err00==0)&(err01==0) ) $display("Congratulations! Layer 0 data have been generated successfully! The result is PASS!!\n");
		else if (check0 == 0) $display("Layer 0 output was fail! \n");
		else $display("FAIL!!!  There are %d errors! in Layer 0 \n", err00+err01);
	if( (check1==1)&(err10==0)&(err11==0) ) $display("Congratulations! Layer 1 data have been generated successfully! The result is PASS!!\n");
		else if (check1 == 0) $display("Layer 1 output was fail! \n");
		else $display("FAIL!!!  There are %d errors! in Layer 1 \n", err10+err11);
	if( (check2==1)&(err2==0)) $display("Congratulations! Layer 2 data have been generated successfully! The result is PASS!!\n");
		else if (check2 == 0) $display("Layer 2 output was fail! \n");
		else $display("FAIL!!!  There are %d errors! in Layer 2 \n", err2);
	if ((check0|check1|check2) == 0) $display("FAIL!!! No output data was found!! \n");
	$display("-----------------------------------------------------\n");
      #(`CYCLE/2); $finish;
end



   
endmodule


