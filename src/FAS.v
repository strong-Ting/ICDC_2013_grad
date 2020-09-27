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
reg [15:0] fir_d;
reg [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
reg [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;
reg done;
reg [3:0] freq;
//`include "./dat/FIR_coefficient.dat"
wire signed [19:0] FIR_C00 = 20'hFFF9E ;     //The FIR_coefficient value 0: -1.495361e-003
wire signed [19:0] FIR_C01 = 20'hFFF86 ;     //The FIR_coefficient value 1: -1.861572e-003
wire signed [19:0] FIR_C02 = 20'hFFFA7 ;     //The FIR_coefficient value 2: -1.358032e-003
wire signed [19:0] FIR_C03 = 20'h0003B ;    //The FIR_coefficient value 3: 9.002686e-004
wire signed [19:0] FIR_C04 = 20'h0014B ;    //The FIR_coefficient value 4: 5.050659e-003
wire signed [19:0] FIR_C05 = 20'h0024A ;    //The FIR_coefficient value 5: 8.941650e-003
wire signed [19:0] FIR_C06 = 20'h00222 ;    //The FIR_coefficient value 6: 8.331299e-003
wire signed [19:0] FIR_C07 = 20'hFFFE4 ;     //The FIR_coefficient value 7: -4.272461e-004
wire signed [19:0] FIR_C08 = 20'hFFBC5 ;     //The FIR_coefficient value 8: -1.652527e-002
wire signed [19:0] FIR_C09 = 20'hFF7CA ;     //The FIR_coefficient value 9: -3.207397e-002
wire signed [19:0] FIR_C10 = 20'hFF74E ;     //The FIR_coefficient value 10: -3.396606e-002
wire signed [19:0] FIR_C11 = 20'hFFD74 ;     //The FIR_coefficient value 11: -9.948730e-003
wire signed [19:0] FIR_C12 = 20'h00B1A ;    //The FIR_coefficient value 12: 4.336548e-002
wire signed [19:0] FIR_C13 = 20'h01DAC ;    //The FIR_coefficient value 13: 1.159058e-001
wire signed [19:0] FIR_C14 = 20'h02F9E ;    //The FIR_coefficient value 14: 1.860046e-001
wire signed [19:0] FIR_C15 = 20'h03AA9 ;    //The FIR_coefficient value 15: 2.291412e-001
wire signed [19:0] FIR_C16 = 20'h03AA9 ;    //The FIR_coefficient value 16: 2.291412e-001
wire signed [19:0] FIR_C17 = 20'h02F9E ;    //The FIR_coefficient value 17: 1.860046e-001
wire signed [19:0] FIR_C18 = 20'h01DAC ;    //The FIR_coefficient value 18: 1.159058e-001
wire signed [19:0] FIR_C19 = 20'h00B1A ;    //The FIR_coefficient value 19: 4.336548e-002
wire signed [19:0] FIR_C20 = 20'hFFD74 ;     //The FIR_coefficient value 20: -9.948730e-003
wire signed [19:0] FIR_C21 = 20'hFF74E ;     //The FIR_coefficient value 21: -3.396606e-002
wire signed [19:0] FIR_C22 = 20'hFF7CA ;     //The FIR_coefficient value 22: -3.207397e-002
wire signed [19:0] FIR_C23 = 20'hFFBC5 ;     //The FIR_coefficient value 23: -1.652527e-002
wire signed [19:0] FIR_C24 = 20'hFFFE4 ;     //The FIR_coefficient value 24: -4.272461e-004
wire signed [19:0] FIR_C25 = 20'h00222 ;    //The FIR_coefficient value 25: 8.331299e-003
wire signed [19:0] FIR_C26 = 20'h0024A ;    //The FIR_coefficient value 26: 8.941650e-003
wire signed [19:0] FIR_C27 = 20'h0014B ;    //The FIR_coefficient value 27: 5.050659e-003
wire signed [19:0] FIR_C28 = 20'h0003B ;    //The FIR_coefficient value 28: 9.002686e-004
wire signed [19:0] FIR_C29 = 20'hFFFA7 ;     //The FIR_coefficient value 29: -1.358032e-003
wire signed [19:0] FIR_C30 = 20'hFFF86 ;     //The FIR_coefficient value 30: -1.861572e-003
wire signed [19:0] FIR_C31 = 20'hFFF9E ;     //The FIR_coefficient value 31: -1.495361e-003

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
wire signed [50:0] mul[31:0];
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
wire signed [50:0] sum_1_0 = mul[0] + mul[1];
wire signed [50:0] sum_1_1 = mul[2] + mul[3];
wire signed [50:0] sum_1_2 = mul[4] + mul[5];
wire signed [50:0] sum_1_3 = mul[6] + mul[7];
wire signed [50:0] sum_1_4 = mul[8] + mul[9];
wire signed [50:0] sum_1_5 = mul[10] + mul[11];
wire signed [50:0] sum_1_6 = mul[12] + mul[13];
wire signed [50:0] sum_1_7 = mul[14] + mul[15];
wire signed [50:0] sum_1_8 = mul[16] + mul[17];
wire signed [50:0] sum_1_9 = mul[18] + mul[19];
wire signed [50:0] sum_1_10 = mul[20] + mul[21];
wire signed [50:0] sum_1_11 = mul[22] + mul[23];
wire signed [50:0] sum_1_12 = mul[24] + mul[25];
wire signed [50:0] sum_1_13 = mul[26] + mul[27];
wire signed [50:0] sum_1_14 = mul[28] + mul[29];
wire signed [50:0] sum_1_15 = mul[30] + mul[31];
//sum_2
wire signed [50:0] sum_2_0 = sum_1_0 + sum_1_1;
wire signed [50:0] sum_2_1 = sum_1_2 + sum_1_3;
wire signed [50:0] sum_2_2 = sum_1_4 + sum_1_5;
wire signed [50:0] sum_2_3 = sum_1_6 + sum_1_7;
wire signed [50:0] sum_2_4 = sum_1_8 + sum_1_9;
wire signed [50:0] sum_2_5 = sum_1_10 + sum_1_11;
wire signed [50:0] sum_2_6 = sum_1_12 + sum_1_13;
wire signed [50:0] sum_2_7 = sum_1_14 + sum_1_15;
//sum_3
wire signed [50:0] sum_3_0 = sum_2_0 + sum_2_1;
wire signed [50:0] sum_3_1 = sum_2_2 + sum_2_3;
wire signed [50:0] sum_3_2 = sum_2_4 + sum_2_5;
wire signed [50:0] sum_3_3 = sum_2_6 + sum_2_7;
//sum_4
wire signed [50:0] sum_4_0 = sum_3_0 + sum_3_1;
wire signed [50:0] sum_4_1 = sum_3_2 + sum_3_3;
//sum_5
wire signed [50:0] SUM = sum_4_0 + sum_4_1;

reg [2:0] cs,ns; //current state , next state 
parameter IDLE = 3'd0;
parameter DATA_IN = 3'd1;
parameter DATA_IN_AF32 = 3'd2; //data in after 32 clk
//switch state
always@(posedge clk or posedge rst)
begin
    if(rst) cs <= IDLE;
    else cs <= ns;
end
//next state logic 
/*
always@(*)
begin
    case(cs)
    endcase
end
*/
//cout 32
reg [10:0] counter;
always@(posedge clk or posedge rst)
begin
    if(rst) counter <= 10'd0;
    else if(data_valid == 1'd1) counter <= counter + 10'd1;
end


//output logic
//fir_valid
always@(posedge clk or posedge rst)
begin
    if(rst) fir_valid <= 1'd0;
    else if(data_valid== 1'd1 && counter == 6'd33) fir_valid <= 1'd1;
end

//fft_valid
always@(posedge clk or posedge rst)
begin

end

//done
always@(posedge clk or posedge rst)
begin
    if(rst) done <= 1'd0;
   // else if(fir_valid == 1'd1) done <= 1'd1;
end

//fir_d
always@(posedge clk or posedge rst)
begin
    if(rst) fir_d <= 16'd0;
    else
    begin
        fir_d <= {SUM[36],SUM[31:16]};
    end
end

endmodule