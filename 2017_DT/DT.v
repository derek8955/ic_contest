module DT(
	input 			clk, 
	input			reset,
	output	reg		done , //##
	output			sti_rd ,//
	output	reg 	[9:0]	sti_addr ,//
	input		[15:0]	sti_di,
	output		res_wr ,//
	output			res_rd ,
	output	reg 	[13:0]	res_addr ,//
	output	reg 	[7:0]	res_do,//
	input		[7:0]	res_di
);
//================================================================
//  integer / genvar / parameters
//================================================================
integer i;

//================================================================
//   Wires & Registers 
//================================================================
reg [15:0] idata_buf;

reg [3:0] dup_cnt;
reg [2:0] cnt_calc;
reg flag_fb;

reg [6:0] y, x ;

reg [7:0] mini;
reg [7:0] res_input_buf;
//================================================================
//  FSM
//================================================================
parameter STATE_IDLE = 3'd0, STATE_INPUT = 3'd1, STATE_CALC = 3'd2, STATE_OUTPUT = 3'd3, STATE_READ_MEM = 3'd4, STATE_DELAY =3'd5, STATE_DUPLICATE = 3'd6, STATE_FINISH = 3'd7;

reg [2:0] cur_state, nx_state;

always @( posedge clk or negedge reset ) begin
	if( !reset ) cur_state <= STATE_IDLE;
	else cur_state <= nx_state;
end

always @( * ) begin
	case( cur_state ) 
		STATE_IDLE: nx_state = STATE_INPUT;
		STATE_INPUT: nx_state = STATE_DUPLICATE;
		STATE_DUPLICATE: begin
			if( dup_cnt == 0 ) begin
				if( sti_addr == 1023 ) nx_state = STATE_READ_MEM;
				else nx_state = STATE_INPUT;
			end
			else nx_state = STATE_DUPLICATE;
		end
		STATE_READ_MEM: begin
			if ( res_addr == 0 && flag_fb ) nx_state = STATE_FINISH;
			else if( res_addr == 16383 && !flag_fb ) nx_state = STATE_DELAY;
			else nx_state = ( res_di != 0 )? STATE_CALC : STATE_READ_MEM;
		end
		STATE_CALC: nx_state = ( cnt_calc == 4 )? STATE_OUTPUT : STATE_CALC ;
		STATE_OUTPUT: nx_state = STATE_READ_MEM;
		STATE_DELAY: nx_state = STATE_READ_MEM;
		STATE_FINISH: nx_state = STATE_FINISH;
		default: nx_state = STATE_IDLE;
	endcase	
end

//================================================================
//  INPUT
//================================================================
assign sti_rd = ( cur_state == STATE_INPUT );

always @(posedge clk or negedge reset ) begin
	if( !reset ) idata_buf <= 0;
	else if( cur_state == STATE_INPUT ) begin
		for( i=0; i<16; i=i+1 ) idata_buf[15-i] <= sti_di[i];
	end
end

always @(posedge clk or negedge reset) begin
	if(!reset) res_input_buf <= 0;
	else if(cur_state == STATE_READ_MEM) res_input_buf <= res_di;
end
//================================================================
//  OUTPUT
//================================================================
always @( posedge clk or negedge reset ) begin
	if( !reset ) sti_addr <= 0;
	else if( cur_state == STATE_DUPLICATE && dup_cnt == 0 ) sti_addr <= sti_addr + 1;
end

wire [3:0] addr_tmp = dup_cnt-4'd1;

always @( * ) begin
	case( cur_state )
		STATE_DUPLICATE:  res_do = idata_buf[addr_tmp];
		STATE_OUTPUT: begin
			if( flag_fb ) begin
					if( res_input_buf > mini+1 ) res_do = mini + 1;
					else res_do = res_input_buf;
			end
			else	res_do = mini + 1;
		end
		default: res_do = 0;
	endcase
end

always @(posedge clk or negedge reset ) begin
	if( !reset ) dup_cnt <= 4'd0;
	else if( nx_state == STATE_DUPLICATE ) dup_cnt <= dup_cnt + 1;
	else dup_cnt <= 0; 
end

reg [13:0] addr_forw[3:0];

always @( * ) begin
	if( !flag_fb ) begin
		addr_forw[0] = {y-7'd1, x-7'd1} ;
		addr_forw[1] = {y-7'd1, x     } ;
		addr_forw[2] = {y-7'd1, x+7'd1} ;
		addr_forw[3] = {y     , x-7'd1} ;
	end
	else begin
		addr_forw[0] = {y     , x+7'd1} ;
		addr_forw[1] = {y+7'd1, x-7'd1} ;
		addr_forw[2] = {y+7'd1, x     } ;
		addr_forw[3] = {y+7'd1, x+7'd1} ;
	end
end	


always @(posedge clk or negedge reset ) begin
	if( !reset ) 							res_addr <= 0;
	else if( nx_state == STATE_DUPLICATE ) 	res_addr <= {sti_addr,dup_cnt};
	else if( nx_state == STATE_READ_MEM ) 	res_addr <= {y,x};
	else if( nx_state == STATE_CALC ) 		res_addr <= ( flag_fb )? addr_forw[cnt_calc] + 1:addr_forw[cnt_calc] - 1;
	else if( nx_state == STATE_OUTPUT ) 	res_addr <= ( flag_fb )? {y,x} + 1:{y,x} - 1;
	else if( nx_state == STATE_DELAY ) 		res_addr <= 16383;
end

always @( posedge clk or negedge reset ) begin
	if( !reset ) done <= 0;
	else if( cur_state == STATE_FINISH ) done <= 1;
end

assign res_wr = ( cur_state == STATE_DUPLICATE || cur_state == STATE_OUTPUT );
assign res_rd = ( cur_state == STATE_READ_MEM  || cur_state == STATE_CALC   );

assign fw_finish = flag_fb;
//================================================================
//  x && y
//================================================================
always @(posedge clk or negedge reset) begin
	if(!reset) begin
		x <= 7'd0; y <= 7'd0;
	end
	else if( nx_state == STATE_READ_MEM ) begin
		if( flag_fb ) begin
			x <= x - 1; y<= (x == 0)? y-1:y;
		end
		else begin
			x <= x + 1; y <= ( x == 127 )? y+1 : y; 
		end
	end
	else if( nx_state == STATE_DELAY ) begin
		x <= 7'd127; y <= 7'd127;
	end 
end

always @( posedge clk or negedge reset ) begin
	if(!reset) cnt_calc <= 0;
	else if( nx_state == STATE_CALC ) cnt_calc <= cnt_calc + 1; 
	else cnt_calc <= 0;
end

//================================================================
//  flag
//================================================================
always @(posedge clk or negedge reset ) begin
	if(!reset) flag_fb <= 0;
	else if( cur_state == STATE_READ_MEM ) begin
		if( res_addr == 16383 ) flag_fb <= 1;
	end
end

//================================================================
//  mini
//================================================================
always @(posedge clk or negedge reset ) begin
	if(!reset) mini <= 0;
	else if( cur_state == STATE_CALC ) begin
		if( cnt_calc == 1 ) mini <= res_di;
		else begin
			if( res_di < mini ) mini <= res_di;
		end
	end
end

always @(posedge clk or negedge reset ) begin
	if(!reset) done <= 0;
	else done <= (cur_state == STATE_FINISH );
end
 
endmodule
