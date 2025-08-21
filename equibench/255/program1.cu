
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2) {
  float Conv2dOutput[10];
  __shared__ float PaddedInput_shared[1168];
  __shared__ float placeholder_shared[320];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    ((float2*)(PaddedInput_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder + ((((((((int)blockIdx.x) >> 2) * 4672) + ((((int)threadIdx.x) >> 3) * 64)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 292))))[0] = ((float2*)(placeholder + ((((((((int)blockIdx.x) >> 2) * 4672) + ((((((int)threadIdx.x) * 2) + 292) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 2) + 4) & 15)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 584))))[0] = ((float2*)(placeholder + ((((((((int)blockIdx.x) >> 2) * 4672) + ((((((int)threadIdx.x) * 2) + 584) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 2) + 8) & 15)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 876))))[0] = ((float2*)(placeholder + ((((((((int)blockIdx.x) >> 2) * 4672) + ((((((int)threadIdx.x) * 2) + 876) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 2) + 12) & 15)))))[0];
    placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)threadIdx.x) / 10) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + ((((int)threadIdx.x) % 10) * 2)))];
    placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[(((((rc_outer_outer * 1280) + ((((((int)threadIdx.x) * 2) + 1) / 20) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((((int)threadIdx.x) * 2) + 1) % 20)))];
    if (((int)threadIdx.x) < 14) {
      placeholder_shared[(((((int)threadIdx.x) * 2) + 292))] = placeholder1[(((((rc_outer_outer * 1280) + ((((((int)threadIdx.x) * 2) + 292) / 20) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((((int)threadIdx.x) * 2) + 12) % 20)))];
    }
    if (((int)threadIdx.x) < 14) {
      placeholder_shared[(((((int)threadIdx.x) * 2) + 293))] = placeholder1[(((((rc_outer_outer * 1280) + ((((((int)threadIdx.x) * 2) + 293) / 20) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + (((((int)threadIdx.x) * 2) + 13) % 20)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[(((((int)threadIdx.x) & 1) * 2))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 4))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 8))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 12))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 16))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 20))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 24))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 28))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 32))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 36))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 40))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 44))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 48))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 52))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 56))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 60))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 64))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 68))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 72))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 76))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 1))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 5))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 9))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 13))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 17))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 21))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 25))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 29))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 33))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 37))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 41))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 45))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 49))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 53))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 57))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 61))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 65))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 69))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 73))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 77))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 80))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 84))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 88))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 92))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 96))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 100))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 104))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 108))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 112))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 116))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 120))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 124))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 128))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 132))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 136))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 140))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 144))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 148))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 152))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 156))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 81))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 85))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 89))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 93))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 97))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 101))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 105))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 109))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 113))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 117))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 121))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 125))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 129))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 133))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 137))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 141))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 145))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 149))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 153))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 157))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 160))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 164))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 168))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 172))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 176))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 180))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 184))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 188))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 192))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 196))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 200))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 204))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 208))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 212))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 216))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 220))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 224))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 228))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 232))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 236))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 161))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 165))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 169))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 173))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 177))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 181))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 185))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 189))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 193))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 197))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 201))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 205))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 209))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 213))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 217))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 221))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 225))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 229))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 233))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 237))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 240))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 244))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 248))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 252))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 256))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 260))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 264))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 268))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 272))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 276))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 280))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 284))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 288))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 292))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 296))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 300))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 304))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 308))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 312))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 316))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 241))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 245))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 249))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 253))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 257))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 261))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 265))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 269))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 273))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 277))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 281))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 285))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 289))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 293))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 297))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 301))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 305))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 309))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 313))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 16) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 317))]));
  }
  for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
    T_relu[(((((((((int)blockIdx.x) >> 2) * 5840) + ((((int)threadIdx.x) >> 1) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))] = max((Conv2dOutput[(ax3_inner)] + placeholder2[(((((((int)blockIdx.x) & 3) * 20) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))]), 0.000000e+00f);
    T_relu[((((((((((int)blockIdx.x) >> 2) * 5840) + ((((int)threadIdx.x) >> 1) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 4))] = max((Conv2dOutput[((ax3_inner + 2))] + placeholder2[((((((((int)blockIdx.x) & 3) * 20) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 4))]), 0.000000e+00f);
    T_relu[((((((((((int)blockIdx.x) >> 2) * 5840) + ((((int)threadIdx.x) >> 1) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 8))] = max((Conv2dOutput[((ax3_inner + 4))] + placeholder2[((((((((int)blockIdx.x) & 3) * 20) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 8))]), 0.000000e+00f);
    T_relu[((((((((((int)blockIdx.x) >> 2) * 5840) + ((((int)threadIdx.x) >> 1) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 12))] = max((Conv2dOutput[((ax3_inner + 6))] + placeholder2[((((((((int)blockIdx.x) & 3) * 20) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 12))]), 0.000000e+00f);
    T_relu[((((((((((int)blockIdx.x) >> 2) * 5840) + ((((int)threadIdx.x) >> 1) * 80)) + ((((int)blockIdx.x) & 3) * 20)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 16))] = max((Conv2dOutput[((ax3_inner + 8))] + placeholder2[((((((((int)blockIdx.x) & 3) * 20) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 16))]), 0.000000e+00f);
  }
}


