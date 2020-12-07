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
wire [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
wire [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;

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
integer i;
always@(posedge clk or posedge rst)
begin
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

//done
reg done,buffer;
always@(posedge clk or posedge rst)
begin
	if(rst) buffer <= 1'd0; 
	else if(fft_valid) buffer <= 1'd1;
	else buffer <= 1'd0;
end
always@(posedge clk or posedge rst)
begin
	if(rst) done <= 1'd0; 
	else done <= buffer;
end

//fir_d
wire [15:0] fir_d = (SUM[41] == 1'd1) ? {SUM[41],SUM[30:16]} + 16'd1 : {SUM[41],SUM[30:16]};

//analysis
wire signed [32:0] pow2_add_0= ($signed(fft_d0[31:16])*$signed(fft_d0[31:16])) + ($signed(fft_d0[15:0])*$signed(fft_d0[15:0]));
wire signed [32:0] pow2_add_1= ($signed(fft_d1[31:16])*$signed(fft_d1[31:16])) + ($signed(fft_d1[15:0])*$signed(fft_d1[15:0]));
wire signed [32:0] pow2_add_2= ($signed(fft_d2[31:16])*$signed(fft_d2[31:16])) + ($signed(fft_d2[15:0])*$signed(fft_d2[15:0]));
wire signed [32:0] pow2_add_3= ($signed(fft_d3[31:16])*$signed(fft_d3[31:16])) + ($signed(fft_d3[15:0])*$signed(fft_d3[15:0]));
wire signed [32:0] pow2_add_4= ($signed(fft_d4[31:16])*$signed(fft_d4[31:16])) + ($signed(fft_d4[15:0])*$signed(fft_d4[15:0]));
wire signed [32:0] pow2_add_5= ($signed(fft_d5[31:16])*$signed(fft_d5[31:16])) + ($signed(fft_d5[15:0])*$signed(fft_d5[15:0]));
wire signed [32:0] pow2_add_6= ($signed(fft_d6[31:16])*$signed(fft_d6[31:16])) + ($signed(fft_d6[15:0])*$signed(fft_d6[15:0]));
wire signed [32:0] pow2_add_7= ($signed(fft_d7[31:16])*$signed(fft_d7[31:16])) + ($signed(fft_d7[15:0])*$signed(fft_d7[15:0]));
wire signed [32:0] pow2_add_8= ($signed(fft_d8[31:16])*$signed(fft_d8[31:16])) + ($signed(fft_d8[15:0])*$signed(fft_d8[15:0]));
wire signed [32:0] pow2_add_9= ($signed(fft_d9[31:16])*$signed(fft_d9[31:16])) + ($signed(fft_d9[15:0])*$signed(fft_d9[15:0]));
wire signed [32:0] pow2_add_10= ($signed(fft_d10[31:16])*$signed(fft_d10[31:16])) + ($signed(fft_d10[15:0])*$signed(fft_d10[15:0]));
wire signed [32:0] pow2_add_11= ($signed(fft_d11[31:16])*$signed(fft_d11[31:16])) + ($signed(fft_d11[15:0])*$signed(fft_d11[15:0]));
wire signed [32:0] pow2_add_12= ($signed(fft_d12[31:16])*$signed(fft_d12[31:16])) + ($signed(fft_d12[15:0])*$signed(fft_d12[15:0]));
wire signed [32:0] pow2_add_13= ($signed(fft_d13[31:16])*$signed(fft_d13[31:16])) + ($signed(fft_d13[15:0])*$signed(fft_d13[15:0]));
wire signed [32:0] pow2_add_14= ($signed(fft_d14[31:16])*$signed(fft_d14[31:16])) + ($signed(fft_d14[15:0])*$signed(fft_d14[15:0]));
wire signed [32:0] pow2_add_15= ($signed(fft_d15[31:16])*$signed(fft_d15[31:16])) + ($signed(fft_d15[15:0])*$signed(fft_d15[15:0]));

wire [36:0] cmp_1_0 = (pow2_add_0 >= pow2_add_1) ? {4'd0,pow2_add_0} : {4'd1,pow2_add_1};
wire [36:0] cmp_1_1 = (pow2_add_2 >= pow2_add_3) ? {4'd2,pow2_add_2} : {4'd3,pow2_add_3};
wire [36:0] cmp_1_2 = (pow2_add_4 >= pow2_add_5) ? {4'd4,pow2_add_4} : {4'd5,pow2_add_5};
wire [36:0] cmp_1_3 = (pow2_add_6 >= pow2_add_7) ? {4'd6,pow2_add_6} : {4'd7,pow2_add_7};
wire [36:0] cmp_1_4 = (pow2_add_8 >= pow2_add_9) ? {4'd8,pow2_add_8} : {4'd9,pow2_add_9};
wire [36:0] cmp_1_5 = (pow2_add_10 >= pow2_add_11) ? {4'd10,pow2_add_10} : {4'd11,pow2_add_11};
wire [36:0] cmp_1_6 = (pow2_add_12 >= pow2_add_13) ? {4'd12,pow2_add_12} : {4'd13,pow2_add_13};
wire [36:0] cmp_1_7 = (pow2_add_14 >= pow2_add_15) ? {4'd14,pow2_add_14} : {4'd15,pow2_add_15};

wire [36:0] cmp_2_0 = (cmp_1_0[32:0] > cmp_1_1[32:0]) ? cmp_1_0 : cmp_1_1;
wire [36:0] cmp_2_1 = (cmp_1_2[32:0] > cmp_1_3[32:0]) ? cmp_1_2 : cmp_1_3;
wire [36:0] cmp_2_2 = (cmp_1_4[32:0] > cmp_1_5[32:0]) ? cmp_1_4 : cmp_1_5;
wire [36:0] cmp_2_3 = (cmp_1_6[32:0] > cmp_1_7[32:0]) ? cmp_1_6 : cmp_1_7;

wire [36:0] cmp_3_0 = (cmp_2_0[32:0] > cmp_2_1[32:0]) ? cmp_2_0 : cmp_2_1;
wire [36:0] cmp_3_1 = (cmp_2_2[32:0] > cmp_2_3[32:0]) ? cmp_2_2 : cmp_2_3;

wire [3:0] freq_comb = (cmp_3_0[32:0] > cmp_3_1[32:0]) ? cmp_3_0[36:33] : cmp_3_1[36:33];

always@(posedge clk or posedge rst)
begin
	if(rst) freq <= 4'd0;
	else freq <= freq_comb;
end

FFT ff0(.clk(clk),
		.rst(rst),
		.data_valid(fir_valid),
		.data(fir_d),
		.fft_valid(fft_valid),
		.fft_d0(fft_d0),
		.fft_d1(fft_d1),
		.fft_d2(fft_d2),
		.fft_d3(fft_d3),
		.fft_d4(fft_d4),
		.fft_d5(fft_d5),
		.fft_d6(fft_d6),
		.fft_d7(fft_d7),
		.fft_d8(fft_d8),
		.fft_d9(fft_d9),
		.fft_d10(fft_d10),
		.fft_d11(fft_d11),
		.fft_d12(fft_d12),
		.fft_d13(fft_d13),
		.fft_d14(fft_d14),
		.fft_d15(fft_d15) );

endmodule

module FFT(clk,rst,data_valid,data,fft_valid,fft_d0,fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8,
fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15);
input clk,rst;
input data_valid;
input [15:0] data;
output fft_valid;
output [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
output [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;

reg [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
reg [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;
reg fft_valid,fft_first_run;


wire[15:0] data;
wire [23:0] dout_ar [3:0];
wire [23:0] dout_ai [3:0];
wire [23:0] dout_br [3:0];
wire [23:0] dout_bi [3:0];
wire [23:0] d8in_R,d8in_I,d8out_R,d8out_I,
			d4in_R,d4in_I,d4out_R,d4out_I,
			d2in_R,d2in_I,d2out_R,d2out_I,
			d1in_R,d1in_I,d1out_R,d1out_I;


wire [31:0] W_R[3:0];
wire [31:0] W_I[3:0];
reg [2:0] W_index [3:0];
reg [1:0] state[3:0];

//counter
reg [4:0] counter32;
wire [4:0] counter32_next;
assign counter32_next = (data_valid) ? counter32+5'd1 : counter32;
always@(posedge clk or posedge rst)
begin
	if(rst) counter32 <= 5'd0;
	else counter32 <= counter32_next;
end

always@(*)
begin
	case(counter32)
	5'd0: W_index[0] = 3'd0;
	5'd1: W_index[0] = 3'd1;
	5'd2: W_index[0] = 3'd2;
	5'd3: W_index[0] = 3'd3;
	5'd4: W_index[0] = 3'd4;
	5'd5: W_index[0] = 3'd5;
	5'd6: W_index[0] = 3'd6;
	5'd7: W_index[0] = 3'd7;

	5'd16: W_index[0] = 3'd0;
	5'd17: W_index[0] = 3'd1;
	5'd18: W_index[0] = 3'd2;
	5'd19: W_index[0] = 3'd3;
	5'd20: W_index[0] = 3'd4;
	5'd21: W_index[0] = 3'd5;
	5'd22: W_index[0] = 3'd6;
	5'd23: W_index[0] = 3'd7;
	default: W_index[0] = 3'd0;
	endcase
end

always@(*)
begin
	case(counter32)
	5'd16: W_index[1] = 3'd0;
	5'd17: W_index[1] = 3'd2;
	5'd18: W_index[1] = 3'd4;
	5'd19: W_index[1] = 3'd6;
	5'd24: W_index[1] = 3'd0;
	5'd25: W_index[1] = 3'd2;
	5'd26: W_index[1] = 3'd4;
	5'd27: W_index[1] = 3'd6;

	5'd0: W_index[1] = 3'd0;
	5'd1: W_index[1] = 3'd2;
	5'd2: W_index[1] = 3'd4;
	5'd3: W_index[1] = 3'd6;
	5'd8: W_index[1] = 3'd0;
	5'd9: W_index[1] = 3'd2;
	5'd10: W_index[1] = 3'd4;
	5'd11: W_index[1] = 3'd6;
	default: W_index[1] = 3'd0;
	endcase
end

always@(*)
begin
	case(counter32)
	5'd16: W_index[2] = 3'd0;
	5'd17: W_index[2] = 3'd4;
	5'd20: W_index[2] = 3'd0;
	5'd21: W_index[2] = 3'd4;
	5'd24: W_index[2] = 3'd0;
	5'd25: W_index[2] = 3'd4;
	5'd28: W_index[2] = 3'd0;
	5'd29: W_index[2] = 3'd4;

	5'd0: W_index[2] = 3'd0;
	5'd1: W_index[2] = 3'd4;
	5'd4: W_index[2] = 3'd0;
	5'd5: W_index[2] = 3'd4;
	5'd8: W_index[2] = 3'd0;
	5'd9: W_index[2] = 3'd4;
	5'd12: W_index[2] = 3'd0;
	5'd13: W_index[2] = 3'd4;
	default: W_index[2] = 3'd0;
	endcase
end

always@(*)
begin
	case(counter32)
	5'd16: W_index[3] = 3'd0;
	5'd18: W_index[3] = 3'd0;
	5'd20: W_index[3] = 3'd0;
	5'd22: W_index[3] = 3'd0;
	5'd24: W_index[3] = 3'd0;
	5'd26: W_index[3] = 3'd0;
	5'd28: W_index[3] = 3'd0;
	5'd30: W_index[3] = 3'd0;
	default: W_index[3] = 3'd0;
	endcase
end

always@(*)
begin
	if(counter32[3] == 1'd1) state[0] = 2'd1;
	else state[0] = 2'd2;

end

always@(*)
begin
	if(counter32[2] == 1'd1) state[1] = 2'd1;
	else state[1] = 2'd2;
end

always@(*)
begin
	if(counter32[1] == 1'd1) state[2] = 2'd1;
	else state[2] = 2'd2;
end

always@(*)
begin
	if(counter32[0] == 1'd1) state[3] = 2'd1;
	else state[3] = 2'd2;
end

shifter #(.WIDTH(24),.delay(8)) 
		delay8( .clk(clk),
				.rst(rst),
				.dataIn_R(dout_ar[0]),
				.dataIn_I(dout_ai[0]),
				.dataOut_R(d8out_R),
				.dataOut_I(d8out_I)
);
fft_butterFly f0(  	.state(state[0]),
					.din_ar(d8out_R),
				   	.din_ai(d8out_I),
					.din_br({data,8'd0}),
					.din_bi(24'd0),
					.W_R(W_R[0]),
					.W_I(W_I[0]),
					.dout_ar(dout_ar[0]),
					.dout_ai(dout_ai[0]),
					.dout_br(dout_br[0]),
					.dout_bi(dout_bi[0])
);
twiddle t0( .index(W_index[0]),
			.W_R(W_R[0]),
			.W_I(W_I[0])
);

shifter #(.WIDTH(24),.delay(4)) 
		delay4( .clk(clk),
				.rst(rst),
				.dataIn_R(dout_ar[1]),
				.dataIn_I(dout_ai[1]),
				.dataOut_R(d4out_R),
				.dataOut_I(d4out_I)
);
fft_butterFly f1(  	.state(state[1]),
					.din_ar(d4out_R),
				   	.din_ai(d4out_I),
					.din_br(dout_br[0]),
					.din_bi(dout_bi[0]),
					.W_R(W_R[1]),
					.W_I(W_I[1]),
					.dout_ar(dout_ar[1]),
					.dout_ai(dout_ai[1]),
					.dout_br(dout_br[1]),
					.dout_bi(dout_bi[1])
);
twiddle t1( .index(W_index[1]),
			.W_R(W_R[1]),
			.W_I(W_I[1])
);

shifter #(.WIDTH(24),.delay(2)) 
		delay2( .clk(clk),
				.rst(rst),
				.dataIn_R(dout_ar[2]),
				.dataIn_I(dout_ai[2]),
				.dataOut_R(d2out_R),
				.dataOut_I(d2out_I)
);
fft_butterFly f2(  	.state(state[2]),
					.din_ar(d2out_R),
				   	.din_ai(d2out_I),
					.din_br(dout_br[1]),
					.din_bi(dout_bi[1]),
					.W_R(W_R[2]),
					.W_I(W_I[2]),
					.dout_ar(dout_ar[2]),
					.dout_ai(dout_ai[2]),
					.dout_br(dout_br[2]),
					.dout_bi(dout_bi[2])
);
twiddle t2( .index(W_index[2]),
			.W_R(W_R[2]),
			.W_I(W_I[2])
);

shifter #(.WIDTH(24),.delay(1)) 
		delay1( .clk(clk),
				.rst(rst),
				.dataIn_R(dout_ar[3]),
				.dataIn_I(dout_ai[3]),
				.dataOut_R(d1out_R),
				.dataOut_I(d1out_I)
);
fft_butterFly f3(  	.state(state[3]),
					.din_ar(d1out_R),
				   	.din_ai(d1out_I),
					.din_br(dout_br[2]),
					.din_bi(dout_bi[2]),
					.W_R(W_R[3]),
					.W_I(W_I[3]),
					.dout_ar(dout_ar[3]),
					.dout_ai(dout_ai[3]),
					.dout_br(dout_br[3]),
					.dout_bi(dout_bi[3])
);
twiddle t3( .index(W_index[3]),
			.W_R(W_R[3]),
			.W_I(W_I[3])
);

wire [31:0] fft_out = {dout_br[3][23:8],dout_bi[3][23:8]}; 
always@(posedge clk or posedge rst)
begin
	if(rst) 
	begin
		fft_d1 <= 32'd0;
		fft_d2 <= 32'd0;
		fft_d3 <= 32'd0;
		fft_d4 <= 32'd0;
		fft_d5 <= 32'd0;
		fft_d6 <= 32'd0;
		fft_d7 <= 32'd0;
		fft_d8 <= 32'd0;
		fft_d9 <= 32'd0;
		fft_d10 <= 32'd0;
		fft_d11 <= 32'd0;
		fft_d12 <= 32'd0;
		fft_d13 <= 32'd0;
		fft_d14 <= 32'd0;
		fft_d15 <= 32'd0;
		fft_d0 <= 32'd0;
	end
	else 
	begin
		case (counter32)
		5'd15: fft_d0 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd16: fft_d8 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd17: fft_d4 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd18: fft_d12 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd19: fft_d2 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd20: fft_d10 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd21: fft_d6 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd22: fft_d14 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd23: fft_d1 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd24: fft_d9 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd25: fft_d5 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd26: fft_d13 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd27: fft_d3 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd28: fft_d11 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd29: fft_d7 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd30: fft_d15 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 

		5'd31: fft_d0 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd0: fft_d8 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd1: fft_d4 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd2: fft_d12 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd3: fft_d2 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd4: fft_d10 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd5: fft_d6 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd6: fft_d14 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd7: fft_d1 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd8: fft_d9 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd9: fft_d5 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd10: fft_d13 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd11: fft_d3 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd12: fft_d11 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd13: fft_d7 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		5'd14: fft_d15 <= {dout_br[3][23:8],dout_bi[3][23:8]}; 
		endcase
	end
end

always@(posedge clk or posedge rst)
begin
	if(rst)
	begin
		fft_valid <= 1'd0;
		fft_first_run <= 1'd0;
	end
	else if(counter32 == 5'd30) 
	begin
		fft_valid <= 1'd1;
		fft_first_run <= 1'd1;
	end
	else if(counter32 == 5'd14 && fft_first_run == 1'd1) fft_valid <= 1'd1;
	else fft_valid <= 1'd0;
end

endmodule


module fft_butterFly(state,din_ar,din_ai,din_br,din_bi,W_R,W_I,dout_ar,dout_ai,dout_br,dout_bi);
input [1:0] state;
input [23:0] din_ar,din_ai,din_br,din_bi;
input signed [31:0] W_R;
input signed [31:0] W_I;
output signed [23:0] dout_ar,dout_ai,dout_br,dout_bi;

reg [23:0] dout_ar,dout_ai,dout_br,dout_bi;
reg signed [23:0] a,b,c,d;
reg signed [48:0] inter,mul_r,mul_i;

always@(*)
begin
	dout_ar = din_br;
	dout_ai = din_bi;
	dout_br = 24'd0;
	dout_bi = 24'd0;
	case(state)
	2'd0: 
	begin
		dout_ar = din_br;
		dout_ai = din_bi;
	end
	2'd1: 
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
	2'd2: 
	begin
		dout_ar = din_br;
		dout_ai = din_bi;

		a = din_ar;
		b = din_ai;

		inter = b*(W_R-W_I);
		mul_r = W_R*(a-b) + inter;
		mul_i = W_I*(a+b) + inter;

		dout_br = {mul_r[48],mul_r[38:16]};
		dout_bi = {mul_i[48],mul_i[38:16]};
	end
	2'd3: 
	begin
		dout_ar = din_br;
		dout_ai = din_bi;
	end
	default:
	begin
		dout_ar = din_br;
		dout_ai = din_bi;
	end
	endcase 
end

endmodule

module twiddle(index,W_R,W_I);

input [2:0] index;
output [31:0] W_R,W_I;

parameter signed [31:0] W_r_0 = 32'h00010000;      //The real part of the reference table about COS(x)+i*SIN(x) value , 0: 001
parameter signed [31:0] W_r_1 = 32'h0000EC83;      //The real part of the reference table about COS(x)+i*SIN(x) value , 1: 9.238739e-001
parameter signed [31:0] W_r_2 = 32'h0000B504;      //The real part of the reference table about COS(x)+i*SIN(x) value , 2: 7.070923e-001
parameter signed [31:0] W_r_3 = 32'h000061F7;      //The real part of the reference table about COS(x)+i*SIN(x) value , 3: 3.826752e-001
parameter signed [31:0] W_r_4 = 32'h00000000;      //The real part of the reference table about COS(x)+i*SIN(x) value , 4: 000
parameter signed [31:0] W_r_5 = 32'hFFFF9E09;      //The real part of the reference table about COS(x)+i*SIN(x) value , 5: -3.826752e-001
parameter signed [31:0] W_r_6 = 32'hFFFF4AFC;      //The real part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
parameter signed [31:0] W_r_7 = 32'hFFFF137D;      //The real part of the reference table about COS(x)+i*SIN(x) value , 7: -9.238739e-001

parameter signed [31:0] W_i_0 = 32'h00000000;      //The imag part of the reference table about COS(x)+i*SIN(x) value , 0: 000
parameter signed [31:0] W_i_1 = 32'hFFFF9E09;      //The imag part of the reference table about COS(x)+i*SIN(x) value , 1: -3.826752e-001
parameter signed [31:0] W_i_2 = 32'hFFFF4AFC;      //The imag part of the reference table about COS(x)+i*SIN(x) value , 2: -7.070923e-001
parameter signed [31:0] W_i_3 = 32'hFFFF137D;      //The imag part of the reference table about COS(x)+i*SIN(x) value , 3: -9.238739e-001
parameter signed [31:0] W_i_4 = 32'hFFFF0000;      //The imag part of the reference table about COS(x)+i*SIN(x) value , 4: -01
parameter signed [31:0] W_i_5 = 32'hFFFF137D;      //The imag part of the reference table about COS(x)+i*SIN(x) value , 5: -9.238739e-001
parameter signed [31:0] W_i_6 = 32'hFFFF4AFC;      //The imag part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
parameter signed [31:0] W_i_7 = 32'hFFFF9E09;      //The imag part of the reference table about COS(x)+i*SIN(x) value , 7: -3.826752e-001

reg [31:0] W_R,W_I;

always@(*)
begin
	case(index)
	3'd0: 
	begin
		W_R = W_r_0; 
		W_I = W_i_0;
	end
	3'd1: 
	begin
		W_R = W_r_1; 
		W_I = W_i_1;
	end
	3'd2: 
	begin
		W_R = W_r_2; 
		W_I = W_i_2;
	end
	3'd3: 
	begin
		W_R = W_r_3; 
		W_I = W_i_3;
	end
	3'd4: 
	begin
		W_R = W_r_4; 
		W_I = W_i_4;
	end
	3'd5: 
	begin
		W_R = W_r_5; 
		W_I = W_i_5;
	end
	3'd6: 
	begin
		W_R = W_r_6; 
		W_I = W_i_6;
	end
	3'd7: 
	begin
		W_R = W_r_7; 
		W_I = W_i_7;
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
