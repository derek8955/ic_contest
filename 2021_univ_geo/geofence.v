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
reg [1:0] counter_RESULT, counter_RES;

reg signed [10:0] Ax, Bx, Ay, By;
wire signed [20:0] AxBy, BxAy;
wire [2:0] counter_A, counter_B, counter_det_A, counter_det_B; 
reg match_array[0:5];

//================================================================
//  design 
//================================================================

// AxBy, BxAy, counter_A, counter_B, counter_det_A, counter_det_B
assign AxBy = Ax * By;
assign BxAy = Bx * Ay;
assign counter_A = counter_RESULT + 3'd1;
assign counter_B = counter_RESULT + 3'd2;
assign counter_det_A = counter_INSIDE;
assign counter_det_B = ( counter_det_A == 3'd5 )? 3'd0 : counter_INSIDE + 3'd1;

//Ax, Bx, Ay, By
always@( * )
begin
	case( state )
	RESULT:
	begin
		Ax = x[ 0 ] - x[ counter_A ];
		Bx = x[ 0 ] - x[ counter_B ];
		Ay = y[ 0 ] - y[ counter_A ];
		By = y[ 0 ] - y[ counter_B ];
	end
	IS_INSIDE:
	begin
		Ax = obj_x - x[ counter_det_A ];
		Bx = x[ counter_det_B ] - x[ counter_det_A ];
		Ay = obj_y - y[ counter_det_A ];
		By = y[ counter_det_B ] - y[ counter_det_A ];
	end
	default:
	begin
		Ax = 11'd0; Bx = 11'd0; Ay = 11'd0; By = 11'd0;
	end
	
	endcase
end

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
		if( match_array[0] == 1'd0 && match_array[1] == 1'd0 && match_array[2] == 1'd0 && match_array[3] == 1'd0 && match_array[4] == 1'd0 && match_array[5] == 1'd0 ) is_inside <= 1'd1;
		else if( match_array[0] == 1'd1 && match_array[1] == 1'd1 && match_array[2] == 1'd1 && match_array[3] == 1'd1 && match_array[4] == 1'd1 && match_array[5] == 1'd1 ) is_inside <= 1'd1;
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
always@( posedge clk )
begin
	if( state == IS_INSIDE )
	begin
		if( AxBy > BxAy ) match_array[ counter_INSIDE ] <= 1'd1;
		else match_array[ counter_INSIDE ] <= 1'd0;
	end
end

//================================================================
//  INPUT
//================================================================

//obj_x, obj_y
always@( posedge clk )
begin
	if( state == IDLE || state == DELAY_CLK_2 )
	begin
		obj_x <= X; obj_y <= Y;
	end
end

//x,y
always@( posedge clk )
begin
	if( state == IN )
	begin
		x[ counter_IN ] <= X; y[ counter_IN ] <= Y; 
	end
	else if( state == RESULT )
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
	else if( state == IN ) counter_IN <= ( counter_IN == 3'd6 )? 3'd0 : counter_IN + 3'd1;
end

//================================================================
//  counter_RESULT
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_RESULT <= 2'd0;
	else if( state == IN ) counter_RESULT <= 2'd0;
	else if( state == RESULT ) counter_RESULT <= ( counter_RESULT == 2'd3 )? 2'd0 : counter_RESULT + 2'd1;
end

//================================================================
//  counter_INSIDE
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_INSIDE <= 3'd0;
	else if( state == IN ) counter_INSIDE <= 3'd0;
	else if( state == IS_INSIDE ) counter_INSIDE <= counter_INSIDE + 3'd1;
end

//================================================================
//  counter_RES
//================================================================
always@( posedge clk or posedge reset )
begin 
	if( reset ) counter_RES <= 2'd0;
	else if( state == IN ) counter_RES <= 2'd0;
	else if( state == RESULT ) 
	begin
		if( counter_RESULT == 2'd3 ) counter_RES <= counter_RES + 2'd1;
	end
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
	IN: 		nx_state = ( counter_IN == 3'd6 )? RESULT : IN ;
	RESULT: 	nx_state = ( counter_RES == 2'd3 && counter_RESULT == 2'd3 )? IS_INSIDE : RESULT ;
	IS_INSIDE:	nx_state = ( counter_INSIDE == 3'd6 )? DELAY_CLK_1 : IS_INSIDE ;
	DELAY_CLK_1: nx_state = DELAY_CLK_2;
	DELAY_CLK_2: nx_state = IN;
	default: 	nx_state = IDLE; 
	endcase
end

endmodule

