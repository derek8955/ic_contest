`timescale 1ns/10ps
`define SDFFILE     "./LEDDC_syn.sdf"      // Modify your sdf file name
`define PAT         "./pattern.dat"
`define EXP         "./golden_60fps.dat"
`define DCK_Period  1300           	   //Don't Modify Period  
`define GCK_Period  4.50                   //Don't Modify Period
`define DEL         1.0


module test;
reg          DCK;
reg          GCK;
reg          DAI;
reg          DEN;
reg          Vsync;
reg          rst;
wire [15:0]  OUT;

reg          DCK_en;
reg          GCK_en;
reg  [15:0]  pat_mem [0:2047];
reg  [255:0] exp_mem [0:255];   //60fps
reg  [15:0]  in_temp;
reg  [255:0] out_temp;
reg  [255:0] pwm_temp;
integer      i, j, x, y, z, a, b, c, err;
reg          run, first, summary, over;
reg  [15:0]  pwm_counter[0:15];
reg          round;


LEDDC u_LEDDC( .DCK       (DCK       ), 
               .DAI       (DAI       ), 
               .DEN       (DEN       ),
               .GCK       (GCK       ), 
               .Vsync     (Vsync     ), 
               .rst       (rst       ),
               .mode      (1'b1      ), 
               .OUT       (OUT       )
              );    
         
         

`ifdef SDF
   initial $sdf_annotate(`SDFFILE, u_LEDDC );
`endif

initial	$readmemh (`PAT, pat_mem);
initial	$readmemh (`EXP, exp_mem);


initial begin
   DCK           = 1'b0;   
   GCK           = 1'b0;
   DEN           = 1'b0;   
   Vsync         = 1'b0;
   rst           = 1'b0;
   DCK_en        = 1'b0;
   GCK_en        = 1'b0;
   i             = 0;
   j             = 0;
   x             = 0;
   y             = 0;
   a             = 0;
   b             = 0;
   c             = 0;
   run           = 0;
   first         = 1;
   summary       = 0;
   err           = 0;
   over          = 0;
   round         = 1;
for(z=0;z<=15;z=z+1) begin
   pwm_counter[z]= 0;
end
end

always begin #(`DCK_Period/2) if(DCK_en) DCK = ~DCK; end
always begin #(`GCK_Period/2) if(GCK_en) GCK = ~GCK; end

initial begin
//$dumpfile("LEDDC.vcd");
//$dumpvars;
$fsdbDumpfile("LEDDC_60fps.fsdb");
$fsdbDumpvars;
$fsdbDumpMDA;
end



initial begin  
//reset cycle 
    #0            rst=0;
    #10           rst=1;
    #`DCK_Period  rst=0;

//start send frame data
    #(`DEL*100);
    DEN=1;    
    #(`DEL*10);
    run=1;
    DCK_en=1;

    #`DEL;

    for(j=0; j<=15; j=j+1)begin
       in_temp = pat_mem[i];
       DAI     = in_temp[j];
       @(posedge DCK)  #`DEL;
    end
    j=0; run=0;
    #(`DEL*9);
    DEN=0;

    @(posedge DCK);
    @(posedge DCK);

    #`DEL; i=1;
    while (i < 2048) begin
       if((i%512)!=0)  @(negedge DCK)  DEN=1;
       #`DEL;
       for(j=0; j<=15; j=j+1)begin
          in_temp = pat_mem[i];
          DAI     = in_temp[j];
          @(posedge DCK) #`DEL;
       end      
       j=0;
       #(`DEL*9);
       DEN=0;
              
       if(((i+1)%512 == 0) && (i != 0) && (run==0))begin       
          @(posedge DCK);
          @(posedge DCK);
          @(posedge DCK);
          @(negedge DCK)  DCK_en=0;

          #`DEL;          i=i+1;
          #(3603*`DCK_Period);   // 60fps => adjust 1/60 s  by delay  //#(16424*`DCK_Period);       

          if(i != 2048)begin
             DEN=1;    
             #(`DEL*10);
             DCK_en=1;         
             run=1;
             first=0;
          end
          else begin
             DEN=0;  
             DCK_en=1;
             DAI='hz;
             run=1;
             #22740     run=0;     //22740
             #11959349  DCK_en=0;  //11959349   //11982089 
             #4683900   over=1;    //21351211   //33333300
          end
       end
       else begin
          @(posedge DCK);
          @(posedge DCK);
          #`DEL; 
          run=0;
          i=i+1; 
       end
   
    end     
end

initial begin
   x=0; y=0; round=1;
   @(posedge run);
   #650;           GCK_en=1; 
   @(posedge GCK);
   #`DEL; Vsync=1;   

   while(1)begin  //forever run until frame is over
      if(x<32768)begin         
         @(posedge GCK)  x=x+1;
      end   
      else begin         
         if(y<31)begin
            #`DEL; Vsync=0; 
            @(posedge GCK);
            @(posedge GCK);
            @(posedge GCK);
            @(negedge GCK);
            GCK_en=0;

            #100;
            x=0;  y=y+1;    GCK_en=1;
            @(posedge GCK);
            #`DEL; Vsync=1; 
         end
         else if(round==1)begin
            #`DEL; Vsync=0; 
            @(posedge GCK);
            @(posedge GCK);
            @(posedge GCK);
            @(negedge GCK);
            GCK_en=0;

            #100;
            x=0;  y=0; round=0;   GCK_en=1;
            @(posedge GCK);
            #`DEL; Vsync=1;                      
         end
         else  begin
            #`DEL; Vsync=0; 
            @(posedge GCK);
            @(posedge GCK);
            @(posedge GCK);
            @(negedge GCK);
            GCK_en=0;

            x=0; y=0; round=1;
            @(posedge run);
            #650;           GCK_en=1; 
            @(posedge GCK);
            #`DEL; Vsync=1; 
         end
      end
   end
end




always @(posedge GCK)begin
   if(!first && Vsync == 1)begin //skip to calculate PWM counter of first round 
      for(z=0;z<=15;z=z+1) begin
         if(OUT[z]===1'b1)begin
            pwm_counter[z]= pwm_counter[z] + 1;
         end
      end      
      a=a+1;
   end

   if(a>=32768)begin
      a=0;  summary=1;
   end
   else begin
      a=a;  summary=0;
   end
end

always @(posedge summary)begin
   out_temp=exp_mem[c*32+b];
   pwm_temp={pwm_counter[0],  pwm_counter[1],  pwm_counter[2],  pwm_counter[3],
             pwm_counter[4],  pwm_counter[5],  pwm_counter[6] , pwm_counter[7],
             pwm_counter[8],  pwm_counter[9],  pwm_counter[10] ,pwm_counter[11],
             pwm_counter[12], pwm_counter[13], pwm_counter[14] ,pwm_counter[15] };

   if(pwm_temp !== out_temp)begin
      $display("ERROR @  frame_%02d   scanline_%02d: (round_%02d)", c/2, b, c%2);
      $display("Your Output: %04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h",
                pwm_counter[0],  pwm_counter[1],  pwm_counter[2],  pwm_counter[3], 
                pwm_counter[4],  pwm_counter[5],  pwm_counter[6] , pwm_counter[7], 
                pwm_counter[8],  pwm_counter[9],  pwm_counter[10] ,pwm_counter[11],
                pwm_counter[12], pwm_counter[13], pwm_counter[14] ,pwm_counter[15]);

      $display("Expect Output: %04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h_%04h\n",
                out_temp[255:240], out_temp[239:224], out_temp[223:208], out_temp[207:192],
                out_temp[191:176], out_temp[175:160], out_temp[159:144], out_temp[143:128],
                out_temp[127:112], out_temp[111:96],  out_temp[95:80],   out_temp[79:64],
                out_temp[63:48],   out_temp[47:32],   out_temp[31:16],   out_temp[15:0]);

      err = err + 1 ;  
   end    
   else begin
      $display("\nPass @  frame_%02d   scanline_%02d (round_%02d) \n", c/2, b, c%2);
   end

      
      
   for(z=0;z<=15;z=z+1) begin  //reset pwm counter
      pwm_counter[z]= 0;
   end

   if(b<31)begin
      b=b+1;
   end
   else begin
      b=0;
      c=c+1;
   end

end



initial begin
      @(posedge over)      
         if(err == 0 ) begin
            $display("\n-----------------------------------------------------\n");
            $display("Congratulations! All data have been generated successfully!\n");
            $display("-------------------------PASS------------------------\n");
         end
         else begin
            $display("\n-----------------------------------------------------\n");
            $display("Final Simulation Result as below: \n");         
            $display("-----------------------------------------------------\n");
            $display("Total number of scanline errors: %03d \n", err);
            $display("-----------------------------------------------------\n");
         end

      $finish;
end
   
endmodule



