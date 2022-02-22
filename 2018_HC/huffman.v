module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, M2, M3, M4, M5, M6);

input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output CNT_valid;
output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output code_valid;
output [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output [7:0] M1, M2, M3, M4, M5, M6;
//================================================================  
//================================================================
//----------------------Wires/Registers defined-------------------
//================================================================  
 
reg [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
reg CNT_valid, code_valid;
reg [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
reg [7:0] M1, M2, M3, M4, M5, M6;

//================================================================
//------------------------Self defined--------------------------
//================================================================
reg [3:0] state, nx_state;
reg [4:0] counter;
reg [7:0] CNT[0:5];
reg [2:0] idx[0:5];
reg [2:0] jdx;
wire top; 

//================================================================
//  integer / genvar / parameters
//================================================================
parameter IDLE = 4'd0, BEFORE_IN = 4'd1, GRAY_IN = 4'd2, CNTOUT = 4'd3, INIT = 4'd4, C1_COMB = 4'd5, C1_REORDER = 4'd6, C2_COMB = 4'd7, C2_REORDER = 4'd8, C3_COMB = 4'd9, C3_REORDER = 4'd10, C4_COMB = 4'd11, C4_REORDER = 4'd12,  SPLIT_C4 = 4'd13;

//================================================================
//---------------------------design-----------------------------
//================================================================

//current state logic
always@( posedge clk or posedge reset )
begin
	if( reset ) state <= IDLE;	
	else state <= nx_state;
end

//next state logic
always@( * )
begin
	case( state )
		IDLE: 		nx_state = BEFORE_IN;
		BEFORE_IN: 	nx_state = GRAY_IN; // delay one clock
		GRAY_IN: 	nx_state = ( !gray_valid )? CNTOUT : GRAY_IN ;
		CNTOUT: 	nx_state = INIT;
		INIT: 		nx_state = ( counter == 5'd6 )? C1_COMB : INIT ;
		C1_COMB: 	nx_state = C1_REORDER;
		C1_REORDER: nx_state = C2_COMB;
		C2_COMB: 	nx_state = C2_REORDER;
		C2_REORDER: nx_state = C3_COMB;
		C3_COMB: 	nx_state = C3_REORDER;
		C3_REORDER: nx_state = C4_COMB;
		C4_COMB: 	nx_state = C4_REORDER;
		C4_REORDER: nx_state = SPLIT_C4;
		SPLIT_C4: begin
		end
		default: nx_state = IDLE;
	endcase
end

// CNT1~CNT6
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		CNT1 <= 8'd0; CNT2 <= 8'd0;	CNT3 <= 8'd0; CNT4 <= 8'd0;	CNT5 <= 8'd0; CNT6 <= 8'd0;
	end
	else if( gray_valid )
	begin
		case( gray_data )
		8'h1: CNT1 <= CNT1 + 8'd1;
		8'h2: CNT2 <= CNT2 + 8'd1;
		8'h3: CNT3 <= CNT3 + 8'd1;
		8'h4: CNT4 <= CNT4 + 8'd1;
		8'h5: CNT5 <= CNT5 + 8'd1;
		8'h6: CNT6 <= CNT6 + 8'd1;
		endcase
	end
end

//CNT_valid
always@( posedge clk or posedge reset )
begin
	if( reset ) CNT_valid <= 1'd0;
	else if( state == CNTOUT ) CNT_valid <= 1'd1;
	else CNT_valid <= 1'd0;
end

//counter
always@( posedge clk or posedge reset )
begin
	if( reset ) counter <= 5'd0;
	else if( state == INIT ) counter <= counter + 5'd1;
	else counter <= 5'd0;
end


//CNT  
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		CNT[0] <= 8'd0; CNT[1] <= 8'd0; CNT[2] <= 8'd0; CNT[3] <= 8'd0; CNT[4] <= 8'd0; CNT[5] <= 8'd0;	
	end
	else if( state == INIT && counter == 5'd0 )
	begin
		CNT[0] <= CNT1; CNT[1] <= CNT2;	CNT[2] <= CNT3; CNT[3] <= CNT4;	CNT[4] <= CNT5; CNT[5] <= CNT6;	
	end
	else if( state == INIT )
	begin
		for( jdx = 3'd0 ; jdx < 3'd5 ; jdx = jdx + 3'd1 )
		begin
			if( CNT[jdx] > CNT[jdx + 3'd1] )
			begin
				CNT[jdx] <= CNT[jdx + 3'd1];
				CNT[jdx + 3'd1] <= CNT[jdx];
			end
		end
	end
	else if( state == C1_COMB )
	begin
		CNT[0] <= CNT[0] + CNT[1];
		CNT[1] <= CNT[0] + CNT[1];
	end
	else if( state == C1_REORDER )
	begin
		if( CNT[1] > CNT[2] )
		begin
			if( CNT[1] > CNT[3] )
			begin
				if( CNT[1] > CNT[4] )
				begin
					if( CNT[1] > CNT[5] )
					begin
						CNT[0] <= CNT[2];
						CNT[1] <= CNT[3];
						CNT[2] <= CNT[4];
						CNT[3] <= CNT[5];	
						CNT[4] <= CNT[0];
						CNT[5] <= CNT[1];	
					end
					else 
					begin
						CNT[0] <= CNT[2];
						CNT[1] <= CNT[3];
						CNT[2] <= CNT[4];						
						CNT[3] <= CNT[0];
						CNT[4] <= CNT[1];
					end
				end
				else 
				begin
					CNT[0] <= CNT[2];
					CNT[1] <= CNT[3];
					CNT[2] <= CNT[0];
					CNT[3] <= CNT[1];	
				end
			end
			else 
			begin
				CNT[0] <= CNT[2];
				CNT[1] <= CNT[0];
				CNT[2] <= CNT[1];
			end
		end
	end
	else if( state == C2_COMB )
	begin
		CNT[1] <= CNT[1] + CNT[2];
		CNT[2] <= CNT[1] + CNT[2];
	end
	else if( state == C2_REORDER ) 
	begin
		if( CNT[2] > CNT[3] )
		begin
			if( CNT[2] > CNT[4] )
			begin
				if( CNT[2] > CNT[5] )
				begin
					CNT[1] <= CNT[3];
					CNT[2] <= CNT[4];
					CNT[3] <= CNT[5];
					CNT[4] <= CNT[1];
					CNT[5] <= CNT[2];
				end
				else 
				begin
					CNT[1] <= CNT[3];
					CNT[2] <= CNT[4];
					CNT[3] <= CNT[1];
					CNT[4] <= CNT[2];
				end
			end
			else 
			begin
				CNT[1] <= CNT[3];
				CNT[2] <= CNT[1];
				CNT[3] <= CNT[2];
			end
		end
	end
	else if( state == C3_COMB )
	begin
		CNT[2] <= CNT[2] + CNT[3];
		CNT[3] <= CNT[2] + CNT[3];
	end
	else if( state == C3_REORDER )
	begin
		if( CNT[3] > CNT[4] )
		begin
			if( CNT[3] > CNT[5] )
			begin
				CNT[2] <= CNT[4];
				CNT[3] <= CNT[5];
				CNT[4] <= CNT[2];
				CNT[5] <= CNT[3];
			end
			else 
			begin
				CNT[2] <= CNT[4];
				CNT[3] <= CNT[2];
				CNT[4] <= CNT[3];
			end
		end
	end
	else if( state == C4_COMB )
	begin
		CNT[3] <= CNT[3] + CNT[4];
		CNT[4] <= CNT[3] + CNT[4];	
	end
	else if( state == C4_REORDER)
	begin
		if( CNT[4] > CNT[5] )
		begin
			CNT[3] <= CNT[5];
			CNT[4] <= CNT[3];
			CNT[5] <= CNT[4];
		end
	end
end

//idx
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		idx[0] <= 3'd1; idx[1] <= 3'd2; idx[2] <= 3'd3; idx[3] <= 3'd4; idx[4] <= 3'd5; idx[5] <= 3'd6;
	end
	else if( state == INIT )
	begin
		for( jdx = 3'd0 ; jdx < 3'd5 ; jdx = jdx + 3'd1 )
		begin
			if( CNT[jdx] > CNT[jdx + 3'd1] )
			begin
				idx[jdx] <= idx[jdx + 3'd1];
				idx[jdx + 3'd1] <= idx[jdx];
			end
			else if( CNT[jdx] == CNT[jdx + 3'd1] )
			begin 
				if( idx[jdx] > idx[jdx + 3'd1] )
				begin 
					idx[jdx] <= idx[jdx + 3'd1];
					idx[jdx + 3'd1] <= idx[jdx];
				end
			end
		end
	end
	else if( state == C1_REORDER )
	begin
		if( CNT[1] > CNT[2] )
		begin
			if( CNT[1] > CNT[3] )
			begin
				if( CNT[1] > CNT[4] )
				begin
					if( CNT[1] > CNT[5] )
					begin
						idx[0] <= idx[2];
						idx[1] <= idx[3];
						idx[2] <= idx[4];
						idx[3] <= idx[5];	
						idx[4] <= idx[0];
						idx[5] <= idx[1];	
					end
					else 
					begin
						idx[0] <= idx[2];
						idx[1] <= idx[3];
						idx[2] <= idx[4];						
						idx[3] <= idx[0];
						idx[4] <= idx[1];
					end
				end
				else 
				begin
					idx[0] <= idx[2];
					idx[1] <= idx[3];
					idx[2] <= idx[0];
					idx[3] <= idx[1];	
				end
			end
			else 
			begin
				idx[0] <= idx[2];
				idx[1] <= idx[0];
				idx[2] <= idx[1];
			end
		end
	end
	else if( state == C2_REORDER )
	begin
		if( CNT[2] > CNT[3] )
		begin
			if( CNT[2] > CNT[4] )
			begin
				if( CNT[2] > CNT[5] )
				begin
					idx[1] <= idx[3];
					idx[2] <= idx[4];
					idx[3] <= idx[5];
					idx[4] <= idx[1];
					idx[5] <= idx[2];
				end
				else 
				begin
					idx[1] <= idx[3];
					idx[2] <= idx[4];
					idx[3] <= idx[1];
					idx[4] <= idx[2];
				end
			end
			else 
			begin
				idx[1] <= idx[3];
				idx[2] <= idx[1];
				idx[3] <= idx[2];
			end
		end
	end
	else if( state == C3_REORDER )
	begin
		if( CNT[3] > CNT[4] )
		begin
			if( CNT[3] > CNT[5] )
			begin
				idx[2] <= idx[4];
				idx[3] <= idx[5];
				idx[4] <= idx[2];
				idx[5] <= idx[3];
			end
			else 
			begin
				idx[2] <= idx[4];
				idx[3] <= idx[2];
				idx[4] <= idx[3];
			end
		end
	end
	else if( state == C4_REORDER)
	begin
		if( CNT[4] > CNT[5] )
		begin
			idx[3] <= idx[5];
			idx[4] <= idx[3];
			idx[5] <= idx[4];
		end
	end
end

assign top = ( state == C4_REORDER && CNT[4] > CNT[5] ) 1'd1:1'd0; // Huffman codding in TOP

//HC1 ~ HC6
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		HC1 <= 8'd0; HC2 <= 8'd0; HC3 <= 8'd0; HC4 <= 8'd0; HC5 <= 8'd0; HC6 <= 8'd0;
	end
	else if( state == SPLIT_C4 )
	begin
		if( top ) 
		begin
			case(idx[0])
			3'd1: HC1 <= 8'd1;
			3'd2: HC2 <= 8'd1;
			3'd3: HC3 <= 8'd1;
			3'd4: HC4 <= 8'd1;
			3'd5: HC5 <= 8'd1;
			3'd6: HC6 <= 8'd1;
			endcase
		end
		else 
		begin
			case(idx[5])
			3'd1: HC1 <= 8'd0;
			3'd2: HC2 <= 8'd0;
			3'd3: HC3 <= 8'd0;
			3'd4: HC4 <= 8'd0;
			3'd5: HC5 <= 8'd0;
			3'd6: HC6 <= 8'd0;
			endcase
		end
	end
	else if( state == SPLIT_C3 )
	begin
		if( top ) 
		begin
			case(idx[0])
			3'd1: HC1 <= 8'd1;
			3'd2: HC2 <= 8'd1;
			3'd3: HC3 <= 8'd1;
			3'd4: HC4 <= 8'd1;
			3'd5: HC5 <= 8'd1;
			3'd6: HC6 <= 8'd1;
			endcase
		end
		else 
		begin
			case(idx[5])
			3'd1: HC1 <= 8'd0;
			3'd2: HC2 <= 8'd0;
			3'd3: HC3 <= 8'd0;
			3'd4: HC4 <= 8'd0;
			3'd5: HC5 <= 8'd0;
			3'd6: HC6 <= 8'd0;
			endcase
		end
	end
end

//M1 ~ M6
always@( posedge clk or posedge reset )
begin
	if( reset )
	begin
		 M1 <= 8'd0; M2 <= 8'd0; M3 <= 8'd0; M4 <= 8'd0; M5 <= 8'd0; M6 <= 8'd0;
	end
	else 
	begin
	
	end
end


endmodule
