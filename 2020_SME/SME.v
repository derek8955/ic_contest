module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;

//================================================================  
//================================================================
//----------------------Wires/Registers defined-------------------
//================================================================  
reg match;
reg [4:0] match_index;
reg valid;

//================================================================
//------------------------Self defined--------------------------
//================================================================

reg [7:0] str[0:31], pat[0:7];
reg [5:0] idx;
reg [4:0] counter_str, counter_comp_str;
reg [3:0] counter_pat, counter_comp_pat;
reg [4:0] str_idx, star_occur;
reg locate_valid;
reg [2:0] compare_valid;
wire fn_input;
reg fail;
reg valid_temp; // Delay one clk

//================================================================
//  integer / genvar / parameters
//================================================================

parameter HEAD = 8'h5E; // ^
parameter STAR = 8'h2A; // *
parameter DOT = 8'h2E; // .
parameter END = 8'h24; // $
parameter SPACE = 8'h20; // 

//================================================================
//---------------------------design-----------------------------
//================================================================

//counter_str 
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_str <= 5'd0;
	else if( isstring ) counter_str <= counter_str + 5'd1;
	else counter_str <= 5'd0;
end

//counter_pat
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_pat <= 3'd0;
	else if( valid_temp ) counter_pat <= 3'd0;
	else if( ispattern ) counter_pat <= counter_pat + 3'd1;
end

//fn_input
assign fn_input = ( isstring == 1'd0 && ispattern == 1'd0 )? 1'd1 : 1'd0 ;

//compare_valid
always@( * )
begin
	case(pat[0])
	HEAD:
	begin 
		if( counter_comp_str == 5'd0 || str[counter_comp_str-5'd1] == SPACE )
			compare_valid = (!fail&&fn_input&&counter_comp_pat != counter_pat )? 1'd1:1'd0;
		else compare_valid = 1'd0;
	end
	STAR:begin end
	DOT: compare_valid = (!fail&&fn_input&&counter_comp_pat != counter_pat)? 1'd1:1'd0;
	default:
	begin
		compare_valid = (!fail&&fn_input&&counter_comp_pat != counter_pat&&pat[0]==str[counter_comp_str])? 1'd1:1'd0;
	end
	endcase
end

//locate_valid
always@( * )
begin
	if( valid_temp ) locate_valid <= 1'd0;
	else locate_valid <= ( fn_input ) ?  !compare_valid : 1'd0;
end

//str_idx
always@( * )
begin
	if( pat[0] == HEAD || pat[0] == STAR || pat[0] == DOT ) 
	begin
		if( counter_comp_str == 5'd0 && counter_comp_pat == 3'd0 ) str_idx = 5'd0;
		else str_idx = counter_comp_str + counter_comp_pat - 1'd1;
	end	
	else str_idx = counter_comp_str + counter_comp_pat + star_occur ;
end

//counter_comp_pat
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_comp_pat <= 3'd0;
	else if( locate_valid ) counter_comp_pat <= 3'd0;
	else if( compare_valid && fail == 1'd0 ) 
	begin
		if( pat[counter_comp_pat-3'd1] == STAR && pat[counter_comp_pat]!=str[str_idx]) counter_comp_pat <= counter_comp_pat;
		else counter_comp_pat <= counter_comp_pat + 3'd1;
	end
	else counter_comp_pat <= 3'd0;
end

//counter_comp_str
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_comp_str <= 5'd0;
	else if( valid )counter_comp_str <= 5'd0;
	else if( pat[0]==str[counter_comp_str] || pat[0]==HEAD || pat[0] == DOT || pat[0] ==STAR ) // STOP counting
	begin
		if( fail || locate_valid ) counter_comp_str <= counter_comp_str + 5'd1;
		else counter_comp_str <= counter_comp_str;
	end
	else if( fn_input )counter_comp_str <= counter_comp_str + 5'd1;
end

//star_occur
always@( posedge clk or posedge reset )
begin
	if( reset ) star_occur <= 5'd0;
	else if( locate_valid ) star_occur <= 5'd0;
	else if( compare_valid && pat[counter_comp_pat-3'd1] == STAR && pat[counter_comp_pat]!=str[str_idx] ) star_occur <= star_occur + 5'd1;
end

//fail
always@( posedge clk or posedge reset )
begin
	if( reset ) fail <= 1'd0;
	else if( fail ) fail <= 1'd0;
	else if( compare_valid )
	begin
		case( pat[counter_comp_pat] ) 
		str[str_idx]: fail <= 1'd0;
		HEAD: fail <= 1'd0;		
		STAR: fail <= 1'd0;
		DOT: fail <= 1'd0;
		END:
		begin 	
			if( pat[0] == HEAD ) fail <= ( str[str_idx] == SPACE )? 1'd0 : 1'd1 ;
			else fail <= ( str[str_idx] == SPACE )? 1'd0 : 1'd1 ;
		end
		default: fail <= ( pat[counter_comp_pat-3'd1] == STAR )?1'd0 : 1'd1;
		endcase
	end
end

//str
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		for( idx = 0 ; idx < 32 ; idx = idx + 1)
			str[idx] <= 8'd0;
	end 
	else if( ispattern && counter_str != 5'd0) 
	begin
		str[counter_str] <= 8'h20;
		str[counter_str+5'd1] <= 8'd0;		
	end
	else if( isstring ) str[counter_str] <= chardata;
end

// pat
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		for( idx = 0 ; idx < 8 ; idx = idx + 1)
			pat[idx] <= 8'd0;
	end 
	else if( ispattern ) 
	begin
		if( counter_pat == 3'd0 ) 
		begin
			for( idx = 1 ; idx < 8 ; idx = idx + 1)
				pat[idx] <= 8'h0;
		end
		pat[counter_pat] <= chardata;
	end
end

//match & match_index
always@( posedge clk or posedge reset )
begin
	if( reset )	match <= 1'd0;
	else if( counter_comp_str == (6'd33 - counter_pat) ) match <= 1'd0;
	else if( fn_input && counter_comp_pat == counter_pat ) match <= !fail;
end

//match_index
always@( posedge clk or posedge reset )
begin
	if( reset ) match_index <= 5'd0;
	else if( fn_input && counter_comp_pat == counter_pat ) match_index <= counter_comp_str;
end

//valid_temp
always@( posedge clk or posedge reset )
begin
	if( reset ) valid_temp <= 1'd0;
	else if( valid_temp ) valid_temp <= 1'd0; //limit valid_temp signal to one clock cycle
	else if( counter_comp_str == (6'd33 - counter_pat) ) valid_temp <= 1'd1;
	else if( fn_input && counter_comp_pat == counter_pat && fail == 1'd0 ) valid_temp <= 1'd1;
	else valid_temp <= 1'd0;
end

//valid
always@( posedge clk or posedge reset )
begin
	if( reset ) valid <= 1'd0;
	else valid <= valid_temp;
	
end

endmodule


