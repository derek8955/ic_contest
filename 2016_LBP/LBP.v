
`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   	clk;
input   	reset;
output  [13:0] 	gray_addr;
output         	gray_req;
input   	gray_ready;
input   [7:0] 	gray_data;
output  [13:0] 	lbp_addr;
output  	lbp_valid;
output  [7:0] 	lbp_data;
output  	finish;
//====================================================================
//================================================================
//----------------------Wires/Registers defined-------------------
//================================================================
reg 		finish;
reg [13:0] 	gray_addr;
reg 		gray_req;
reg [13:0] 	lbp_addr;
reg 		lbp_valid;
reg [7:0] 	lbp_data;

//================================================================
//------------------------Self defined--------------------------
//================================================================


reg [2:0] state,nx_state; 
reg [6:0] x,y;
wire [6:0] x_1,x_2,y_1,y_2;
reg [3:0] counter;
reg [7:0] gc_data;
wire [3:0] counter_reverse;

wire [13:0] g0_addr,g1_addr,g2_addr,g3_addr,g4_addr,g5_addr,g6_addr,g7_addr;
reg [13:0] gc_addr;

//================================================================
//  integer / genvar / parameters
//================================================================
parameter IDLE = 3'd0, RD_GC = 3'd1, RD_GP = 3'd2, WR = 3'd3, FN = 3'd4;

//================================================================
//---------------------------design-----------------------------
//================================================================

assign g0_addr = {y_1,x_1};
assign g1_addr = {y_1,x};
assign g2_addr = {y_1,x_2};
assign g3_addr = {y,x_1};
assign g4_addr = {y,x_2};
assign g5_addr = {y_2,x_1};
assign g6_addr = {y_2,x};
assign g7_addr = {y_2,x_2};

assign x_1 = x - 7'd1;
assign x_2 = x + 7'd1;
assign y_1 = y - 7'd1;
assign y_2 = y + 7'd1;

assign counter_reverse = counter - 4'd1;

//state
always@( posedge clk or posedge reset )
begin
    if( reset ) state <= IDLE;
    else state <= nx_state;
end

//next state logic
always@(*)
begin
    case(state)
    IDLE: nx_state = ( gray_ready )? RD_GC : IDLE;    
    RD_GC: nx_state = RD_GP;
    RD_GP: nx_state = ( counter == 4'd8 )? WR : RD_GP;   
    WR: nx_state = ( gc_addr == 14'd16254 )? FN : RD_GC;
    FN: nx_state = FN;
    default: nx_state = IDLE;
    endcase
end

//index x y
always@( posedge clk or posedge reset )
begin
    if( reset ) x <= 7'd1;
    else if( nx_state == WR && x == 7'd126) x <= 7'd1;
    else if( nx_state == WR ) x <= x + 7'd1;
end

always@( posedge clk or posedge reset )
begin
    if( reset ) y <= 7'd1;
    else if( nx_state == WR && x == 7'd126) y <= y + 7'd1;
end

//counter
always@( posedge clk or posedge reset )
begin
    if( reset ) counter <= 4'd0;
    else if( nx_state  == RD_GP) counter <= counter + 4'd1;
    else if( state == WR) counter <= 4'd0;
end

//gc_addr
always@( posedge clk or posedge reset )
begin
    if( reset ) gc_addr <= 14'd129;
    else if( nx_state == RD_GC ) gc_addr <= {y,x};
end

//================================================================
// output logic: gray_req, lbp_addr, lbp_valid, lbp_data
//================================================================
 
//gray_req
always@( posedge clk or posedge reset )
begin
    if( reset ) gray_req <= 1'd0;
    else if( nx_state == RD_GC || nx_state == RD_GP ) gray_req <= 1'd1;
    else gray_req <= 1'd0;
end

//lbp_valid
always@( posedge clk or posedge reset )
begin
    if( reset ) lbp_valid <= 1'd0;
    else if( nx_state == WR ) lbp_valid <= 1'd1;
    else lbp_valid <= 1'd0;
end

//lbp_addr
always@( posedge clk or posedge reset )
begin
    if( reset ) lbp_addr <= 14'd0;
    else if( nx_state == WR ) lbp_addr <= gc_addr;
end

//lbp_data
always@( posedge clk or posedge reset )
begin
    if( reset ) 
    begin
        lbp_data <= 8'd0;
        gc_data <= 8'd0;
    end
    else if( state == RD_GC ) gc_data <= gray_data;
    else if( state == RD_GP )
    begin
        if( gray_data>=gc_data ) lbp_data <= lbp_data + (8'd1 << counter_reverse);
    end
    else if( state == WR ) lbp_data <= 8'd0;
end

//finish
always@( posedge clk or posedge reset )
begin
    if( reset ) finish <= 1'd0;
    else if( state == FN ) finish <= 1'd1;
end

//gray_addr
always@( posedge clk or posedge reset )
begin
    if( reset ) gray_addr <= 14'd0;
    else if( nx_state == RD_GC ) gray_addr <= {y,x};
    else if( nx_state == RD_GP )
    begin
        case(counter)
        4'd0: gray_addr <= g0_addr;
        4'd1: gray_addr <= g1_addr;
        4'd2: gray_addr <= g2_addr;
        4'd3: gray_addr <= g3_addr;
        4'd4: gray_addr <= g4_addr;       
        4'd5: gray_addr <= g5_addr;
        4'd6: gray_addr <= g6_addr;
        4'd7: gray_addr <= g7_addr;
        endcase
    end
end


//====================================================================
endmodule