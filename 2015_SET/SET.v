//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   2015 IC Contest
//   univ_cell_based          : SET
//   Author         : Yao-Zhan Xu (xuyaozhan8905@gmail.com)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   File Name   : SET.v
//   Module Name : SET
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################
module SET ( 
	//Input Signals
	clk , rst, en, central, radius, mode,
	//Output Signals
	busy, valid, candidate );

//================================================================
//  INPUT AND OUTPUT DECLARATION                      
//================================================================	
input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy;
output valid;
output reg [7:0] candidate;

//================================================================
//  Wires & Registers                   
//================================================================	
reg [1:0] state, nx_state;

reg [3:0] x_tmp, y_tmp, R;
reg [3:0] x_A, x_B, x_C, y_A, y_B, y_C;
reg [3:0] R_A, R_B, R_C;
reg [3:0] x, y;

wire [7:0] sqrt_x, sqrt_y, sqrt_r;
wire[8:0] sqrt_xy_plus ;

reg [1:0] match_array;

reg [1:0] counter;

//================================================================
//  integer / genvar / parameters 
//================================================================
parameter IDLE = 2'd0, READ_DATA = 2'd1, PROC = 2'd2, WRITE = 2'd3;

//================================================================
//  READ_DATA 
//================================================================

//x axis
always@( posedge clk or posedge rst )
begin
	if( rst ) 
	begin
		x_A <= 4'd0; x_B <= 4'd0; x_C <= 4'd0;
	end
	else if( state == READ_DATA )
	begin
		x_A <= {central[23:20]}; x_B <= {central[15:12]}; x_C <= {central[7:4]};
	end
end

//y axis
always@( posedge clk or posedge rst )
begin
	if( rst ) 
	begin
		y_A <= 4'd0; y_B <= 4'd0; y_C <= 4'd0;
	end
	else if( state == READ_DATA )
	begin
		y_A <= {central[19:16]}; y_B <= {central[11:8]}; y_C <= {central[3:0]};		
	end
end

//Radius
always@( posedge clk or posedge rst )
begin
	if( rst ) 
	begin
		R_A <= 4'd0; R_B <= 4'd0; R_C <= 4'd0;
	end
	else if( state == READ_DATA )
	begin
		R_A <= {radius[11:8]}; R_B <= {radius[7:4]}; R_C <= {radius[3:0]};		
	end
end

//================================================================
//  PROC 
//================================================================
assign sqrt_x = x_tmp * x_tmp;
assign sqrt_y = y_tmp * y_tmp;
assign sqrt_xy_plus = sqrt_x + sqrt_y;
assign sqrt_r = R * R;

//xA_tmp && yA_tmp
always@( * )
begin
	case( mode )
	2'b00: 
	begin
		x_tmp = ( x > x_A )? x - x_A : x_A - x;
		y_tmp = ( y > y_A )? y - y_A : y_A - y;
		R = R_A;
	end
	2'b01, 2'b10:
	begin
		if( counter == 2'd0 ) 
		begin
			x_tmp = ( x > x_A )? x - x_A : x_A - x;
			y_tmp = ( y > y_A )? y - y_A : y_A - y;
			R = R_A;
		end
		else 
		begin
			x_tmp = ( x > x_B )? x - x_B : x_B - x;
			y_tmp = ( y > y_B )? y - y_B : y_B - y;
			R = R_B;
		end
	end
	2'b11:
	begin
		if( counter == 2'd0 ) 
		begin
			x_tmp = ( x > x_A )? x - x_A : x_A - x;
			y_tmp = ( y > y_A )? y - y_A : y_A - y;
			R = R_A;
		end
		else if( counter == 2'd1 )
		begin
			x_tmp = ( x > x_B )? x - x_B : x_B - x;
			y_tmp = ( y > y_B )? y - y_B : y_B - y;
			R = R_B;
		end
		else 
		begin
			x_tmp = ( x > x_C )? x - x_C : x_C - x;
			y_tmp = ( y > y_C )? y - y_C : y_C - y;
			R = R_C;
		end
	end
	
	endcase
end

//x
always@( posedge clk or posedge rst )
begin
	if( rst ) x <= 4'd1;
	else if( state == PROC )
	begin	
		case( mode )
		2'b00: x <= ( y == 4'd8 )? x + 4'd1 : x;
		2'b01, 2'b10: 
		begin
			if( y == 4'd8 && counter == 2'b01 ) x <= x + 4'd1;
		end
		2'b11:
		begin
			if( y == 4'd8 && counter == 2'b10 ) x <= x + 4'd1;
		end
		
		endcase
	end
	else x <= 4'd1;
end

//y
always@( posedge clk or posedge rst )
begin
	if( rst ) y <= 4'd1;
	else if( state == PROC )
	begin
		case( mode )
		2'b00: y <= ( y == 4'd8 )? 4'd1 : y + 4'd1;
		2'b01, 2'b10: 
		begin
			if( y == 4'd8 && counter == 2'b01 ) y <= 4'd1;
			else if( counter == 2'b01 ) y <= y + 4'd1;			
		end
		2'b11:
		begin
			if( y == 4'd8 && counter == 2'b10 ) y <= 4'd1;
			else if( counter == 2'b10 ) y <= y + 4'd1;	
		end
		endcase
	end
	else y <= 4'd1;
end

//counter 
always@( posedge clk or posedge rst )
begin
	if( rst ) counter <= 2'd0;
	else if( state == PROC )
	begin
		case( mode )
		2'b01, 2'b10: counter <= ( counter == 2'd1 )? 2'd0 : 2'd1 ;
		2'b11: counter <= ( counter == 2'd2 )? 2'd0 : counter + 2'd1 ;
		endcase
	end
end

//================================================================
//  match_array 
//================================================================
always@( posedge clk or posedge rst )
begin
	if( rst ) match_array <= 2'd0;
	else if( state == PROC ) 
	begin
		case( mode )
		2'b01, 2'b10:
		begin
			if( counter == 2'd0 )
			begin
				if( sqrt_xy_plus <= sqrt_r ) match_array[0] <= 1'd1;	
			end
			else match_array <= 1'd0;
		end
		2'b11:
		begin
			if( counter == 2'd0 )
			begin
				if( sqrt_xy_plus <= sqrt_r ) match_array[0] <= 1'd1;	
			end
			else if( counter == 2'd1 ) 
			begin
				if( sqrt_xy_plus <= sqrt_r ) match_array[1] <= 1'd1;				
			end
			else match_array <= 1'd0;
		end
		endcase
	end
end

//================================================================
//  candidate 
//================================================================
always@( posedge clk or posedge rst )
begin
	if( rst ) candidate <= 8'd0;
	else if( state == READ_DATA ) candidate <= 8'd0;
	else if( state == PROC ) 
	begin
		case( mode )
		2'b00: 
		begin
			if( sqrt_xy_plus <= sqrt_r ) candidate <= candidate + 8'd1;		
		end
		2'b01:
		begin
			if( sqrt_xy_plus <= sqrt_r && match_array[0] && counter == 2'd1 ) candidate <= candidate + 8'd1;		
		end
		2'b10:
		begin
			if( counter == 2'd1 )
			begin
				if( sqrt_xy_plus <= sqrt_r && match_array[0] == 1'd0 ) candidate <= candidate + 8'd1;	
				else if( sqrt_xy_plus > sqrt_r && match_array[0] == 1'd1 ) candidate <= candidate + 8'd1;	
			end
		end
		2'b11:
		begin
			if( counter == 2'd2 )
			begin
				if( sqrt_xy_plus <= sqrt_r && match_array == 2'b01 ) candidate <= candidate + 8'd1;	
				else if( sqrt_xy_plus <= sqrt_r && match_array == 2'b10 ) candidate <= candidate + 8'd1;	
				else if( sqrt_xy_plus > sqrt_r && match_array == 2'b11 ) candidate <= candidate + 8'd1;
			end
		end
		endcase
	end
end

//================================================================
//  valid 
//================================================================
assign valid = ( state == WRITE ) ? 1'd1 : 1'd0 ;

//================================================================
// busy
//================================================================
always@( posedge clk or posedge rst )
begin
	if( rst ) busy <= 1'd0;
	else if( nx_state == READ_DATA ) busy <= 1'd0;
	else if( state == PROC ) busy <= 1'd1;
end

//================================================================
// FSM
//================================================================
always@( posedge clk or posedge rst )
begin
	if( rst ) state <= IDLE;
	else state <= nx_state;
end

always@( * )
begin
	case( state )
	IDLE: 				nx_state = READ_DATA;
	READ_DATA: 			nx_state = ( en == 1'd0 )? PROC : READ_DATA;
	PROC: 
	begin
		case( mode )
		2'b00: 			nx_state = ( x == 4'd8 && y == 4'd8 )? WRITE : PROC ;
		2'b01, 2'b10: 	nx_state = ( x == 4'd8 && y == 4'd8 && counter == 2'b01 )? WRITE : PROC ;
		2'b11: 			nx_state = ( x == 4'd8 && y == 4'd8 && counter == 2'b10 )? WRITE : PROC ;
		default: 		nx_state = PROC;
		endcase
	end
	WRITE: 				nx_state = READ_DATA;
	default: 			nx_state = IDLE;	
	
	endcase
end

endmodule

