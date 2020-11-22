import cmath, math
def generate(N,width):
    for i in range(0,N):
        print("W{i}".format(i=i),cmath.exp(complex(0,1)*i*-2*cmath.pi/N))

generate(16,10)
