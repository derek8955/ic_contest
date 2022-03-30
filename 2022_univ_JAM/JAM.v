module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

//================================================================
//  integer / genvar / parameters
//================================================================
parameter IDLE = 3'd0, DELAY_CLK = 3'd1, FIND_PNT = 3'd2, SORT = 3'd3, PROC = 3'd4, RESULT = 3'd5;
//================================================================
//  Wires & Registers 
//================================================================
reg [2:0] state, nx_state;
reg [2:0] n[0:7];

//================================================================
//  design
//================================================================

always@( posedge CLK or posedge RST )
begin
	if( RST ) Valid <= 1'd0;
	else if( state == RESULT ) Valid <= 1'd1;
	else Valid <= 1'd0;
end

reg [3:0] counter_RES;
reg [9:0] sum;

always@( counter_RES ) 
begin
	W = counter_RES;
	J = n[counter_RES];
end

always@( posedge CLK or posedge RST )
begin
	if( RST ) sum <= 10'd0;
	else if( state == PROC )
	begin
		sum <= sum + Cost ;
	end
	else if( state == FIND_PNT ) sum <= 10'd0;
end

always@( posedge CLK or posedge RST )
begin
	if( RST ) counter_RES <= 4'd0;
	else if( state == PROC )
	begin
		counter_RES <= counter_RES + 4'd1;
	end
	else if( state == FIND_PNT ) counter_RES <= 4'd0;
end

always@( posedge CLK or posedge RST )
begin
	if( RST ) MatchCount <= 4'd1;
	else if( state == PROC && counter_RES == 8 && MinCost != 0 )
	begin
		if( MinCost > sum ) MatchCount <= 4'd1;
		else if( MinCost == sum ) MatchCount <= MatchCount + 4'd1;
	end
end

always@( posedge CLK or posedge RST )
begin
	if( RST ) MinCost <= 10'd0;
	else if( state == PROC && counter_RES == 4'd8 )
	begin
		if( MinCost == 10'd0 ) MinCost <= sum;
		else if( MinCost > sum ) MinCost <= sum;
	end
end

reg [2:0] counter, change_point;
wire [2:0] cnt1;
assign cnt1 = counter - 3'd1;

reg find_fn, finish;

always@( posedge CLK or posedge RST )
begin
	if( RST ) 
	begin
		change_point <= 3'd0;
		find_fn <= 1'd0;
	end
	else if( nx_state == FIND_PNT ) 
	begin		
		if( n[counter] > n[cnt1] )
		begin
			change_point <= cnt1;
			find_fn <= 1'd1;
		end
	end
	else find_fn <= 1'd0;
end

always@( posedge CLK or posedge RST )
begin
	if( RST ) finish <= 1'd0;
	else if( nx_state == FIND_PNT ) 
	begin
		if( counter == 3'd0 ) finish <= 1'd1;	
	end
end

always@( posedge CLK or posedge RST )
begin
	if ( RST ) counter <= 3'd7;
	else if( nx_state == FIND_PNT ) counter <= counter - 3'd1;
	else if( nx_state == PROC ) counter <= 3'd7;
end

reg [2:0] mini_idx;
reg [2:0] counter_sort;
reg sort_fn;

always@( posedge CLK or posedge RST )
begin
	if( RST ) mini_idx <= 3'd0;
	else if( state == FIND_PNT && nx_state == SORT ) mini_idx <= change_point + 3'd1;
	else if( state == SORT )
	begin
		if( n[mini_idx] > n[counter_sort] && n[counter_sort] > n[change_point] ) mini_idx <= counter_sort;
	end
end

always@( posedge CLK or posedge RST )
begin
	if( RST ) counter_sort <= 3'd7;
	else if( state == PROC ) counter_sort <= 3'd7;
	else if( state == SORT ) counter_sort <= counter_sort - 3'd1;
end

always@( posedge CLK or posedge RST )
begin
	if( RST )
	begin
		n[0] <= 3'd0; n[1] <= 3'd1; n[2] <= 3'd2; n[3] <= 3'd3; n[4] <= 3'd4; n[5] <= 3'd5; n[6] <= 3'd6; n[7] <= 3'd7;
		sort_fn <= 1'd0;
	end
	else if( state == SORT && sort_fn == 1'd0 && counter_sort == change_point )
	begin
		case( change_point )
		3'd6:
		begin
			sort_fn <= 1'd1;
			if( n[7] > n[6] )	
			begin
				n[7] <= n[6];
				n[6] <= n[7];
			end
		end
		3'd5:
		begin
			sort_fn <= 1'd1;
			if( n[7] < n[6] && n[7] > n[5] )
			begin
				n[5] <= n[7];
				n[6] <= n[5];
				n[7] <= n[6];
			end
			else 
			begin
				n[5] <= n[6];
				n[6] <= n[7];
				n[7] <= n[5];
			end
		end
		3'd4: 
		begin
			sort_fn <= 1'd1;
			case( mini_idx )
			7:
			begin
				n[4] <= n[7];
				n[5] <= n[4];
				n[6] <= n[6];
				n[7] <= n[5];
			end
			6:
			begin
				n[4] <= n[6];
				n[5] <= n[7];
				n[6] <= n[4];
				n[7] <= n[5];
			end
			5:
			begin
				n[4] <= n[5];
				n[5] <= n[7];
				n[6] <= n[6];
				n[7] <= n[4];
			end
			endcase
		end	
		3'd3:
		begin
			sort_fn <= 1'd1;
			case( mini_idx )
			7:
			begin
				n[3] <= n[7];
				n[4] <= n[3];
				n[5] <= n[6];
				n[6] <= n[5];
				n[7] <= n[4];
			end
			6:
			begin
				n[3] <= n[6];
				n[4] <= n[7];
				n[5] <= n[3];
				n[6] <= n[5];
				n[7] <= n[4];
			end
			5:
			begin
				n[3] <= n[5];
				n[4] <= n[7];
				n[5] <= n[6];
				n[6] <= n[3];
				n[7] <= n[4];
			end
			4:
			begin
				n[3] <= n[4];
				n[4] <= n[7];
				n[5] <= n[6];
				n[6] <= n[5];
				n[7] <= n[3];
			end
			endcase
		end
		3'd2:
		begin
			sort_fn <= 1'd1;
			case( mini_idx )
			7:
			begin
				n[2] <= n[7];
				n[3] <= n[2];
				n[4] <= n[6];
				n[5] <= n[5];
				n[6] <= n[4];
				n[7] <= n[3];
			end
			6:
			begin
				n[2] <= n[6];
				n[3] <= n[7];
				n[4] <= n[2];
				n[5] <= n[5];
				n[6] <= n[4];
				n[7] <= n[3];
			end
			5:
			begin
				n[2] <= n[5];
				n[3] <= n[7];
				n[4] <= n[6];
				n[5] <= n[2];
				n[6] <= n[4];
				n[7] <= n[3];
			end
			4:
			begin
				n[2] <= n[4];
				n[3] <= n[7];
				n[4] <= n[6];
				n[5] <= n[5];
				n[6] <= n[2];
				n[7] <= n[3];
			end
			3:
			begin
				n[2] <= n[3];
				n[3] <= n[7];
				n[4] <= n[6];
				n[5] <= n[5];
				n[6] <= n[4];
				n[7] <= n[2];
			end
			endcase
		end
		3'd1:
		begin
			sort_fn <= 1'd1;
			case( mini_idx )
			7: 
			begin
				n[1] <= n[7];
				n[2] <= n[1];
				n[3] <= n[6];
				n[4] <= n[5];
				n[5] <= n[4];
				n[6] <= n[3];
				n[7] <= n[2];
			end
			6: 
			begin
				n[1] <= n[6];
				n[2] <= n[7];
				n[3] <= n[1];
				n[4] <= n[5];
				n[5] <= n[4];
				n[6] <= n[3];
				n[7] <= n[2];
			end
			5: 
			begin
				n[1] <= n[5];
				n[2] <= n[7];
				n[3] <= n[6];
				n[4] <= n[1];
				n[5] <= n[4];
				n[6] <= n[3];
				n[7] <= n[2];
			end
			4: 
			begin
				n[1] <= n[4];
				n[2] <= n[7];
				n[3] <= n[6];
				n[4] <= n[5];
				n[5] <= n[1];
				n[6] <= n[3];
				n[7] <= n[2];
			end
			3: 
			begin
				n[1] <= n[3];
				n[2] <= n[7];
				n[3] <= n[6];
				n[4] <= n[5];
				n[5] <= n[4];
				n[6] <= n[1];
				n[7] <= n[2];
			end
			2: 
			begin
				n[1] <= n[2];
				n[2] <= n[7];
				n[3] <= n[6];
				n[4] <= n[5];
				n[5] <= n[4];
				n[6] <= n[3];
				n[7] <= n[1];
			end
			
			endcase
		end
		3'd0:
		begin
			sort_fn <= 1'd1;
			case( mini_idx )
			7:
			begin
				n[0] <= n[7];
				n[1] <= n[0];
				n[2] <= n[6];
				n[3] <= n[5];
				n[4] <= n[4];
				n[5] <= n[3];
				n[6] <= n[2];
				n[7] <= n[1];
			end
			6:
			begin
				n[0] <= n[6];
				n[1] <= n[7];
				n[2] <= n[0];
				n[3] <= n[5];
				n[4] <= n[4];
				n[5] <= n[3];
				n[6] <= n[2];
				n[7] <= n[1];
			end
			5:
			begin
				n[0] <= n[5];
				n[1] <= n[7];
				n[2] <= n[6];
				n[3] <= n[0];
				n[4] <= n[4];
				n[5] <= n[3];
				n[6] <= n[2];
				n[7] <= n[1];
			end
			4:
			begin
				n[0] <= n[4];
				n[1] <= n[7];
				n[2] <= n[6];
				n[3] <= n[5];
				n[4] <= n[0];
				n[5] <= n[3];
				n[6] <= n[2];
				n[7] <= n[1];
			end
			3:
			begin
				n[0] <= n[3];
				n[1] <= n[7];
				n[2] <= n[6];
				n[3] <= n[5];
				n[4] <= n[4];
				n[5] <= n[0];
				n[6] <= n[2];
				n[7] <= n[1];
			end
			2:
			begin
				n[0] <= n[2];
				n[1] <= n[7];
				n[2] <= n[6];
				n[3] <= n[5];
				n[4] <= n[4];
				n[5] <= n[3];
				n[6] <= n[0];
				n[7] <= n[1];
			end
			1:
			begin
				n[0] <= n[1];
				n[1] <= n[7];
				n[2] <= n[6];
				n[3] <= n[5];
				n[4] <= n[4];
				n[5] <= n[3];
				n[6] <= n[2];
				n[7] <= n[0];
			end
			endcase
		
		end
			
		endcase
		
	end
	else if( state == PROC ) sort_fn <= 1'd0;
end
	
//================================================================
//  FSM
//================================================================
always@( posedge CLK or posedge RST )
begin
	if( RST ) state <= IDLE;
	else state <= nx_state;
end

always@( * )
begin
	case( state )
	IDLE: nx_state = DELAY_CLK; //0
	DELAY_CLK: nx_state = PROC;//1
	FIND_PNT://4
	begin
		if( finish ) nx_state = RESULT;
		else if( find_fn ) nx_state = SORT;
		else nx_state = FIND_PNT;
	end
	SORT: nx_state = ( sort_fn )?PROC:SORT;//5
	PROC: nx_state = ( counter_RES == 4'd8 )? FIND_PNT:PROC;//6
	RESULT: nx_state = RESULT;//7
	default: nx_state = IDLE; 
	endcase
end

endmodule


