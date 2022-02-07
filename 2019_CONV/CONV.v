`timescale 1ns/10ps

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

reg [5:0] dir_y, dir_x;//control the original index of image
reg [3:0] x;
reg [2:0] flagX,flagY;

// Y = At[[G g Gt].[Bt d B]]A
reg [19:0] 	temp;
reg signed [19:0]	image[0:15];//d
reg signed [19:0] 	register1[0:15];
reg signed [19:0]	register2[0:15];//register1*B
reg signed [39:0]	register3[0:15];//First Bt d, and then 
reg signed [39:0]	register4[0:7];
reg signed [39:0] 	result[0:3];//Y

wire signed [23:0]	Kernel0[0:15];
wire signed [23:0]	Kernel1[0:15];
wire signed [19:0]	bias0, bias1;

parameter S_BEGIN = 0;
parameter S_INPUT = 1;//contorl addr  
parameter S_IN1 = 2;
parameter S_IN2 = 3;
parameter S_IN3 = 4;
parameter S_CONV1 = 5;//Bt * d
parameter S_CONV2 = 6;//*B
parameter S_CONV3 = 7;//Kernel multiply
//parameter S_CONV4 = 8;//Kernel multiply
//parameter S_CONV5 = 9;//At * [[G g Gt].[Bt d B]]
parameter L0_WRITE_0 = 10; 
parameter L1_READ = 11;
parameter L1_WRITE = 12;
parameter L2_READ= 13;
parameter L2_WRITE = 14;
parameter S_CSEL = 15;//change csel 
parameter S_SHIFT = 8;//SHIFT image data
//parameter S_LEFTDETECT = 8;//when dir_x == 0
parameter L0_WRITE_1 = 9;
reg [3:0] status, status_temp ;

assign 	Kernel0[0] = 24'h0A89E0;
assign  Kernel0[1] = 24'h0D45B0;
assign  Kernel0[2] = 24'h041860;
assign  Kernel0[3] = 24'h06D430;
assign  Kernel0[4] = 24'h02FBC8;
assign	Kernel0[5] = 24'hFF468C;
assign	Kernel0[6] = 24'hFFF2BC;
assign	Kernel0[7] = 24'hFC3D80;
assign	Kernel0[8] = 24'h01FB88;
assign	Kernel0[9] = 24'h06D844;
assign  Kernel0[10] = 24'h007B84;
assign	Kernel0[11] = 24'h055840;
assign	Kernel0[12] = 24'hFA6D70;
assign	Kernel0[13] = 24'hF8D920;
assign  Kernel0[14] = 24'hFC55E0;
assign	Kernel0[15] = 24'hFAC190;
assign	Kernel1[0] = 24'hFDB550;
assign	Kernel1[1] = 24'hFE73D8;
assign	Kernel1[2] = 24'hFBDAB8;
assign	Kernel1[3] = 24'hFC9940;
assign	Kernel1[4] = 24'h034148;
assign	Kernel1[5] = 24'h0371B4;
assign	Kernel1[6] = 24'h0210DC;
assign	Kernel1[7] = 24'h024148;
assign	Kernel1[8] = 24'hFE3178;
assign	Kernel1[9] = 24'hFE6F64;
assign	Kernel1[10] = 24'h00008C;
assign	Kernel1[11] = 24'h003E78;
assign	Kernel1[12] = 24'h03BD70;
assign	Kernel1[13] = 24'h036D40;
assign	Kernel1[14] = 24'h0636B0;
assign	Kernel1[15] = 24'h05E680;
assign 	bias0 = 20'h01310;
assign	bias1 = 20'hf7295;


always@(posedge clk or posedge reset)
begin
	if( reset )
		busy <= 0;
	else if( ready ) 
		busy <= 1'b1; 	
	else if( status == S_BEGIN )
		busy <= 1'b0;
end

always@(posedge clk or posedge reset) begin
	if(reset) begin
		
		iaddr <= 0;
		caddr_wr <= 0;
		caddr_rd <= 0;
		cwr <= 0;
		crd <= 0;
		csel <= 3'b001;
		cdata_wr <= 0;
	
		dir_x <= 0;
		dir_y <= 0;
		x <= 0;
		status <= S_BEGIN;
		status_temp <= S_BEGIN;
		temp <= 0;
	end	
	else begin
		case(status)
			S_BEGIN: begin
				if(ready) begin
					status <= S_INPUT;
				end
				else begin
					status <= S_BEGIN;
				end
			end
			S_CSEL: begin
				cwr <= 0;
				caddr_rd <= 0;
				case(csel)
					2: begin					
						csel <= 3'b001;				
						status <= L1_READ;
					end

					3: begin
						status <= L1_READ;
						csel <= 3'b010;
					end

					4: begin  
						csel <= 3'b011;
						status <= L2_READ;
					end
					default: begin
						status <= S_BEGIN;
					end
				endcase
			end
			S_INPUT: begin
				cwr <= 0;
				
				if(dir_x == 0) begin
					case(dir_y)
						0: begin
							iaddr <= 0;
							image[0] <= 0;
							image[1] <= 0;
							image[2] <= 0;
							image[3] <= 0;
							x <= 5;
						end
						62: begin
							iaddr <= {dir_y+6'b111111,dir_x};
							image[12] <= 0;
							image[13] <= 0;
							image[14] <= 0;
							image[15] <= 0;
							x <= 1;
						end
						default: begin
							iaddr <= {dir_y+6'b111111,dir_x};
							x <= 1;
						end
					endcase
					status <= S_IN1;
				end
				else begin
					status_temp <= (dir_x == 62)?S_IN3:S_IN2;
					status <= S_SHIFT;
				end							
			end
			S_SHIFT: begin
				case(dir_y) 
					0: begin
						x <= 6;
						iaddr <= {dir_y,dir_x+6'b000001};	
					end
					62: begin
						x <= 2;
						iaddr <= {dir_y+6'b111111,dir_x+6'b000001};
					end
					default: begin
						x <= 2;
						iaddr <= {dir_y+6'b111111,dir_x+6'b000001};
					end
				endcase
				image[0] <= image[2];
				image[1] <= image[3];
				image[4] <= image[6];
				image[5] <= image[7];
				image[8] <= image[10];
				image[9] <= image[11];
				image[12] <= image[14];
				image[13] <= image[15];
				status <= status_temp;
				status_temp <= S_BEGIN;
			end
			S_IN1: begin
				image[x] <= idata;
				status <= S_IN1;
				
				if(x % 4 == 3) begin
					image[x-3] <= 0;
					if((dir_y == 62 && x ==11) || x == 15) begin
						x <= 0;
						status <= S_CONV1;
					end
					else begin						
						x <= x + 2;
						iaddr <= iaddr+62;
					end
				end
				else begin		
					iaddr <= iaddr+1;
					x <= x+1;
				end								
			end

			S_IN2: begin
				image[x-2] <= image[x];
				image[x] <= idata;	
				status <= S_IN2;

				if(x % 4 == 3) begin					
					if((dir_y == 62 && x == 11) || x == 15) begin
						x <= 0;
						status <= S_CONV1;
					end
					else begin
						iaddr <= iaddr+63;
						x <= x +3;
					end
				end
				else begin
					iaddr <= iaddr+1;
					x <= x+1;
				end
			end
			
			S_IN3: begin
				image[x-2] <= image[x];
				image[x-1] <= image[x+1];
				image[x] <= idata;

				if((dir_y == 62 && x == 10) || x == 14) begin
					image[3] <= 0;
					image[7] <= 0;
					image[11] <= 0;
					image[15] <= 0;
					x <= 0;
					status <= S_CONV1;
				end
				else begin
					iaddr <= iaddr + 64;
					x <= x +4;
					status <= S_IN3;
				end			
			end
			
			S_CONV1: begin
				register1[0] <= image[0] - image[8];
				register1[1] <= image[1] - image[9];
				register1[2] <= image[2] - image[10];
				register1[3] <= image[3] - image[11];
				register1[4] <= image[4] + image[8];
				register1[5] <= image[5] + image[9];
				register1[6] <= image[6] + image[10];
				register1[7] <= image[7] + image[11];
				register1[8] <= image[8] - image[4];
				register1[9] <= image[9] - image[5];
				register1[10] <= image[10] - image[6];
				register1[11] <= image[11] - image[7];
				register1[12] <= image[4] - image[12];
				register1[13] <= image[5] - image[13];
				register1[14] <= image[6] - image[14];
				register1[15] <= image[7] - image[15];
				status <= S_CONV2;
			end	
			S_CONV2: begin
				register2[0] <= register1[0] - register1[2];
				register2[1] <= register1[1] + register1[2];
				register2[2] <= register1[2] - register1[1];
				register2[3] <= register1[1] - register1[3];
				register2[4] <= register1[4] - register1[6];
				register2[5] <= register1[5] + register1[6];
				register2[6] <= register1[6] - register1[5];
				register2[7] <= register1[5] - register1[7];
				register2[8] <= register1[8] - register1[10];
				register2[9] <= register1[9] + register1[10];
				register2[10] <= register1[10] - register1[9];
				register2[11] <= register1[9] - register1[11];
				register2[12] <= register1[12] - register1[14];
				register2[13] <= register1[13] + register1[14];
				register2[14] <= register1[14] - register1[13];
				register2[15] <= register1[13] - register1[15];				
				status <= S_CONV3;
			end
			S_CONV3: begin
				case(temp[1:0])
				0: begin
					register3[0] <= register2[0] * Kernel0[0];
					register3[1] <= register2[1] * Kernel0[1];
					register3[2] <= register2[2] * Kernel0[2];
					register3[3] <= register2[3] * Kernel0[3];
					register3[4] <= register2[4] * Kernel0[4];
					register3[5] <= register2[5] * Kernel0[5];
					register3[6] <= register2[6] * Kernel0[6];
					register3[7] <= register2[7] * Kernel0[7];				
					register3[8] <= register2[8] * Kernel0[8];
					register3[9] <= register2[9] * Kernel0[9];
					register3[10] <= register2[10] * Kernel0[10];
					register3[11] <= register2[11] * Kernel0[11];
					register3[12] <= register2[12] * Kernel0[12];
					register3[13] <= register2[13] * Kernel0[13];
					register3[14] <= register2[14] * Kernel0[14];
					register3[15] <= register2[15] * Kernel0[15];
					
					temp[1:0] <= 2;
				end
				1: begin
					register3[0] <= register2[0] * Kernel1[0];
					register3[1] <= register2[1] * Kernel1[1];
					register3[2] <= register2[2] * Kernel1[2];
					register3[3] <= register2[3] * Kernel1[3];
					register3[4] <= register2[4] * Kernel1[4];
					register3[5] <= register2[5] * Kernel1[5];
					register3[6] <= register2[6] * Kernel1[6];
					register3[7] <= register2[7] * Kernel1[7];							
					register3[8] <= register2[8] * Kernel1[8];
					register3[9] <= register2[9] * Kernel1[9];
					register3[10] <= register2[10] * Kernel1[10];
					register3[11] <= register2[11] * Kernel1[11];
					register3[12] <= register2[12] * Kernel1[12];
					register3[13] <= register2[13] * Kernel1[13];
					register3[14] <= register2[14] * Kernel1[14];
					register3[15] <= register2[15] * Kernel1[15];
					temp[1:0] <= 2;
				end
				2: begin
					register4[0] <= register3[0] + register3[4] + register3[8];
					register4[1] <= register3[1] + register3[5] + register3[9];
					register4[2] <= register3[2] + register3[6] + register3[10];
					register4[3] <= register3[3] + register3[7] + register3[11];
					register4[4] <= register3[4] - register3[8] - register3[12];
					register4[5] <= register3[5] - register3[9] - register3[13];
					register4[6] <= register3[6] - register3[10] - register3[14];
					register4[7] <= register3[7] - register3[11] - register3[15];
					temp[1:0] <= 3;
				end
				default: begin
					if(x == 0) begin
						result[0] <= 	register4[0] + register4[1] + register4[2] + {bias0,20'b0};
						result[1] <=	register4[1] - register4[2] - register4[3] + {bias0,20'b0};
						result[2] <=	register4[4] + register4[5] + register4[6] + {bias0,20'b0};
						result[3] <= 	register4[5] - register4[6] - register4[7] + {bias0,20'b0};
						status <= L0_WRITE_0;
					end
					else begin
						x <= 0;
						result[0] <= 	register4[0] + register4[1] + register4[2] + {bias1,20'b0};
						result[1] <=	register4[1] - register4[2] - register4[3] + {bias1,20'b0};
						result[2] <=	register4[4] + register4[5] + register4[6] + {bias1,20'b0};
						result[3] <= 	register4[5] - register4[6] - register4[7] + {bias1,20'b0};
						status <= L0_WRITE_1;
					end	
					temp[1:0] <= 0;
				end
				endcase
				/*if(temp[0] == 0) begin
					register3[0] <= register2[0] * Kernel0[0];
					register3[1] <= register2[1] * Kernel0[1];
					register3[2] <= register2[2] * Kernel0[2];
					register3[3] <= register2[3] * Kernel0[3];
					register3[4] <= register2[4] * Kernel0[4];
					register3[5] <= register2[5] * Kernel0[5];
					register3[6] <= register2[6] * Kernel0[6];
					register3[7] <= register2[7] * Kernel0[7];				
					register3[8] <= register2[8] * Kernel0[8];
					register3[9] <= register2[9] * Kernel0[9];
					register3[10] <= register2[10] * Kernel0[10];
					register3[11] <= register2[11] * Kernel0[11];
					register3[12] <= register2[12] * Kernel0[12];
					register3[13] <= register2[13] * Kernel0[13];
					register3[14] <= register2[14] * Kernel0[14];
					register3[15] <= register2[15] * Kernel0[15];
				end
				else begin
					register3[0] <= register2[0] * Kernel1[0];
					register3[1] <= register2[1] * Kernel1[1];
					register3[2] <= register2[2] * Kernel1[2];
					register3[3] <= register2[3] * Kernel1[3];
					register3[4] <= register2[4] * Kernel1[4];
					register3[5] <= register2[5] * Kernel1[5];
					register3[6] <= register2[6] * Kernel1[6];
					register3[7] <= register2[7] * Kernel1[7];							
					register3[8] <= register2[8] * Kernel1[8];
					register3[9] <= register2[9] * Kernel1[9];
					register3[10] <= register2[10] * Kernel1[10];
					register3[11] <= register2[11] * Kernel1[11];
					register3[12] <= register2[12] * Kernel1[12];
					register3[13] <= register2[13] * Kernel1[13];
					register3[14] <= register2[14] * Kernel1[14];
					register3[15] <= register2[15] * Kernel1[15];
				end
				status <= S_CONV4;	*/			
			end
	
			/*S_CONV4: begin
				register4[0] <= register3[0] + register3[4] + register3[8];
				register4[1] <= register3[1] + register3[5] + register3[9];
				register4[2] <= register3[2] + register3[6] + register3[10];
				register4[3] <= register3[3] + register3[7] + register3[11];
				register4[4] <= register3[4] - register3[8] - register3[12];
				register4[5] <= register3[5] - register3[9] - register3[13];
				register4[6] <= register3[6] - register3[10] - register3[14];
				register4[7] <= register3[7] - register3[11] - register3[15];
				
				status <= S_CONV5;
			end*/
			
			/*S_CONV5: begin
				if(x == 0) begin
					result[0] <= 	register4[0] + register4[1] + register4[2] + {bias0,20'b0};
					result[1] <=	register4[1] - register4[2] - register4[3] + {bias0,20'b0};
					result[2] <=	register4[4] + register4[5] + register4[6] + {bias0,20'b0};
					result[3] <= 	register4[5] - register4[6] - register4[7] + {bias0,20'b0};
					status <= L0_WRITE_0;
				end
				else begin
					x <= 0;
					result[0] <= 	register4[0] + register4[1] + register4[2] + {bias1,20'b0};
					result[1] <=	register4[1] - register4[2] - register4[3] + {bias1,20'b0};
					result[2] <=	register4[4] + register4[5] + register4[6] + {bias1,20'b0};
					result[3] <= 	register4[5] - register4[6] - register4[7] + {bias1,20'b0};
					status <= L0_WRITE_1;
				end		
			end*/
			
			L0_WRITE_0: begin
				cwr <= 1;
				crd <= 0;
				caddr_wr <= {dir_y+x[1],dir_x+x[0]};
				csel <= 3'b001;
				status <= (x==3)? S_CONV3:L0_WRITE_0;
				//-------------------ReLU-----------------------
				if(result[x] < 0) 
					cdata_wr <= 0;
				else begin
					if(result[x][19]==1) 
						cdata_wr <= result[x][39:20] +1;
					else	
						cdata_wr <= result[x][39:20];
				end	
				//--------------------------------------------------------------
				temp[0] <= 1;
				x <= x+1;								
			end

			L0_WRITE_1: begin
				cwr <= 1;
				crd <= 0;
				caddr_wr <= {dir_y+x[1],dir_x+x[0]};
				csel <= 3'b010;
				temp[1:0] <= 0;
				//-------------------Relu-----------------------
				if(result[x] < 0) 
					cdata_wr <= 0;
				else begin
					if(result[x][19]==1) 
						cdata_wr <= result[x][39:20] +1;
					else	
						cdata_wr <= result[x][39:20];
				end	
				//--------------------------------------------------------------
				
				x[1:0] <= x[1:0] +1;
				if(x == 3) begin
					status <= (dir_x == 62 && dir_y == 62)?S_CSEL: S_INPUT;
					//---------------location detect----------------
					dir_x <= dir_x+2;					
					if(dir_x==62) 
						dir_y <= dir_y+2;	
					//-------------------------------------------------------------								
				end									
			end
			L1_READ: begin
				cwr <= 0;
				crd <= 1;
				csel <= (csel == 3'b011 || csel == 3'b001)? 3'b001:3'b010;
				status <= (x == 2'b11)?L1_WRITE:L1_READ;
				caddr_rd <= {dir_y[4:0],x[1],dir_x[4:0],x[0]};	

				x[1:0] <= x[1:0]+1;					
				if(x) begin
					if(cdata_rd > temp)
						temp <= cdata_rd;
				end
				else temp <= 0;		
			end

			L1_WRITE: begin
				crd <= 0;
				cwr <= 1;
				
				csel <= (csel == 3'b001)?3'b011:3'b100;
			
				caddr_wr <= {2'b0,dir_y[4:0],dir_x[4:0]};
				cdata_wr <= (cdata_rd > temp) ? cdata_rd : temp;	

				dir_x[4:0] <= dir_x[4:0] +1;
				if(dir_x == 31) begin
					dir_y[4:0] <= dir_y[4:0] +1;
					if(dir_y == 31)
						status <= S_CSEL;
					else
						status <= L1_READ;
				end
				else
					status <= L1_READ;
			end

			L2_READ: begin
				cwr <= 0;
				crd <= 1;
				status <= L2_WRITE;
				csel <= (dir_x[0])? 3'b100:3'b011;		
			end

			L2_WRITE: begin
				cwr <= 1;
				crd <= 0;
				csel <= 3'b101;
				status <= L2_READ;
				caddr_wr <= {dir_y,dir_x};
				cdata_wr <= cdata_rd;
				caddr_rd <= {caddr_rd+dir_x[0]};

				dir_x <= dir_x +1;	
				if(dir_x ==63) begin
					dir_y[4:0] <= dir_y[4:0]+1;
					if(dir_y == 31)
						status <= S_CSEL;				
					else 
						status <= L2_READ;						
				end	
				else	status <= L2_READ;
									
			end
		endcase
	end
	
end
endmodule
