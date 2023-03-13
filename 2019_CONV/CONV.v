//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   2019 IC Contest
//   grad_cell_based          : Convolution Neural Network
//   Author         : Yao-Zhan Xu (xuyaozhan8905@gmail.com)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   File Name   : CONV.v
//   Module Name : CONV
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################
module  CONV(
	input			clk, 
	input			reset, 
	output reg		busy,	
	input			ready,				
	output reg[11:0]	iaddr,
	input signed[19:0]		idata,	
	output reg 	 	cwr,
	output reg[11:0] 	caddr_wr,
	output reg[19:0] 	cdata_wr,	
	output reg	 	crd,
	output reg[11:0]	caddr_rd,
	input	[19:0]		cdata_rd,
	output reg[2:0] 	csel
	);
//================================================================
//  integer / genvar / parameters
//================================================================
// current state 		  
parameter 	STATE_IDLE = 3'd0,
			STATE_CONV = 3'd1,
			STATE_L0MEM = 3'd2,
			STATE_READ_MEM = 3'd3,
			STATE_L1MEM = 3'd4,
			STATE_L2MEM = 3'd5,
			STATE_FINISH = 3'd6,
			STATE_DELAY = 3'd7;
// current state == STATE_READ_MEM
parameter STATE_READ_L0MEM0 = 2'd0, STATE_READ_L0MEM1 = 2'd1, STATE_READ_L1MEM0 = 2'd2, STATE_READ_L1MEM1 =2'd3;
// bias
parameter 	bias0 = 20'h01310,
			bias1 = 20'hF7295;	
// csel
parameter NOSEL = 3'd0, LAYER0_kernel0 = 3'd1, 	LAYER0_kernel1 = 3'd2, LAYER1_kernel0 = 3'd3, 	LAYER1_kernel1 = 3'd4, LAYER2 = 3'd5;
 			
//================================================================
//  Wires & Registers 
//================================================================
reg [3:0] cur_state, nx_state, previos_state;
reg [1:0] cur_rd_state, nx_rd_state, cur_wr_state, nx_wr_state;
// Input 
reg signed [19:0] idata_buffer;
reg [5:0] x, y;
reg [3:0] cnt_block;
// Conv
reg signed [39:0] conv_mul_0, conv_add_0, conv_mul_1, conv_add_1;
wire signed [19:0] kernel_0, kernel_1;
// pre_output for Layer0
wire signed [39:0] sum0, sum1;
wire signed [19:0] carry0, carry1;
// Max pooling 
reg [2:0] cnt_pooling;
reg signed [19:0] max;
// flag
reg flag_0, flag_1, flag_2;
//================================================================
// INPUT
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) idata_buffer <= 'd0;
	else begin
		case( cnt_block )
		1: idata_buffer <= ( x==0 || y==0 )? 'd0: idata; 
		2: idata_buffer <= ( y==0 )? 'd0: idata; 
		3: idata_buffer <= ( x==63 || y==0 )? 'd0: idata; 
		4: idata_buffer <= ( x==0 )? 'd0: idata; 
		5: idata_buffer <= idata; 
		6: idata_buffer <= ( x==63 )? 'd0: idata; 
		7: idata_buffer <= ( x==0 || y==63 )? 'd0: idata; 
		8: idata_buffer <= ( y==63 )? 'd0: idata; 
		9: idata_buffer <= ( x==63 || y==63 )? 'd0: idata; 
		endcase
	end
end

always @( posedge clk or posedge reset ) begin
	if( reset ) cnt_block <= 'd0;
	else if( nx_state == STATE_CONV ) cnt_block <= cnt_block + 'd1;
	else cnt_block <= 'd0;
end

always @( posedge clk or posedge reset ) begin
	if( reset ) begin
		x <= 'd0; y <= 'd0;
	end
	else if( nx_state == STATE_DELAY ) begin
		if( cur_state == STATE_L2MEM  ) begin
			x[4:0] <= x[4:0] + 1; y <= y + ( x == 5'd31 ) ;	
		end
		else if( cur_state == STATE_L1MEM ) begin
			x <= x + 2; y <= y + ( x == 6'd62 ) + ( x == 6'd62 );
		end
		else begin // cur_state == STATE_L0MEM 
			x <= x + 1; y <= y + ( x == 6'd63 );
		end
	end
end

//================================================================
// CONV
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) begin
		conv_mul_0 <= 'd0; conv_mul_1 <= 'd0;
	end 
	else if( cur_state == STATE_CONV ) begin
		if( cnt_block > 1 ) begin
			conv_mul_0 <= kernel_0 * idata_buffer;
			conv_mul_1 <= kernel_1 * idata_buffer;			
		end
		else begin
			conv_mul_0 <= 'd0; conv_mul_1 <= 'd0;
		end
	end
end

always @( posedge clk or posedge reset ) begin
	if( reset ) begin
		conv_add_0 <= 'd0; conv_add_1 <= 'd0;
	end
	else if( cur_state == STATE_CONV ) begin
		if( cnt_block > 2 ) begin
			conv_add_0 <= conv_add_0 + conv_mul_0 ;
			conv_add_1 <= conv_add_1 + conv_mul_1 ;
		end
		else begin
			conv_add_0 <= 'd0;
			conv_add_1 <= 'd0;
		end
	end
end

KERNEL0 u_kernel0( .counter(cnt_block), .kernel(kernel_0) );
KERNEL1 u_kernel1( .counter(cnt_block), .kernel(kernel_1) );
//================================================================
// Control Signals 
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) busy <= 1'b0;
	else if( cur_state == STATE_FINISH ) busy <= 1'b0;
	else if( cur_state == STATE_IDLE ) busy <= 1'b1;
end

always @( * ) begin
	case( cur_state ) 
	STATE_IDLE, STATE_CONV, STATE_DELAY, STATE_READ_MEM : begin
		crd = 1'b1; cwr = 1'b0;
	end	
	STATE_L0MEM, STATE_L1MEM, STATE_L2MEM: begin
		crd = 1'b0; cwr = 1'b1;
	end
	default: begin
		crd = 1'b0; cwr = 1'b0;
	end
	endcase
end

always @( * ) begin
	case( cur_state ) 
	STATE_IDLE, STATE_CONV: csel = NOSEL;
	STATE_DELAY: 			csel = LAYER0_kernel0;
	STATE_L0MEM: 			csel = ( flag_0 )? LAYER0_kernel1 : LAYER0_kernel0 ;
	STATE_READ_MEM: begin
		case( cur_rd_state ) 
		STATE_READ_L0MEM0: 	csel = LAYER0_kernel0;
		STATE_READ_L0MEM1: 	csel = LAYER0_kernel1;
		STATE_READ_L1MEM0: 	csel = LAYER1_kernel0;
		STATE_READ_L1MEM1: 	csel = LAYER1_kernel1;
		endcase
	end
	STATE_L1MEM: 			csel = ( flag_1 )? LAYER1_kernel1 : LAYER1_kernel0;
	STATE_L2MEM:  			csel = LAYER2;
	default: 				csel = NOSEL;
	endcase
end

//================================================================
// MAX-POOLING
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) cnt_pooling <= 'd0;
	else if( nx_rd_state == STATE_READ_L0MEM0 || nx_rd_state == STATE_READ_L0MEM1 ) cnt_pooling <= cnt_pooling + 2'd1;
	else cnt_pooling <= 'd0;
end

always @( posedge clk or posedge reset ) begin
	if( reset ) max <= 'd0;
	else if( cur_state == STATE_READ_MEM && (cur_rd_state == STATE_READ_L0MEM0 || cur_rd_state == STATE_READ_L0MEM1) ) begin
		if( cnt_pooling == 1 ) max <= cdata_rd;
		else if( cdata_rd > max ) max <= cdata_rd;
	end
end

//================================================================
// OUTPUT: iaddr
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) iaddr <= 'd0;
	else if( nx_state == STATE_CONV ) begin
		case( cnt_block )
		0: iaddr <= {y-6'd1,x-6'd1};
		1: iaddr <= {y-6'd1,x};
		2: iaddr <= {y-6'd1,x+6'd1};
		3: iaddr <= {y,x-6'd1};
		4: iaddr <= {y,x};
		5: iaddr <= {y,x+6'd1};
		6: iaddr <= {y+6'd1,x-6'd1};
		7: iaddr <= {y+6'd1,x};
		8: iaddr <= {y+6'd1,x+6'd1};
		endcase
	end
end
//================================================================
// flag
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) flag_2 <= 'd0;
	else if( cur_state == STATE_L2MEM ) flag_2 <= ~flag_2;
end

always @( posedge clk or posedge reset ) begin
	if( reset ) flag_1 <= 'd0;
	else if( cur_state == STATE_L1MEM ) flag_1 <= ~flag_1;
end

always @( posedge clk or posedge reset ) begin
	if( reset ) flag_0 <= 'd0;
	else if( cur_state == STATE_L0MEM ) flag_0 <= ~flag_0;
end

//================================================================
// PRE_OUTPUT: ADD BIAS, CARRY OUT
//================================================================
assign sum0 = conv_add_0 + {4'b0,bias0,16'b0};
assign sum1 = conv_add_1 + {4'b0,bias1,16'b0};

assign carry0 = ( sum0[15] )? sum0[35:16] + 1: sum0[35:16];
assign carry1 = ( sum1[15] )? sum1[35:16] + 1: sum1[35:16];
//================================================================
// OUTPUT
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) caddr_wr <= 'd0;
	else if( nx_state == STATE_L0MEM ) caddr_wr <= {y,x};
	else if( nx_state == STATE_L1MEM ) caddr_wr <= {y[5:1],x[5:1]};
	else if( nx_state == STATE_L2MEM ) caddr_wr <= {y,x[4:0],1'b0} + flag_2;
end

always @( posedge clk or posedge reset ) begin
	if( reset ) cdata_wr <= 'd0;
	else if( nx_state == STATE_L0MEM ) begin
		if( cur_state == STATE_L0MEM ) cdata_wr <= ( carry1 > 0 )? carry1 : 'd0 ; // using flag_0 will error
		else cdata_wr <= ( carry0 > 0 )? carry0 : 'd0 ;
	end
	else if( nx_state == STATE_L1MEM ) cdata_wr <= ( cdata_rd > max )? cdata_rd: max ;
	else if( nx_state == STATE_L2MEM ) cdata_wr <= cdata_rd;
end
 
always @( posedge clk or posedge reset ) begin
	if( reset ) caddr_rd <= 'd0;
	else if( nx_rd_state == STATE_READ_L0MEM0 || nx_rd_state == STATE_READ_L0MEM1 ) begin
		case( cnt_pooling )
		0: caddr_rd <= {y,x};
		1: caddr_rd <= {y,x+6'd1};
		2: caddr_rd <= {y+6'd1,x};
		3: caddr_rd <= {y+6'd1,x+6'd1};
		endcase
	end
	else if( nx_rd_state == STATE_READ_L1MEM0 || nx_rd_state == STATE_READ_L1MEM1 ) caddr_rd <= {y[4:0],x[4:0]};
end

//================================================================
// FSM
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) previos_state <= STATE_IDLE;
	else previos_state <= cur_state;
end

always @( posedge clk or posedge reset ) begin
	if( reset ) cur_state <= STATE_IDLE;
	else cur_state <= nx_state;
end

always @( * ) begin
	case( cur_state )
	STATE_IDLE: nx_state = ( !ready )? STATE_CONV : STATE_IDLE ;
	STATE_CONV: nx_state = ( cnt_block == 12 )? STATE_L0MEM : STATE_CONV ;
	STATE_READ_MEM: begin
		if( cur_rd_state == STATE_READ_L0MEM0 ) nx_state = ( cnt_pooling == 3'd4 )? STATE_L1MEM : STATE_READ_MEM ;
		else if( cur_rd_state == STATE_READ_L0MEM1 ) nx_state = ( cnt_pooling == 3'd4 )? STATE_L1MEM : STATE_READ_MEM ;
		else if( cur_rd_state == STATE_READ_L1MEM0 ) nx_state = STATE_L2MEM;
		else nx_state = STATE_L2MEM; // cur_rd_state == STATE_READ_L1MEM1
			
	end
	STATE_L0MEM: nx_state = ( flag_0 )? STATE_DELAY : STATE_L0MEM ;
	STATE_L1MEM: nx_state = ( flag_1 )? STATE_DELAY : STATE_READ_MEM ;
	STATE_L2MEM: nx_state = ( flag_2 )? STATE_DELAY : STATE_READ_MEM ;
	STATE_DELAY: begin
		if( {y,x} == 12'd0 ) begin
			if( previos_state == STATE_L2MEM  ) nx_state = STATE_FINISH;
			else if( previos_state == STATE_L1MEM ) nx_state = STATE_READ_MEM;
			else nx_state = STATE_READ_MEM; // previos_state == STATE_L0MEM
		end
		else begin
			if( previos_state == STATE_L2MEM  ) nx_state = STATE_READ_MEM;
			else if( previos_state == STATE_L1MEM ) nx_state = STATE_READ_MEM;
			else nx_state = STATE_CONV; // previos_state == STATE_L0MEM
		end
	end
	STATE_FINISH: nx_state = STATE_FINISH;
	endcase 
end

always @( posedge clk or posedge reset ) begin
	if( reset ) cur_rd_state <= STATE_READ_L0MEM0;
	else cur_rd_state <= nx_rd_state;
end

always @( * ) begin
	case( cur_rd_state ) 
	STATE_READ_L0MEM0: nx_rd_state = ( cur_state == STATE_L1MEM )? STATE_READ_L0MEM1 : STATE_READ_L0MEM0 ;
	STATE_READ_L0MEM1: begin
		if( cur_state == STATE_DELAY ) nx_rd_state = ( {y,x} == 12'd0 )? STATE_READ_L1MEM0 : STATE_READ_L0MEM0 ;
		else nx_rd_state = STATE_READ_L0MEM1;
	end
	STATE_READ_L1MEM0: nx_rd_state = ( cur_state == STATE_L2MEM )? STATE_READ_L1MEM1: STATE_READ_L1MEM0 ;
	STATE_READ_L1MEM1: begin
		if( cur_state == STATE_DELAY ) nx_rd_state = ( {y,x} == 12'd0 )? STATE_READ_L0MEM0: STATE_READ_L1MEM0 ;
		else nx_rd_state = STATE_READ_L1MEM1;
	end
	endcase
end

endmodule

module KERNEL0(
// Input Signals
	counter,
// Output Signals
	kernel
);
input [3:0] counter ;
output reg signed [19:0] kernel;

// kernel 
parameter 	// Kernel 0
			Kernel_0 = 20'h0A89E,
			Kernel_1 = 20'h092D5,
			Kernel_2 = 20'h06D43,
			Kernel_3 = 20'h01004,
			Kernel_4 = 20'hF8F71,
			Kernel_5 = 20'hF6E54,
			Kernel_6 = 20'hFA6D7,
			Kernel_7 = 20'hFC834,
			Kernel_8 = 20'hFAC19;
			
always@( * ) begin 
	case( counter ) 
	2: kernel = Kernel_0;
	3: kernel = Kernel_1;
	4: kernel = Kernel_2;
	5: kernel = Kernel_3;
	6: kernel = Kernel_4;
	7: kernel = Kernel_5;
	8: kernel = Kernel_6;
	9: kernel = Kernel_7;
	10: kernel = Kernel_8;
	default: kernel = 'd0;
	endcase
end
endmodule

module KERNEL1(
// Input Signals
	counter,
// Output Signals
	kernel
);
input [3:0] counter ;
output reg signed [19:0] kernel;

// kernel 
parameter 	// Kernel 1 
			Kernel_0 = 20'hFDB55,
			Kernel_1 = 20'h02992,
			Kernel_2 = 20'hFC994,
			Kernel_3 = 20'h050FD,
			Kernel_4 = 20'h02F20,
			Kernel_5 = 20'h0202D,
			Kernel_6 = 20'h03BD7,
			Kernel_7 = 20'hFD369,
			Kernel_8 = 20'h05E68;

always@( * ) begin 
	case( counter ) 
	2: kernel = Kernel_0;
	3: kernel = Kernel_1;
	4: kernel = Kernel_2;
	5: kernel = Kernel_3;
	6: kernel = Kernel_4;
	7: kernel = Kernel_5;
	8: kernel = Kernel_6;
	9: kernel = Kernel_7;
	10: kernel = Kernel_8;
	default: kernel = 'd0;
	endcase
end
			
endmodule
