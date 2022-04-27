`timescale 1ns/10ps
`define CYCLE     10.0        	         // Modify your clock period here
`define SDFFILE   "../03_APR/ISE_pr.sdf"	 // Modify your sdf file name
`define End_CYCLE 100000000              // Modify cycle times once your design need more cycle times!
`define IN_PAT    "./in_pattern1.dat"
`define EXP       "./out_golden1.dat"

`define DEL       1
module test;
parameter IMAGE_NUM  = 32;
parameter IMAGE_SIZE = 128;

reg             clk;        
reg             reset;      
reg     [4:0]   image_in_index;      
reg     [23:0]  pixel_in;   
wire            busy;       
wire            out_valid;  
wire    [1:0]   color_index;
wire    [4:0]   image_out_index;


reg   [28:0]  image_mem   [0:IMAGE_SIZE*IMAGE_SIZE*IMAGE_NUM-1];
reg   [9:0]   exp_mem     [0:IMAGE_NUM-1];

reg   [28:0]  in_temp;
reg   [9:0]   out_temp;
integer       i, j, pass, err, out_f;
reg           over;


    ISE  ISE( 
               .clk             (clk             ), 
               .reset           (reset           ), 
               .image_in_index  (image_in_index  ), 
               .pixel_in        (pixel_in        ), 
               .busy            (busy            ), 
               .out_valid       (out_valid       ), 
               .color_index     (color_index     ), 
               .image_out_index (image_out_index )
         );
   

`ifdef SDF
   initial $sdf_annotate(`SDFFILE, ISE);
`endif

initial	$readmemh (`IN_PAT, image_mem);
initial	$readmemh (`EXP, exp_mem);


initial begin
   clk            = 1'b0;
   reset          = 1'b0;
   image_in_index = 'hz;
   pixel_in       = 'hz;
   i              = 0;
   j              = 0;
   err            = 0;
   pass           = 0;
   over           = 0;
end

always begin #(`CYCLE/2) clk = ~clk; end

initial begin
//$dumpfile("ISE.vcd");
//$dumpvars;
$fsdbDumpfile("ISE.fsdb");
$fsdbDumpvars;

   out_f = $fopen("out.dat");
   if (out_f == 0) begin
        $display("Output file open error !");
        $finish;
   end
end


initial begin
   @(posedge clk)  #`DEL  reset = 1'b1;
   #`CYCLE                reset = 1'b0;

    $display("-----------------------------------------------------\n");  
    $display("Start to Send Pixel...");       
    $display("...");       
    $display("...");
    $display("...");
    while (i < (IMAGE_NUM*IMAGE_SIZE*IMAGE_SIZE)) begin
      if(!busy)begin     
         in_temp        = image_mem[i];
         image_in_index = in_temp[28:24];  
         pixel_in       = in_temp[23:0];
         i=i+1;     
      end
      @(posedge clk); #`DEL; 
    end     
      image_in_index='hz;  pixel_in='hz;    
      $display("Send Pixel Over!");
      $display("-----------------------------------------------------\n\n");  
      $display("Start to Run Output Compare....");
      $display("-----------------------------------------------------\n");  
end


always @(posedge clk)begin
   if(out_valid)begin  
      
      out_temp=exp_mem[j];
      if((color_index !== out_temp[9:8]) || (image_out_index !== out_temp[4:0]))begin                  
         $display("Output %02d => ERROR at  color_index=%h   image_index=%h != expect color_index=%h   image_index=%h ", j, color_index, image_out_index, out_temp[9:8], out_temp[4:0]);
         err = err + 1 ;  
      end            
      else begin      
         pass = pass + 1 ;
      end   
      
      if(j==(IMAGE_NUM-1))begin     j=j;      over=1;  end
      else                begin     j=j+1;    over=0;  end
   end           
            
            
                                        
end



initial  begin
 #(`CYCLE * `End_CYCLE);
   
 $display("-----------------------------------------------------\n");
 $display("Error!!! Somethings' wrong with your code ...!\n");
 $display("Perhaps you can adjust the bigger value of End_CYCLE and then run the simulation again!");
 $display("-------------------------FAIL------------------------\n");
 $display("-----------------------------------------------------\n");
 
 $finish;
end

initial begin
      @(posedge over)      
      if((over)  && (pass !== 'd0) ) begin
         $display("-----------------------------------------------------\n");
         if (err == 0)  begin
            $display("Congratulations! All data have been generated successfully!\n");
            $display("-------------------------PASS------------------------\n");
         end
         else begin
            $display("Final Simulation Result as below: \n");         
            $display("-----------------------------------------------------\n");
            $display("Pass:   %2d \n", pass);
            $display("Error:  %2d \n", err);
            $display("-----------------------------------------------------\n");
         end
      end
      #(`CYCLE/2); $finish;
end
   
endmodule

