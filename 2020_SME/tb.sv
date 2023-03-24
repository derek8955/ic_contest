`timescale 1ns/10ps
`define CYCLE      20.0  
`define SDFFILE    "./SME_syn.sdf"
`define End_CYCLE  1000000
`define PAT        "Btestdata.txt"
module testfixture();

integer linedata;
integer char_count;
//reg [128:0] data;
string data;
string strnum;
string patnum;
string strdata;
string goldmatch_s;
string goldmatch_index_s;

reg clk = 0;
wire valid;
reg reset =0;
reg [7:0] chardata;
reg isstring=0;
reg ispattern=0;
wire match;
wire [4:0] match_index;
SME u_SME (.clk(clk),
           .reset(reset),
           .chardata(chardata),
           .isstring(isstring),
           .ispattern(ispattern),
           .valid(valid),
           .match(match),
           .match_index(match_index));

`ifdef SDF
    initial $sdf_annotate(`SDFFILE, u_SME);
`endif

always begin #(`CYCLE/2) clk = ~clk; end

initial begin
    $fsdbDumpfile("SME.fsdb");
    $fsdbDumpvars;
    $fsdbDumpMDA;
end

//initial begin
//    $dumpfile("SME.vcd");
//    $dumpvars;
//end

initial begin
    $display("----------------------");
    $display("-- Simulation Start --");
    $display("----------------------");
    @(posedge clk); #1; reset = 1'b1; 
    #(`CYCLE*2);  
    @(posedge clk); #1;   reset = 1'b0;
end

reg [22:0] cycle=0;

always @(posedge clk) begin
    cycle=cycle+1;
    if (cycle > `End_CYCLE) begin
        $display("--------------------------------------------------");
        $display("-- Failed waiting valid signal, Simulation STOP --");
        $display("--------------------------------------------------");
        $fclose(linedata);
        $finish;
    end
end

initial begin
    linedata = $fopen(`PAT,"r");
    if (linedata == 0) begin
        $display ("pattern handle null");
        $finish;
    end
end

integer strindex;
reg [7:0] goldmatch_index;
reg  goldmatch;
reg  valid_reg;
reg wait_valid;
reg  getmatch;
reg [7:0] getmatch_index;
always @(posedge clk) begin
    valid_reg = valid;
end

integer score=0;
integer allpass=1;
always @(negedge clk) begin
    if (reset) begin
        wait_valid=0;
    end
    else begin
        if (wait_valid==1 && valid ==1) begin
            wait_valid=0;
            getmatch=match;
            getmatch_index=match_index;
            //$display ("       string/pattern = %s/%s",strnum,patnum);
            if(goldmatch==1)begin
                if(getmatch == goldmatch) begin
                    score++;
                    if(getmatch_index==goldmatch_index) begin
                        score=score+2;
                        //colordisplay(cycle,goldmatch,goldmatch_index,getmatch,getmatch_index,3);
                        $display ("       cycle %2h, expect(%h,%h) , get(%h,%h) >> Pass",cycle,goldmatch,goldmatch_index,getmatch,getmatch_index);
                    end
                    else begin 
                        allpass=0;
                        //colordisplay(cycle,goldmatch,goldmatch_index,getmatch,getmatch_index,2);
                        $display ("       cycle %2h, expect(%h,%h) , get(%h,%h) >> Wrong index",cycle,goldmatch,goldmatch_index,getmatch,getmatch_index);
                    end
                end
                else begin
                    allpass=0;
                    //colordisplay(cycle,goldmatch,goldmatch_index,getmatch,getmatch_index,0);
                    $display ("       cycle %2h, expect(%h,%h) , get(%h,%h) >> Fail",cycle,goldmatch,goldmatch_index,getmatch,getmatch_index);
                end
            end
            else begin
                if(getmatch == goldmatch) begin
                    score++;
                    //colordisplay(cycle,goldmatch,goldmatch_index,getmatch,getmatch_index,3);
                    $display ("       cycle %2h, expect(%h,--) , get(%h,--) >> Pass",cycle, goldmatch,getmatch);
                end
                else begin
                    allpass=0;
                    //colordisplay(cycle,goldmatch,goldmatch_index,getmatch,getmatch_index,1);
                    $display ("       cycle %2h, expect(%h,--) , get(%h,--) >> Fail",cycle, goldmatch,getmatch);
                end
            end
        //$display ("       score = %d",score);
        end
    end
end

always @(negedge clk ) begin
    if (reset) begin
        isstring=0;
        ispattern=0;
        valid_reg=0;
    end 
    else begin
        if (strindex==strdata.len()-1) begin
            isstring=0;
            if(ispattern==1) wait_valid=1;
            ispattern=0;
        end
        if (wait_valid == 1'b0) begin
            if (strindex<strdata.len()-1) begin
                strindex=strindex+1;
                chardata = strdata.getc(strindex);
                //$display("%h %s,%h",cycle,chardata,chardata);
            end 
            else begin
                if (!$feof(linedata))begin
                    char_count = $fgets (data, linedata);
                    if (char_count !== 0) begin
                        if(data.substr(0,3) == "str:") begin
                            isstring=1; 
                            strindex=0;
                            strnum = data.substr(4,4);
                            strdata = data.substr(6,data.len()-2);
                            $display("  __________________________________________________________");
                            $display("  == String %s  \"%s\"", strnum, strdata);
                            chardata = strdata.getc(strindex);
                            //$display("%h %s,%h",cycle,chardata,chardata);
                        end 
                        else begin
                            if(data.substr(0,3) == "pat:") begin
                                ispattern=1; 
                                strindex=0;
                                patnum = data.substr(4,4);
                                goldmatch_s = data.substr(6,6);
                                goldmatch = goldmatch_s.atoi();
                                goldmatch_index_s = data.substr(8,9);
                                goldmatch_index = goldmatch_index_s.atoi();
                                strdata = data.substr(11,data.len()-2);
                                //$display("==== Pattern__%s__%b__%2d__%s", patnum, goldmatch,goldmatch_index,strdata);
                                $display("  -- Pattern %s  \"%s\"", patnum, strdata);
                                chardata = strdata.getc(strindex);
                                //$display("%h %s,%h",cycle,chardata,chardata);
                            end
                        end
                    end
                end
                else begin
                    $display("----------------------------------");
                    if(allpass == 1 && score >1)
                    $display("-- Simulation finish, ALL PASS  --");
                    else
                    $display("-- Simulation finish            --");
                    $display("-- cycle =%3d , Score =%2d       --",cycle, score);
                    $display("----------------------------------");
                    $fclose(linedata);
                    $finish;
                end
            end
        end // if wait_valid == 0
    end
end
endmodule

task colordisplay;
    input [12:0] cycle;
    input goldmatch;
    input [7:0] goldmatchindex;
    input getmatch;
    input [7:0] getmatchindex;
    input [1:0]pass; 
    begin
        $write ("       cycle %2h, expect(%h,%h) , get(",cycle,goldmatch,goldmatchindex);
        case(pass)
            2'd0: begin   // expect match , failed
                $write("%c[1;31m",27);
                $write ("%h,%h",getmatch,getmatchindex);
                $write("%c[0m",27);
                $write (") >> Fail\n");

                  end
            2'd1: begin   // expect unmatch, failed
                $write("%c[1;31m",27);
                $write ("%h",getmatch);
                $write ("%c[0m",27);
                $write (",%h) >> Fail\n",getmatchindex);

                  end
            2'd2: begin  // expect match, wrong index
                $write ("%h,",getmatch);
                $write("%c[1;31m",27);
                $write ("%h",getmatchindex);
                $write("%c[0m",27);
                $write (") >> Wrong index\n");

                  end
            2'd3: begin // both match or unmatch, passed
                $write ("%h,%h",getmatch,getmatchindex);
                $write (") >> Pass\n");

                  end
        endcase
    end
endtask
