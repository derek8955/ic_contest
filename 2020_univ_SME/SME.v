//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   2020 IC Contest
//   univ_cell_based          : SME( String Match Engine )
//   Author         : Yao-Zhan Xu (xuyaozhan8905@gmail.com)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   File Name   : SME.v
//   Module Name : SME
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################
module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
//================================================================
//  INPUT AND OUTPUT DECLARATION                         
//================================================================	
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;
//================================================================
//  integer / genvar / parameters
//================================================================
parameter IDLE = 3'd0 ;
//================================================================
//  Wires & Registers 
//================================================================
reg [2:0] state, nx_state;

//================================================================
//  design
//================================================================
always@( posedge clk or posedge reset )
begin
	if( reset ) 
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
	
	default: 	nx_state = IDLE; 
	endcase
end


endmodule
