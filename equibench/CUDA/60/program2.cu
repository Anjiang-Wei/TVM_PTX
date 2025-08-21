
#ifdef _WIN32
  using uint = unsigned int;
  using uchar = unsigned char;
  using ushort = unsigned short;
  using int64_t = long long;
  using uint64_t = unsigned long long;
#else
  #define uint unsigned int
  #define uchar unsigned char
  #define ushort unsigned short
  #define int64_t long long
  #define uint64_t unsigned long long
#endif
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_divide, float* __restrict__ placeholder2) {
  float Conv2dOutput[2];
  __shared__ float PaddedInput_shared[32];
  __shared__ float placeholder_shared[128];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((int)threadIdx.x))];
  PaddedInput_shared[((((int)threadIdx.x) + 2))] = placeholder[((((int)threadIdx.x) + 2))];
  PaddedInput_shared[((((int)threadIdx.x) + 4))] = placeholder[((((int)threadIdx.x) + 4))];
  PaddedInput_shared[((((int)threadIdx.x) + 6))] = placeholder[((((int)threadIdx.x) + 6))];
  PaddedInput_shared[((((int)threadIdx.x) + 8))] = placeholder[((((int)threadIdx.x) + 8))];
  PaddedInput_shared[((((int)threadIdx.x) + 10))] = placeholder[((((int)threadIdx.x) + 10))];
  PaddedInput_shared[((((int)threadIdx.x) + 12))] = placeholder[((((int)threadIdx.x) + 12))];
  PaddedInput_shared[((((int)threadIdx.x) + 14))] = placeholder[((((int)threadIdx.x) + 14))];
  PaddedInput_shared[((((int)threadIdx.x) + 16))] = placeholder[((((int)threadIdx.x) + 16))];
  PaddedInput_shared[((((int)threadIdx.x) + 18))] = placeholder[((((int)threadIdx.x) + 18))];
  PaddedInput_shared[((((int)threadIdx.x) + 20))] = placeholder[((((int)threadIdx.x) + 20))];
  PaddedInput_shared[((((int)threadIdx.x) + 22))] = placeholder[((((int)threadIdx.x) + 22))];
  PaddedInput_shared[((((int)threadIdx.x) + 24))] = placeholder[((((int)threadIdx.x) + 24))];
  PaddedInput_shared[((((int)threadIdx.x) + 26))] = placeholder[((((int)threadIdx.x) + 26))];
  PaddedInput_shared[((((int)threadIdx.x) + 28))] = placeholder[((((int)threadIdx.x) + 28))];
  PaddedInput_shared[((((int)threadIdx.x) + 30))] = placeholder[((((int)threadIdx.x) + 30))];
  ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder1 + (((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 4))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 120))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 8))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 240))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 12))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 360))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 16))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 480))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 20))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 600))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 24))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 720))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 28))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 840))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 32))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 960))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 36))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 1080))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 40))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 1200))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 44))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 1320))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 48))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 1440))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 52))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 1560))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 56))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 1680))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 60))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 1800))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 64))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 1920))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 68))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 2040))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 72))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 2160))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 76))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 2280))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 80))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 2400))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 84))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 2520))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 88))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 2640))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 92))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 2760))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 96))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 2880))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 100))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 3000))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 104))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 3120))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 108))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 3240))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 112))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 3360))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 116))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 3480))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 120))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 3600))))[0];
  ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 124))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + 3720))))[0];
  __syncthreads();
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(0)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 4))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 8))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 12))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 5))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 9))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 13))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 16))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 20))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 24))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 28))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 17))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 21))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 25))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 29))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 32))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 36))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 40))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 44))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 33))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 37))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 41))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 45))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 48))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 52))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 56))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 60))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 49))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 53))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 57))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 61))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(16)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(17)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 68))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(18)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 72))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(19)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 76))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(16)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(17)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 69))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(18)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 73))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(19)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 77))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(20)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 80))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(21)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 84))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(22)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 88))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(23)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 92))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(20)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 81))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(21)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 85))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(22)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 89))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(23)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 93))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(24)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 96))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(25)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 100))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(26)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 104))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(27)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 108))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(24)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 97))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(25)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 101))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(26)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 105))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(27)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 109))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(28)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 112))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(29)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 116))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(30)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 120))]));
  Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(31)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 124))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(28)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 113))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(29)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 117))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(30)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 121))]));
  Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(31)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 125))]));
  for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
    T_divide[((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + ax3_inner))] = (max(min(((Conv2dOutput[(ax3_inner)] + placeholder2[((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + ax3_inner))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f);
  }
}


