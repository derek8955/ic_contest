`timescale 1ns/10ps
`define SDFFILE     "./IOTDF_syn.sdf"     //Modify your sdf file name
`define CYCLE       10                   //Modify your CYCLE 
`define DEL         1.0
`define PAT_NUM     96
`define F1_NUM      12
`define F4_NUM      25
`define F5_NUM      73
`define F6_NUM      3
`define F7_NUM      4

module test;
reg           clk;
reg           rst;
reg           in_en;
reg  [7:0]    iot_in;
reg  [2:0]    fn_sel;
wire          busy;
wire          valid;
wire [127:0]  iot_out;

reg  [127:0]  pat_mem[0:`PAT_NUM-1];
reg  [127:0]  f1_mem [0:`F1_NUM-1];
reg  [127:0]  f2_mem [0:`F1_NUM-1];
reg  [127:0]  f3_mem [0:`F1_NUM-1];
reg  [127:0]  f4_mem [0:`F4_NUM-1];
reg  [127:0]  f5_mem [0:`F5_NUM-1];
reg  [127:0]  f6_mem [0:`F6_NUM-1];
reg  [127:0]  f7_mem [0:`F7_NUM-1];
reg  [127:0]  in_tmp;
reg  [127:0]  out_tmp;
integer       i, j, x, in_h, in_l, out_h, out_l, pass, err, err_a;
reg           over, over1, over2;



IOTDF u_IOTDF( .clk        (clk        ),
               .rst        (rst        ),
               .in_en      (in_en      ), 
               .iot_in     (iot_in     ),
               .fn_sel     (fn_sel     ),
               .busy       (busy       ), 
               .valid      (valid      ), 
               .iot_out    (iot_out    )
             );

/*
`ifdef F4    
               .low        (128'h6FFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF),
               .high       (128'hAFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF),
`elsif F5    
               .low        (128'h7FFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF),
               .high       (128'hBFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF),
`endif
*/
              
`ifdef SDF
   initial       $sdf_annotate(`SDFFILE, u_IOTDF );
`endif

   initial	 $readmemh ("pattern1.dat", pat_mem);

`ifdef F2
   initial begin $readmemh ("f2.dat",  f2_mem); fn_sel=3'd2;  end
`elsif F3
   initial begin $readmemh ("f3.dat",  f3_mem); fn_sel=3'd3;  end
`elsif F4
   initial begin $readmemh ("f4.dat",  f4_mem); fn_sel=3'd4;  end
`elsif F5
   initial begin $readmemh ("f5.dat",  f5_mem); fn_sel=3'd5;  end
`elsif F6
   initial begin $readmemh ("f6.dat",  f6_mem); fn_sel=3'd6;  end
`elsif F7
   initial begin $readmemh ("f7.dat",  f7_mem); fn_sel=3'd7;  end
`else //F1
   initial begin $readmemh ("f1.dat",  f1_mem); fn_sel=3'd1;  end
`endif


initial begin
   clk           = 1'b0;   
   rst           = 1'b0;
   in_en         = 1'b0;   
   i             = 0;
   j             = 0;
   x             = 0;
   in_h          = 0;
   in_l          = 0;
   out_h         = 0;
   out_l         = 0;
   pass          = 0;
   err           = 0;
   err_a         = 0;
   over          = 0;
   over1         = 0;
   over2         = 0;
end

always begin #(`CYCLE/2)  clk = ~clk; end


initial begin
//$dumpfile("IOTDF.vcd");
//$dumpvars;
`ifdef F2
$fsdbDumpfile("IOTDF_F2.fsdb");
`elsif F3
$fsdbDumpfile("IOTDF_F3.fsdb");
`elsif F4
$fsdbDumpfile("IOTDF_F4.fsdb");
`elsif F5
$fsdbDumpfile("IOTDF_F5.fsdb");
`elsif F6
$fsdbDumpfile("IOTDF_F6.fsdb");
`elsif F7
$fsdbDumpfile("IOTDF_F7.fsdb");
`else
$fsdbDumpfile("IOTDF_F1.fsdb");
`endif
$fsdbDumpvars;
$fsdbDumpMDA;
end

initial begin
   @(posedge clk)  #`DEL  rst = 1'b1;
   #`CYCLE                rst = 1'b0;

    $display("-----------------------------------------------------\n");  
    $display("Start to Send IOT Data & Compare ...");       
    $display("\n");       
   @(posedge clk)  ;
    while (i < `PAT_NUM) begin
      if(!busy)begin     
         in_tmp   = pat_mem[i];
         in_h=128-(j*8+1);
         in_l=128-(j+1)*8;

         #`DEL;
         iot_in   =   in_tmp[in_h -: 8];
         in_en    =   1'b1;  

         if(j<15)     j=j+1;
         else begin
                      j=0;
                      i=i+1;              
         end
      end
      else begin
         #`DEL;
         iot_in   = 8'h0;
         in_en    = 1'b0;  
      end
      @(posedge clk);  
    end
    if(busy)begin
	#`DEL;
        iot_in   = 8'h0;          
    	in_en    = 1'b0;
    end 
    over1 = 1; 
end


always @(posedge clk)begin
   if(valid)begin        
      `ifdef F2
         out_tmp=f2_mem[x];
      `elsif F3
         out_tmp=f3_mem[x];
      `elsif F4
         out_tmp=f4_mem[x];
      `elsif F5
         out_tmp=f5_mem[x];
      `elsif F6
         out_tmp=f6_mem[x];
      `elsif F7
         out_tmp=f7_mem[x];
      `else //F1
         out_tmp=f1_mem[x];
      `endif


      if(iot_out !== out_tmp)begin
         $display("P%02d:  iot_out=%032h  != expect %032h", x, iot_out, out_tmp);
         err = err + 1 ;  
      end
      else begin
         $display("P%02d:  ** Correct!! ** ", x);
         pass = pass + 1;
      end


         x = x+1;      

      
     `ifdef F4
      if(x >  `F4_NUM-1)   over2=1; 
     `elsif F5
      if(x >  `F5_NUM-1)   over2=1; 
     `elsif F6
      if(x >  `F6_NUM-1)   over2=1; 
     `elsif F7
      if(x >  `F7_NUM-1)   over2=1; 
     `else  //F1 ~ F3
      if(x >  `F1_NUM-1)   over2=1; 
     `endif

   end                                                                        
end

always @(*)begin
   over = over1 && over2;
end

initial begin
      @(posedge over)      
      if((over) && (pass !== 'd0) ) begin
         $display("\n-----------------------------------------------------\n");
         if (err == 0)  begin
            $display("Congratulations! All data have been generated successfully!\n");
            $display("-------------------------PASS------------------------\n");
         end
         else begin
            $display("Final Simulation Result as below: \n");         
            $display("-----------------------------------------------------\n");
            $display("Pass:   %3d \n", pass);
            $display("Error:  %3d \n", err);
            $display("-----------------------------------------------------\n");
         end
      end
      #(`CYCLE/2); $finish;
end
   

   
endmodule



