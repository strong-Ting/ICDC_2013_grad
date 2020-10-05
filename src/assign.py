#assign mul[0] = data_buffer[0] * FIR_C00;
'''
for i in range(0,32):
    if i < 10:
        print("assign mul[{index}] = data_buffer[{index}] * FIR_C0{index};".format(index=i))
    else:
        print("assign mul[{index}] = data_buffer[{index}] * FIR_C{index};".format(index=i))
'''

'''
for i in range(0,16):
    print("wire signed [37:0] sum_1_{index} = mul[{index2}] + mul[{index3}];".format(index=i,index2=i*2,index3=i*2+1))
print("//sum_2")
for i in range(0,8):
    print("wire signed [38:0] sum_2_{index} = sum_1_{index2} + sum_1_{index3};".format(index=i,index2=i*2,index3=i*2+1))
print("//sum_3")

for i in range(0,4):
    print("wire signed [39:0] sum_3_{index} = sum_2_{index2} + sum_2_{index3};".format(index=i,index2=i*2,index3=i*2+1))
print("//sum_4")

for i in range(0,2):
    print("wire signed [40:0] sum_4_{index} = sum_3_{index2} + sum_3_{index3};".format(index=i,index2=i*2,index3=i*2+1))
print("//sum_5")

print("wire [41:0] signed sum_5_0 = sum_4_0 + sum_4_1;")
'''
'''
for i in range(0,16):
    print("wire signed [37:0] sum_1_{index} = mul[{index2}] + mul[{index3}];".format(index=i,index2=i*2,index3=i*2+1))
print("//sum_2")
for i in range(0,8):
    print("wire signed [38:0] sum_2_{index} = sum_1_{index2} + sum_1_{index3};".format(index=i,index2=i*2,index3=i*2+1))
print("//sum_3")

for i in range(0,4):
    print("wire signed [39:0] sum_3_{index} = sum_2_{index2} + sum_2_{index3};".format(index=i,index2=i*2,index3=i*2+1))
print("//sum_4")

for i in range(0,2):
    print("wire signed [40:0] sum_4_{index} = sum_3_{index2} + sum_3_{index3};".format(index=i,index2=i*2,index3=i*2+1))
print("//sum_5")

print("wire signed [41:0] SUM = sum_4_0 + sum_4_1;")
'''

#for i in range(0,8):
#    print('''
#        f_X[{i}] <= y_buffer[{i}];
#        f_Y[{i}] <= y_buffer[{x}];
#        f_WR[{i}] <= W_r_{i};
#        f_WI[{i}] <= W_i_{i}; '''.format(i=i,x=i+8))

#for i in range(4,8):
#    print('''
#        f_X[{i}] <= f_B[{i}];
#        f_Y[{i}] <= f_B[{x}];
#        f_WR[{i}] <= W_r_{y};
#        f_WI[{i}] <= W_i_{y}; '''.format(i=i,x=i,y=(i-4)*2))


for i in range(0,16):
    print("wire signed [32:0] pow2_add_{i}= ($signed(fft_d{i}[31:16])*$signed(fft_d{i}[31:16])) + ($signed(fft_d{i}[15:0])*$signed(fft_d{i}[15:0]));".format(i=i))