
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
//================================================================
//  INPUT & OUTPUT DECLARATION
//================================================================
input   	clk;
input   	reset;
output  reg [13:0] 	gray_addr;
output         	gray_req;
input   	gray_ready;
input   [7:0] 	gray_data;
output  reg[13:0] 	lbp_addr;
output  reg 	lbp_valid;
output  reg[7:0] 	lbp_data;
output  reg	finish;
//================================================================
//  integer / genvar / parameters
//================================================================

parameter STATE_IDLE  = 3'd0;
parameter STATE_INPUT_MID = 3'd1;
parameter STATE_INPUT_OUTSIDE = 3'd2;
parameter STATE_OUTPUT = 3'd3;
parameter STATE_FINISH = 3'd4;

//================================================================
//   Wires & Registers 
//================================================================

reg [2:0] cur_state, nx_state;
reg [6:0] y,x, y_out, x_out;
reg [3:0] cnt_in;

reg [7:0] lbp_sum;

reg [7:0] gray_mid;
//================================================================
//  FSM
//================================================================
always @(posedge clk or posedge reset ) begin
    if(reset) cur_state <= STATE_IDLE;
    else cur_state <= nx_state;
end

always @(*) begin
    case(cur_state)
        STATE_IDLE: nx_state = ( gray_ready )? STATE_INPUT_MID: STATE_IDLE;
        STATE_INPUT_MID: nx_state = STATE_INPUT_OUTSIDE;
        STATE_INPUT_OUTSIDE: nx_state = ( cnt_in == 8 )? STATE_OUTPUT: STATE_INPUT_OUTSIDE;
        STATE_OUTPUT: nx_state = ( y_out == 126 && x_out == 126 )? STATE_FINISH: STATE_INPUT_MID;
        STATE_FINISH: nx_state =  STATE_FINISH;
        default: nx_state = STATE_IDLE;
    endcase
end

//================================================================
//  INPUT
//================================================================
always @(posedge clk or posedge reset ) begin
    if(reset) gray_mid <= 0;
    else if( cur_state == STATE_INPUT_MID ) gray_mid <= gray_data;
end

//================================================================
//  address & counter & CALC
//================================================================
wire [13:0] addr_tmp[7:0];

assign addr_tmp[7] = {y+7'd1, x+7'd1 };
assign addr_tmp[6] = {y+7'd1, x      };
assign addr_tmp[5] = {y+7'd1, x-7'd1 };
assign addr_tmp[4] = {y     , x+7'd1 };
assign addr_tmp[3] = {y     , x-7'd1 };
assign addr_tmp[2] = {y-7'd1, x+7'd1 };
assign addr_tmp[1] = {y-7'd1, x      };
assign addr_tmp[0] = {y-7'd1, x-7'd1 };

always @(posedge clk or posedge reset) begin
    if(reset) cnt_in <= 0;
    else if(nx_state == STATE_INPUT_OUTSIDE) cnt_in <= cnt_in + 1;
    else cnt_in <= 0;
end

wire [2:0] shift_flag;
wire [7:0] idata_buf, lpb_mul;

assign idata_buf = ( gray_mid > gray_data )? 0: 1;
assign shift_flag = cnt_in - 2'd1;

assign lpb_mul = ( idata_buf << shift_flag );

always @( posedge clk or posedge reset ) begin
    if(reset) lbp_sum <= 0;
    else if( cur_state == STATE_INPUT_OUTSIDE ) begin
        if( cnt_in == 1 ) lbp_sum <= idata_buf;
        else if( cnt_in > 1 ) lbp_sum <= lbp_sum + lpb_mul;
    end
end

//================================================================
//  OUTPUT
//================================================================
assign gray_req = ( cur_state == STATE_INPUT_MID || cur_state == STATE_INPUT_OUTSIDE );

always @(posedge clk or posedge reset) begin
    if(reset) gray_addr <= 0;
    else if( nx_state == STATE_INPUT_MID ) gray_addr <= {y,x};
    else if( nx_state == STATE_INPUT_OUTSIDE ) begin
        if( cnt_in < 8 ) gray_addr <= addr_tmp[cnt_in];
    end
end

always @(posedge clk or posedge reset) begin
    if(reset) finish <= 0;
    else finish <= (cur_state == STATE_FINISH);
end

always @(posedge clk or posedge reset) begin
     if(reset) lbp_valid <= 0;
     else if( cur_state == STATE_OUTPUT ) lbp_valid <= 1;
     else lbp_valid <= 0;
end

always @(posedge clk or posedge reset) begin
    if(reset) lbp_addr <= 0;
    else if( cur_state == STATE_OUTPUT ) lbp_addr <= {y_out,x_out};
end

always @(posedge clk or posedge reset) begin
    if(reset) lbp_data <= 0;
    else if( cur_state == STATE_OUTPUT ) lbp_data <= lbp_sum;
end

//================================================================
//  x && y
//================================================================
always @(posedge clk or posedge reset) begin
    if(reset) begin
        x <= 1; y <= 1;
    end
    else if( nx_state == STATE_OUTPUT ) begin
        if( x == 126 ) begin
            x <= 1; y <= y + 1;
        end
        else begin
            x <= x+1;
        end
    end
end

always @(posedge clk  or posedge reset) begin
    if(reset) begin
        x_out <= 1; y_out <= 1;
    end
    else begin
        x_out <= x; y_out <= y;
    end
end

endmodule