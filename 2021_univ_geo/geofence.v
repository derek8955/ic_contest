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
parameter IDLE = 2'd0, IN = 2'd1, RESULT = 2'd2;

//================================================================
//  Wires & Registers 
//================================================================
reg [1:0] state, nx_state;
reg [9:0] x[0:6]; //[obj_x,x1,x2,x3,x4,x5,x6]
reg [9:0] y[0:6]; //[obj_y,y1,y2,y3,y4,y5,y6]
reg [2:0] counter_IN, counter_RESULT;
wire [9:0] Ax, Bx, Ay, By;
wire [19:0] AxBy, BxAy;

//================================================================
// Ax, Bx, Ay, By, AxBy, BxAy
//================================================================
assign Ax = ( x[counter_RESULT] > x[counter_RESULT+3'd1] )? x[counter_RESULT] - x[counter_RESULT+3'd1] : x[counter_RESULT+3'd1] - x[counter_RESULT];
assign Bx = ( x[counter_RESULT] > x[counter_RESULT+3'd2] )? x[counter_RESULT] - x[counter_RESULT+3'd2] : x[counter_RESULT+3'd2] - x[counter_RESULT];
assign Ay = ( y[counter_RESULT] > y[counter_RESULT+3'd1] )? y[counter_RESULT] - y[counter_RESULT+3'd1] : y[counter_RESULT+3'd1] - y[counter_RESULT];
assign By = ( y[counter_RESULT] > y[counter_RESULT+3'd2] )? y[counter_RESULT] - y[counter_RESULT+3'd2] : y[counter_RESULT+3'd2] - y[counter_RESULT];
assign AxBy = Ax * By;
assign BxAy = Bx * Ay;

//================================================================
//  OUTPUT : valid & is_inside
//================================================================


//================================================================
//  INPUT
//================================================================

//x,y
always@( posedge clk or posedge reset )
begin
	if( reset )
	begin
		x[0] <= 10'd0; x[1] <= 10'd0; x[2] <= 10'd0; x[3] <= 10'd0; x[4] <= 10'd0; x[5] <= 10'd0; x[6] <= 10'd0;
		y[0] <= 10'd0; y[1] <= 10'd0; y[2] <= 10'd0; y[3] <= 10'd0; y[4] <= 10'd0; y[5] <= 10'd0; y[6] <= 10'd0;	
	end
	else if( nx_state == IN )
	begin
		x[counter_IN] <= X; y[counter_IN] <= Y;
	end
	else if( nx_state == RESULT )
	begin
		if( AxBy > BxAy) 
		begin
			x[]
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
	IDLE: nx_state = IN;
	IN: nx_state = ( counter_IN == 3'd7 )? RESULT : IN ;
	RESULT:begin end //nx_state = IN;
	endcase
end

always@( counter_IN )
	$display(x[0], x[1], x[2], x[3], x[4], x[5], x[6]);
endmodule

