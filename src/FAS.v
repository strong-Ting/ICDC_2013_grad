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

reg fir_valid, fft_valid;
reg signed [15:0] fir_d;
reg [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
reg [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;
reg done;
//reg [3:0] freq;
//`include "./dat/FIR_coefficient.dat"
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
reg [3:0] counter_p; // counter_parallel 1 to 16
reg [3:0] counter_fft;
reg fft_run;

reg signed [31:0] y_buffer [0:15];




//cout 32
always@(posedge clk or posedge rst)
begin
    if(rst) counter_fir <= 6'd0;
    else if(counter_fir == 6'd33) counter_fir <= counter_fir;
    else if(data_valid) counter_fir <= counter_fir + 6'd1;
end

//count 16 fir 
always@(posedge clk or posedge rst)
begin
    if(rst) counter_p <= 4'd0;
    else if(fir_valid) counter_p <= counter_p + 4'd1;
end

//count fft , fft_run
always@(posedge clk or posedge rst)
begin
    if(rst) 
    begin
        counter_fft <= 4'd0;
        fft_run <= 1'd0;
    end
    else if(counter_fft == 4'd11)
    begin
        counter_fft <= 4'd0;
        fft_run <= 1'd0;
    end
    else if(counter_p == 4'd15 || fft_run == 1'd1) 
    begin
        counter_fft <= counter_fft + 4'd1;
        fft_run <= 1'd1;
    end
    
end

//output logic
//fir_valid
always@(posedge clk or posedge rst)
begin
    if(rst) fir_valid <= 1'd0;
    else if(data_valid && counter_fir == 6'd33) fir_valid <= 1'd1;
end

//fft_valid
always@(posedge clk or posedge rst)
begin
    if(rst) fft_valid <= 1'd0;
    else if(counter_fft == 4'd9) fft_valid <= 1'd1;
    else fft_valid <= 1'd0;
end

//done
always@(posedge clk or posedge rst)
begin
    if(rst) done <= 1'd0;
    else if(counter_fft == 4'd11) done <= 1'd1;
    else done <= 1'd0;
end

//fir_d
always@(posedge clk or posedge rst)
begin
    if(rst) fir_d <= 16'd0;
    else
    begin
        if(SUM[41] == 1'd1) fir_d <= {SUM[41],SUM[30:16]} + 16'd1;
        else fir_d <= {SUM[41],SUM[30:16]};
    end
end

//y_buffer
always@(posedge clk or posedge rst)
begin
    if(rst) 
    begin
        for(i=0;i<16;i=i+1)
        begin
            y_buffer[i] <= 32'd0;
        end
    end
    else 
    begin
        y_buffer[15] <= { {8{fir_d[15]}},fir_d,8'd0};
        for(i=1;i<16;i=i+1)
        begin
            y_buffer[i-1] <= y_buffer[i];
        end
    end
end


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


reg [63:0] f_X[7:0];
reg [63:0] f_Y[7:0];
reg [31:0] f_WR[7:0];
reg [31:0] f_WI[7:0];
wire [63:0] f_A[7:0];
wire [63:0] f_B[7:0];


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

wire [3:0] freq = (cmp_3_0[32:0] > cmp_3_1[32:0]) ? cmp_3_0[36:33] : cmp_3_1[36:33];
wire signed [4:0] test = $signed(3)*$signed(-3);
always@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        fft_d0 <= 32'd0;
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
        for(i=1;i<8;i=i+1)
        begin
            f_X[i] <= 64'd0;
            f_Y[i] <= 64'd0;
            f_WR[i] <= 32'd0;
            f_WI[i] <= 32'd0;
        end
    end
    else if(counter_fft == 4'd1)
    begin
        f_X[0] <= {y_buffer[0],32'd0};
        f_Y[0] <= {y_buffer[8],32'd0};
        f_WR[0] <= W_r_0;
        f_WI[0] <= W_i_0; 

        f_X[1] <= {y_buffer[1],32'd0};
        f_Y[1] <= {y_buffer[9],32'd0};
        f_WR[1] <= W_r_1;
        f_WI[1] <= W_i_1; 

        f_X[2] <= {y_buffer[2],32'd0};
        f_Y[2] <= {y_buffer[10],32'd0};
        f_WR[2] <= W_r_2;
        f_WI[2] <= W_i_2; 

        f_X[3] <= {y_buffer[3],32'd0};
        f_Y[3] <= {y_buffer[11],32'd0};
        f_WR[3] <= W_r_3;
        f_WI[3] <= W_i_3; 

        f_X[4] <= {y_buffer[4],32'd0};
        f_Y[4] <= {y_buffer[12],32'd0};
        f_WR[4] <= W_r_4;
        f_WI[4] <= W_i_4; 

        f_X[5] <= {y_buffer[5],32'd0};
        f_Y[5] <= {y_buffer[13],32'd0};
        f_WR[5] <= W_r_5;
        f_WI[5] <= W_i_5; 

        f_X[6] <= {y_buffer[6],32'd0};
        f_Y[6] <= {y_buffer[14],32'd0};
        f_WR[6] <= W_r_6;
        f_WI[6] <= W_i_6; 

        f_X[7] <= {y_buffer[7],32'd0};
        f_Y[7] <= {y_buffer[15],32'd0};
        f_WR[7] <= W_r_7;
        f_WI[7] <= W_i_7; 
    end
    else if(counter_fft == 4'd3)
    begin
        f_X[0] <= f_A[0];
        f_Y[0] <= f_A[4];
        f_WR[0] <= W_r_0;
        f_WI[0] <= W_i_0; 

        f_X[1] <= f_A[1];
        f_Y[1] <= f_A[5];
        f_WR[1] <= W_r_2;
        f_WI[1] <= W_i_2; 

        f_X[2] <= f_A[2];
        f_Y[2] <= f_A[6];
        f_WR[2] <= W_r_4;
        f_WI[2] <= W_i_4; 

        f_X[3] <= f_A[3];
        f_Y[3] <= f_A[7];
        f_WR[3] <= W_r_6;
        f_WI[3] <= W_i_6; 

        f_X[4] <= f_B[0];
        f_Y[4] <= f_B[4];
        f_WR[4] <= W_r_0;
        f_WI[4] <= W_i_0; 

        f_X[5] <= f_B[1];
        f_Y[5] <= f_B[5];
        f_WR[5] <= W_r_2;
        f_WI[5] <= W_i_2; 

        f_X[6] <= f_B[2];
        f_Y[6] <= f_B[6];
        f_WR[6] <= W_r_4;
        f_WI[6] <= W_i_4; 

        f_X[7] <= f_B[3];
        f_Y[7] <= f_B[7];
        f_WR[7] <= W_r_6;
        f_WI[7] <= W_i_6;
    end
    else if(counter_fft == 4'd5)
    begin
        f_X[0] <= f_A[0];
        f_Y[0] <= f_A[2];
        f_WR[0] <= W_r_0;
        f_WI[0] <= W_i_0; 

        f_X[1] <= f_A[1];
        f_Y[1] <= f_A[3];
        f_WR[1] <= W_r_4;
        f_WI[1] <= W_i_4; 

        f_X[2] <= f_B[0];
        f_Y[2] <= f_B[2];
        f_WR[2] <= W_r_0;
        f_WI[2] <= W_i_0; 

        f_X[3] <= f_B[1];
        f_Y[3] <= f_B[3];
        f_WR[3] <= W_r_4;
        f_WI[3] <= W_i_4; 

        f_X[4] <= f_A[4];
        f_Y[4] <= f_A[6];
        f_WR[4] <= W_r_0;
        f_WI[4] <= W_i_0; 

        f_X[5] <= f_A[5];
        f_Y[5] <= f_A[7];
        f_WR[5] <= W_r_4;
        f_WI[5] <= W_i_4; 

        f_X[6] <= f_B[4];
        f_Y[6] <= f_B[6];
        f_WR[6] <= W_r_0;
        f_WI[6] <= W_i_0; 

        f_X[7] <= f_B[5];
        f_Y[7] <= f_B[7];
        f_WR[7] <= W_r_4;
        f_WI[7] <= W_i_4;
    end
    else if(counter_fft == 4'd7)
    begin
        f_X[0] <= f_A[0];
        f_Y[0] <= f_A[1];
        f_WR[0] <= W_r_0;
        f_WI[0] <= W_i_0; 

        f_X[1] <= f_B[0];
        f_Y[1] <= f_B[1];
        f_WR[1] <= W_r_0;
        f_WI[1] <= W_i_0; 

        f_X[2] <= f_A[2];
        f_Y[2] <= f_A[3];
        f_WR[2] <= W_r_0;
        f_WI[2] <= W_i_0; 

        f_X[3] <= f_B[2];
        f_Y[3] <= f_B[3];
        f_WR[3] <= W_r_0;
        f_WI[3] <= W_i_0; 

        f_X[4] <= f_A[4];
        f_Y[4] <= f_A[5];
        f_WR[4] <= W_r_0;
        f_WI[4] <= W_i_0; 

        f_X[5] <= f_B[4];
        f_Y[5] <= f_B[5];
        f_WR[5] <= W_r_0;
        f_WI[5] <= W_i_0; 

        f_X[6] <= f_A[6];
        f_Y[6] <= f_A[7];
        f_WR[6] <= W_r_0;
        f_WI[6] <= W_i_0; 

        f_X[7] <= f_B[6];
        f_Y[7] <= f_B[7];
        f_WR[7] <= W_r_0;
        f_WI[7] <= W_i_0;
    end
    else if(counter_fft == 4'd9)
    begin
        fft_d0 <= {f_A[0][55:40],f_A[0][23:8]};
        fft_d8 <= {f_B[0][55:40],f_B[0][23:8]};
        fft_d4 <= {f_A[1][55:40],f_A[1][23:8]};
        fft_d12 <= {f_B[1][55:40],f_B[1][23:8]};
        fft_d2 <= {f_A[2][55:40],f_A[2][23:8]};
        fft_d10 <= {f_B[2][55:40],f_B[2][23:8]};
        fft_d6 <= {f_A[3][55:40],f_A[3][23:8]};
        fft_d14 <= {f_B[3][55:40],f_B[3][23:8]};
        fft_d1 <= {f_A[4][55:40],f_A[4][23:8]};
        fft_d9 <= {f_B[4][55:40],f_B[4][23:8]};
        fft_d5 <= {f_A[5][55:40],f_A[5][23:8]};
        fft_d13 <= {f_B[5][55:40],f_B[5][23:8]};
        fft_d3 <= {f_A[6][55:40],f_A[6][23:8]};
        fft_d11 <= {f_B[6][55:40],f_B[6][23:8]};
        fft_d7 <= {f_A[7][55:40],f_A[7][23:8]};
        fft_d15 <= {f_B[7][55:40],f_B[7][23:8]};
    end
end

genvar j;
generate
    for(j=0;j<8;j=j+1)
    begin
        fft_butterFly fb(.X(f_X[j]),.Y(f_Y[j]),.W_R(f_WR[j]),.W_I(f_WI[j]),
                        .fft_a(f_A[j]),
                        .fft_b(f_B[j])
                        );
    end
endgenerate

endmodule

module fft_butterFly(X,Y,W_R,W_I,fft_a,fft_b);
input [63:0] X;
input [63:0] Y;
input signed [31:0] W_R;
input signed [31:0] W_I;
output signed [63:0] fft_a;
output signed [63:0] fft_b;

wire signed [31:0] a = X[63:32];
wire signed [31:0] b = X[31:0];
wire signed [31:0] c = Y[63:32];
wire signed [31:0] d = Y[31:0];

wire signed [32:0] fft_a_R = a + c;
wire signed [32:0] fft_a_I = b + d;

wire signed [32:0] a_minus_c = a - c;
wire signed [32:0] d_minus_b = d - b;
wire signed [32:0] b_minus_d = b - d;

wire signed [64:0] fft_b_R = ((a_minus_c*W_R) + (d_minus_b*W_I));
wire signed [64:0] fft_b_I = ((a_minus_c*W_I) + (b_minus_d*W_R));

assign fft_a[63:32] = {fft_a_R[32],fft_a_R[30:0]}; 
assign fft_a[31:0] =  {fft_a_I[32],fft_a_I[30:0]};

assign fft_b[63:32] = {fft_b_R[64],fft_b_R[46:16]};
assign fft_b[31:0] =  {fft_b_I[64],fft_b_I[46:16]};

endmodule
