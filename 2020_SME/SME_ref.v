module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;



reg match;
reg [4:0] match_index;
reg valid;

reg [2:0] current_state;
reg [2:0] next_state;

reg [255:0] stringData; //8bit 32char //try reg[7:0] string[31:0];
reg [63:0] pattern; //8bit 8char

reg [5:0] stringCounter;
reg [5:0] stringNum;

reg [3:0] patternCounter;
reg matchTemp;

reg [5:0] indexNum;

reg [2:0] special_locate;
reg special;
reg match_front;
reg match_after;
reg [63:0] pattern_front,pattern_after;


//state
parameter readString = 3'd0;
parameter readPattern = 3'd1;
parameter compare = 3'd2;
parameter result = 3'd3;
parameter compare_special_front = 3'd4;
parameter compare_special_after = 3'd5;

always@(*) //write this
begin
    if(pattern[23:16] == 8'h24 ||
       pattern[31:24] == 8'h24 ||
       pattern[39:32] == 8'h24 ||
       pattern[47:40] == 8'h24 ||
       pattern[55:48] == 8'h24 ||
       pattern[63:56] == 8'h24  ) indexNum = stringNum - patternCounter + 5'd1;
    else if(special == 1'd1) indexNum = stringNum - special_locate - 5'd1;
    else indexNum = stringNum - patternCounter;
end 
reg [63:0]stringBuffer;


always@(posedge clk or posedge reset)
begin
    if(reset) current_state <= readString;
    else current_state <= next_state;
end

always@(*)
begin
    case(current_state)
    readString:
    begin
        if(isstring == 1'd1) next_state = readString;
        else next_state = readPattern;
    end
    readPattern:
    begin
        if(ispattern == 1'd1) next_state = readPattern;
        else if(special == 1'd1 && special_locate == 3'd0) next_state = compare_special_after;
        else if(special == 1'd1) next_state = compare_special_front;
        else next_state = compare;
    end
    compare:
    begin
        if( (match_index == indexNum) || (matchTemp == 1'd1) ) next_state = result;
        else next_state = compare;
    end
    compare_special_front:
    begin
        if(match_front == 1'd1) next_state = compare_special_after;
        else if( match_index == indexNum ) next_state = result;
        else next_state = compare_special_front;
    end
    compare_special_after:
    begin
        if( (match_index == stringNum - patternCounter + special_locate + 3'd2) || (match_after == 1'd1) ) next_state = result;
        else next_state = compare_special_after;
    end
    result:
    begin
        if(isstring == 1'd1) next_state = readString;
        else if(ispattern == 1'd1) next_state = readPattern;
        else next_state = result;
    end
    default: next_state = readString;
    endcase
end

//valid
always@(posedge clk or posedge reset)
begin
    if(reset) valid <= 1'd0;
    else if(next_state == result) valid <= 1'd1;
    else valid <= 1'd0;
end


always@(match_index)
begin
    case(match_index)
    5'd0: stringBuffer = stringData[63:0];
    5'd1: stringBuffer = stringData[71:8];
    5'd2: stringBuffer = stringData[79:16];
    5'd3: stringBuffer = stringData[87:24];
    5'd4: stringBuffer = stringData[95:32];
    5'd5: stringBuffer = stringData[103:40];
    5'd6: stringBuffer = stringData[111:48];
    5'd7: stringBuffer = stringData[119:56];
    5'd8: stringBuffer = stringData[127:64];
    5'd9: stringBuffer = stringData[135:72];
    5'd10: stringBuffer = stringData[143:80];
    5'd11: stringBuffer = stringData[151:88];
    5'd12: stringBuffer = stringData[159:96];
    5'd13: stringBuffer = stringData[167:104];
    5'd14: stringBuffer = stringData[175:112];
    5'd15: stringBuffer = stringData[183:120];
    5'd16: stringBuffer = stringData[191:128];
    5'd17: stringBuffer = stringData[199:136];
    5'd18: stringBuffer = stringData[207:144];
    5'd19: stringBuffer = stringData[215:152];
    5'd20: stringBuffer = stringData[223:160];
    5'd21: stringBuffer = stringData[231:168];
    5'd22: stringBuffer = stringData[239:176];
    5'd23: stringBuffer = stringData[247:184];
    5'd24: stringBuffer = stringData[255:192];

    5'd25: stringBuffer =  {8'd0,stringData[255:200]};
    5'd26: stringBuffer =  {16'd0,stringData[255:208]};
    5'd27: stringBuffer =  {24'd0,stringData[255:216]};
    5'd28: stringBuffer =  {32'd0,stringData[255:224]};
    5'd29: stringBuffer =  {40'd0,stringData[255:232]};
    5'd30: stringBuffer =  {48'd0,stringData[255:240]};
    5'd31: stringBuffer =  {56'd0,stringData[255:248]};
    default: stringBuffer = 64'd0;
    endcase
end



reg [63:0] patternTemp;
always@(pattern or stringBuffer)
begin
   
    if(pattern[7:0] == 8'h2e) patternTemp[7:0] = stringBuffer[7:0];
    else if (pattern[7:0] == 8'h5e) patternTemp[7:0] = 8'h20; //8'h20 == space
    else patternTemp[7:0] = pattern[7:0];

    
    if(pattern[7:0] == 8'h5e && pattern[15:8] == 8'h2e && match_index == 5'd0) patternTemp[15:8] = stringBuffer[7:0];
    else if(pattern[15:8] == 8'h2e) patternTemp[15:8] = stringBuffer[15:8];  
    else patternTemp[15:8] = pattern[15:8];

    if(pattern[7:0] == 8'h5e && pattern[23:16] == 8'h2e && match_index == 5'd0) patternTemp[23:16] = stringBuffer[15:8];
    else if(pattern[23:16] == 8'h2e) patternTemp[23:16] = stringBuffer[23:16]; 
    else if(pattern[23:16] == 8'h24) patternTemp[23:16] = 8'h20;
    else patternTemp[23:16] = pattern[23:16];

    if(pattern[7:0] == 8'h5e && pattern[31:24] == 8'h2e && match_index == 5'd0) patternTemp[31:24] = stringBuffer[23:16];
    if(pattern[31:24] == 8'h2e) patternTemp[31:24] = stringBuffer[31:24];
    else if(pattern[31:24] == 8'h24) patternTemp[31:24] = 8'h20;
    else patternTemp[31:24] = pattern[31:24];

    if(pattern[7:0] == 8'h5e && pattern[39:32] == 8'h2e && match_index == 5'd0) patternTemp[39:32] = stringBuffer[31:24];
    if(pattern[39:32] == 8'h2e) patternTemp[39:32] = stringBuffer[39:32];
    else if(pattern[39:32] == 8'h24) patternTemp[39:32] = 8'h20;
    else patternTemp[39:32] = pattern[39:32];

    
    if(pattern[47:40] == 8'h2e) patternTemp[47:40] = stringBuffer[47:40];
    else if(pattern[47:40] == 8'h24) patternTemp[47:40] = 8'h20;
    else patternTemp[47:40] = pattern[47:40];

    
    if(pattern[55:48] == 8'h2e) patternTemp[55:48] = stringBuffer[55:48];
    else if(pattern[55:48] == 8'h24) patternTemp[55:48] = 8'h20;
    else patternTemp[55:48] = pattern[55:48];

    if(pattern[63:56] == 8'h2e) patternTemp[63:56] = stringBuffer[63:56];
    else if(pattern[63:56] == 8'h24) patternTemp[63:56] = 8'h20;
    else patternTemp[63:56] = pattern[63:56];
    
    
    
end

reg [63:0] patternTempAfter;
always@(pattern or stringBuffer)
begin
   
    if(pattern_after[7:0] == 8'h2e) patternTempAfter[7:0] = stringBuffer[7:0];
    else if (pattern_after[7:0] == 8'h5e) patternTempAfter[7:0] = 8'h20; //8'h20 == space
    else patternTempAfter[7:0] = pattern_after[7:0];

       
    if(pattern_after[15:8] == 8'h2e) patternTempAfter[15:8] = stringBuffer[15:8];  
    else patternTempAfter[15:8] = pattern_after[15:8];

    
    if(pattern_after[23:16] == 8'h2e) patternTempAfter[23:16] = stringBuffer[23:16];
    else if(pattern_after[23:16] == 8'h24) patternTempAfter[23:16] = 8'h20;
    else patternTempAfter[23:16] = pattern_after[23:16];

    
    if(pattern_after[31:24] == 8'h2e) patternTempAfter[31:24] = stringBuffer[31:24];
    else if(pattern_after[31:24] == 8'h24) patternTempAfter[31:24] = 8'h20;
    else patternTempAfter[31:24] = pattern_after[31:24];

    
    if(pattern_after[39:32] == 8'h2e) patternTempAfter[39:32] = stringBuffer[39:32];
    else if(pattern_after[39:32] == 8'h24) patternTempAfter[39:32] = 8'h20;
    else patternTempAfter[39:32] = pattern_after[39:32];

    
    if(pattern_after[47:40] == 8'h2e) patternTempAfter[47:40] = stringBuffer[47:40];
    else if(pattern_after[47:40] == 8'h24) patternTempAfter[47:40] = 8'h20;
    else patternTempAfter[47:40] = pattern_after[47:40];

    
    if(pattern_after[55:48] == 8'h2e) patternTempAfter[55:48] = stringBuffer[55:48];
    else if(pattern_after[55:48] == 8'h24) patternTempAfter[55:48] = 8'h20;
    else patternTempAfter[55:48] = pattern_after[55:48];

    if(pattern_after[63:56] == 8'h2e) patternTempAfter[63:56] = stringBuffer[63:56];
    else if(pattern_after[63:56] == 8'h24) patternTempAfter[63:56] = 8'h20;
    else patternTempAfter[63:56] = pattern_after[63:56];
end


//match logic 
always@(*)
begin
    if(current_state == compare)
    begin
        if(match_index == 5'd0 && pattern[7:0] == 8'h5e)
        begin
            case(patternCounter)
            4'd2:
            begin
                if(patternTemp[15:8] == stringBuffer[7:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
            4'd3: 
            begin
                
                if(patternTemp[23:8] == stringBuffer[15:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
            4'd4:
            begin
                if(patternTemp[31:8] == stringBuffer[23:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end 
            4'd5:
            begin
                if(patternTemp[39:8] == stringBuffer[31:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end 
            4'd6:
            begin
                if(patternTemp[47:8] == stringBuffer[39:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
            4'd7:
            begin
                if(patternTemp[55:8] == stringBuffer[47:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end 
            4'd8:
            begin
                if(patternTemp[63:8] == stringBuffer[55:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end 
            default: matchTemp = 1'd0;
            endcase  
        end
        else if(match_index == indexNum)
        begin
            case(patternCounter)
            4'd3:
            begin
                if( pattern[23:16] == 8'h24 && patternTemp[15:0] == stringBuffer[15:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0; 
            end
            4'd4:
            begin
                if( pattern[31:24] == 8'h24 && patternTemp[23:0] == stringBuffer[23:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0; 
            end
            4'd5:
            begin
                if( pattern[39:32] == 8'h24 && patternTemp[31:0] == stringBuffer[31:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0; 
            end
            4'd6:
            begin
                if( pattern[47:40] == 8'h24 && patternTemp[39:0] == stringBuffer[39:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0; 
            end
            4'd7:
            begin
                if( pattern[55:48] == 8'h24 && patternTemp[47:0] == stringBuffer[47:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0; 
            end
            4'd8:
            begin
                if( pattern[63:56] == 8'h24 && patternTemp[55:0] == stringBuffer[55:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0; 
            end
            default: matchTemp = 1'd0;
            endcase
        end
        else
        begin
            case(patternCounter)
            4'd1: 
            begin
                if(patternTemp[7:0] == stringBuffer[ 7:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;  
            end
            
            4'd2:
            begin
                if(patternTemp[15:0] == stringBuffer[15:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end 
            
            4'd3: 
            begin
                if(patternTemp[23:0] == stringBuffer[23:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
            
            4'd4: 
            begin
                if(patternTemp[31:0] == stringBuffer[31:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
            
            4'd5: 
            begin
                if(patternTemp[39:0] == stringBuffer[39:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
           
            4'd6: 
            begin
                if(patternTemp[47:0] == stringBuffer[47:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
            
            4'd7: 
            begin
                if(patternTemp[55:0] == stringBuffer[55:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
            
            4'd8: 
            begin
                if(patternTemp[63:0] == stringBuffer[63:0]) matchTemp = 1'd1;
                else matchTemp = 1'd0;
            end
            default: matchTemp = 1'd0;
            endcase
        end
    end
    else matchTemp = 1'd0;
end

//match_front
always@(*)
begin
    if(current_state == compare_special_front)
    begin
        if(match_index == 5'd0 && pattern[7:0] == 8'h5e)
        begin
            case(special_locate)
            4'd3: 
            begin
                if(patternTemp[23:8] == stringBuffer[15:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end
            4'd4:
            begin
                if(patternTemp[31:8] == stringBuffer[23:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end 
            4'd5:
            begin
                if(patternTemp[39:8] == stringBuffer[31:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end 
            4'd6:
            begin
                if(patternTemp[47:8] == stringBuffer[39:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end
            4'd7:
            begin
                if(patternTemp[55:8] == stringBuffer[47:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end 
            4'd8:
            begin
                if(patternTemp[63:8] == stringBuffer[55:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end 
            default: match_front = 1'd0;
            endcase  
        end
        else if(match_index == indexNum)
        begin
            case(special_locate)
            4'd3:
            begin
                if( pattern[23:16] == 8'h24 && patternTemp[15:0] == stringBuffer[15:0]) match_front = 1'd1;
                else match_front = 1'd0; 
            end
            4'd4:
            begin
                if( pattern[31:24] == 8'h24 && patternTemp[23:0] == stringBuffer[23:0]) match_front = 1'd1;
                else match_front = 1'd0; 
            end
            4'd5:
            begin
                if( pattern[39:32] == 8'h24 && patternTemp[31:0] == stringBuffer[31:0]) match_front = 1'd1;
                else match_front = 1'd0; 
            end
            4'd6:
            begin
                if( pattern[47:40] == 8'h24 && patternTemp[39:0] == stringBuffer[39:0]) match_front = 1'd1;
                else match_front = 1'd0; 
            end
            4'd7:
            begin
                if( pattern[55:48] == 8'h24 && patternTemp[47:0] == stringBuffer[47:0]) match_front = 1'd1;
                else match_front = 1'd0; 
            end
            4'd8:
            begin
                if( pattern[63:56] == 8'h24 && patternTemp[55:0] == stringBuffer[55:0]) match_front = 1'd1;
                else match_front = 1'd0; 
            end
            default: match_front = 1'd0;
            endcase
        end
        else
        begin
            case(special_locate)
            4'd1: 
            begin
                if(patternTemp[7:0] == stringBuffer[ 7:0]) match_front = 1'd1;
                else match_front = 1'd0;  
            end
            
            4'd2:
            begin
                if(patternTemp[15:0] == stringBuffer[15:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end 
            
            4'd3: 
            begin
                if(patternTemp[23:0] == stringBuffer[23:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end
            
            4'd4: 
            begin
                if(patternTemp[31:0] == stringBuffer[31:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end
            
            4'd5: 
            begin
                if(patternTemp[39:0] == stringBuffer[39:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end
           
            4'd6: 
            begin
                if(patternTemp[47:0] == stringBuffer[47:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end
            
            4'd7: 
            begin
                if(patternTemp[55:0] == stringBuffer[55:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end
            
            4'd8: 
            begin
                if(patternTemp[63:0] == stringBuffer[63:0]) match_front = 1'd1;
                else match_front = 1'd0;
            end
            default: match_front = 1'd0;
            endcase
        end
    end
    else match_front = 1'd0;
end

//match_after
always@(*)
begin
    if(current_state == compare_special_after)
    begin
        if(match_index == indexNum + 3'd2)
        begin
            case(patternCounter - special_locate - 3'd1)
            4'd1:
            begin
                if(patternTempAfter[7:0] == stringBuffer[ 7:0]) match_after = 1'd1;
                else match_after = 1'd0;  
            end
            4'd2:
            begin
                if(patternTempAfter[15:0] == stringBuffer[15:0]) match_after = 1'd1;
                else match_after = 1'd0;
            end
            4'd3:
            begin
                if( pattern_after[23:16] == 8'h24 && patternTempAfter[15:0] == stringBuffer[15:0]) match_after = 1'd1;
                else  if(patternTempAfter[23:0] == stringBuffer[23:0]) match_after = 1'd1;
                else match_after = 1'd0; 
            end
            4'd4:
            begin
                if( pattern_after[31:24] == 8'h24 && patternTempAfter[23:0] == stringBuffer[23:0]) match_after = 1'd1;
                else if(patternTempAfter[31:0] == stringBuffer[31:0]) match_after = 1'd1;
                else match_after = 1'd0; 
            end
            4'd5:
            begin
                if( pattern_after[39:32] == 8'h24 && patternTempAfter[31:0] == stringBuffer[31:0]) match_after = 1'd1;
                else if(patternTempAfter[39:0] == stringBuffer[39:0]) match_after = 1'd1;
                else match_after = 1'd0; 
            end
            4'd6:
            begin
                if( pattern_after[47:40] == 8'h24 && patternTempAfter[39:0] == stringBuffer[39:0]) match_after = 1'd1;
                else if(patternTempAfter[47:0] == stringBuffer[47:0]) match_after = 1'd1;
                else match_after = 1'd0; 
            end
            4'd7:
            begin
                if( pattern_after[55:48] == 8'h24 && patternTempAfter[47:0] == stringBuffer[47:0]) match_after = 1'd1;
                else if(patternTempAfter[55:0] == stringBuffer[55:0]) match_after = 1'd1;
                else match_after = 1'd0; 
            end
            4'd8:
            begin
                if( pattern_after[63:56] == 8'h24 && patternTempAfter[55:0] == stringBuffer[55:0]) match_after = 1'd1;
                else if(patternTempAfter[63:0] == stringBuffer[63:0]) match_after = 1'd1;
                else match_after = 1'd0; 
            end
            default: match_after = 1'd0;
            endcase
        end
        else
        begin
            case(patternCounter - special_locate - 3'd1)
            4'd1: 
            begin
                if(patternTempAfter[7:0] == stringBuffer[ 7:0]) match_after = 1'd1;
                else match_after = 1'd0;  
            end
            
            4'd2:
            begin
                if(patternTempAfter[15:0] == stringBuffer[15:0]) match_after = 1'd1;
                else match_after = 1'd0;
            end 
            
            4'd3: 
            begin
                if(patternTempAfter[23:0] == stringBuffer[23:0]) match_after = 1'd1;
                else match_after = 1'd0;
            end
            
            4'd4: 
            begin
                if(patternTempAfter[31:0] == stringBuffer[31:0]) match_after = 1'd1;
                else match_after = 1'd0;
            end
            
            4'd5: 
            begin
                if(patternTempAfter[39:0] == stringBuffer[39:0]) match_after = 1'd1;
                else match_after = 1'd0;
            end
           
            4'd6: 
            begin
                if(patternTempAfter[47:0] == stringBuffer[47:0]) match_after = 1'd1;
                else match_after = 1'd0;
            end
            
            4'd7: 
            begin
                if(patternTempAfter[55:0] == stringBuffer[55:0]) match_after = 1'd1;
                else match_after = 1'd0;
            end
            
            4'd8: 
            begin
                if(patternTempAfter[63:0] == stringBuffer[63:0]) match_after = 1'd1;
                else match_after = 1'd0;
            end
            default: match_after = 1'd0;
            endcase
        end
    end
    else match_after = 1'd0;
end

//match
always@(posedge clk or posedge reset)
begin
    if(reset) match <= 1'd0;
    else if(current_state == compare_special_after && next_state == result) match <= match_after;
    else  match <= matchTemp;
end

reg [4:0] matc_indexTemp;
always@(posedge clk or posedge reset)
begin
    if(reset) matc_indexTemp <= 5'd0;
    else if(current_state == compare_special_front && next_state == compare_special_after) matc_indexTemp <= match_index;
    //else if(current_state )
end
reg [3:0] pattern_front_count;
//match_index
always@(posedge clk or posedge reset)
begin
    if(reset) match_index <= 5'd0;
    else if(current_state == compare_special_front && next_state == compare_special_after) match_index <= match_index + special_locate;
    else if(current_state == compare_special_after && next_state == result) match_index <= matc_indexTemp;
    else if(matchTemp == 1'd1 && pattern[7:0] == 8'h5e && match_index != 5'd0) match_index <= match_index + 5'd1;
    else if(current_state == compare && next_state == compare) match_index <= match_index + 5'd1;
    else if(current_state == compare_special_front ) match_index <= match_index + 5'd1;
    else if(current_state == compare_special_after && next_state == compare_special_after) match_index <= match_index + 5'd1;
    else if(current_state == readPattern) match_index <= 5'd0;
end

//string

always@(posedge clk or posedge reset)
begin
    if(reset) stringData <= 256'd0;
    else if(next_state == readString)
    begin
        case(stringCounter)
        5'd0: stringData[7:0] <= chardata;
        5'd1: stringData[15:8] <= chardata;    
        5'd2: stringData[23:16] <= chardata;   
        5'd3: stringData[31:24] <= chardata;   
        5'd4: stringData[39:32] <= chardata;   
        5'd5: stringData[47:40] <= chardata;   
        5'd6: stringData[55:48] <= chardata;   
        5'd7: stringData[63:56] <= chardata;   
        5'd8: stringData[71:64] <= chardata;   
        5'd9: stringData[79:72] <= chardata;   
        5'd10: stringData[87:80] <= chardata;  
        5'd11: stringData[95:88] <= chardata;  
        5'd12: stringData[103:96] <= chardata; 
        5'd13: stringData[111:104] <= chardata;
        5'd14: stringData[119:112] <= chardata;
        5'd15: stringData[127:120] <= chardata;
        5'd16: stringData[135:128] <= chardata;
        5'd17: stringData[143:136] <= chardata;
        5'd18: stringData[151:144] <= chardata;
        5'd19: stringData[159:152] <= chardata;
        5'd20: stringData[167:160] <= chardata;
        5'd21: stringData[175:168] <= chardata;
        5'd22: stringData[183:176] <= chardata;
        5'd23: stringData[191:184] <= chardata;
        5'd24: stringData[199:192] <= chardata;
        5'd25: stringData[207:200] <= chardata;
        5'd26: stringData[215:208] <= chardata;
        5'd27: stringData[223:216] <= chardata;
        5'd28: stringData[231:224] <= chardata;
        5'd29: stringData[239:232] <= chardata;
        5'd30: stringData[247:240] <= chardata;
        5'd31: stringData[255:248] <= chardata;
        endcase

    end
end
/*
always@(posedge clk or posedge reset)
begin
    if(reset) string <= 256'd0;
    else if(next_state == readString)
    begin
        string <= string << 8;
        //string[255:8] <= string[247:0];
        string[7:0] <= chardata;
        
        
    end
end*/

always@(*)
begin
    case(special_locate)
    3'd0: pattern_front = 64'd0;
    3'd1: pattern_front = pattern[7:0];
    3'd2: pattern_front = pattern[15:0];
    3'd3: pattern_front = pattern[23:0];
    3'd4: pattern_front = pattern[31:0];
    3'd5: pattern_front = pattern[39:0];
    3'd6: pattern_front = pattern[47:0];
    3'd7: pattern_front = pattern[55:0];
    default: pattern_front = 64'd0;
    endcase
end
always@(posedge clk or posedge reset)
begin
    if(reset) pattern_after <= 64'd0;
    else if(next_state == readPattern && special == 1'd1)
    begin
        case(patternCounter - special_locate )
        
        3'd1: pattern_after[7:0] <= chardata;
        3'd2: pattern_after[15:8] <= chardata;
        3'd3: pattern_after[23:16] <= chardata;
        3'd4: pattern_after[31:24] <= chardata;
        3'd5: pattern_after[39:32] <= chardata;
        3'd6: pattern_after[47:40] <= chardata;
        3'd7: pattern_after[55:48] <= chardata;
        endcase
        
    end
    else if(next_state == result)
    begin
        pattern_after <= 64'd0;
    end
end

//pattern
always@(posedge clk or posedge reset)
begin
    if(reset) pattern <= 64'd0;
    else if(next_state == readPattern && chardata != 8'h2A)
    begin
        case(patternCounter)
        3'd0: pattern[7:0] <= chardata;
        3'd1: pattern[15:8] <= chardata;
        3'd2: pattern[23:16] <= chardata;
        3'd3: pattern[31:24] <= chardata;
        3'd4: pattern[39:32] <= chardata;
        3'd5: pattern[47:40] <= chardata;
        3'd6: pattern[55:48] <= chardata;
        3'd7: pattern[63:56] <= chardata;
        endcase
    end
    else if(current_state == result) pattern <= 64'd0;
end

//special_locate
always@(posedge clk or posedge reset)
begin
    if(reset) 
    begin
        special_locate <= 3'd0;
        special <= 1'd0;
    end
    else if(next_state == readPattern && chardata == 8'h2A)
    begin
        special_locate <= patternCounter;
        special <= 1'd1;
    end
    else if(next_state == result) 
    begin
        special <= 1'd0;
        special_locate <= 3'd0;
    end
end


//stringCounter
always@(posedge clk or posedge reset)
begin
    if(reset) stringCounter <= 5'd0;
    else if(isstring == 1'd1) stringCounter <= stringCounter + 5'd1;
    else if(current_state == readString && next_state == readPattern) 
    begin
        stringCounter <= 5'd0;
        stringNum <= stringCounter;
    end
end

//patternCounter
always@(posedge clk or posedge reset)
begin
    if(reset) patternCounter <= 4'd0;
    else if(ispattern == 1'd1) patternCounter <= patternCounter + 4'd1;
    else if(next_state == result) patternCounter <= 4'd0;
end

endmodule