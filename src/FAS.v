module  FAS (data_valid, data, clk, rst, fir_d, fir_valid, fft_valid, done, freq,
 fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8,
 fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0);
input clk, rst;
input data_valid;
input  [15:0] data; 

output fir_valid, fft_valid;
output [15:0] fir_d;
output [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
output [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;
output done;
output [3:0] freq;

reg [3:0] freq;
wire fft_valid;
reg done;

wire [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
wire [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;
reg [31:0] fft_data [0:15];

assign fft_d0 = fft_data[0];
assign fft_d1 = fft_data[1];
assign fft_d2 = fft_data[2];
assign fft_d3 = fft_data[3];
assign fft_d4 = fft_data[4];
assign fft_d5 = fft_data[5];
assign fft_d6 = fft_data[6];
assign fft_d7 = fft_data[7];
assign fft_d8 = fft_data[8];
assign fft_d9 = fft_data[9];
assign fft_d10 = fft_data[10];
assign fft_d11 = fft_data[11];
assign fft_d12 = fft_data[12];
assign fft_d13 = fft_data[13];
assign fft_d14 = fft_data[14];
assign fft_d15 = fft_data[15];

parameter signed [19:0] FIR_C00 = 20'hFFF9E ;     //The FIR_coefficient value 0: -1.495361e-003
parameter signed [19:0] FIR_C01 = 20'hFFF86 ;     //The FIR_coefficient value 1: -1.861572e-003
parameter signed [19:0] FIR_C02 = 20'hFFFA7 ;     //The FIR_coefficient value 2: -1.358032e-003
parameter signed [19:0] FIR_C03 = 20'h0003B ;    //The FIR_coefficient value 3: 9.002686e-004
parameter signed [19:0] FIR_C04 = 20'h0014B ;    //The FIR_coefficient value 4: 5.050659e-003
parameter signed [19:0] FIR_C05 = 20'h0024A ;    //The FIR_coefficient value 5: 8.941650e-003
parameter signed [19:0] FIR_C06 = 20'h00222 ;    //The FIR_coefficient value 6: 8.331299e-003
parameter signed [19:0] FIR_C07 = 20'hFFFE4 ;     //The FIR_coefficient value 7: -4.272461e-004
parameter signed [19:0] FIR_C08 = 20'hFFBC5 ;     //The FIR_coefficient value 8: -1.652527e-002
parameter signed [19:0] FIR_C09 = 20'hFF7CA ;     //The FIR_coefficient value 9: -3.207397e-002
parameter signed [19:0] FIR_C10 = 20'hFF74E ;     //The FIR_coefficient value 10: -3.396606e-002
parameter signed [19:0] FIR_C11 = 20'hFFD74 ;     //The FIR_coefficient value 11: -9.948730e-003
parameter signed [19:0] FIR_C12 = 20'h00B1A ;    //The FIR_coefficient value 12: 4.336548e-002
parameter signed [19:0] FIR_C13 = 20'h01DAC ;    //The FIR_coefficient value 13: 1.159058e-001
parameter signed [19:0] FIR_C14 = 20'h02F9E ;    //The FIR_coefficient value 14: 1.860046e-001
parameter signed [19:0] FIR_C15 = 20'h03AA9 ;    //The FIR_coefficient value 15: 2.291412e-001
parameter signed [19:0] FIR_C16 = 20'h03AA9 ;    //The FIR_coefficient value 16: 2.291412e-001
parameter signed [19:0] FIR_C17 = 20'h02F9E ;    //The FIR_coefficient value 17: 1.860046e-001
parameter signed [19:0] FIR_C18 = 20'h01DAC ;    //The FIR_coefficient value 18: 1.159058e-001
parameter signed [19:0] FIR_C19 = 20'h00B1A ;    //The FIR_coefficient value 19: 4.336548e-002
parameter signed [19:0] FIR_C20 = 20'hFFD74 ;     //The FIR_coefficient value 20: -9.948730e-003
parameter signed [19:0] FIR_C21 = 20'hFF74E ;     //The FIR_coefficient value 21: -3.396606e-002
parameter signed [19:0] FIR_C22 = 20'hFF7CA ;     //The FIR_coefficient value 22: -3.207397e-002
parameter signed [19:0] FIR_C23 = 20'hFFBC5 ;     //The FIR_coefficient value 23: -1.652527e-002
parameter signed [19:0] FIR_C24 = 20'hFFFE4 ;     //The FIR_coefficient value 24: -4.272461e-004
parameter signed [19:0] FIR_C25 = 20'h00222 ;    //The FIR_coefficient value 25: 8.331299e-003
parameter signed [19:0] FIR_C26 = 20'h0024A ;    //The FIR_coefficient value 26: 8.941650e-003
parameter signed [19:0] FIR_C27 = 20'h0014B ;    //The FIR_coefficient value 27: 5.050659e-003
parameter signed [19:0] FIR_C28 = 20'h0003B ;    //The FIR_coefficient value 28: 9.002686e-004
parameter signed [19:0] FIR_C29 = 20'hFFFA7 ;     //The FIR_coefficient value 29: -1.358032e-003
parameter signed [19:0] FIR_C30 = 20'hFFF86 ;     //The FIR_coefficient value 30: -1.861572e-003
parameter signed [19:0] FIR_C31 = 20'hFFF9E ;     //The FIR_coefficient value 31: -1.495361e-003

//data_buffer
reg signed [15:0] data_buffer[31:0];
always@(posedge clk or posedge rst)
begin
	integer i;
    if(rst) 
    begin
        for(i=0;i<32;i=i+1)
        begin
            data_buffer[i] <= 16'd0;
        end
    end
    else if(data_valid)
    begin
        data_buffer[0] <= $signed(data);
        for(i=1;i<32;i=i+1)
        begin
            data_buffer[i] <= data_buffer[i-1];
        end
    end
end

//mul
wire signed [36:0] mul[31:0];
assign mul[0] = data_buffer[0] * FIR_C00;
assign mul[1] = data_buffer[1] * FIR_C01;
assign mul[2] = data_buffer[2] * FIR_C02;
assign mul[3] = data_buffer[3] * FIR_C03;
assign mul[4] = data_buffer[4] * FIR_C04;
assign mul[5] = data_buffer[5] * FIR_C05;
assign mul[6] = data_buffer[6] * FIR_C06;
assign mul[7] = data_buffer[7] * FIR_C07;
assign mul[8] = data_buffer[8] * FIR_C08;
assign mul[9] = data_buffer[9] * FIR_C09;
assign mul[10] = data_buffer[10] * FIR_C10;
assign mul[11] = data_buffer[11] * FIR_C11;
assign mul[12] = data_buffer[12] * FIR_C12;
assign mul[13] = data_buffer[13] * FIR_C13;
assign mul[14] = data_buffer[14] * FIR_C14;
assign mul[15] = data_buffer[15] * FIR_C15;
assign mul[16] = data_buffer[16] * FIR_C16;
assign mul[17] = data_buffer[17] * FIR_C17;
assign mul[18] = data_buffer[18] * FIR_C18;
assign mul[19] = data_buffer[19] * FIR_C19;
assign mul[20] = data_buffer[20] * FIR_C20;
assign mul[21] = data_buffer[21] * FIR_C21;
assign mul[22] = data_buffer[22] * FIR_C22;
assign mul[23] = data_buffer[23] * FIR_C23;
assign mul[24] = data_buffer[24] * FIR_C24;
assign mul[25] = data_buffer[25] * FIR_C25;
assign mul[26] = data_buffer[26] * FIR_C26;
assign mul[27] = data_buffer[27] * FIR_C27;
assign mul[28] = data_buffer[28] * FIR_C28;
assign mul[29] = data_buffer[29] * FIR_C29;
assign mul[30] = data_buffer[30] * FIR_C30;
assign mul[31] = data_buffer[31] * FIR_C31;

//sum_1
wire signed [37:0] sum_1_0 = mul[0] + mul[1];
wire signed [37:0] sum_1_1 = mul[2] + mul[3];
wire signed [37:0] sum_1_2 = mul[4] + mul[5];
wire signed [37:0] sum_1_3 = mul[6] + mul[7];
wire signed [37:0] sum_1_4 = mul[8] + mul[9];
wire signed [37:0] sum_1_5 = mul[10] + mul[11];
wire signed [37:0] sum_1_6 = mul[12] + mul[13];
wire signed [37:0] sum_1_7 = mul[14] + mul[15];
wire signed [37:0] sum_1_8 = mul[16] + mul[17];
wire signed [37:0] sum_1_9 = mul[18] + mul[19];
wire signed [37:0] sum_1_10 = mul[20] + mul[21];
wire signed [37:0] sum_1_11 = mul[22] + mul[23];
wire signed [37:0] sum_1_12 = mul[24] + mul[25];
wire signed [37:0] sum_1_13 = mul[26] + mul[27];
wire signed [37:0] sum_1_14 = mul[28] + mul[29];
wire signed [37:0] sum_1_15 = mul[30] + mul[31];
//sum_2
wire signed [38:0] sum_2_0 = sum_1_0 + sum_1_1;
wire signed [38:0] sum_2_1 = sum_1_2 + sum_1_3;
wire signed [38:0] sum_2_2 = sum_1_4 + sum_1_5;
wire signed [38:0] sum_2_3 = sum_1_6 + sum_1_7;
wire signed [38:0] sum_2_4 = sum_1_8 + sum_1_9;
wire signed [38:0] sum_2_5 = sum_1_10 + sum_1_11;
wire signed [38:0] sum_2_6 = sum_1_12 + sum_1_13;
wire signed [38:0] sum_2_7 = sum_1_14 + sum_1_15;
//sum_3
wire signed [39:0] sum_3_0 = sum_2_0 + sum_2_1;
wire signed [39:0] sum_3_1 = sum_2_2 + sum_2_3;
wire signed [39:0] sum_3_2 = sum_2_4 + sum_2_5;
wire signed [39:0] sum_3_3 = sum_2_6 + sum_2_7;
//sum_4
wire signed [40:0] sum_4_0 = sum_3_0 + sum_3_1;
wire signed [40:0] sum_4_1 = sum_3_2 + sum_3_3;
//sum_5
wire signed [41:0] SUM = sum_4_0 + sum_4_1;

reg [5:0] counter_fir; //32

//cout 32
always@(posedge clk or posedge rst)
begin
    if(rst) counter_fir <= 6'd0;
    else if(counter_fir == 6'd33) counter_fir <= counter_fir;
    else if(data_valid) counter_fir <= counter_fir + 6'd1;
end

//output logic

//fir_valid
wire fir_valid = (data_valid && counter_fir == 6'd33) ? 1'd1 : 1'd0;

//fir_d
wire [15:0] fir_d = (SUM[41] == 1'd1) ? {SUM[41],SUM[30:16]} + 16'd1 : {SUM[41],SUM[30:16]};

wire [3:0] counter;
wire [3:0] counter_reverse;
reverse #(.WIDTH(4)) r0 (.in(counter),.out(counter_reverse));

reg signed [23:0] dout_r,dout_i;
FFT ff0(.clk(clk),
		.rst(rst),
		.din_valid(fir_valid),
		.din_r({fir_d,8'd0}),
		.din_i(24'd0),
		.dout_num(counter),
		.dout_valid(),
		.done(fft_valid),
		.dout_r(dout_r),
		.dout_i(dout_i)
		 );


always@(posedge clk or posedge rst)
begin
	integer i;
	if(rst) 
	begin
		for(i=0;i<16;i=i+1)
		begin
			fft_data[i] <= 32'd0;
		end
	end
	else 
	begin
		fft_data[counter_reverse] <= {dout_r[23:8],dout_i[23:8]}; 
	end
end


reg signed [15:0] dr,di;
always@(posedge clk or posedge rst)
begin
	if(rst) 
	begin
		dr <= 16'd0;
		di <= 16'd0;
	end
	else 
	begin
		dr <= $signed(dout_r[23:8]);
		di <= $signed(dout_i[23:8]);
	end
end
wire signed [32:0] pow2_add = ((dr*dr) + (di*di));

reg signed [32:0] pow2_add_reg;
always@(posedge clk or posedge rst)
begin
	if(rst) pow2_add_reg <= 33'd0;
	else if(pow2_add > pow2_add_reg) pow2_add_reg <= pow2_add;
end

wire degub = pow2_add > pow2_add_reg;
wire [3:0] freq_next;
reverse #(.WIDTH(4)) r1 (.in(counter-4'd1),.out(freq_next));
always@(posedge clk or posedge rst)
begin
	if(rst) freq <= 4'd0;
	else if(pow2_add > pow2_add_reg) 
	begin
		freq <= freq_next;
	end
end

always@(posedge clk or posedge rst)
begin
	if(rst) done <= 1'd0;
	else if(fft_valid) done <= 1'd1;
	else done <= 1'd0;
end


endmodule

module reverse#(parameter WIDTH = 4) (in,out);
input [WIDTH-1:0] in;
output [WIDTH-1:0] out;
reg [WIDTH-1:0] out;

always@(*)
begin
	integer i;
	for(i=0;i<WIDTH;i=i+1)
	begin
		out[i] <= in[WIDTH-i-1];
	end
end

endmodule

module FFT#(parameter WIDTH = 24,parameter PointLog2 = 4) //result not sort
(clk,rst,din_valid,din_r,din_i,dout_num,done,dout_valid,dout_r,dout_i);
input clk,rst;
input din_valid;
input [WIDTH-1:0] din_r,din_i;
output [PointLog2-1:0] dout_num;
output [WIDTH-1:0] dout_r,dout_i;
output done,dout_valid;
wire [WIDTH-1:0] dout_r,dout_i;

//counter
wire [PointLog2:0] counter_next;
reg [PointLog2:0] counter;
wire [PointLog2-1:0] dout_num = counter[PointLog2-1:0] + {{PointLog2-1{1'd0}},1'd1};

wire signed [WIDTH-1:0] dout_ar [PointLog2-1:0];
wire signed [WIDTH-1:0] dout_ai [PointLog2-1:0];
wire signed [WIDTH-1:0] dout_br [PointLog2-1:0];
wire signed [WIDTH-1:0] dout_bi [PointLog2-1:0];

wire [WIDTH-1:0] shifter_din_R[PointLog2-1:0];
wire [WIDTH-1:0] shifter_din_I[PointLog2-1:0];

wire signed [31:0] W_R[PointLog2-2:0];
wire signed [31:0] W_I[PointLog2-2:0];
reg [2:0] W_index_reg [PointLog2-2:0];
reg [2:0] W_index [PointLog2-2:0];

wire state[PointLog2-1:0];

assign counter_next = (din_valid) ? counter + {{PointLog2{1'd0}},1'd1} : counter;
always@(posedge clk or posedge rst)
begin
	if(rst) counter <= {(PointLog2+1){1'b0}};
	else counter <= counter_next;
end

reg fft_first_run,done;
wire dout_valid =  fft_first_run;

always@(posedge clk or posedge rst)
begin
	if(rst)
	begin
		done <= 1'd0;
		fft_first_run <= 1'd0;
	end
	else if(dout_num == 5'd15 && fft_first_run == 1'd1) done <= 1'd1;
	else if(dout_num == 5'd15) 
	begin
		done <= 1'd0;
		fft_first_run <= 1'd1;
	end
	else done <= 1'd0;
end

/*
assign state[0] = counter[3] ? 1'd0 : 1'd1;
assign state[1] = counter[2] ? 1'd0 : 1'd1;
assign state[2] = counter[1] ? 1'd0 : 1'd1;
assign state[3] = counter[0] ? 1'd0 : 1'd1;
*/
assign dout_r = dout_br[PointLog2-1];
assign dout_i = dout_bi[PointLog2-1];

twiddle_ROM rom(
		.clk(clk),
		.rst(rst),
		.counter(counter),
		.W_R(W_R),
		.W_I(W_I)
);

genvar i;
generate
	for(i=0;i<PointLog2;i=i+1)
	begin
		assign state[i] = counter[PointLog2-1-i] ? 1'd0 : 1'd1;
		
		shifter #(.WIDTH(24),.delay(2**(PointLog2-i-1)))
		delay( .clk(clk),
				.rst(rst),
				.dataIn_R(dout_ar[i]),
				.dataIn_I(dout_ai[i]),
				.dataOut_R(shifter_din_R[i]),
				.dataOut_I(shifter_din_I[i])
		);
	end

	fft_butterFly f0(  	.state(state[0]),
					.din_ar(shifter_din_R[0]),
				   	.din_ai(shifter_din_I[0]),
					.din_br(din_r),
					.din_bi(din_i),
					.W_R(W_R[0]),
					.W_I(W_I[0]),
					.dout_ar(dout_ar[0]),
					.dout_ai(dout_ai[0]),
					.dout_br(dout_br[0]),
					.dout_bi(dout_bi[0])
	);
	for(i=1;i<PointLog2;i=i+1)
	begin
		if(i == (PointLog2-1))
		begin
			fft_butterFly 
			f(  		.state(state[i]),
						.din_ar(shifter_din_R[i]),
						.din_ai(shifter_din_I[i]),
						.din_br(dout_br[i-1]),
						.din_bi(dout_bi[i-1]),
						.W_R(32'h00010000),
						.W_I(32'h00000000),
						.dout_ar(dout_ar[i]),
						.dout_ai(dout_ai[i]),
						.dout_br(dout_br[i]),
						.dout_bi(dout_bi[i])
			);
		end
		else
		begin
			fft_butterFly 
			f(  		.state(state[i]),
						.din_ar(shifter_din_R[i]),
						.din_ai(shifter_din_I[i]),
						.din_br(dout_br[i-1]),
						.din_bi(dout_bi[i-1]),
						.W_R(W_R[i]),
						.W_I(W_I[i]),
						.dout_ar(dout_ar[i]),
						.dout_ai(dout_ai[i]),
						.dout_br(dout_br[i]),
						.dout_bi(dout_bi[i])
			);
		end
	end
endgenerate


endmodule

module fft_butterFly#(parameter IN_W = 24,parameter Factor_W = 32)
(state,din_ar,din_ai,din_br,din_bi,W_R,W_I,dout_ar,dout_ai,dout_br,dout_bi);
input state;
input signed [IN_W-1:0] din_ar,din_ai,din_br,din_bi;
input signed [Factor_W-1:0] W_R;
input signed [Factor_W-1:0] W_I;
output signed [IN_W-1:0] dout_ar,dout_ai,dout_br,dout_bi;

reg signed [IN_W-1:0] dout_ar,dout_ai,dout_br,dout_bi;
reg signed [IN_W-1:0] a,b,c,d;
reg signed [IN_W*2:0] inter,mul_r,mul_i;

always@(*)
begin
	dout_ar = din_br;
	dout_ai = din_bi;
	dout_br = {IN_W{1'b0}};
	dout_bi = {IN_W{1'b0}};
	case(state)
	1'd0: 
	begin
		a = din_ar + din_br;
		b = din_ai + din_bi;

		c = din_ar - din_br;
		d = din_ai - din_bi;

		dout_br = a;
		dout_bi = b;

		dout_ar = c;
		dout_ai = d;
	end
	1'd1: 
	begin
		dout_ar = din_br;
		dout_ai = din_bi;

		a = din_ar;
		b = din_ai;

		inter = b*(W_R-W_I);
		mul_r = W_R*(a-b) + inter;
		mul_i = W_I*(a+b) + inter;

		dout_br = {mul_r[IN_W*2],mul_r[38:16]};
		dout_bi = {mul_i[IN_W*2],mul_i[38:16]};
	end
	default:
	begin
		dout_ar = din_br;
		dout_ai = din_bi;
	end
	endcase 
end

endmodule

module shifter#(parameter WIDTH=24,parameter delay=8)
(clk,rst,dataIn_R,dataIn_I,dataOut_R,dataOut_I);
input clk,rst;
input [WIDTH-1:0] dataIn_R,dataIn_I;
output [WIDTH-1:0] dataOut_R,dataOut_I;
wire [WIDTH-1:0] dataIn_R,dataIn_I,dataOut_R,dataOut_I;

reg [WIDTH-1:0] FIFO_R[delay-1:0];
reg [WIDTH-1:0] FIFO_I[delay-1:0];
assign dataOut_R = FIFO_R[delay-1];
assign dataOut_I = FIFO_I[delay-1];

integer i;
always@(posedge clk or posedge rst)
begin
    if(rst) 
    begin
        for(i=0;i<delay;i=i+1)
        begin
            FIFO_R[i] <= {WIDTH{1'b0}};
			FIFO_I[i] <= {WIDTH{1'b0}};
        end
    end
    else 
    begin
		FIFO_R[0] <= dataIn_R;
		FIFO_I[0] <= dataIn_I;
		for(i=0;i<(delay-1);i=i+1)
        begin
            FIFO_R[i+1] <= FIFO_R[i];
			FIFO_I[i+1] <= FIFO_I[i];	
        end
    end
end
endmodule

module twiddle_ROM (clk,rst,counter,W_R,W_I);
input clk;
input rst;
input  [4:0] counter;
output reg signed [31:0] W_R[2:0];
output reg signed [31:0] W_I[2:0];

reg [2:0] W_index[2:0];
wire [2:0] W_index_next [2:0];


always @ (*)
begin
    case (W_index[0]) 
    
    3'd0: 
        begin
            W_R[0] <=  32'sd65536;
            W_I[0] <= -32'sd0;
		end 
    
    3'd1: 
        begin
            W_R[0] <=  32'sd60547;
            W_I[0] <= -32'sd25079;
		end 
    
    3'd2: 
        begin
            W_R[0] <=  32'sd46340;
            W_I[0] <= -32'sd46340;
		end 
    
    3'd3: 
        begin
            W_R[0] <=  32'sd25079;
            W_I[0] <= -32'sd60547;
		end 
    
    3'd4: 
        begin
            W_R[0] <=  32'sd0;
            W_I[0] <= -32'sd65536;
		end 
    
    3'd5: 
        begin
            W_R[0] <= -32'sd25079;
            W_I[0] <= -32'sd60547;
		end 
    
    3'd6: 
        begin
            W_R[0] <= -32'sd46340;
            W_I[0] <= -32'sd46340;
		end 
    
    3'd7: 
        begin
            W_R[0] <= -32'sd60547;
            W_I[0] <= -32'sd25079;
		end 
    
        default:
        begin
            W_R[0] <= 32'd0;
            W_I[0] <= 32'd0;
        end
    endcase
end

always @ (*)
begin
    case (W_index[1]) 
    
    3'd0: 
        begin
            W_R[1] <=  32'sd65536;
            W_I[1] <= -32'sd0;
		end 
    
    3'd2: 
        begin
            W_R[1] <=  32'sd46340;
            W_I[1] <= -32'sd46340;
		end 
    
    3'd4: 
        begin
            W_R[1] <=  32'sd0;
            W_I[1] <= -32'sd65536;
		end 
    
    3'd6: 
        begin
            W_R[1] <= -32'sd46340;
            W_I[1] <= -32'sd46340;
		end 
    
        default:
        begin
            W_R[1] <= 32'd0;
            W_I[1] <= 32'd0;
        end
    endcase
end

always @ (*)
begin
    case (W_index[2]) 
    
    3'd0: 
        begin
            W_R[2] <=  32'sd65536;
            W_I[2] <= -32'sd0;
		end 
    
    3'd4: 
        begin
            W_R[2] <=  32'sd0;
            W_I[2] <= -32'sd65536;
		end 
    
        default:
        begin
            W_R[2] <= 32'd0;
            W_I[2] <= 32'd0;
        end
    endcase
end



assign W_index_next[0] = counter[3] ? W_index[0] : W_index[0]+3'd1;
always@(posedge clk or posedge rst)
begin
	if(rst) W_index[0] <= 3'd7;
	else W_index[0] <= W_index_next[0];
end

assign W_index_next[1] = counter[2] ? W_index[1] : W_index[1]+3'd2;
always@(posedge clk or posedge rst)
begin
	if(rst) W_index[1] <= 3'd6;
	else W_index[1] <= W_index_next[1];
end

assign W_index_next[2] = counter[1] ? W_index[2] : W_index[2]+3'd4;
always@(posedge clk or posedge rst)
begin
	if(rst) W_index[2] <= 3'd4;
	else W_index[2] <= W_index_next[2];
end

endmodule