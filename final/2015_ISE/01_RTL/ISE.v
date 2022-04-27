`timescale 1ns/10ps
module ISE( clk, reset, image_in_index, pixel_in, busy, out_valid, color_index, image_out_index);
//================================================================
//  input & output declaration
//================================================================
input           clk;
input           reset;
input   [4:0]   image_in_index;
input   [23:0]  pixel_in;
output reg         busy;
output reg         out_valid;
output reg  [1:0]   color_index;
output reg  [4:0]   image_out_index;

//================================================================
//  integer & parameter & genvar
//================================================================
parameter 	INPUT = 3'd0,
			CLASIFY = 3'd1, 
			COMPARE = 3'd2, 
			SORT = 3'd3, 
			DELAY_CLK = 3'd4, // reset amount & strength
			OUTPUT = 3'd5,
			FINISH = 3'd6;
			
//================================================================
//  Wire & Registers
//================================================================
reg [4:0] index[0:31]; 
reg [1:0] color[0:31];
reg [10:0] average[0:31];
reg [13:0] cnt;
reg [4:0] idx;

wire [7:0] red_pixel, green_pixel, blue_pixel;
assign red_pixel = pixel_in[23:16];
assign green_pixel = pixel_in[15:8];
assign blue_pixel = pixel_in[7:0];

reg [2:0] cur_state, nx_state;

reg sort_fn;

//================================================================
//  busy
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) busy <= 1'd0;
	else if( nx_state == CLASIFY ) busy <= 1'd1;
	else if( nx_state == INPUT ) busy <= 1'd0;
end

//================================================================
//  cnt
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) cnt <= 14'd0;
	else if( cur_state == INPUT ) cnt <= cnt + 14'd1;
	else if( cur_state == CLASIFY ) cnt <= 14'd0;
end

//================================================================
//  cur_idx
//================================================================
reg [4:0] cur_idx;

always@( posedge clk or posedge reset )
begin
	if( reset ) cur_idx <= 5'd0;
	else if( cnt == 14'd16382 ) cur_idx <= image_in_index;
end

//================================================================
//  amount & strength
//================================================================
reg [14:0] amount[0:2];
reg [21:0] strength[0:2];

always@( posedge clk or posedge reset )
begin
	if( reset )
	begin
		amount[0] <= 15'd0; amount[1] <= 15'd0; amount[2] <= 15'd0; 
		strength[0] <= 22'd0; strength[1] <= 22'd0; strength[2] <= 22'd0;
	end
	else if( cur_state == INPUT )
	begin
		if( red_pixel >= green_pixel && red_pixel >= blue_pixel ) 
		begin
			amount[0] <= amount[0] + 15'd1;
			strength[0] <= strength[0] + red_pixel;
		end
		else if( green_pixel > red_pixel && green_pixel >= blue_pixel ) 
		begin
			amount[1] <= amount[1] + 15'd1;
			strength[1] <= strength[1] + green_pixel;
		end
		else 
		begin
			amount[2] <= amount[2] + 15'd1;
			strength[2] <= strength[2] + blue_pixel;
		end
	end
	else if( cur_state == DELAY_CLK ) 
	begin
		amount[0] <= 15'd0; amount[1] <= 15'd0; amount[2] <= 15'd0; 
		strength[0] <= 22'd0; strength[1] <= 22'd0; strength[2] <= 22'd0;	
	end
	
end

//================================================================
//  cur_color
//================================================================
reg [1:0] cur_color; // 0 belongs to red, 1 belongs to green , 2 belongs to blue

always@( posedge clk or posedge reset )
begin
	if( reset ) cur_color <= 2'd0;
	else if( cur_state == CLASIFY )
	begin
		if( amount[0] > amount[1] && amount[0] > amount[2] ) cur_color <= 2'd0;
		else if( amount[1] > amount[0] && amount[1] > amount[2] ) cur_color <= 2'd1;
		else cur_color <= 2'd2;
	end
end

//================================================================
//  cur_strength
//================================================================
wire [10:0] cur_strength;
assign cur_strength = {strength[cur_color],3'd0} / amount[cur_color];

//================================================================
//  idx 
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) idx <= 5'd0;
	else if( cur_state == COMPARE )idx <= cur_idx;
	else if( cur_state == SORT ) idx <= idx - 5'd1;
end

//================================================================
//  index & color & average & sort_fn
//================================================================
wire [4:0] idx_tmp;
assign idx_tmp = idx - 5'd1;

always@( posedge clk or posedge reset )
begin
	if( reset ) sort_fn <= 1'd0;
	else if( cur_state == SORT && sort_fn == 1'd0 )
	begin
		if( cur_idx == 5'd0 )
		begin
			index[0] <= cur_idx; 
			color[0] <= cur_color;
			average[0] <= cur_strength;
			sort_fn <= 1'd1;
		end
		else if( cur_color > color[idx_tmp] )
		begin
			index[idx] <= cur_idx; 
			color[idx] <= cur_color;
			average[idx] <= cur_strength;
			sort_fn <= 1'd1;
		end
		else if( cur_color == color[idx_tmp] )
		begin
			if( idx_tmp == 5'd0 )
			begin
				sort_fn <= 1'd1;
				if( cur_strength < average[idx_tmp] )
				begin
					index[idx] <= index[idx_tmp]; 
					color[idx] <= color[idx_tmp];
					average[idx] <= average[idx_tmp];
					index[idx_tmp] <= cur_idx; 
					color[idx_tmp] <= cur_color;
					average[idx_tmp] <= cur_strength;			
				end
				else 
				begin
					index[idx] <= cur_idx; 
					color[idx] <= cur_color;
					average[idx] <= cur_strength;
				end
			end
			else if( cur_strength < average[idx_tmp] )
			begin
				index[idx] <= index[idx_tmp]; 
				color[idx] <= color[idx_tmp];
				average[idx] <= average[idx_tmp];	
			end
			else //cur_strength > average[idx]
			begin
				index[idx] <= cur_idx; 
				color[idx] <= cur_color;
				average[idx] <= cur_strength;
				sort_fn <= 1'd1;
			end
		end
		else if( cur_color < color[idx_tmp] )
		begin
			index[idx] <= index[idx_tmp]; 
			color[idx] <= color[idx_tmp];
			average[idx] <= average[idx_tmp];
		end
	end
	else sort_fn <= 1'd0;
end

//================================================================
//  output
//================================================================
reg [4:0] counter;

always@( posedge clk or posedge reset )
begin 
	if( reset ) counter <= 5'd0;
	else if( cur_state == OUTPUT ) counter <= counter + 5'd1;
end

always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		image_out_index <= 5'd0;
		color_index <= 2'd0;
		out_valid <= 1'd0;		
	end
	else if( cur_state == OUTPUT ) 
	begin
		image_out_index <= index[counter];
		color_index <= color[counter];		
		out_valid <= 1'd1;
	end
end

//================================================================
//  FSM
//================================================================

always@( posedge clk or posedge reset )
begin
	if( reset ) cur_state <= INPUT;
	else cur_state <= nx_state;
end

always@( * )
begin
	case( cur_state )
	INPUT: nx_state = ( cnt == 14'd16383 )? CLASIFY : INPUT;
	CLASIFY: nx_state = COMPARE;
	COMPARE: nx_state = SORT;
	SORT: 
	begin
		if( sort_fn ) nx_state = ( cur_idx == 5'd31 )? OUTPUT: DELAY_CLK;
		else nx_state = SORT;
	end
	DELAY_CLK: nx_state = INPUT;
	OUTPUT: nx_state = ( counter == 5'd31 )? FINISH : OUTPUT ;
	FINISH: nx_state = FINISH;
	default: nx_state = FINISH;
	endcase
end

endmodule
