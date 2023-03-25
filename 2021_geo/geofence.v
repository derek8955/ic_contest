`include "DW_sqrt.v"
module geofence ( 
    // Input signals
	clk,reset,X,Y,R,
    // Output signals		
	valid,is_inside);

//================================================================
//  INPUT AND OUTPUT DECLARATION                         
//================================================================
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output reg valid;
output reg is_inside;

//================================================================
//  integer / genvar / parameters
//================================================================
parameter   STATE_IDLE = 0, STATE_INPUT = 1, STATE_SORT = 2, STATE_TRIANGLE = 3, 
            STATE_SIXANGLE = 4, STATE_CAL = 5, STATE_OUTPUT = 6, STATE_DELAY = 7;
integer i;


//================================================================
//   Wires & Registers 
//================================================================
reg [2:0] cur_state, nx_state;
reg [2:0] cnt, cntCross, cntTri, cntSix;
reg [9:0] x_coor[0:5], y_coor[0:5];
reg [10: 0] distance[0:5];
wire signed[12:0] ax, ay, bx, by;
reg [2:0] round;
reg [12:0] c_temp;

wire [12:0] c;
reg [12:0] s;
reg flag; 

wire signed[23:0] cross1, cross2;
assign cross1 = ax * by;
assign cross2 = ay * bx;

wire isneg;
assign isneg = (cross1 > cross2) ? 0 : 1; 

//================================================================
//  INPUT
//================================================================
//// X ////
always @(posedge clk or posedge reset) begin
     if(reset) begin
        for(i=0;i<6;i=i+1) 
            x_coor[i] <= 0;
     end
     else if(nx_state == STATE_INPUT)  x_coor[cnt] <= X;
     else if(nx_state == STATE_SORT)  begin
        if(isneg) begin
           x_coor[cntCross] <= x_coor[cntCross+1];
           x_coor[cntCross+1] <= x_coor[cntCross]; 
        end
     end
end

//// Y ////
always @(posedge clk or posedge reset) begin
     if(reset) begin
        for(i=0;i<6;i=i+1) 
            y_coor[i] <= 0;
     end
     else if(nx_state == STATE_INPUT) y_coor[cnt] <= Y;
     else if(nx_state == STATE_SORT)  begin
        if(isneg) begin
           y_coor[cntCross] <= y_coor[cntCross+1];
           y_coor[cntCross+1] <= y_coor[cntCross]; 
        end
     end
end

//// R ////
always @(posedge clk or posedge reset) begin
    if(reset) begin
        for(i=0;i<6;i=i+1) 
            distance[i] <= 0;
    end
    else if(nx_state == STATE_INPUT) 
            distance[cnt] <= R;
    else if( nx_state == STATE_SORT)  begin
        if(isneg) begin
           distance[cntCross] <= distance[cntCross+1];
           distance[cntCross+1] <= distance[cntCross]; 
        end
     end
end

//================================================================
//  CONTROL
//================================================================
//// counter ////
always @(posedge clk or posedge reset) begin
    if(reset) cnt <= 0;
    else if(nx_state == STATE_INPUT) cnt <= cnt + 1;
    else cnt <= 0;
end

always @(posedge clk or posedge reset) begin
    if(reset) cntCross <= 0;
    else if(nx_state == STATE_SORT) cntCross <=(cntCross == 4 - round) ? 1 : cntCross + 1;
    else cntCross <= 0;
end

//// round ////
always @(posedge clk or posedge reset) begin
    if(reset) round <= 0;
    else if(nx_state == STATE_SORT) begin
        if(cntCross == 4 - round) round <= round + 1;
    end
    else if(nx_state == STATE_TRIANGLE) round <= 0;
end


reg signed [11:0] ax1, ax2, ay1, ay2 , bx1, bx2, by1, by2;

assign ax = ax1 - ax2;
assign ay = ay1 - ay2;
assign bx = bx1 - bx2;
assign by = by1 - by2;

always @(*) begin
    case(cur_state)
        STATE_SORT: begin
            ax1 = x_coor[cntCross];
            ay1 = y_coor[cntCross];
            bx1 = x_coor[cntCross+1];
            by1 = y_coor[cntCross+1];

            ax2 = x_coor[0];
            ay2 = y_coor[0];
            bx2 = x_coor[0];
            by2 = y_coor[0];  
        end
        STATE_TRIANGLE: begin
           if(cntTri == 5) begin
                if(!flag) begin
                    ax1 = x_coor[0];
                    ax2 = x_coor[cntTri];
                    by1 = x_coor[0];
                    by2 = x_coor[cntTri];

                    bx1 = y_coor[0];
                    bx2 = y_coor[cntTri]; 
                    ay1 = y_coor[0];
                    ay2 = y_coor[cntTri];         
                end
                else begin
                    ax1 = s[12:1];
                    ax2 = 0;

                    by1 = s[12:1];
                    by2 = distance[cntTri];

                    ay1 = s[12:1];
                    ay2 = distance[0];

                    bx1 = s[12:1];
                    bx2 = c_temp;
                end
           end
           else begin
                if(!flag) begin
                    ax1 = x_coor[cntTri+1];
                    ax2 = x_coor[cntTri];
                    by1 = x_coor[cntTri+1];
                    by2 = x_coor[cntTri];

                    bx1 = y_coor[cntTri+1];
                    bx2 = y_coor[cntTri]; 
                    ay1 = y_coor[cntTri+1];
                    ay2 = y_coor[cntTri];         
                end
                else begin
                    ax1 = s[12:1];
                    ax2 = 0;

                    by1 = s[12:1];
                    by2 = distance[cntTri];

                    ay1 = s[12:1];
                    ay2 = distance[cntTri+1];

                    bx1 = s[12:1];
                    bx2 = c_temp;
                end
            end
        end
        STATE_SIXANGLE: begin
            if(cntSix == 5) begin
                ax1 = x_coor[cntSix];
                ax2 = 0;
                by1 = y_coor[0];
                by2 = 0;
                ay1 = y_coor[cntSix];
                ay2 = 0;
                bx1 = x_coor[0];
                bx2 = 0;
            end
            else begin
                ax1 = x_coor[cntSix];
                ax2 = 0;
                by1 = y_coor[cntSix+1];
                by2 = 0;
                ay1 = y_coor[cntSix];
                ay2 = 0;
                bx1 = x_coor[cntSix+1];
                bx2 = 0;
            end
        end
        default: begin
                ax1 = 0;
                ax2 = 0;
                by1 = 0;
                by2 = 0;
                ay1 = 0;
                ay2 = 0;
                bx1 = 0;
                bx2 = 0;
        end
    endcase
end

//// TRIANGLE ////
always @(posedge clk or posedge reset) begin
    if(reset) cntTri <= 0;
    else if(cur_state == STATE_TRIANGLE) cntTri <= (flag)? cntTri + 1:cntTri;
    else cntTri <= 0;
end

wire [24:0] cSquare;
assign cSquare = cross1 + cross2;

DW_sqrt_c squareRoot  (.radicand(cSquare), .square_root(c));

always @(posedge clk or posedge reset) begin
     if(reset) c_temp <= 0;
     else if(!flag) c_temp <= c;
end

always @(posedge clk or posedge reset) begin
    if(reset) s <= 0;
    else if(!flag) s <= (cntTri == 5) ? distance[cntTri] + distance[0] + c : distance[cntTri] + distance[cntTri+1] + c;
end

wire [11:0] tri_1, tri_2;

// wire [23:0] unsigned_cross1, unsigned_cross2;
// assign unsigned_cross1 = (cross1<0)?cross1*-1:cross1;
// assign unsigned_cross2 = (cross2<0)?cross2*-1:cross2;

// DW_sqrt_inst TriArea1 (.radicand(unsigned_cross1), .square_root(tri_1));
// DW_sqrt_inst TriArea2 (.radicand(unsigned_cross2), .square_root(tri_2));
DW_sqrt_inst TriArea1 (.radicand(cross1), .square_root(tri_1));
DW_sqrt_inst TriArea2 (.radicand(cross2), .square_root(tri_2));


reg  [26:0] totalArea;

always @(posedge clk or posedge reset) begin
    if(reset) flag <= 0;
    else if(cur_state == STATE_TRIANGLE) flag <= ~flag;
    else flag <= 0;
end

always @(posedge clk or posedge reset) begin
    if(reset) totalArea <= 0;
    else if(cur_state == STATE_TRIANGLE) begin
        if(flag)    totalArea <= totalArea + tri_1*tri_2;
    end 
    else if(cur_state == STATE_INPUT) totalArea <= 0;
end

//// SIXANGLE ////
always @(posedge clk or posedge reset) begin
    if(reset) cntSix <= 0;
    else if(cur_state == STATE_SIXANGLE) cntSix <= cntSix + 1;
    else cntSix <= 0;
end
wire signed [23:0] area;
assign area = cross1 - cross2;

reg signed [26:0] sixArea;
wire [26:0] sixArea_S;
assign sixArea_S = ( sixArea[26] )? -1*sixArea : sixArea;

always @(posedge clk or posedge reset) begin
    if(reset) sixArea <= 0;
    else if(cur_state == STATE_SIXANGLE) sixArea <= sixArea + area;
    else if(cur_state == STATE_CAL ) sixArea <= sixArea_S[26:1];
    else if (cur_state == STATE_INPUT) sixArea <= 0;
end


//================================================================
//  OUTPUT
//================================================================
//// valid ////
always @(posedge clk or posedge reset) begin
    if(reset)   valid <= 0;
    else if(cur_state == STATE_OUTPUT) valid <= 1;
    else valid <= 0;
end

wire flag_in;
assign flag_in = (totalArea < sixArea )?1:0;

//// is_inside ////
always @(posedge clk or posedge reset) begin
    if(reset)  is_inside <= 0;
    else if(cur_state == STATE_OUTPUT) is_inside <= flag_in;
    else is_inside <= 0;
end


//================================================================
//  FSM
//================================================================
always @( posedge clk or posedge reset ) begin
	if( reset ) cur_state <= STATE_IDLE;
	else cur_state <= nx_state;
end

always @( * ) begin
	case( cur_state ) 
	STATE_IDLE:       nx_state = STATE_INPUT;
	STATE_INPUT:      nx_state = (cnt == 6) ? STATE_SORT : STATE_INPUT;
    STATE_SORT:       nx_state = (round == 4) ? STATE_TRIANGLE : STATE_SORT;
    STATE_TRIANGLE:   nx_state = (cntTri == 5 && flag) ? STATE_SIXANGLE : STATE_TRIANGLE;
    STATE_SIXANGLE:   nx_state = (cntSix == 5) ? STATE_CAL : STATE_SIXANGLE;
    STATE_CAL:        nx_state = STATE_OUTPUT;
    STATE_OUTPUT:     nx_state = STATE_DELAY;
	STATE_DELAY:      nx_state = (!valid) ? STATE_INPUT : STATE_DELAY;
	endcase	
end
endmodule


module DW_sqrt_c (radicand, square_root);
parameter radicand_width = 25;
parameter tc_mode = 0;
input [radicand_width-1 : 0] radicand;
output [(radicand_width+1)/2-1 : 0] square_root;
// Please add +incdir+$SYNOPSYS/dw/sim_ver+ to your verilog simulator
// command line (for simulation).
// instance of DW_sqrt
DW_sqrt #(radicand_width, tc_mode)
U1 (.a(radicand), .root(square_root));
endmodule


module DW_sqrt_inst (radicand, square_root);
parameter radicand_width = 24;
parameter tc_mode = 1;
input [radicand_width-1 : 0] radicand;
output [(radicand_width+1)/2-1 : 0] square_root;
// Please add +incdir+$SYNOPSYS/dw/sim_ver+ to your verilog simulator
// command line (for simulation).
// instance of DW_sqrt
DW_sqrt #(radicand_width, tc_mode) 
U1 (.a(radicand), .root(square_root));
endmodule