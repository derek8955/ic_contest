//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   2019 IC Contest
//   univ_cell_based          : Convolution Neural Network
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
//  Wires & Registers 
//================================================================
reg [5:0] x, y, L1_x, L1_y;
wire signed [39:0] bias;
assign bias = 40'h0013100000;

wire signed [19:0] conv_result;

reg [3:0] counter_data, counter_addr;
reg [2:0] counter_layer1;

reg [2:0] state, nx_state;

//================================================================
//  integer / genvar / parameters
//================================================================

//state
parameter IDLE = 3'd0, INPUT = 3'd1, L0_MEM = 3'd2, DELAY_CLK = 3'd3, READ_L0_MEM = 3'd4, L1_MEM = 3'd5, DELAY_CLK_2 = 3'd6, FINISH = 3'd7;
// csel state 
parameter NOSEL = 3'b000, LAYER_0 = 3'b001, LAYER_1 = 3'b011;

//================================================================
//  iaddr 
//================================================================

always@( posedge clk or posedge reset )
begin
	if( reset ) iaddr <= 12'd0;
	else if( nx_state == INPUT )
	begin
		case( counter_addr )
		4'd0: iaddr <= {y - 6'd1,x - 6'd1};
		4'd1: iaddr <= {y - 6'd1,x};
		4'd2: iaddr <= {y - 6'd1,x + 6'd1};
		4'd3: iaddr <= {y,x - 6'd1};
		4'd4: iaddr <= {y,x};
		4'd5: iaddr <= {y,x + 6'd1};
		4'd6: iaddr <= {y + 6'd1,x - 6'd1};
		4'd7: iaddr <= {y + 6'd1,x};
		4'd8: iaddr <= {y + 6'd1,x + 6'd1};
		endcase
	end
	else if( nx_state == L0_MEM ) iaddr <= {y,x+6'd1};
end

//================================================================
//  x && y 
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		x <= 6'd0; y <= 6'd0;
	end
	else if( state == L0_MEM )
	begin
		x <= x + 6'd1; y <= ( x== 6'd63 )? y + 6'd1 : y;
	end
end

//================================================================
//  L1_x && L1_y
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		L1_x <= 6'd0; L1_y <= 6'd0;
	end
	else if( state == L1_MEM  )
	begin
		L1_x <= ( L1_x == 6'd62 )? 6'd0 : L1_x + 6'd2; L1_y <= ( L1_x == 6'd62 )? L1_y + 6'd2 : L1_y;	
	end
end

//================================================================
// INPUT
//================================================================
parameter Kernel_0 = 20'h0A89E,
		  Kernel_1 = 20'h092D5,
		  Kernel_2 = 20'h06D43,
		  Kernel_3 = 20'h01004,
		  Kernel_4 = 20'hF8F71,
		  Kernel_5 = 20'hF6E54,
		  Kernel_6 = 20'hFA6D7,
		  Kernel_7 = 20'hFC834,
		  Kernel_8 = 20'hFAC19;

reg signed [19:0] Kernel;	
	  
always@( * )
begin
	case( counter_data )
	4'd1: Kernel = Kernel_0;
	4'd2: Kernel = Kernel_1;
	4'd3: Kernel = Kernel_2;
	4'd4: Kernel = Kernel_3;
	4'd5: Kernel = Kernel_4;
	4'd6: Kernel = Kernel_5;
	4'd7: Kernel = Kernel_6;
	4'd8: Kernel = Kernel_7;
	4'd9: Kernel = Kernel_8;
	default: Kernel = 20'd0;
	endcase
end

wire signed [39:0] data_conv;
reg signed [39:0] data_conv_sum;
reg signed [19:0] idata_tmp;
assign data_conv = idata_tmp * Kernel;
 
//================================================================
//  data_conv_sum && idata_tmp
//================================================================ 
always@( posedge clk or posedge reset )  
begin
	if( reset ) 
	begin
		data_conv_sum <= 40'd0;
		idata_tmp <= 20'd0;
	end
	else if( state == INPUT )
	begin
		idata_tmp <= idata;
		case( counter_data )
		4'd0: data_conv_sum <= 40'd0;
		4'd1: 
		begin
			if( x != 6'd0 && y != 6'd0 ) data_conv_sum <= data_conv_sum + data_conv;
		end
		4'd2:
		begin
			if( y != 6'd0 ) data_conv_sum <= data_conv_sum + data_conv;
		end
		4'd3:
		begin
			
			if( x != 6'd63 && y != 6'd0 ) data_conv_sum <= data_conv_sum + data_conv;
		end
		4'd4:
		begin
			if( x != 6'd0 && y != 6'd0 ) data_conv_sum <= data_conv_sum + data_conv;
		end
		4'd5: data_conv_sum <= data_conv_sum + data_conv;
		4'd6:
		begin 
			if( x != 6'd63 )  data_conv_sum <= data_conv_sum + data_conv;
		end
		4'd7:
		begin 
			if( y != 6'd63 && x != 6'd0  ) data_conv_sum <= data_conv_sum + data_conv;
		end
		4'd8:
		begin 
			if( y != 6'd63 ) data_conv_sum <= data_conv_sum + data_conv;
		end
		4'd9:
		begin 
			if( y != 6'd63 && x != 6'd63 ) data_conv_sum <= data_conv_sum + data_conv;
		end
		4'd10: data_conv_sum <= data_conv_sum + bias;
		endcase
	end
end

//================================================================
//  cwr
//================================================================ 
always@( posedge clk or posedge reset )
begin
	if( reset ) cwr <= 1'd0;
	else if( state == L0_MEM ) cwr <= 1'd1;
	else if( state == L1_MEM ) cwr <= 1'd1;
	else cwr <= 1'd0;
end

//================================================================
//  crd
//================================================================ 
always@( posedge clk or posedge reset )
begin
	if( reset ) crd <= 1'd0;
	else if( nx_state == READ_L0_MEM ) crd <= 1'd1;
	else crd <= 1'd0;
end

//================================================================
//  caddr_rd
//================================================================ 

always@( posedge clk or posedge reset )
begin
	if( reset ) caddr_rd <= 12'd0;
	else if( nx_state == READ_L0_MEM ) 
	begin
		case( counter_layer1 )
		3'd0: caddr_rd <= {L1_y,L1_x};
		3'd1: caddr_rd <= {L1_y,L1_x+6'd1};
		3'd2: caddr_rd <= {L1_y+6'd1,L1_x};
		3'd3: caddr_rd <= {L1_y+1'd1,L1_x+6'd1};
		endcase 
	end
end

//================================================================
//  caddr_wr
//================================================================ 
always@( posedge clk or posedge reset )
begin
	if( reset ) caddr_wr <= 12'd0;
	else if( state == L0_MEM ) caddr_wr <= {y,x};
	else if( state == L1_MEM ) caddr_wr <= {L1_y[5:1],L1_x[5:1]};
end

//================================================================
//  cdata_wr
//================================================================ 
assign conv_result = ( data_conv_sum[15] )? {data_conv_sum[35:16]} + 20'd1 : {data_conv_sum[35:16]}  ;

always@( posedge clk or posedge reset )
begin
	if( reset ) cdata_wr <= 20'd0;
	else if( state == L0_MEM ) cdata_wr <= ( data_conv_sum[39] )? 20'd0 : conv_result;
	else if( state == READ_L0_MEM )
	begin
		if( counter_layer1 == 3'd1 ) cdata_wr <= cdata_rd;
		else cdata_wr <= ( cdata_rd > cdata_wr )? cdata_rd: cdata_wr; 
	end
end

//================================================================
//  counter_addr
//================================================================ 
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_addr <= 4'd0;
	else if( nx_state == INPUT ) counter_addr <= counter_addr + 4'd1;
	else if( nx_state == L0_MEM ) counter_addr <= 4'd0;
end

//================================================================
//  counter_data
//================================================================ 
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_data <= 4'd0;
	else counter_data <= counter_addr;
end

//================================================================
//  counter_layer1
//================================================================ 
always@( posedge clk or posedge reset )
begin
	if( reset ) counter_layer1 <= 3'd0;
	else if( nx_state == READ_L0_MEM ) counter_layer1 <= counter_layer1 + 3'd1;
	else counter_layer1 <= 3'd0;
end

//================================================================
//  busy 
//================================================================
always@( posedge clk or posedge reset ) 
begin
	if( reset ) busy <= 1'd0;
	else if( ready ) busy <= 1'd1; 
	else if( state == FINISH ) busy <= 1'd0;
end

//================================================================
//  csel
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) csel <= NOSEL;
	else if( state == L0_MEM ) csel <= LAYER_0;
	else if( state == L1_MEM ) csel <= LAYER_1;
	else if( nx_state == READ_L0_MEM ) csel <= LAYER_0;
	else csel <= NOSEL;
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
	IDLE: nx_state = INPUT;
	INPUT: nx_state = ( counter_data == 4'd10 )? L0_MEM : INPUT ;
	L0_MEM: nx_state = DELAY_CLK;
	DELAY_CLK: nx_state = ( x == 6'd0 && y == 6'd0 )? READ_L0_MEM : INPUT;
	READ_L0_MEM: nx_state = ( counter_layer1 == 3'd4 )? L1_MEM : READ_L0_MEM ;
	L1_MEM: nx_state = DELAY_CLK_2;
	DELAY_CLK_2: nx_state = ( L1_x == 6'd0 && L1_y == 6'd0 )? FINISH : READ_L0_MEM;
	FINISH: nx_state = FINISH;
	default: nx_state = IDLE;
	endcase
end

endmodule
