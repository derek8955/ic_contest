module LCD_CTRL(clk, reset, cmd, cmd_valid, IROM_Q, IROM_rd, IROM_A, IRAM_valid, IRAM_D, IRAM_A, busy, done);
input clk;//
input reset;//
input [3:0] cmd;
input cmd_valid;
input [7:0] IROM_Q;//
output IROM_rd;//
output [5:0] IROM_A;//
output IRAM_valid;//
output [7:0] IRAM_D;//
output [5:0] IRAM_A;//
output busy;//
output done;//

//--------------------------------------------------------------
//------------------------Wire/Reg defined----------------------
//--------------------------------------------------------------

reg IROM_rd;
reg [5:0] IROM_A;
reg busy;
reg done;
reg IRAM_valid;
reg [7:0] IRAM_D;
reg [5:0] IRAM_A;

//--------------------------------------------------------------
//------------------------Self defined--------------------------
//--------------------------------------------------------------

reg [5:0] P0;
wire [5:0] P1, P2, P3;
reg [7:0] data[0:63];
reg [6:0] idx;
reg [1:0] state, nx_state;
reg [5:0] counter;
reg [5:0] max_idx, min_idx;
reg [9:0] sum;
//--------------------------------------------------------------
//---------------------Parameter defined------------------------
//--------------------------------------------------------------

// cmd status
parameter cmd_WR = 0, cmd_SU = 1, cmd_SD = 2, cmd_SL = 3, cmd_SR = 4, cmd_MAX = 5, cmd_MIN = 6;
parameter cmd_AVG = 7, cmd_CCR = 8, cmd_CR = 9, cmd_MRX = 10, cmd_MRY = 11;

//global status
parameter RD = 0, CMD = 1, OP = 2, WR = 3;


//--------------------------------------------------------------
//---------------------------design-----------------------------
//--------------------------------------------------------------

assign P1 = P0 + 6'd1;
assign P2 = P0 + 6'd8;
assign P3 = P0 + 6'd9;


//state
always@( posedge clk or posedge reset ) 
begin
	if( reset ) state <= RD;
	else state <= nx_state;
end

//nx_state
always@(*)
begin
	case(state)
		RD: nx_state = ( IROM_A == 6'd63 )? CMD : RD;
		CMD: 
		begin 
			if( cmd_valid && cmd != 4'd0 ) nx_state = OP;
			else if( cmd_valid && cmd == 4'd0 ) nx_state = WR;
			else nx_state = CMD;
		end
		OP: nx_state = CMD;
		WR: nx_state = WR;
	endcase
end

//IROM_A
always@( posedge clk or posedge reset )  
begin
	if( reset ) IROM_A <= 6'd0;
	else if( state == RD ) IROM_A <= IROM_A + 6'd1;
end

//output logic 
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin
		for(idx = 0; idx < 64; idx = idx+1)
			data[idx] <= 8'd0;
			
		P0 <= 6'h1b;
	end
	else 
	begin
		case(state)
		RD: data[IROM_A] <= IROM_Q;
		CMD: 
		begin
			case(cmd)
			cmd_SU: if( P0 > 6'd7 )P0 <= P0 - 6'd8;
			cmd_SD: if( P0 < 6'h30 )P0 <= P0 + 6'd8;
			cmd_SL:
			begin
				if( P0 == 6'h0 || P0 == 6'h8 || P0 == 6'h10 || P0 == 6'h18 || P0 == 6'h20 || P0 == 6'h28 || P0 == 6'h30 || P0 == 6'h38 )P0 <= P0;
				else P0 <= P0 - 6'd1;
			end
			cmd_SR:
			begin
				if ( P0 == 6'h6 || P0 == 6'he || P0 == 6'h16 || P0 == 6'h1e || P0 == 6'h26 || P0 == 6'h2e || P0 == 6'h36 || P0 == 6'h3e ) P0 <= P0;
                else P0 <= P0 +6'd1;
			end
			cmd_MAX:
			begin
				data[P0] <= data[max_idx];
				data[P1] <= data[max_idx];
				data[P2] <= data[max_idx];
				data[P3] <= data[max_idx];
			end
			cmd_MIN:
			begin
				data[P0] <= data[min_idx];
				data[P1] <= data[min_idx];
				data[P2] <= data[min_idx];
				data[P3] <= data[min_idx];
			end
			cmd_AVG: 
			begin
				data[P0] <= sum[9:2];
				data[P1] <= sum[9:2];
				data[P2] <= sum[9:2];
				data[P3] <= sum[9:2];
			end
			cmd_CCR: 
			begin
				data[P0] <= data[P1];
				data[P2] <= data[P0];
				data[P3] <= data[P2];
				data[P1] <= data[P3];
			end
			cmd_CR:
			begin
				data[P0] <= data[P2];
				data[P1] <= data[P0];
				data[P3] <= data[P1];
				data[P2] <= data[P3];
			end
			cmd_MRX:
			begin
				data[P0] <= data[P2];
				data[P1] <= data[P3];
				data[P2] <= data[P0];
				data[P3] <= data[P1];
			end
			cmd_MRY:
			begin
				data[P0] <= data[P1];
				data[P1] <= data[P0];
				data[P2] <= data[P3];
				data[P3] <= data[P2];
			end
			endcase
		end
		
		endcase
	end
end

//cmd == Max
always@(*)
begin
	if( data[P0] >= data[P1] && data[P0] >= data[P2] && data[P0] >= data[P3] ) max_idx = P0;
	else if( data[P1] >= data[P0] && data[P1] >= data[P2] && data[P1] >= data[P3] ) max_idx = P1;
	else if( data[P2] >= data[P0] && data[P2] >= data[P1] && data[P2] >= data[P3] ) max_idx = P2;
	else max_idx = P3;
end

//cmd == Min
always@(*)
begin
	if( data[P0] <= data[P1] && data[P0] <= data[P2] && data[P0] <= data[P3] ) min_idx = P0;
	else if( data[P1] <= data[P0] && data[P1] <= data[P2] && data[P1] <= data[P3] ) min_idx = P1;
	else if( data[P2] <= data[P0] && data[P2] <= data[P1] && data[P2] <= data[P3] ) min_idx = P2;
	else min_idx = P3;
end

//cmd == Sum
always@(*)
	sum = data[P0] + data[P1] + data[P2] + data[P3];

//control singal
always@(*)
begin
	case(state)
		RD:
		begin
			IROM_rd    = 1'd1;
			IRAM_valid = 1'd0;
			busy       = 1'd1;
		end
		CMD:
		begin
			IROM_rd    = 1'd0;
			IRAM_valid = 1'd0;
			busy       = 1'd0;
		end
		OP:
		begin
			IROM_rd    = 1'd0;
			IRAM_valid = 1'd0;
			busy       = 1'd1;
		end
		WR:
		begin
			IROM_rd    = 1'd0;
			IRAM_valid = 1'd1;
			busy       = 1'd1;
		end
	endcase
end


//counter & IRAM_D
always@( posedge clk or posedge reset )
begin
	if( reset ) begin 
		counter <= 6'd0;
		IRAM_D <= 8'd0;
	end
	else if( state == WR && IRAM_valid ) begin
		counter <= ( counter == 6'd63 )? 6'd63 : counter + 6'd1;
		IRAM_D <= data[counter];
	end
end

//IRAM_A delay 
always@( posedge clk or posedge reset)
begin
	if( reset )
		IRAM_A <= 6'd0;
	else
		IRAM_A <= counter;
end

//done
always @( posedge clk )
begin
	if (state == WR && IRAM_A == 6'd63) done <= 1'd1;
	else done <= 1'd0;
end


endmodule



