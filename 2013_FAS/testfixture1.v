`timescale 1ns/10ps
`define CYCLE     10                 // Modify your clock period here
`define SDFFILE    ""    // Modify your sdf file name
`define End_CYCLE  100000          // Modify cycle times once your design need more cycle times!

`define fir_fail_limit 48
`define fft_fail_limit 48



module testfixture1;

reg   clk ;
reg   reset ;
reg [15:0] data; // 4 integer + 4 fraction
wire fir_valid, fft_valid;
wire [15:0] fir_d; // 8 integer + 8 fraction
wire [31:0] fft_d0, fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
wire [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15;
wire ready;
wire done;
wire [3:0] freq;

`define FREQ1	1
`define FREQ2	15

reg en;

reg [15:0] data_mem [0:1023];
initial $readmemh("./dat/Pattern1.dat", data_mem);

reg [15:0] fir_mem [0:1023];
initial $readmemh("./dat/Golden1_FIR.dat", fir_mem);

reg [15:0] fftr_mem [0:1023];
initial $readmemh("./dat/Golden1_FFT_real.dat", fftr_mem);
reg [15:0] ffti_mem [0:1023];
initial $readmemh("./dat/Golden1_FFT_imag.dat", ffti_mem);

integer i, j ,k, l;
integer fir_fail, fft_fail;

FAS DUT(.data_valid(en), .data(data), .clk(clk), .rst(reset), .fir_d(fir_d), .fir_valid(fir_valid), .fft_valid(fft_valid), .done(done), .freq(freq),
	.fft_d0(fft_d0), .fft_d1(fft_d1), .fft_d2(fft_d2), .fft_d3(fft_d3), .fft_d4(fft_d4), .fft_d5(fft_d5), .fft_d6(fft_d6), .fft_d7(fft_d7), .fft_d8(fft_d8),
 	.fft_d9(fft_d9), .fft_d10(fft_d10), .fft_d11(fft_d11), .fft_d12(fft_d12), .fft_d13(fft_d13), .fft_d14(fft_d14), .fft_d15(fft_d15) );


`ifdef SDFFILE
initial $sdf_annotate(`SDFFILE, DUT);
`endif


initial begin
$fsdbDumpfile("FAS.fsdb");
$fsdbDumpvars;
end



initial begin
#0;
   clk         = 1'b0;
   reset       = 1'b0; 
   i = 0;   
   j = 0;  
   k = 0;
   l = 0;
   fir_fail = 0;
   fft_fail = 0;
   
end

always begin #(`CYCLE/2) clk = ~clk; end

initial begin
	en = 0;
   #(`CYCLE*0.5)   reset = 1'b1; 
   #(`CYCLE*2); #0.5;   reset = 1'b0; en = 1;
end

// data input & ready
always@(negedge clk ) begin
	if (en) begin
		if (i >= 1024 )
			data <= 0;
		else begin
			data <= data_mem[i];
			i <= i + 1;
		end
	end
end

//============================================================================================================
//============================================================================================================
//============================================================================================================
// FIR data output verify
reg fir_verify;
always@(posedge clk) begin
	if (fir_valid) begin	
		fir_verify = ((fir_mem[j] == fir_d+1) || (fir_mem[j] == fir_d) || (fir_mem[j] == fir_d-1));
		if ( (!fir_verify) || (fir_d === 16'bx) || (fir_d === 16'bz)) begin
			$display("ERROR at FIR cycle %3d: The real response output %4h != expectd %4h " ,j, fir_d, fir_mem[j]);
			$display("-----------------------------------------------------");
			fir_fail <= fir_fail + 1;
		end
		else if ( (j==100) || (j==200) || (j==300) || (j==400) || (j==500) || (j==600) || (j==800) || (j==900)) begin
			if (fir_fail) $display("FIR dataout on pattern %d ~ %d !!, FAIL !!", (j-100), j); 
			else begin
			$display("FIR dataout on pattern %d ~ %d !!, PASS !!", (j-100), j); 
			$display("-----------------------------------------------------");
			end
			end
		j=j+1;
	end
end

//============================================================================================================
//============================================================================================================
//============================================================================================================
// FFT data output verify

reg [31:0] fft_rec [0:15];
always@(*) begin
fft_rec[0] = fft_d0;
fft_rec[1] = fft_d1;
fft_rec[2] = fft_d2;
fft_rec[3] = fft_d3;
fft_rec[4] = fft_d4;
fft_rec[5] = fft_d5;
fft_rec[6] = fft_d6;
fft_rec[7] = fft_d7;
fft_rec[8] = fft_d8;
fft_rec[9] = fft_d9;
fft_rec[10] = fft_d10;
fft_rec[11] = fft_d11;
fft_rec[12] = fft_d12;
fft_rec[13] = fft_d13;
fft_rec[14] = fft_d14;
fft_rec[15] = fft_d15;
end

reg [15:0] fft_cmp_r , fft_cmp_r1 , fft_cmp_r2 , fft_cmp_r3 ,fft_cmp_i , fft_cmp_i1 , fft_cmp_i2 , fft_cmp_i3 ;
reg [15:0] fft_cmp_r4 , fft_cmp_r5 , fft_cmp_r6, fft_cmp_r7, fft_cmp_i4 , fft_cmp_i5 , fft_cmp_i6, fft_cmp_i7 ;
reg [15:0] fftr_ver, ffti_ver;
reg [15:0] fftr_ver_, ffti_ver_;
reg [31:0] fft_cmp;

reg fftr_verify, ffti_verify;
always@(posedge clk) begin
	if (fft_valid) begin
		for (l=0; l<=15; l=l+1) begin
			fft_cmp = fft_rec[l];
			fftr_ver_= fftr_mem[k]; fftr_ver = fftr_ver_;
			ffti_ver_= ffti_mem[k]; ffti_ver = ffti_ver_;
			
			fft_cmp_r = fft_cmp[31:16]; 
			fft_cmp_r1 = fft_cmp_r-1; fft_cmp_r2 = fft_cmp_r; fft_cmp_r3 = fft_cmp_r+1;
			fft_cmp_r4 = fft_cmp_r-2; fft_cmp_r5 = fft_cmp_r+2; fft_cmp_r6 = fft_cmp_r-3; fft_cmp_r7 = fft_cmp_r+3;
			
			fft_cmp_i = fft_cmp[15:0];
			fft_cmp_i1 = fft_cmp_i-1; fft_cmp_i2 = fft_cmp_i; fft_cmp_i3 = fft_cmp_i+1;
			fft_cmp_i4 = fft_cmp_i-2; fft_cmp_i5 = fft_cmp_i+2; fft_cmp_i6 = fft_cmp_i-3; fft_cmp_i7 = fft_cmp_i+3;			

			fftr_verify = ((fftr_ver == fft_cmp_r2) || (fftr_ver == (fft_cmp_r3)) || (fftr_ver == (fft_cmp_r1)) || (fftr_ver == (fft_cmp_r4)) || (fftr_ver == (fft_cmp_r5)) || (fftr_ver == (fft_cmp_r6)) || (fftr_ver == (fft_cmp_r7)));
			ffti_verify = ((ffti_ver == fft_cmp_i2) || (ffti_ver == (fft_cmp_i3)) || (ffti_ver == (fft_cmp_i1)) || (ffti_ver == (fft_cmp_i4)) || (ffti_ver == (fft_cmp_i5)) || (ffti_ver == (fft_cmp_i6)) || (ffti_ver == (fft_cmp_i7)));
			if ( (!fftr_verify) || (!ffti_verify)|| (fft_cmp === 32'bx) || (fft_cmp === 32'bz)) begin
				$display("ERROR at FFT  ppoint number =%2d: The real response output %8h != expectd %8h " ,k, fft_cmp, {fftr_mem[k], ffti_mem[k]});
				$display("-----------------------------------------------------");
				fft_fail <= fft_fail + 1; 
			end
			else if ( l==15 ) begin
				if (fft_fail) $display("FFT dataout on pattern %d ~ %d, FAIL!!",  (k-16), k);
				else $display("FFT dataout on pattern %d ~ %d, PASS!!", (k-15), k);
			end
			k=k+1;
		end
	end
end





//============================================================================================================
//============================================================================================================
//============================================================================================================
// Final result verify
always@(posedge clk) begin
	if (done) begin
		if ( !((`FREQ1 == freq)||(`FREQ2 == freq)) || (freq === 1'bx) || (freq === 1'bz) ) begin
			$display("ERROR at 'ANALYSIS Stage', the freq signal output %2d !=expect %2d or %2d " ,freq, `FREQ1, `FREQ2);
			$display("-----------------------------------------------------");
			#(`CYCLE*10);
			$finish;
		end
	end
end

// Terminate the simulation, FAIL
initial  begin
 #(`CYCLE * `End_CYCLE);
 $display("-----------------------------------------------------");
 $display("Error!!! Somethings' wrong with your code ...!!");
 $display("-------------------------FAIL------------------------");
 $display("-----------------------------------------------------");
 $finish;
end

always@(*) begin
	if (fir_fail >= `fir_fail_limit) begin
		$display("-----------------------------------------------------\n");
 		$display("Error!!! There are more than %d errors for FIR output !", `fir_fail_limit);
 		$display("-------------------------FAIL------------------------\n");
		$finish;
	end	
end

always@(*) begin
	if (fft_fail >= `fft_fail_limit) begin
		$display("-----------------------------------------------------\n");
 		$display("Error!!! There are more than %d errors for FFT output !", `fft_fail_limit);
 		$display("-------------------------FAIL------------------------\n");
		$finish;
	end	
end


// Terminate the simulation, PASS
initial begin
      wait(en);
      wait(fir_valid);
      wait(fft_valid);
      wait(done);
      wait(k>=1023);
      #(`CYCLE);     
      if ( !(fft_fail) && !(fir_fail) ) begin
         $display("-----------------------------------------------------\n");
         $display("Congratulations! All data have been generated successfully!\n");
         $display("-------------------------PASS------------------------\n");
      #(`CYCLE/2); $finish;
      end
      else begin
      	 $display("-----------------------------------------------------\n");
         $display("Fail!! There are some error with your code!\n");
         $display("-------------------------FAIL------------------------\n");
      #(`CYCLE/2); $finish;
      end
end








endmodule
