module JAM (
input CLK,
input RST,
output  [2:0] W,
output  [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output Valid );

//================================================================
//  integer / genvar / parameters
//================================================================
integer i;
parameter STATE_IDLE = 2'd0, STATE_SORT0 = 2'd1,
          STATE_INPUT = 2'd2, STATE_OUTPUT = 2'd3;
genvar idx;
//================================================================
//   Wires & Registers 
//================================================================
reg [1:0] cur_state, nx_state;
reg [2:0] job[0:7];
reg [3:0] cnt;
reg [9:0] costTemp;
reg [2:0]  index; //changepoint index
reg [2:0] index2[0:7];
reg [6:0]  match;
wire flag[0:7];

always @(posedge CLK or posedge RST) begin
    if(RST) begin
        for(i=0; i<7; i=i+1) match[i] <= 1;
    end
    else if( nx_state == STATE_INPUT && cnt <7 ) match[cnt] <= ( job[cnt+1] > job[cnt] );
end

always @(posedge CLK or posedge RST) begin
    if(RST) begin
        for( i=0; i<8; i=i+1 ) index2[i] <= i;
    end
    else if( nx_state == STATE_INPUT ) index2[job[cnt]] <= cnt;
end
assign flag[0] = 0; 

generate
    for( idx=1; idx<8; idx=idx+1 ) begin
        assign flag[idx] = ( index2[idx] > index && job[index2[idx]] > job[index] ) ;
    end
endgenerate


//================================================================
//  INPUT
//================================================================

//// job ///
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        for(i=0;i<8;i=i+1) job[i] <= i;
    end
    else if(cur_state == STATE_OUTPUT) begin
        if( flag[1] ) begin
            job[index] <= job[index2[1]];
            job[index2[1]] <= job[index];  
        end
        else if( flag[2] ) begin
            job[index] <= job[index2[2]];
            job[index2[2]] <= job[index];
        end
        else if( flag[3] ) begin
            job[index] <= job[index2[3]];
            job[index2[3]] <= job[index]; 
        end
        else if( flag[4] ) begin
            job[index] <= job[index2[4]];
            job[index2[4]] <= job[index];  
        end
        else if( flag[5] ) begin
            job[index] <= job[index2[5]];
            job[index2[5]] <= job[index];  
        end
        else if( flag[6] ) begin
            job[index] <= job[index2[6]];
            job[index2[6]] <= job[index]; 
        end
        else begin // flag[7]
            job[index] <= job[index2[7]];
            job[index2[7]] <= job[index];  
        end
    end
    else if(cur_state == STATE_SORT0) begin
        case(index) 
            5:  begin
                job[7] <= job[6];
                job[6] <= job[7];
            end
            4:  begin
                job[7] <= job[5];
                job[5] <= job[7];
            end
            3:  begin
                job[7] <= job[4];
                job[6] <= job[5];
                job[5] <= job[6];
                job[4] <= job[7];
            end
            2:  begin
                job[7] <= job[3];
                job[6] <= job[4];
                job[4] <= job[6];
                job[3] <= job[7];
            end 
            1:  begin
                job[7] <= job[2];
                job[6] <= job[3];
                job[5] <= job[4];
                job[4] <= job[5];
                job[3] <= job[6];
                job[2] <= job[7];
            end
            0:  begin
                job[7] <= job[1];
                job[6] <= job[2];
                job[5] <= job[3];
                job[3] <= job[5];
                job[2] <= job[6];
                job[1] <= job[7];
            end
        endcase
    end
end

//// match ////
always @( * ) begin
    if(match[6] == 1) index = 6;
    else if(match[5] == 1) index = 5;
    else if(match[4] == 1) index = 4;
    else if(match[3] == 1) index = 3;
    else if(match[2] == 1) index = 2;
    else if(match[1] == 1) index = 1;
    else index = 0;
end
 
//================================================================
//  CONTROL_SIGNAL
//================================================================
//// cnt ////
always @(posedge CLK or posedge RST) begin
    if(RST) cnt <= 0;
    else if(nx_state == STATE_INPUT)  cnt <=  cnt + 1;
    else    cnt <= 0;
end

//================================================================
//  OUTPUT_SIGNAL
//================================================================

assign W = job[cnt] ;
assign J = cnt ;

//// costTemp ////
always @(posedge CLK or posedge RST) begin
    if(RST) costTemp <= 0;
    else if(cur_state == STATE_INPUT) begin
        if( cnt == 1 ) costTemp <= Cost;
        else costTemp <= costTemp + Cost;
    end
end

//// MinCost ////
always @(posedge CLK or posedge RST) begin
    if(RST) MinCost <= 0;
    else if(cur_state == STATE_OUTPUT) begin
        if(MinCost == 0)      MinCost <= costTemp;
        else if(costTemp < MinCost) MinCost <= costTemp;
    end
end

//// MatchCount ////
always @(posedge CLK or posedge RST) begin
    if(RST) MatchCount <= 1;
    else if(cur_state == STATE_OUTPUT) begin
        if(MinCost == 0 || costTemp < MinCost)    MatchCount <= 1;
        else if(costTemp == MinCost)    MatchCount <= MatchCount + 1;
    end
end  

//// Valid ////

assign Valid = ( cur_state == STATE_IDLE && match == 0);

//================================================================
//  FSM
//================================================================
always @( posedge CLK or posedge RST ) begin
	if( RST ) cur_state <= STATE_IDLE;
	else cur_state <= nx_state;
end

always @( * ) begin
	case( cur_state ) 
	STATE_IDLE:     nx_state = STATE_INPUT;
    STATE_SORT0:    nx_state = STATE_INPUT;
	STATE_INPUT:    nx_state = (cnt == 8) ? STATE_OUTPUT : STATE_INPUT;
    STATE_OUTPUT:   nx_state = ( match == 0  ) ? STATE_IDLE : STATE_SORT0;
    default:        nx_state = STATE_IDLE;
	endcase	
end

endmodule


