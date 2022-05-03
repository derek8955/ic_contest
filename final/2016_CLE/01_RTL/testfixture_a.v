`timescale 1ns/10ps
`define CYCLE     10           	       // Modify your clock period here
`define SDFFILE   "./CLE_syn.sdf"      // Modify your sdf file name
`define EXP       "./sram_a.dat"
`define DEL       1
`include          "./rom_128x8_a.v"
`include          "./sram_1024x8.v"

module test;
reg         clk;
reg         reset;
wire [7:0]  rom_q;
wire [7:0]  sram_q;
wire [6:0]  rom_a;
wire [9:0]  sram_a;
wire [7:0]  sram_d;
wire        sram_wen;
wire        finish;

reg  [7:0]  exp_mem [0:1023];
reg  [7:0]  record  [0:1023];

integer     x, y, n, i, addr, hit, hit_ref, err, pass;
reg  [7:0]  label;
reg  [7:0]  rf[0:4];
reg         over, fid;


 rom_128x8    u_rom(
                      .Q         (rom_q     ),
                      .CLK       (clk       ),
                      .CEN       (1'b0      ),
                      .A         (rom_a     )
                   );


    CLE        u_CLE( 
                      .clk       (clk       ),
                      .reset     (reset     ), 
                      .rom_q     (rom_q     ), 
                      .rom_a     (rom_a     ), 
                      .sram_q    (sram_q    ),
                      .sram_a    (sram_a    ), 
                      .sram_d    (sram_d    ), 
                      .sram_wen  (sram_wen  ), 
                      .finish    (finish    )
                    );
         
  
  sram_1024x8 u_sram(
                       .Q        (sram_q    ),
                       .CLK      (clk       ),
                       .CEN      (1'b0      ),
                       .WEN      (sram_wen  ),
                       .A        (sram_a    ),
                       .D        (sram_d    )
                     );       
         
         
   

`ifdef SDF
   initial $sdf_annotate(`SDFFILE, u_CLE);
`endif

initial	$readmemh (`EXP, exp_mem);


initial begin
   clk           = 1'b0;
   reset         = 1'b0;
   addr          = 0;
   label         = 0;
   hit           = 0;
   hit_ref       = 0;
   x             = 0;
   y             = 0;
   n             = 1;
   err           = 0;
   pass          = 0;
   over          = 0;
   fid           = 1;
end

always begin #(`CYCLE/2) clk = ~clk; end

initial begin
//$dumpfile("CLE.vcd");
//$dumpvars;
$fsdbDumpfile("CLE.fsdb");
$fsdbDumpvars;
$fsdbDumpMDA;
end

initial begin
   @(posedge clk)  #`DEL  reset = 1'b1;
   #`CYCLE                reset = 1'b0;    
   $display("Component Labeling Engine Start ...");
   $display(".........");       
   $display(".........");
   $display(".........");
   $display("System is waiting for your finish signal ... ");
end

always @(posedge finish)begin
   if(finish)begin
      $display("In This Simulation, Your CLE Result is shown as below....");
      $display("-----------------------------------------------------\n");
      
      for (x=0; x<=31; x=x+1)begin
         for (y=0; y<=31; y=y+1)begin
            addr=x*32+y;
            $write("%2h_",u_sram.mem[addr]);
         end
         $write("\n");
      end

      $display("Your CLE Result v.s. Expect Result is shown as below....");
      $display("-----------------------------------------------------\n");
      
      while(n<=5)begin  //n = object number
      for (x=0; x<=31; x=x+1)begin
         for (y=0; y<=31; y=y+1)begin
            addr=x*32+y;    
            if(exp_mem[addr] !== 8'hx)begin
            if(exp_mem[addr] === 8'h0)begin     //background
               if(n==1)begin
                  record[addr]=(u_sram.mem[addr]===0)?8'h0:(u_sram.mem[addr]===8'hx)?8'hFD:8'hFF;               
                  err=(u_sram.mem[addr]!==0)?err+1:err;
               end
            end            
            else if(exp_mem[addr] === n)begin  //object
               if(hit===0)begin
                   hit_ref=0;
                   for(i=0;i<n;i=i+1)begin
                      if(u_sram.mem[addr]=== rf[i])  hit_ref=hit_ref+1;
                     // $display("n=%d, x=%d, y=%d, hit_ref=%d", n, x, y, hit_ref);
                   end
                   hit=(u_sram.mem[addr]===8'hx)?0:(hit_ref!==0)?0:(u_sram.mem[addr]===8'h0)?0:1;                                      
                   record[addr]=(u_sram.mem[addr]===8'hx)?8'hFC:(hit===0)?8'hFE:u_sram.mem[addr];
                   err=(hit===0)?err+1:err;
                   if(hit===1)  label=u_sram.mem[addr];
                   rf[n-1]=(hit===1)?label:8'hFF;
               end   
               else begin
                   record[addr]=(u_sram.mem[addr]=== 8'hx)?8'hFC:(u_sram.mem[addr]===label)?u_sram.mem[addr]:8'hFE;
                   err=(u_sram.mem[addr]!== label)?err+1:err;
               end                        
            end    
            end
            
            else begin               
               fid=0;
            end                           
            end                              
      end      
         n=n+1;
         hit=0;
      end

      for (x=0; x<=31; x=x+1)begin
         for (y=0; y<=31; y=y+1)begin
            addr=x*32+y;            
            case (record[addr])
              8'hFF:begin  $write("%s","XX_"); end
              8'hFE:begin  $write("%s","xx_"); end
              8'hFD:begin  $write("%s","UU_"); end
              8'hFC:begin  $write("%s","uu_"); end                  
           default:begin  $write("%2h_",record[addr]); end
            endcase            
         end
         $write("\n");
      end  
      over=1;            
   end                                                      
end


initial begin
      @(posedge over)      
      if(over === 1) begin
         $display("-----------------------------------------------------\n");
         $display("                 Simulation Summary                  \n");
         $display("-----------------------------------------------------\n");         
         if(fid==1)begin
            if (err == 0 )  begin
               $display("Congratulations! All data have been generated successfully!\n");
               $display("-------------------------PASS------------------------\n");
            end
            else begin
               $display("Fail! Some errors have been found! Please Check the log message of 'CLE Result v.s. Expect Result'\n");
               $display("-----------------------------------------------------\n");
            end
         end
         else begin
            $display("Golden File: sram_a.dat or sram_b.dat can't found! Please check these files.");
            $display("-----------------------------------------------------\n");
         end
      end
      $display("err=%4d", err);
      #(`CYCLE/2); $finish;
end
   
endmodule



