//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   2021 IC Contest
//   univ_cell_based          : geofence
//   Author         : Yao-Zhan Xu (xuyaozhan8905@gmail.com)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   File Name   : geofence.v
//   Module Name : geofence
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################
module geofence ( 
    // Input signals
	clk,reset,X,Y,
    // Output signals	
	valid,is_inside
);	
//================================================================
//  INPUT AND OUTPUT DECLARATION                         
//================================================================	
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
output reg valid;
output reg is_inside;

//================================================================
//  integer / genvar / parameters
//================================================================
parameter IDLE = 3'd0, IN = 3'd1, RESULT = 3'd2, IS_INSIDE = 3'd3, DELAY_CLK_1 = 3'd4, DELAY_CLK_2 = 3'd5;

//================================================================
//  Wires & Registers 
//================================================================
reg [2:0] state, nx_state;
reg [9:0] obj_x, obj_y;
reg [9:0] x[0:5]; //[x1,x2,x3,x4,x5,x6]
reg [9:0] y[0:5]; //[y1,y2,y3,y4,y5,y6]
reg [2:0] counter_IN, counter_INSIDE;
reg [2:0] counter_RESULT, counter_RES;
wire signed [10:0] Ax, Bx, Ay, By;
wire signed [21:0] AxBy, BxAy;
wire signed [10:0] det_Ax, det_Bx, det_Ay, det_By;
wire signed [21:0] det_AxBy, det_BxAy;
wire [2:0] counter_A, counter_B, counter_det_A, counter_det_B; 
reg match_array[0:5];

//================================================================
//  OUTPUT : valid & is_inside
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset )
	begin
		valid <= 1'd0;
		is_inside <= 1'd0;
	end
	else if( state == IS_INSIDE && counter_INSIDE == 3'd6 )
	begin
		valid <= 1'd1;
		if( match_array[0] == 1'd0 && match_array[1] == 1'd0 && match_array[2] == 1'd0 && match_array[3] == 1'd0 &&	   match_array[4] == 1'd0 && match_array[5] == 1'd0 ) is_inside <= 1'd1;
		else if( match_array[0] == 1'd1 && match_array[1] == 1'd1 && match_array[2] == 1'd1 && match_array[3] ==         1'd1 &&match_array[4] == 1'd1 && match_array[5] == 1'd1 ) is_inside <= 1'd1;
		else is_inside <= 1'd0;
	end	
	else 
	begin
		valid <= 1'd0;
		is_inside <= 1'd0;
	end
end

//================================================================
//  match_array && det_Ax, det_Bx, det_Ay, det_By, det_AxBy, det_BxAy
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset )
	begin
		match_array[0] <= 1'd0; match_array[1] <= 1'd0; match_array[2] <= 1'd0; match_array[3] <= 1'd0;
		match_array[4] <= 1'd0; match_array[5] <= 1'd0;
	end
	else if( nx_state == IS_INSIDE )
	begin
		if( det_AxBy > det_BxAy ) match_array[ counter_INSIDE ] <= 1'd1;
		else match_array[ counter_INSIDE ] <= 1'd0;
	end
end

// det_Ax, det_Bx, det_Ay, det_By, det_AxBy, det_BxAy;
assign det_Ax = obj_x - x[ counter_det_A ];
assign det_Bx = x[ counter_det_B ] - x[ counter_det_A ];
assign det_Ay = obj_y - y[ counter_det_A ];
assign det_By = y[ counter_det_B ] - y[ counter_det_A ];
assign det_AxBy = det_Ax * det_By;
assign det_BxAy = det_Bx * det_Ay;
assign counter_det_A = counter_INSIDE;
assign counter_det_B = ( counter_det_A == 3'd5 )? 3'd0 : counter_INSIDE + 3'd1;

//================================================================
//  INPUT
//================================================================

// Ax, Bx, Ay, By, AxBy, BxAy
assign Ax = x[ 0 ] - x[ counter_A ];
assign Bx = x[ 0 ] - x[ counter_B ];
assign Ay = y[ 0 ] - y[ counter_A ];
assign By = y[ 0 ] - y[ counter_B ];
assign AxBy = Ax * By;
assign BxAy = Bx * Ay;
assign counter_A = counter_RESULT + 3'd1;
assign counter_B = counter_RESULT + 3'd2;

//x,y, obj_x, obj_y
always@( posedge clk or posedge reset )
begin
	if( reset )
	begin
		x[0] <= 10'd0; x[1] <= 10'd0; x[2] <= 10'd0; x[3] <= 10'd0; x[4] <= 10'd0; x[5] <= 10'd0; x[6] <= 10'd0;
		y[0] <= 10'd0; y[1] <= 10'd0; y[2] <= 10'd0; y[3] <= 10'd0; y[4] <= 10'd0; y[5] <= 10'd0; y[6] <= 10'd0;
		obj_x <= 10'd0; obj_y <= 10'd0;
	end
	else if( nx_state == IN )
	begin
		if( counter_IN == 3'd0 ) 
		begin
			obj_x <= X; obj_y <= Y;
		end
		else 
		begin
			x[ counter_IN - 3'd1 ] <= X; y[ counter_IN - 3'd1 ] <= Y; 
		end
	end
	else if( nx_state == RESULT )
	begin
		if( AxBy > BxAy ) 
		begin
			x[ counter_A ] <= x[ counter_B ];
			y[ counter_A ] <= y[ counter_B ];
			x[ counter_B ] <= x[ counter_A ];
			y[ counter_B ] <= y[ counter_A ];
		end
	end	
end

//================================================================
//  counter_IN
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_IN <= 3'd0;
	else if( nx_state == IN ) counter_IN <= counter_IN + 3'd1;
	else if( nx_state == RESULT ) counter_IN <= 3'd0;
end

//================================================================
//  counter_RESULT
//================================================================
always@( posedge clk or posedge reset )
begin 
	if( reset ) counter_RESULT <= 3'd0;
	else if( nx_state == IN ) counter_RESULT <= 3'd0;
	else if( nx_state == RESULT ) counter_RESULT <= counter_RESULT + 3'd1;
end

//================================================================
//  counter_RES
//================================================================
always@( posedge clk or posedge reset )
begin 
	if( reset ) counter_RES <= 3'd0;
	else if( nx_state == IN ) counter_RES <= 3'd0;
	else if( nx_state == RESULT ) 
	begin
		if( counter_RESULT == 3'd3 ) counter_RES <= counter_RES + 3'd1;
	end
end

//================================================================
//  counter_INSIDE
//================================================================
always@( posedge clk or posedge reset )
begin 
	if( reset ) counter_INSIDE <= 3'd0;
	else if( nx_state == IN ) counter_INSIDE <= 3'd0;
	else if( nx_state == IS_INSIDE ) counter_INSIDE <= counter_INSIDE + 3'd1;
end

//================================================================
//  FSM
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) state <= IDLE;
	else state <= nx_state;
end

always@( * )
begin
	case( state )
	IDLE: 		nx_state = IN;
	IN: 		nx_state = ( counter_IN == 3'd7 )? RESULT : IN ;
	RESULT: 	nx_state = ( counter_RES == 3'd4 )? 2'd3 : RESULT ;
	IS_INSIDE:	nx_state =( counter_INSIDE == 3'd6 )? DELAY_CLK_1 : IS_INSIDE ;
	DELAY_CLK_1: nx_state = DELAY_CLK_2;
	DELAY_CLK_2: nx_state = IN;
	default: 	nx_state = IDLE; 
	endcase
end

endmodule

