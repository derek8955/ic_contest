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
	input	[19:0]		idata,	
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
wire signed [19:0] Kernel_0[0] = 20'h0A89E, Kernel_0[1] = 20'h092D5, Kernel_0[2] = 20'h06D43, Kernel_0[3] = 20'h01004;
wire signed [19:0] Kernel_0[4] = 20'hF8F71, Kernel_0[5] = 20'hF6E54, Kernel_0[6] = 20'hFA6D7, Kernel_0[7] = 20'hFC834, Kernel_0[8] = 20'hFAC19;

wire signed [19:0] Kernel_1[0] = 20'hFDB55, Kernel_1[1] = 20'h02992, Kernel_1[2] = 20'hFC994, Kernel_1[3] = 20'h050FD;
wire signed [19:0] Kernel_1[4] = 20'h02F20, Kernel_1[5] = 20'h0202D, Kernel_1[6] = 20'h03BD7, Kernel_1[7] = 20'hFD369, Kernel_1[8] = 20'h05E68;

reg [5:0] x, y;
reg [2:0] state, nx_state;
reg signed [39:0] image_conv0, image_conv_1;
reg [3:0] counter;
wire [11:0] iaddr_E, iaddr_SW, iaddr_S;
//================================================================
//  integer / genvar / parameters
//================================================================

//state
parameter IDLE = 3'd0, IN = 3'd1, WR_0 = 3'd2, WR_1 = 3'd3, FN = 3'd4;
//csel state
parameter NOCEL = 3'b000, L0_MEM0 = 3'b001, L0_MEM1 = 3'b010, L1_MEM0 = 3'b011, L1_MEM1 = 3'100, L2_MEM = 3'b101; 
//================================================================
//  design 
//================================================================

//x
always@( posedge clk or posedge reset)
begin
	if( reset ) x <= 6'd0;
	else if( nx_state == WR_0 ) x <= ( x == 6'd63 )? 6'd0 : x + 1;
end

//y
always@( posedge clk or posedge reset)
begin
	if( reset ) y <= 6'd0;
	else if( nx_state == WR_0 && x == 6'd63 ) y <= y + 1;
end

//================================================================
//  OUTPUT : busy
//================================================================
always@( posedge clk )
begin
	if( ready ) busy <= 1'd1;
	else if( nx_state == FN ) busy <= 1'd0;
end

//================================================================
//  OUTPUT : iaddr
//================================================================
assign iaddr_E = iaddr + 12'd1;
assign iaddr_S = iaddr + 12'd62;

always@( posedge clk or posedge reset )
begin
	if( reset ) iaddr <= 12'd0;
	else if( nx_state == IN ) 
	begin
		case( counter )
		4'd0: iaddr <= {y,x};
		4'd1: iaddr <= iaddr_E;
		4'd2: iaddr <= iaddr_E;
		4'd3: iaddr <= iaddr_S;
		4'd4: iaddr <= iaddr_E;
		4'd5: iaddr <= iaddr_E;
		4'd6: iaddr <= iaddr_S;
		4'd7: iaddr <= iaddr_E;
		4'd8: iaddr <= iaddr_E;		
		endcase
	end
end

//================================================================
//  INPUT
//================================================================
always@( posedge clk or posedge reset )
begin
	if( state == IDLE )
	begin
		image_conv_0 <= 40'd0; image_conv_1 <= 40'd0;
	end
	else if( state == IN ) 
	begin
		image_conv_0 <= image_conv_0 + ( idata * Kernel_0[ counter-4'd1 ] );
		image_conv_1 <= image_conv_0 + ( idata * Kernel_1[ counter-4'd1 ] );
	end
	else if( state == WR_0 ) image_conv_0 <= 40'd0; 
	else if( state == WR_1 ) image_conv_1 <= 40'd0; 	
end

//================================================================
//  counter
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) counter <= 4'd0;
	else if( nx_state == IN )
	begin
		if( x == 6'd0 && y == 6'd0 )
		begin
			case( counter )
			
			endcase
		end
		counter <= counter + 4'd1;
		
	end
	else if( nx_state == WR_0 ) counter <= 4'd0;
end

//================================================================
//  Control Signals
//================================================================
always@( * )
begin
	case( state )
	IDLE:
	begin
		crd = 1'd0;
		cwr = 1'd0;
		csel = NOCEL;
	end
	WR_0:
	begin
		crd = 1'd0;
		cwr = 1'd1;
		csel = L0_MEM0;	
	end
	WR_1:
	begin
		crd = 1'd0;
		cwr = 1'd1;
		csel = L0_MEM1;	
	end
	default:
	begin
		crd = 1'd0;
		cwr = 1'd0;
		csel = 3'd0;
	end

	endcase
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
	default: nx_state = IDLE;
	endcase
end

endmodule
