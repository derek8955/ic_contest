
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
//================================================================
//================================================================
//----------------------Wires/Registers defined-------------------
//================================================================

reg 		finish;
reg [13:0] 	gray_addr;
wire 		gray_req;
wire [13:0] 	lbp_addr;
reg 		lbp_valid;
reg [7:0] 	lbp_data;

//================================================================
//------------------------Self defined--------------------------
//================================================================

reg [1:0] state, nx_state;
reg [7:0] ImageBuffer[0:8];
wire Threshold[0:8];
reg [3:0] index, jndex;
reg [3:0] counter, counter2;
wire [13:0] addr[0:8];
reg [13:0] ptr;
wire [7:0] lbp[0:8];
reg flag; // left side location of image 

//================================================================
//  integer / genvar / parameters
//================================================================

parameter RD = 0, OP = 1, WR = 2, FN = 3;
genvar idx;

//================================================================
//---------------------------design-----------------------------
//================================================================

//state
always@( posedge clk or posedge reset)
begin
	if( reset ) state <= RD;
	else state <= nx_state;
end

//ns_state
always@(*)
begin
	case(state)
	RD: nx_state = (counter == 4'd8 )? OP:RD;
	OP: nx_state = WR;
	WR: nx_state = ( ptr == 14'd16126 && counter == 4'd0 )? FN: RD;
	FN: begin end
	
	endcase
end

//gray_req
assign gray_req = ( state == RD && gray_ready )? 1'd1:1'd0;

//addr 
generate
    for( idx=0 ; idx<9 ; idx=idx+1 ) begin
		if( idx == 0 )
			assign addr[0] = (counter2 == 4'd0)? ptr - flag:addr[0] ;
		
		else if( idx == 3 || idx == 6 ) 
			assign addr[idx] = addr[idx - 1] + 14'd126;
		else  
			assign addr[idx] = addr[idx - 1] + 14'd1;
	end
endgenerate

//ptr & flag
always@(posedge clk or posedge reset) 
begin
	if( reset )
	begin
		ptr <= 14'd0;
		flag <= 0;
	end
	else if( state == RD && counter == 4'd1)
	begin
		if( addr[1] % 128 == 127 ) 
		begin
			ptr <= addr[1] + 14'd2;
			flag <= 1;
		end
		else 
		begin
			ptr <= addr[1];
			flag <= 0;
		end
	end
end

//gray_addr
always@(posedge clk or posedge reset)
begin
	if( reset ) gray_addr <= 14'd0;
	else if( state == RD && gray_ready ) gray_addr <= addr[counter2];
end

//counter2(delay one clock)
always@( posedge clk or posedge reset )
begin
	if( reset ) counter2 <= 4'd0;
	else if( state == RD && gray_ready ) counter2 <= ( counter2 == 4'd8 )? 4'd0:counter2 + 4'd1;
end

//counter && ImageBuffer
always@( posedge clk or posedge reset )
begin
	if( reset ) 
	begin	
		counter <= 4'd0;
		for( index=0 ; index<9 ; index=index+1 )
			ImageBuffer[index] <= 8'd0;
	end
	else if( state == RD && gray_ready ) 
	begin
		counter <= counter2;
		ImageBuffer[counter] <= gray_data;
	end
end

//LBP
generate
	for( idx = 0; idx <4 ; idx = idx + 1)
		assign Threshold[idx] = ( ImageBuffer[idx] >= ImageBuffer[4] )? 1'b1:1'b0;
	for( idx = 5; idx <9 ; idx = idx + 1)
		assign Threshold[idx] = ( ImageBuffer[idx] >= ImageBuffer[4] )? 1'b1:1'b0;
endgenerate

generate
	for( idx = 0; idx <4 ; idx = idx + 1) 
		assign lbp[idx] = ( Threshold[idx] == 1'b1 )? 2 ** idx:8'd0;
	for( idx = 5; idx <9 ; idx = idx + 1) 
		assign lbp[idx] = ( Threshold[idx] == 1'b1 )? 2 ** (idx - 1):8'd0;

endgenerate

//================================================================
// output logic: lbp_addr, lbp_valid, lbp_data
//================================================================

//lbp_addr
assign lbp_addr = ptr + 14'd128;

//lbp_valid
always@(posedge clk or posedge reset)
begin
	if( reset ) lbp_valid <= 1'd0;
	else if( state == WR ) lbp_valid <= 1'd1;
	else lbp_valid <= 1'd0;
end

//lbp_data
always@(posedge clk or posedge reset)
begin
	if( reset ) lbp_data <= 8'd0;
	else if( state == WR ) lbp_data <= lbp[0] + lbp[1] + lbp[2] + lbp[3] + lbp[5] + lbp[6] + lbp[7] + lbp[8];
end

//finish
always@(posedge clk)
begin
	if( state == FN ) finish <= 1'd1;
	else finish <= 1'd0;
end

//================================================================
endmodule
