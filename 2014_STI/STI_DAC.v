//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   2014 IC Contest
//   univ_cell_based          : STI_DAC
//   Author         : Yao-Zhan Xu (xuyaozhan8905@gmail.com)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   File Name   : STI_DAC.v
//   Module Name : STI_DAC
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################
module STI_DAC(
	//Input Signals
	clk ,reset, load, pi_data, pi_length, pi_fill, pi_msb, pi_low, pi_end,
	//Output Signals
	so_data, so_valid, oem_finish, oem_dataout, oem_addr, odd1_wr, odd2_wr,
	odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr
);
//================================================================
//  INPUT AND OUTPUT DECLARATION - STI_DAC                       
//================================================================	
input		clk, reset;
input		load, pi_msb, pi_low, pi_end; 
input	[15:0]	pi_data;
input	[1:0]	pi_length;
input		pi_fill;
output		so_data, so_valid;

output  oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr;
output [4:0] oem_addr;
output [7:0] oem_dataout;

//==============================================================================

STI sti( .clk( clk ), .reset( reset ), .load( load ), .pi_fill( pi_fill ), .pi_msb( pi_msb ), .pi_low( pi_low ), 
		 .pi_length( pi_length ), .pi_data( pi_data ), .pi_end( pi_end ), 
		 .so_valid( so_valid ), .so_data( so_data ) 
);

DAC dac( .clk( clk ), .reset( reset ), .so_valid( so_valid ), .so_data( so_data ), .pi_end(pi_end),
		 .oem_finish( oem_finish ), .odd1_wr( odd1_wr ), .odd2_wr( odd2_wr ), .odd3_wr( odd3_wr ), .odd4_wr( odd4_wr ), .even1_wr( even1_wr ), .even2_wr( even2_wr ) , .even3_wr( even3_wr ), .even4_wr( even4_wr ), .oem_addr( oem_addr ), .oem_dataout( oem_dataout )
);

endmodule


module STI( 
	//Input Signals
	clk, reset, load, pi_fill, pi_msb, pi_low, pi_length, pi_data, pi_end, 
	//Output Signals
	so_valid, so_data 
);
//================================================================
//  INPUT AND OUTPUT DECLARATION -- STI                        
//================================================================	
input		clk, reset;
input		load, pi_msb, pi_low, pi_end; 
input	[15:0]	pi_data;
input	[1:0]	pi_length;
input			pi_fill;
output reg 		so_data, so_valid;

//================================================================
//  Wires & Registers -- STI                      
//================================================================	
reg [4:0] counter;
reg [2:0] state, nx_state;

//================================================================
//  integer / genvar / parameters -- STI
//================================================================
parameter EIGHT = 2'b00, SIXTEEN = 2'b01, TWENTY_FOUR = 2'b10, THIRTY_TWO = 2'b11;//pi_length
parameter IDLE = 3'd0, PROC = 3'd1, DELAY_CLK1 = 3'd2, DELAY_CLK2 = 3'd3, DELAY_CLK3 = 3'd4,FN = 3'd5;//state;

//================================================================
//  OUTPUT : so_valid -- STI
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) so_valid <= 1'd0;
	else if( state == FN ||  state == DELAY_CLK1 ) so_valid <= 1'd0;
	else if( state == PROC ) so_valid <= 1'd1;
end

//================================================================
//  OUTPUT : so_data -- STI
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) so_data <= 1'd0;
	else if( state == PROC )
	begin
		if( pi_length == TWENTY_FOUR )
		begin
			if( pi_fill )
			begin
				if( counter <= 5'd7 ) so_data <= 1'd0;
				else so_data <= pi_data[ counter - 5'd8 ];
			end
			else if( pi_fill == 1'd0 && counter >= 5'd16 ) so_data <= 1'd0;
			else so_data <= pi_data[ counter ];
		end
		else if( pi_length == THIRTY_TWO )
		begin
			if( pi_fill )
			begin
				if( counter <= 5'd15 ) so_data <= 1'd0;
				else so_data <= pi_data[ counter - 5'd16 ];		
			end
			else if( pi_fill == 1'd0 && counter >= 5'd16 ) so_data <= 1'd0;
			else so_data <= pi_data[ counter ];
		end
		else so_data <= pi_data[ counter ];		
	end
end

//================================================================
//  counter -- STI
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) counter <= 5'd0;
	else if( state == IDLE || state == DELAY_CLK3 )
	begin
		case( pi_length )
		EIGHT:
		begin
			if( pi_low && pi_msb ) counter <= 5'd15;
			if( pi_low && pi_msb == 1'd0 ) counter <= 5'd8;
			else if( pi_low == 1'd0 && pi_msb ) counter <= 5'd7;
			else if( pi_low == 1'd0 && pi_msb == 1'd0 ) counter <= 5'd0;
		end
		SIXTEEN:
		begin
			if( pi_msb ) counter <= 5'd15;
			else  counter <= 5'd0;
		end
		TWENTY_FOUR:
		begin
			if( pi_msb ) counter <= 5'd23;
			else  counter <= 5'd0;
		end
		THIRTY_TWO:
		begin
			if( pi_msb ) counter <= 5'd31;
			else  counter <= 5'd0;
		end
		endcase
	end
	else if( state == PROC )
	begin
		if( pi_msb ) counter <= counter - 5'd1;
		else counter <= counter + 5'd1;
	end
end

//================================================================
//  FSM -- STI
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) state <= IDLE;
	else state <= nx_state;
end

always@( * )
begin
	case( state )
	IDLE: nx_state = ( load == 1'd0 )? PROC : IDLE ;
	PROC:
	begin
		if( pi_length == EIGHT )
		begin
			if( pi_low && pi_msb && counter == 5'd8 ) nx_state = DELAY_CLK1;
			else if( pi_low && pi_msb == 1'd0 && counter == 5'd15 ) nx_state = DELAY_CLK1;
			else if( pi_low == 1'd0 && pi_msb && counter == 5'd0 ) nx_state = DELAY_CLK1;
			else if( pi_low == 1'd0 && pi_msb == 1'd0 && counter == 5'd7 ) nx_state = DELAY_CLK1;
			else  nx_state = PROC;
		end
		else if( pi_length == SIXTEEN )
		begin
			if( pi_msb && counter == 5'd0 ) nx_state = DELAY_CLK1;
			else if( pi_msb == 1'd0 && counter == 5'd15 ) nx_state = DELAY_CLK1;
			else  nx_state = PROC;
		end
		else if( pi_length == TWENTY_FOUR )
		begin
			if( pi_msb && counter == 5'd0 ) nx_state = DELAY_CLK1;
			else if( pi_msb == 1'd0 && counter == 5'd23 ) nx_state = DELAY_CLK1;
			else nx_state = PROC;
		end
		else if( pi_length == THIRTY_TWO ) 
		begin
			if( pi_msb && counter == 5'd0 ) nx_state = DELAY_CLK1;
			else if( pi_msb == 1'd0 && counter == 5'd31 ) nx_state = DELAY_CLK1;
			else nx_state = PROC;
		end
		else nx_state = PROC;
	end
	DELAY_CLK1: nx_state = DELAY_CLK2;
	DELAY_CLK2: nx_state = DELAY_CLK3;
	DELAY_CLK3: nx_state = ( pi_end )? FN : PROC;
	FN: nx_state = FN;
	default: nx_state = IDLE;
	endcase
end

endmodule



module DAC(
	//Input Signals
	clk, reset, so_valid, so_data, pi_end,
	//Output Signals
	oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr, oem_addr, oem_dataout
);
//================================================================
//  INPUT AND OUTPUT DECLARATION  -- DAC                     
//================================================================	
input		clk, reset;
input		so_data, so_valid;
input 		pi_end;
output reg oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr;
output reg [4:0] oem_addr;
output reg [7:0] oem_dataout;

//================================================================
//  Wires & Registers -- DAC                      
//================================================================	
reg [2:0] counter;
reg [7:0] ptr;
reg [7:0] data_in;
reg output_valid;
reg finish;
//================================================================
//  Control Signal -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset )
	begin
		odd1_wr <= 1'd0; odd2_wr <= 1'd0; odd3_wr <= 1'd0; odd4_wr <= 1'd0; 
		even1_wr <= 1'd0; even2_wr <= 1'd0; even3_wr <= 1'd0; even4_wr <= 1'd0; 
	end
	else if( output_valid )
	begin
		case( {ptr[7:5]} )
		3'd000: 
		begin
			if( ptr[2] ) even1_wr <= 1'd1;
			else odd1_wr <= 1'd1;
		end
		3'd001:
		begin
			if( ptr[2] ) odd1_wr <= 1'd1;
			else even1_wr <= 1'd1;
		end 
		3'd010: 
		begin
			if( ptr[2] ) even2_wr <= 1'd1;
			else odd2_wr <= 1'd1;
		end 
		3'd011:
		begin
			if( ptr[2] ) odd2_wr <= 1'd1;
			else even2_wr <= 1'd1;
		end 
		3'd100: 
		begin
			if( ptr[2] ) even3_wr <= 1'd1;
			else odd3_wr <= 1'd1;
		end 
		3'd101: 
		begin
			if( ptr[2] ) odd3_wr <= 1'd1;
			else even3_wr <= 1'd1;
		end 
		3'd110: 
		begin
			if( ptr[2] ) even4_wr <= 1'd1;
			else odd4_wr <= 1'd1;
		end
		3'd111: 
		begin
			if( ptr[2] ) odd4_wr <= 1'd1;
			else even4_wr <= 1'd1;
		end 
		endcase
	end
	else 
	begin
		odd1_wr <= 1'd0; odd2_wr <= 1'd0; odd3_wr <= 1'd0; odd4_wr <= 1'd0; 
		even1_wr <= 1'd0; even2_wr <= 1'd0; even3_wr <= 1'd0; even4_wr <= 1'd0; 
	end
end

//================================================================
//  output_valid -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) output_valid <= 8'd0;
	else if( output_valid ) output_valid <= 1'd0;
	else if( pi_end && so_valid == 1'd0 && finish ) output_valid <= 1'd1;
	else if( counter == 3'd0 ) output_valid <= 1'd1;
	else output_valid <= 1'd0;	
end

//================================================================
//  oem_dataout -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) oem_dataout <= 8'd0;
	else if( output_valid ) oem_dataout <= data_in;
end

//================================================================
//  oem_addr -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) oem_addr <= 5'd0;
	else oem_addr <= {ptr[4:0]};
end

//================================================================
//  oem_finish -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) oem_finish <= 1'd0;
	else if( ptr == 8'd0 && odd4_wr ) oem_finish <= 1'd1;
end

//================================================================
//  finish -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) finish <= 1'd0;
	else if( so_valid == 1'd0 && pi_end ) finish <= 1'd1;
end

//================================================================
//  ptr -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) ptr <= 8'd0;
	else if( output_valid ) 
	begin
		if( {ptr[7:5]} == 3'd000 ) ptr <= {3'b001,ptr[4:0]}; 
		else if( {ptr[7:5]} == 3'd001 ) 
		begin
			if( {ptr[4:0]} == 5'd31 ) ptr <= 8'b01000000;
			else ptr <= {3'b000, {ptr[4:0] + 5'd1 } };
		end
		else if( {ptr[7:5]} == 3'd010 ) ptr <= {3'b011,ptr[4:0]}; 
		else if( {ptr[7:5]} == 3'd011 ) 
		begin
			if( {ptr[4:0]} == 5'd31 ) ptr <= 8'b10000000;
			else ptr <= {3'b010, {ptr[4:0] + 5'd1 } };
		end
		else if( {ptr[7:5]} == 3'd100 ) ptr <= {3'b101,ptr[4:0]}; 
		else if( {ptr[7:5]} == 3'd101 ) 
		begin
			if( {ptr[4:0]} == 5'd31 ) ptr <= 8'b11000000;
			else ptr <= {3'b100, {ptr[4:0] + 5'd1 } };
		end
		else if( {ptr[7:5]} == 3'd110 ) ptr <= {3'b111,ptr[4:0]}; 
		else if( {ptr[7:5]} == 3'd111 ) 
		begin
			if( {ptr[4:0]} == 5'd31 ) ptr <= 8'd0;//oem_finish
			else ptr <= {3'b110, {ptr[4:0] + 5'd1 } };
		end
	end
end

//================================================================
//  counter -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) counter <= 3'd7;
	else if( so_valid ) counter <= ( counter == 3'd0 )? 3'd7: counter - 3'd1;
end

//================================================================
//  data_in -- DAC
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) data_in <= 8'd0;
	else if( so_valid ) data_in[ counter ] <= so_data;
	else if( pi_end && so_valid == 1'd0 && finish ) data_in <= 8'd0;
end

endmodule