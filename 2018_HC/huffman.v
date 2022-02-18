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
  
  
//================================================================
//------------------------Self defined--------------------------
//================================================================
reg [2:0] state, nx_state;
reg [6:0] A1, A2, A3, A4, A5, A6;
wire [2:0] idx_1, idx_2, idx_3, idx_4, idx_5, idx_6;
wire func_valid; // sorting
wire func_off;

//================================================================
//  integer / genvar / parameters
//================================================================
parameter IDLE = 3'd0, BEFORE_IN = 3'd1, GRAY_IN = 3'd2, INIT = 3'd3, COMB = 3'd4, SPLIT = 3'd5;

//================================================================
//---------------------------design-----------------------------
//================================================================

assign func_valid = (state == INIT )? 1'd1 : 1'd0 ;
Sort sort( .clk(clk), .reset(reset), .func_valid(func_valid), .func_off(func_off),					   //INPUT
		   .A1(A1), .A2(A2), .A3(A3), .A4(A4), .A5(A5), .A6(A6), 									   //INPUT
		   .idx_1(idx_1), .idx_2(idx_2), .idx_3(idx_3), .idx_4(idx_4), .idx_5(idx_5), .idx_6(idx_6) ); //OUTPUT


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
		IDLE: nx_state = BEFORE_IN;
		BEFORE_IN: nx_state = GRAY_IN; // delay one clock
		GRAY_IN: nx_state = ( !gray_valid )? INIT : GRAY_IN ;
		INIT: nx_state = ( func_off )? COMB : INIT ;
		COMB: begin end
	endcase
end

// A1~A6
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		A1 <= 7'd0;
		A2 <= 7'd0;
		A3 <= 7'd0;
		A4 <= 7'd0;
		A5 <= 7'd0;
		A6 <= 7'd0;
	end
	else if( gray_valid )
	begin
		case( gray_data )
		8'h1: A1 <= A1 + 7'd1;
		8'h2: A2 <= A2 + 7'd1;
		8'h3: A3 <= A3 + 7'd1;
		8'h4: A4 <= A4 + 7'd1;
		8'h5: A5 <= A5 + 7'd1;
		8'h6: A6 <= A6 + 7'd1;
		endcase
	end
end

endmodule

//================================================================
//---------------------------Sub Module---------------------------
//================================================================

module Sort( clk, reset, func_valid , A1, A2, A3, A4, A5, A6, func_off, idx_1, idx_2, idx_3, idx_4, idx_5, idx_6 );
input clk;
input reset;
input func_valid;
input [6:0] A1, A2, A3, A4, A5, A6;
output func_off;
output reg [2:0] idx_1, idx_2, idx_3, idx_4, idx_5, idx_6;

reg [4:0] counter;
reg [6:0] A[0:5];
reg [2:0] idx[0:5];
reg [2:0] jdx;

//counter
always@( posedge clk or posedge reset )
begin
	if( reset ) counter <= 5'd0;
	else if( func_valid ) counter <= counter + 5'd1;
end

//A  
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		A[0] <= 7'd0; A[1] <= 7'd0; A[2] <= 7'd0; A[3] <= 7'd0; A[4] <= 7'd0; A[5] <= 7'd0;	
	end
	else if( func_valid && counter == 5'd0 )
	begin
		A[0] <= A1;	A[1] <= A2;	A[2] <= A3;	A[3] <= A4;	A[4] <= A5;	A[5] <= A6;	
	end
	else if( func_valid )
	begin
		for( jdx = 3'd0 ; jdx < 3'd5 ; jdx = jdx + 3'd1 )
		begin
			if( A[jdx] > A[jdx + 3'd1] )
			begin
				A[jdx] <= A[jdx + 3'd1];
				A[jdx + 3'd1] <= A[jdx];
			end
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
	else if( func_valid )
	begin
		for( jdx = 3'd0 ; jdx < 3'd5 ; jdx = jdx + 3'd1 )
		begin
			if( A[jdx] > A[jdx + 3'd1] )
			begin
				idx[jdx] <= idx[jdx + 3'd1];
				idx[jdx + 3'd1] <= idx[jdx];
			end
			else if( A[jdx] == A[jdx + 3'd1] )
			begin 
				if( idx[jdx] > idx[jdx + 3'd1 )
				begin 
					idx[jdx] <= idx[jdx + 3'd1];
					idx[jdx + 3'd1] <= idx[jdx];
				end
			end
		end
	end
end

//idx_1
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		idx_1 <= 3'd0; idx_2 <= 3'd0; idx_3 <= 3'd0; idx_4 <= 3'd0;	idx_5 <= 3'd0; idx_6 <= 3'd0;
	end
	else if( counter == 5'd6 )
	begin
		idx_1 <= idx[0]; idx_2 <= idx[1]; idx_3 <= idx[2]; idx_4 <= idx[3]; idx_5 <= idx[4]; idx_6 <= idx[5];
	end
end	

//func_off
assign func_off = ( counter == 5'd6 )? 1'd1 : 1'd0 ;

endmodule
