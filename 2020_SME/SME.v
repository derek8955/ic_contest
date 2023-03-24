module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
//================================================================
//  INPUT AND OUTPUT DECLARATION                         
//================================================================
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output reg match;
output reg[4:0] match_index;
output reg valid;

//================================================================
//  integer / genvar / parameters
//================================================================
parameter STATE_IDLE = 0, STATE_STRING = 1, STATE_PATTERN = 2, STATE_ADJUST = 3,
          STATE_PROC_NORMAL = 4, STATE_PROC_STAR = 5, STATE_OUTPUT = 6, STATE_DELAY = 7;
parameter up_pointer = 8'h5e, money = 8'h24, 
          dot = 8'h2e, star = 8'h2a, space = 8'h20;
integer i;

//================================================================
//   Wires & Registers 
//================================================================
reg [2:0] cur_state, nx_state;
reg [7:0] string[0:34], pattern[0:7]; 
reg [6:0] cntStr;
reg [2:0] cntPat;
reg haveStar, haveHead;

reg [7:0] match_arr[0:27];
reg match_w;

reg [7:0] patStar[0:7];
reg [7:0] patStar2[0:7];
reg [7:0] matchStar[0:26];
reg [2:0] star_index ;

reg [4:0] index_tmp;

//================================================================
//  INPUT
//================================================================
//// string ////
always @(posedge clk or posedge reset) begin
    if(reset) begin
        string[0] <= up_pointer;
        for(i = 1; i<34; i=i+1) string[i] <= 0;
    end
    else if(nx_state == STATE_STRING) begin
        if(chardata == space) string[cntStr] <= up_pointer;
        else string[cntStr] <= chardata;
    end
    else if(nx_state == STATE_PATTERN && cur_state == STATE_STRING) begin
        string[cntStr] <= up_pointer;
        string[cntStr+1] <= dot;
    end
end

//// pattern ////
always @(posedge clk or posedge reset) begin
    if(reset) begin
        for(i=0;i<8;i=i+1) pattern[i] <= 0;
    end
    else if(nx_state == STATE_PATTERN)  begin
        if(chardata == money) pattern[cntPat] <= up_pointer;
        else if(chardata == space) pattern[cntPat] <= up_pointer;
        else pattern[cntPat] <= chardata;
    end
    else if(nx_state == STATE_ADJUST) begin
        if(!haveStar) begin 
            for(i=0;i<8;i=i+1) pattern[i] <= (pattern[i] == 0) ? dot : pattern[i];    
        end
        else begin
            for(i=0;i<8;i=i+1) begin
                if(i <= star_index) pattern[i] <= dot;
                else if(pattern[i] == 0) pattern[i] <= dot;
            end
        end
    end
    else if(nx_state == STATE_DELAY) begin
        for(i=0;i<8;i=i+1) pattern[i] <= 0;
    end
end

always @(*) begin
    for(i=0; i<28;i=i+1) begin
        match_arr[i][0] = (string[0+i] == pattern[0] || pattern[0] == dot);
        match_arr[i][1] = (string[1+i] == pattern[1] || pattern[1] == dot);
        match_arr[i][2] = (string[2+i] == pattern[2] || pattern[2] == dot);
        match_arr[i][3] = (string[3+i] == pattern[3] || pattern[3] == dot);
        match_arr[i][4] = (string[4+i] == pattern[4] || pattern[4] == dot);
        match_arr[i][5] = (string[5+i] == pattern[5] || pattern[5] == dot);
        match_arr[i][6] = (string[6+i] == pattern[6] || pattern[6] == dot);
        match_arr[i][7] = (string[7+i] == pattern[7] || pattern[7] == dot);
    end
end

//================================================================
//  CONTROL
//================================================================
//// string_counter ////
always @(posedge clk or posedge reset) begin
    if(reset) cntStr <= 1;
    else if(nx_state == STATE_STRING) cntStr <= cntStr + 1;
    else if(nx_state == STATE_DELAY) cntStr <= 1;
end

//// pattern_counter ////
always @(posedge clk or posedge reset) begin
    if(reset) cntPat <= 0;
    else if(nx_state == STATE_PATTERN) cntPat <= cntPat + 1;
    else if(nx_state == STATE_PROC_NORMAL || nx_state == STATE_PROC_STAR) cntPat <= 0;
end

//// having star or not ////
always @(posedge clk or posedge reset) begin
    if(reset) haveStar <= 0;
    else if(nx_state == STATE_PATTERN) begin
        if(chardata == star) haveStar <= 1;
    end
    else if(nx_state == STATE_DELAY) haveStar <= 0;
end

always @(posedge clk or posedge reset) begin
    if(reset) haveHead <= 0;
    else if(nx_state == STATE_PATTERN) begin
        if(chardata == up_pointer) haveHead <= 1;
    end
    else if(nx_state == STATE_DELAY) haveHead <= 0;
end

always @(posedge clk or posedge reset) begin
    if(reset) star_index <= 0;
    else if(nx_state == STATE_PATTERN) begin
        if(chardata == star) star_index <= cntPat;
    end
end

always @(posedge clk or posedge reset) begin
    if(reset) begin
        for(i=0;i<8;i=i+1) 
            patStar[i] <= 0;
    end
    else if(nx_state == STATE_ADJUST) begin
        for(i=0;i<8;i=i+1) 
            patStar[i] <= (i < star_index) ? pattern[i] : dot;
    end
end

always @(*) begin
    for(i=0; i<27;i=i+1) begin
        matchStar[i][0] = (string[0+i] == patStar[0] || patStar[0] == dot);
        matchStar[i][1] = (string[1+i] == patStar[1] || patStar[1] == dot);
        matchStar[i][2] = (string[2+i] == patStar[2] || patStar[2] == dot);
        matchStar[i][3] = (string[3+i] == patStar[3] || patStar[3] == dot);
        matchStar[i][4] = (string[4+i] == patStar[4] || patStar[4] == dot);
        matchStar[i][5] = (string[5+i] == patStar[5] || patStar[5] == dot);
        matchStar[i][6] = (string[6+i] == patStar[6] || patStar[6] == dot);
        matchStar[i][7] = (string[7+i] == patStar[7] || patStar[7] == dot);
    end
end

reg [5:0] first_index;
always @(posedge clk  or posedge reset) begin
    if(reset) first_index <= 0;
    else if(cur_state == STATE_ADJUST) begin
        if(matchStar[0] == 8'hff)        first_index <= 0;
        else if(matchStar[1] == 8'hff)   first_index <= 1; 
        else if(matchStar[2] == 8'hff)   first_index <= 2; 
        else if(matchStar[3] == 8'hff)   first_index <= 3;
        else if(matchStar[4] == 8'hff)   first_index <= 4; 
        else if(matchStar[5] == 8'hff)   first_index <= 5;
        else if(matchStar[6] == 8'hff)   first_index <= 6;
        else if(matchStar[7] == 8'hff)   first_index <= 7;
        else if(matchStar[8] == 8'hff)   first_index <= 8;
        else if(matchStar[9] == 8'hff)   first_index <= 9;
        else if(matchStar[10] == 8'hff)  first_index <= 10;
        else if(matchStar[11] == 8'hff)  first_index <= 11;
        else if(matchStar[12] == 8'hff)  first_index <= 12;
        else if(matchStar[13] == 8'hff)  first_index <= 13;
        else if(matchStar[14] == 8'hff)  first_index <= 14; 
        else if(matchStar[15] == 8'hff)  first_index <= 15; 
        else if(matchStar[16] == 8'hff)  first_index <= 16; 
        else if(matchStar[17] == 8'hff)  first_index <= 17;
        else if(matchStar[18] == 8'hff)  first_index <= 18; 
        else if(matchStar[19] == 8'hff)  first_index <= 19;
        else if(matchStar[20] == 8'hff)  first_index <= 20; 
        else if(matchStar[21] == 8'hff)  first_index <= 21;
        else if(matchStar[22] == 8'hff)  first_index <= 22;
        else if(matchStar[23] == 8'hff)  first_index <= 23;
        else if(matchStar[24] == 8'hff)  first_index <= 24; 
        else if(matchStar[25] == 8'hff)  first_index <= 25; 
        else if(matchStar[26] == 8'hff)  first_index <= 26; 
        else first_index <= 27;
    end
end

//================================================================
//  OUTPUT
//================================================================
//// valid ////
always @(posedge clk or posedge reset) begin
    if(reset) valid <= 0;
    else if(cur_state == STATE_OUTPUT) valid <= 1;
    else if(cur_state == STATE_DELAY) valid <= 0;
end

//// match ////
always @(posedge clk or posedge reset) begin
    if(reset) match <= 0;
    else if(cur_state == STATE_OUTPUT) begin
        if(!haveStar) match <= match_w;
        else begin
            if(first_index == 27) match <= 0;
            else if(first_index > index_tmp+1) match <= 0;
            else match <= match_w;
        end
    end
end

//// match_index ////

always @(*) begin
    if(!haveStar) begin
        if(match_arr[0] == 8'hff) begin
            index_tmp = 0; match_w = 1;
        end
        else if(match_arr[1] == 8'hff)  begin
            index_tmp = 1; match_w = 1;
        end
        else if(match_arr[2] == 8'hff)  begin
            index_tmp = 2; match_w = 1;
        end
        else if(match_arr[3] == 8'hff)  begin
            index_tmp = 3; match_w = 1;
        end
        else if(match_arr[4] == 8'hff)  begin
            index_tmp = 4; match_w = 1;
        end
        else if(match_arr[5] == 8'hff)  begin
            index_tmp = 5; match_w = 1;
        end
        else if(match_arr[6] == 8'hff)  begin
            index_tmp = 6; match_w = 1;
        end
        else if(match_arr[7] == 8'hff)  begin
            index_tmp = 7; match_w = 1;
        end
        else if(match_arr[8] == 8'hff)  begin
            index_tmp = 8; match_w = 1;
        end
        else if(match_arr[9] == 8'hff)  begin
            index_tmp = 9; match_w = 1;
        end
        else if(match_arr[10] == 8'hff)  begin
            index_tmp = 10; match_w = 1;
        end
        else if(match_arr[11] == 8'hff)  begin
            index_tmp = 11; match_w = 1;
        end
        else if(match_arr[12] == 8'hff)  begin
            index_tmp = 12; match_w = 1;
        end
        else if(match_arr[13] == 8'hff)  begin
            index_tmp = 13; match_w = 1;
        end
        else if(match_arr[14] == 8'hff)  begin
            index_tmp = 14; match_w = 1;
        end
        else if(match_arr[15] == 8'hff)  begin
            index_tmp = 15; match_w = 1;
        end
        else if(match_arr[16] == 8'hff)  begin
            index_tmp = 16; match_w = 1;
        end
        else if(match_arr[17] == 8'hff)  begin
            index_tmp = 17; match_w = 1;
        end
        else if(match_arr[18] == 8'hff)  begin
            index_tmp = 18; match_w = 1;
        end
        else if(match_arr[19] == 8'hff)  begin
            index_tmp = 19; match_w = 1;
        end
        else if(match_arr[20] == 8'hff)  begin
            index_tmp = 20; match_w = 1;
        end
        else if(match_arr[21] == 8'hff)  begin
            index_tmp = 21; match_w = 1;
        end
        else if(match_arr[22] == 8'hff)  begin
            index_tmp = 22; match_w = 1;
        end
        else if(match_arr[23] == 8'hff)  begin
            index_tmp = 23; match_w = 1;
        end
        else if(match_arr[24] == 8'hff)  begin
            index_tmp = 24; match_w = 1;
        end
        else if(match_arr[25] == 8'hff)  begin
            index_tmp = 25; match_w = 1;
        end
        else if(match_arr[26] == 8'hff)  begin
            index_tmp = 26; match_w = 1;
        end
        else if(match_arr[27] == 8'hff)  begin
            index_tmp = 27; match_w = 1;
        end
        else begin
            index_tmp = 0; match_w = 0;
        end
    end
    else begin
        if(match_arr[27] == 8'hff) begin
            index_tmp = 27; match_w = 1;
        end
        else if(match_arr[26] == 8'hff)  begin
            index_tmp = 26; match_w = 1;
        end
        else if(match_arr[25] == 8'hff)  begin
            index_tmp = 25; match_w = 1;
        end
        else if(match_arr[24] == 8'hff)  begin
            index_tmp = 24; match_w = 1;
        end
        else if(match_arr[23] == 8'hff)  begin
            index_tmp = 23; match_w = 1;
        end
        else if(match_arr[22] == 8'hff)  begin
            index_tmp = 22; match_w = 1;
        end
        else if(match_arr[21] == 8'hff)  begin
            index_tmp = 21; match_w = 1;
        end
        else if(match_arr[20] == 8'hff)  begin
            index_tmp = 20; match_w = 1;
        end
        else if(match_arr[19] == 8'hff)  begin
            index_tmp = 19; match_w = 1;
        end
        else if(match_arr[18] == 8'hff)  begin
            index_tmp = 18; match_w = 1;
        end
        else if(match_arr[17] == 8'hff)  begin
            index_tmp = 17; match_w = 1;
        end
        else if(match_arr[16] == 8'hff)  begin
            index_tmp = 16; match_w = 1;
        end
        else if(match_arr[15] == 8'hff)  begin
            index_tmp = 15; match_w = 1;
        end
        else if(match_arr[14] == 8'hff)  begin
            index_tmp = 14; match_w = 1;
        end
        else if(match_arr[13] == 8'hff)  begin
            index_tmp = 13; match_w = 1;
        end
        else if(match_arr[12] == 8'hff)  begin
            index_tmp = 12; match_w = 1;
        end
        else if(match_arr[11] == 8'hff)  begin
            index_tmp = 11; match_w = 1;
        end
        else if(match_arr[10] == 8'hff)  begin
            index_tmp = 10; match_w = 1;
        end
        else if(match_arr[9] == 8'hff)  begin
            index_tmp = 9; match_w = 1;
        end
        else if(match_arr[8] == 8'hff)  begin
            index_tmp = 8; match_w = 1;
        end
        else if(match_arr[7] == 8'hff)  begin
            index_tmp = 7; match_w = 1;
        end
        else if(match_arr[6] == 8'hff)  begin
            index_tmp = 6; match_w = 1;
        end
        else if(match_arr[5] == 8'hff)  begin
            index_tmp = 5; match_w = 1;
        end
        else if(match_arr[4] == 8'hff)  begin
            index_tmp = 4; match_w = 1;
        end
        else if(match_arr[3] == 8'hff)  begin
            index_tmp = 3; match_w = 1;
        end
        else if(match_arr[2] == 8'hff)  begin
            index_tmp = 2; match_w = 1;
        end
        else if(match_arr[1] == 8'hff)  begin
            index_tmp = 1; match_w = 1;
        end
        else if(match_arr[0] == 8'hff)  begin
            index_tmp = 0; match_w = 1;
        end
        else begin
            index_tmp = 0; match_w = 0;
        end
    end
end

always @(posedge clk or posedge reset) begin
    if(reset) match_index <= 0;
    else if(cur_state == STATE_OUTPUT) begin
        if(!haveStar) begin
            if(pattern[0] == dot && index_tmp == 0) match_index <= index_tmp;
            else match_index <= (haveHead)? index_tmp:index_tmp-1 ;
        end
        else match_index <= first_index - 1;
    end
end

//================================================================
//  FSM
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) cur_state <= STATE_IDLE;
	else cur_state <= nx_state;
end

always @( * ) begin
	case( cur_state ) 
	STATE_IDLE:           nx_state = (isstring) ? STATE_STRING : STATE_IDLE;
	STATE_STRING:         nx_state = (ispattern) ? STATE_PATTERN : STATE_STRING;
    STATE_PATTERN:        nx_state = (!ispattern)? STATE_ADJUST : STATE_PATTERN;
    STATE_ADJUST:         nx_state = (haveStar)? STATE_PROC_STAR : STATE_PROC_NORMAL; 
    STATE_PROC_NORMAL:    nx_state = STATE_OUTPUT;
    STATE_PROC_STAR:      nx_state = STATE_OUTPUT;
    STATE_OUTPUT:         nx_state = STATE_DELAY;
    STATE_DELAY:          nx_state = (isstring) ? STATE_STRING : STATE_PATTERN;
    default:        nx_state = STATE_IDLE;
	endcase	
end


endmodule


