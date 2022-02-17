module DT(
	input 			clk, 
	input			reset,
	output	reg		done ,
	output	reg		sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	reg		res_wr ,
	output	reg		res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input		[7:0]	res_di,
	output reg fw_finish
	);

//================================================================
//------------------------Self defined--------------------------
//================================================================

reg [3:0] state, nx_state;
reg [3:0] counter;
wire [13:0] res_addr_NE, res_addr_W, res_addr_origin, res_addr_E, res_addr_SW, res_addr_origin_back;
reg [7:0] minimum;

//================================================================
//  integer / genvar / parameters
//================================================================

parameter IDLE = 4'd0, RD_INIT = 4'd1, WR_INIT = 4'd2, BEFORE_RD_FOR = 4'd3, RD_FOR = 4'd4, FORWARD = 4'd5, WR_FOR = 4'd6; 
parameter FORWARD_FN = 4'd7, RD_BACK = 4'd8, BACKWARD = 4'd9 , WR_BACK = 4'd10, FN = 4'd11;

//================================================================
//---------------------------design-----------------------------
//================================================================

//current state logic
always@( posedge clk or negedge reset ) 
begin
	if( !reset ) state <= IDLE;
	else state <= nx_state;

end

//next state logic
always@( * )
begin
	case(state)
	IDLE: nx_state = RD_INIT;
	RD_INIT: nx_state = WR_INIT;
	WR_INIT:
	begin
		if( counter == 4'd15 )
		begin
			if( res_addr == 14'd16383 ) nx_state = BEFORE_RD_FOR;
			else nx_state = RD_INIT;
		end
		else nx_state = WR_INIT;
	end
	BEFORE_RD_FOR: nx_state = RD_FOR; // delay one clk
	RD_FOR: 
	begin
		if( res_di ) nx_state = FORWARD;
		else nx_state = ( res_addr == 14'd16254 )? FORWARD_FN : RD_FOR;
	end
	FORWARD: nx_state = ( counter == 4'd5 ) ? WR_FOR : FORWARD ;
	WR_FOR: nx_state = ( res_addr == 14'd16254 )? FORWARD_FN : RD_FOR;
	FORWARD_FN: nx_state = RD_BACK;
	RD_BACK:
	begin
		if( res_di ) nx_state = BACKWARD;
		else nx_state = ( res_addr == 14'd129 )? FN : RD_BACK;
	end
	BACKWARD: nx_state = ( counter == 4'd6 ) ? WR_BACK : BACKWARD ;
	WR_BACK: nx_state = ( res_addr == 14'd129 )? FN : RD_BACK;
	FN: nx_state = FN;
	default: nx_state = IDLE;
	endcase

end

//sti_addr
always@( posedge clk or negedge reset )
begin
	if( !reset ) sti_addr <= 10'd0;
	else if( state == RD_INIT ) sti_addr <= sti_addr + 10'd1;
end

//res_addr
assign res_addr_NE = res_addr - 14'd126;
assign res_addr_W = res_addr - 14'd1;
assign res_addr_origin = res_addr + 14'd129;
assign res_addr_E = res_addr + 14'd1;
assign res_addr_SW = res_addr + 14'd126;
assign res_addr_origin_back = res_addr - 14'd129;

always@( posedge clk or negedge reset )
begin
	if( !reset ) res_addr <= 14'd0;
	else if( state == WR_INIT ) res_addr <= res_addr + 14'd1;
	else if( state == BEFORE_RD_FOR ) res_addr <= 14'd128;
	else if( nx_state == RD_FOR ) res_addr <= res_addr + 14'd1;
	else if( nx_state == RD_BACK ) res_addr <= res_addr - 14'd1;
	else if( nx_state == FORWARD )
	begin
		case(counter)
		4'd0: res_addr <= res_addr_W;
		4'd1: res_addr <= res_addr_NE;
		4'd2: res_addr <= res_addr_W;
		4'd3: res_addr <= res_addr_W;
		4'd4: res_addr <= res_addr_origin;
		endcase	
	end
	else if( nx_state == BACKWARD )
	begin
		case(counter)
		4'd0: res_addr <= res_addr;
		4'd1: res_addr <= res_addr_E;
		4'd2: res_addr <= res_addr_SW;
		4'd3: res_addr <= res_addr_E;
		4'd4: res_addr <= res_addr_E;
		4'd5: res_addr <= res_addr_origin_back;
		endcase	
	end
end

//res_do
always@( posedge clk or negedge reset )
begin
	if( !reset ) res_do <= 8'd0;
	else if( nx_state == WR_INIT ) res_do <= sti_di[counter];
	else if( nx_state == WR_FOR ) res_do <= minimum + 8'd1;
	else if( nx_state == WR_BACK ) res_do <= minimum;
end


//counter
always@( posedge clk or negedge reset )
begin
	if( !reset ) counter <= 4'd15;
	else if( nx_state == WR_INIT ) counter <= counter - 4'd1;
	else if( state == BEFORE_RD_FOR || state == FORWARD_FN ) counter <= 4'd0;
	else if( nx_state == FORWARD || nx_state == BACKWARD ) counter <= counter + 4'd1;
	else if( nx_state == RD_FOR || nx_state == RD_BACK ) counter <= 4'd0;
end

//minimum
always@( posedge clk or negedge reset )
begin
	if( !reset ) minimum <= 8'd0;
	else if( state == FORWARD  ) 
	begin 
		if( counter == 4'd1 ) minimum <= res_di;
		else if( minimum >= res_di ) minimum <= res_di; 
	end
	else if( state == BACKWARD )
	begin
		if( counter == 4'd1) minimum <= res_di;
		else if( minimum > (res_di + 8'd1) ) minimum <= res_di + 8'd1;		
	end
end

//Control Signal
always@(*)
begin
	case(state)
	IDLE, BEFORE_RD_FOR, FORWARD_FN, FN:
	begin
		sti_rd = 1'd0;
		res_wr = 1'd0;
		res_rd = 1'd0;
	end
	RD_INIT:
	begin
		sti_rd = 1'd1;
		res_wr = 1'd0;
		res_rd = 1'd0;
	end
	WR_INIT, WR_FOR, WR_BACK:
	begin
		sti_rd = 1'd0;
		res_wr = 1'd1;
		res_rd = 1'd0;
	end
	RD_FOR, FORWARD, RD_BACK, BACKWARD: 
	begin
		sti_rd = 1'd0;
		res_wr = 1'd0;
		res_rd = 1'd1;	
	end
	default: 
	begin	
		sti_rd = 1'd0;
		res_wr = 1'd0;
		res_rd = 1'd0;	
	end
	endcase
end

//fw_finish
always@(posedge clk or negedge reset)
begin
	if( !reset ) fw_finish <= 1'd0;
	else if( state == FORWARD_FN ) fw_finish <= 1'd1;
end

//done
always@( posedge clk or negedge reset )
begin
	if( ~reset ) done <= 0;
	else if( state == FN ) done <= 1;
end


endmodule
