
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[8];
  __shared__ float PaddedInput_shared[1568];
  __shared__ float placeholder_shared[160];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 25; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)blockIdx.x) >> 2) * 39200) + ((((int)threadIdx.x) >> 3) * 200)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 490))] = placeholder[((((((((int)blockIdx.x) >> 2) * 39200) + (((((int)threadIdx.x) + 490) >> 3) * 200)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 980))] = placeholder[((((((((int)blockIdx.x) >> 2) * 39200) + (((((int)threadIdx.x) + 980) >> 3) * 200)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    if (((int)threadIdx.x) < 98) {
      PaddedInput_shared[((((int)threadIdx.x) + 1470))] = placeholder[((((((((int)blockIdx.x) >> 2) * 39200) + (((((int)threadIdx.x) + 1470) >> 3) * 200)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 160) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 640) + ((((int)threadIdx.x) / 20) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 20)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)))] * placeholder_shared[((((int)threadIdx.x) % 10))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 10))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 56))] * placeholder_shared[((((int)threadIdx.x) % 10))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 56))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 10))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 20))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 30))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 57))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 20))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 57))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 30))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 2))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 40))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 2))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 50))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 58))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 40))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 58))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 50))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 3))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 60))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 3))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 70))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 59))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 60))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 59))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 70))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 112))] * placeholder_shared[((((int)threadIdx.x) % 10))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 112))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 10))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 168))] * placeholder_shared[((((int)threadIdx.x) % 10))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 168))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 10))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 113))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 20))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 113))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 30))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 169))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 20))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 169))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 30))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 114))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 40))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 114))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 50))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 170))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 40))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 170))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 50))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 115))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 60))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 115))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 70))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 171))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 60))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 171))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 70))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 80))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 90))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 60))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 80))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 60))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 90))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 100))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 110))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 61))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 100))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 61))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 110))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 6))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 120))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 6))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 130))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 62))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 120))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 62))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 130))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 7))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 140))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 7))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 150))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 63))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 140))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 63))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 150))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 116))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 80))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 116))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 90))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 172))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 80))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 172))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 90))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 117))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 100))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 117))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 110))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 173))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 100))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 173))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 110))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 118))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 120))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 118))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 130))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 174))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 120))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 174))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 130))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 119))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 140))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 119))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 150))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 175))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 140))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 70) * 224) + (((((int)threadIdx.x) % 70) / 10) * 8)) + 175))] * placeholder_shared[(((((int)threadIdx.x) % 10) + 150))]));
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    T_add[((((((((((int)blockIdx.x) >> 2) * 15680) + ((((int)threadIdx.x) / 70) * 2240)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 70) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 10)))] = ((Conv2dOutput[(ax1_inner)] + placeholder2[((((((int)blockIdx.x) & 3) * 20) + (((int)threadIdx.x) % 10)))]) + placeholder3[((((((((((int)blockIdx.x) >> 2) * 15680) + ((((int)threadIdx.x) / 70) * 2240)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 70) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 10)))]);
    T_add[(((((((((((int)blockIdx.x) >> 2) * 15680) + ((((int)threadIdx.x) / 70) * 2240)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 70) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 10)) + 10))] = ((Conv2dOutput[((ax1_inner + 2))] + placeholder2[(((((((int)blockIdx.x) & 3) * 20) + (((int)threadIdx.x) % 10)) + 10))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 15680) + ((((int)threadIdx.x) / 70) * 2240)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 70) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 10)) + 10))]);
    T_add[(((((((((((int)blockIdx.x) >> 2) * 15680) + ((((int)threadIdx.x) / 70) * 2240)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 70) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 10)) + 560))] = ((Conv2dOutput[((ax1_inner + 4))] + placeholder2[((((((int)blockIdx.x) & 3) * 20) + (((int)threadIdx.x) % 10)))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 15680) + ((((int)threadIdx.x) / 70) * 2240)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 70) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 10)) + 560))]);
    T_add[(((((((((((int)blockIdx.x) >> 2) * 15680) + ((((int)threadIdx.x) / 70) * 2240)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 70) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 10)) + 570))] = ((Conv2dOutput[((ax1_inner + 6))] + placeholder2[(((((((int)blockIdx.x) & 3) * 20) + (((int)threadIdx.x) % 10)) + 10))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 15680) + ((((int)threadIdx.x) / 70) * 2240)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 70) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((int)threadIdx.x) % 10)) + 570))]);
  }
}


