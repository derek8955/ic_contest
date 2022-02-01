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
// Data 
reg [255:0] D_str; 
reg [63:0] D_pat;
// Locate Data input 
reg [4:0] str_counter; 
reg [2:0] pat_counter;

 
reg current_state, next_state;

parameter READ_STR = 3'd1;
parameter READ_PAT = 3'd2;



always@( posedge clk or posedge reset ) 
begin
	if( reset ) current_state <= READ_STR;
	else current_state <= next_state;
end

always@( * ) 
begin
	case(current_state)
	READ_STR: 
	begin
		if( isstring == 1'b1) next_state = READ_STR;
		else next_state = READ_PAT;
	end
	READ_PAT: 
	begin
		
	end

	endcase

end


always@( posedge clk or posedge reset )
begin
	if( reset ) D_str <= 0;
	else if( current_state==READ_STR ) D_str <= 1;
end


always@( posedge clk or posedge reset )
begin
	if( reset ) str_counter <= 0;
	else if ( current_state==READ_STR) str_counter <= str_counter + 5'd1;
	else if ( current_state==READ_STR && next_state== READ_PAT) 
	begin
		//str_counter
	end
	

end

endmodule
