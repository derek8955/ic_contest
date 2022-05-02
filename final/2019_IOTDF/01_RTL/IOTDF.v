`timescale 1ns/10ps
//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   2019 IC Contest final
//   univ_cell_based          : IOTDF(IOT Data Filtering)
//   Author         : Yao-Zhan Xu (xuyaozhan8905@gmail.com)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   File Name   : IOTDF.v
//   Module Name : IOTDF
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################
module IOTDF( clk, rst, in_en, iot_in, fn_sel, busy, valid, iot_out);
//================================================================
//  input & output declaration
//================================================================
input          clk;
input          rst;
input          in_en;
input  [7:0]   iot_in;
input  [2:0]   fn_sel;
output reg        busy;
output reg        valid;
output reg [127:0] iot_out;

//================================================================
//  integer & parameter & genvar
//================================================================
parameter 	IDLE = 2'd0,
			INPUT = 2'd1,
			OUTPUT = 2'd2;

parameter 	MAX = 3'd1,
			MIN = 3'd2,
			AVG = 3'd3,
			EXTRACT = 3'd4,
			EXCLUDE = 3'd5,
			PEAKMAX = 3'd6,
			PEAKMIN = 3'd7;

parameter 	EXT_LOW = 128'h6FFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF,
			EXT_HIGH = 128'hAFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF,
			EXC_LOW = 128'h7FFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF,
			EXC_HIGH = 128'hBFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
			
//================================================================
//  Wire & Registers
//================================================================
reg [3:0] cnt; // Only one
reg [2:0] cnt2; // Round

reg [1:0] cur_state, nx_state;

//================================================================
//  counter
//================================================================
always@( posedge clk or posedge rst )
begin
	if( rst ) cnt <= 4'd0;
	else if( in_en ) cnt <= cnt + 4'd1;
end

always@( posedge clk or posedge rst )
begin
	if( rst ) cnt2 <= 3'd0;
	else if( cur_state == OUTPUT ) cnt2 <= cnt2 + 3'd1;
end

//================================================================
//  iot_out
//================================================================
reg [7:0] input_data[0:15];
wire [127:0] iot_out_tmp;

assign iot_out_tmp = {input_data[0],input_data[1],input_data[2],input_data[3],input_data[4],input_data[5],input_data[6],input_data[7],input_data[8],input_data[9],input_data[10],input_data[11],input_data[12],input_data[13],input_data[14],input_data[15]};

integer idx;

always@( posedge clk or posedge rst )
begin
	if( rst ) 
	begin
		for ( idx=0 ; idx<16 ; idx=idx+1 ) input_data[idx] <= 8'd0;
	end
	else if( in_en ) input_data[cnt] <= iot_in; 
end

//AVG
reg [130:0] sum;
always@( posedge clk or posedge rst )
begin
	if( rst ) sum <= 131'd0;
	else if( cur_state == OUTPUT && cnt2 == 0 ) sum <= iot_out_tmp;
	else if( cur_state == OUTPUT && cnt2 != 0 ) sum <= sum + iot_out_tmp;
end

//PEAKMAX、PEAKMIN
reg first_round;
reg change_valid;

always@( posedge clk or posedge rst )
begin
	if( rst ) first_round <= 1'd1;
	else if( cur_state == OUTPUT && cnt2 == 3'd7 ) first_round <= 1'd0;
end

always@( posedge clk or posedge rst )
begin
	if( rst ) 
	begin
		change_valid <= 1'd0;
		iot_out <= 128'd0;
	end
	else if( cur_state == OUTPUT )
	begin
		case( fn_sel )
		MAX: 
		begin
			if( cnt2 == 3'd0 ) iot_out <= iot_out_tmp;
			else if( iot_out_tmp > iot_out ) iot_out <= iot_out_tmp;
		end
		PEAKMAX:
		begin
			if( cnt2 == 3'd0 ) 
			begin
				if( first_round )
				begin
					iot_out <= iot_out_tmp;
					change_valid <= 1'd1;
				end
				else 
				begin
					if( iot_out_tmp > iot_out ) 
					begin
						iot_out <= iot_out_tmp;
						change_valid <= 1'd1;
					end
					else change_valid <= 1'd0;
				end
			end
			else 
			begin
				if( iot_out_tmp > iot_out ) 
				begin
					iot_out <= iot_out_tmp;
					change_valid <= 1'd1;
				end
			end
		end
		MIN:
		begin
			if( cnt2 == 3'd0 ) iot_out <= iot_out_tmp;
			else if( iot_out_tmp < iot_out ) iot_out <= iot_out_tmp;
		end
		PEAKMIN:
		begin
			if( cnt2 == 3'd0 )
			begin
				if( first_round )
				begin
					iot_out <= iot_out_tmp;
					change_valid <= 1'd1;
				end
				else 
				begin
					if( iot_out_tmp < iot_out ) 
					begin
						iot_out <= iot_out_tmp;
						change_valid <= 1'd1;
					end
					else change_valid <= 1'd0;
				end
			end
			else 
			begin
				if( iot_out_tmp < iot_out ) 
				begin
					iot_out <= iot_out_tmp;
					change_valid <= 1'd1;
				end
			end
		end
		EXTRACT, EXCLUDE: iot_out <= iot_out_tmp;
		AVG: 
		begin
			if( cnt2 == 3'd7 ) iot_out <= (sum + iot_out_tmp) >> 3;
		end
		endcase
	end
end

//================================================================
//  busy
//================================================================
always@( posedge clk or posedge rst )
begin
	if( rst ) busy <= 1'd1;
	else if( cur_state == INPUT ) busy <= 1'd0;
	else if( cur_state == OUTPUT ) busy <= 1'd1;
end

//================================================================
//  valid
//================================================================
always@( posedge clk or posedge rst )
begin
	if( rst ) valid <= 1'd0;
	else if( cur_state == OUTPUT )
	begin
		case( fn_sel )
		EXTRACT:
		begin
			if( EXT_LOW < iot_out_tmp && iot_out_tmp < EXT_HIGH ) valid <= 1'd1;
		end
		EXCLUDE:
		begin
			if( iot_out_tmp < EXC_LOW || EXC_HIGH < iot_out_tmp ) valid <= 1'd1;		
		end
		PEAKMAX:
		begin
			if( cnt2 == 3'd7 && change_valid ) valid <= 1'd1;
			else if( cnt2 == 3'd7 && iot_out_tmp > iot_out ) valid <= 1'd1;
		end
		PEAKMIN:
		begin
			if( cnt2 == 3'd7 && change_valid ) valid <= 1'd1;
			else if( cnt2 == 3'd7 && iot_out_tmp < iot_out ) valid <= 1'd1;
		end
		default:
		begin
			if( cnt2 == 3'd7 ) valid <= 1'd1;
		end
		
		endcase
	end
	else valid <= 1'd0;
end

//================================================================
//  FSM
//================================================================
always@( posedge clk or posedge rst )
begin
	if( rst ) cur_state <= IDLE;
	else cur_state <= nx_state;
end

always@( * )
begin
	case( cur_state )
	IDLE : nx_state = INPUT;
	INPUT: nx_state = ( cnt == 4'd15 )? OUTPUT : INPUT;
	OUTPUT: nx_state = INPUT;
	default: nx_state = IDLE;
	endcase
end

endmodule