
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ Conv2dOutput, float* __restrict__ placeholder) {
  T_multiply[(((int)blockIdx.x))] = ((Conv2dOutput[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) % 184))]) * (max(min(((Conv2dOutput[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) % 184))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ Conv2dOutput) {
  float Conv2dOutput_local[16];
  __shared__ float PaddedInput_shared[128];
  __shared__ float placeholder_shared[1472];
  Conv2dOutput_local[(0)] = 0.000000e+00f;
  Conv2dOutput_local[(2)] = 0.000000e+00f;
  Conv2dOutput_local[(4)] = 0.000000e+00f;
  Conv2dOutput_local[(6)] = 0.000000e+00f;
  Conv2dOutput_local[(8)] = 0.000000e+00f;
  Conv2dOutput_local[(10)] = 0.000000e+00f;
  Conv2dOutput_local[(12)] = 0.000000e+00f;
  Conv2dOutput_local[(14)] = 0.000000e+00f;
  Conv2dOutput_local[(1)] = 0.000000e+00f;
  Conv2dOutput_local[(3)] = 0.000000e+00f;
  Conv2dOutput_local[(5)] = 0.000000e+00f;
  Conv2dOutput_local[(7)] = 0.000000e+00f;
  Conv2dOutput_local[(9)] = 0.000000e+00f;
  Conv2dOutput_local[(11)] = 0.000000e+00f;
  Conv2dOutput_local[(13)] = 0.000000e+00f;
  Conv2dOutput_local[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 10; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 128) {
      PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 3) * 10240) + ((((int)threadIdx.x) >> 4) * 1280)) + ((((int)blockIdx.x) & 7) * 160)) + (((((int)threadIdx.x) & 15) >> 3) * 80)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 1472) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 184))] = placeholder1[((((rc_outer_outer * 1472) + ((int)threadIdx.x)) + 184))];
    placeholder_shared[((((int)threadIdx.x) + 368))] = placeholder1[((((rc_outer_outer * 1472) + ((int)threadIdx.x)) + 368))];
    placeholder_shared[((((int)threadIdx.x) + 552))] = placeholder1[((((rc_outer_outer * 1472) + ((int)threadIdx.x)) + 552))];
    placeholder_shared[((((int)threadIdx.x) + 736))] = placeholder1[((((rc_outer_outer * 1472) + ((int)threadIdx.x)) + 736))];
    placeholder_shared[((((int)threadIdx.x) + 920))] = placeholder1[((((rc_outer_outer * 1472) + ((int)threadIdx.x)) + 920))];
    placeholder_shared[((((int)threadIdx.x) + 1104))] = placeholder1[((((rc_outer_outer * 1472) + ((int)threadIdx.x)) + 1104))];
    placeholder_shared[((((int)threadIdx.x) + 1288))] = placeholder1[((((rc_outer_outer * 1472) + ((int)threadIdx.x)) + 1288))];
    __syncthreads();
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) / 92) * 32))] * placeholder_shared[((((int)threadIdx.x) % 92))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) / 92) * 32))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 92))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 8))] * placeholder_shared[((((int)threadIdx.x) % 92))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 8))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 92))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 64))] * placeholder_shared[((((int)threadIdx.x) % 92))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 64))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 92))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 72))] * placeholder_shared[((((int)threadIdx.x) % 92))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 72))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 92))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 16))] * placeholder_shared[((((int)threadIdx.x) % 92))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 16))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 92))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 24))] * placeholder_shared[((((int)threadIdx.x) % 92))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 24))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 92))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 80))] * placeholder_shared[((((int)threadIdx.x) % 92))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 80))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 92))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 88))] * placeholder_shared[((((int)threadIdx.x) % 92))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 88))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 92))]));
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 1))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 184))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 1))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 276))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 9))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 184))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 9))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 276))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 65))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 184))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 65))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 276))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 73))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 184))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 73))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 276))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 17))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 184))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 17))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 276))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 25))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 184))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 25))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 276))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 81))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 184))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 81))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 276))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 89))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 184))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 89))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 276))]));
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 2))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 368))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 2))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 460))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 10))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 368))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 10))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 460))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 66))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 368))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 66))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 460))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 74))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 368))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 74))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 460))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 18))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 368))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 18))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 460))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 26))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 368))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 26))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 460))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 82))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 368))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 82))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 460))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 90))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 368))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 90))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 460))]));
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 3))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 552))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 3))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 644))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 11))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 552))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 11))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 644))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 67))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 552))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 67))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 644))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 75))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 552))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 75))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 644))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 19))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 552))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 19))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 644))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 27))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 552))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 27))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 644))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 83))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 552))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 83))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 644))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 91))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 552))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 91))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 644))]));
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 4))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 736))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 4))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 828))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 12))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 736))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 12))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 828))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 68))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 736))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 68))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 828))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 76))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 736))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 76))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 828))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 20))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 736))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 20))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 828))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 28))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 736))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 28))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 828))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 84))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 736))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 84))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 828))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 92))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 736))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 92))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 828))]));
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 5))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 920))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 5))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1012))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 13))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 920))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 13))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1012))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 69))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 920))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 69))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1012))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 77))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 920))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 77))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1012))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 21))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 920))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 21))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1012))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 29))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 920))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 29))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1012))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 85))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 920))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 85))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1012))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 93))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 920))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 93))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1012))]));
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 6))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1104))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 6))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1196))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 14))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1104))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 14))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1196))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 70))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1104))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 70))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1196))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 78))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1104))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 78))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1196))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 22))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1104))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 22))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1196))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 30))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1104))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 30))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1196))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 86))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1104))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 86))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1196))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 94))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1104))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 94))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1196))]));
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 7))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1288))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 7))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1380))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 15))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1288))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 15))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1380))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 71))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1288))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 71))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1380))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 79))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1288))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 79))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1380))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 23))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1288))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 23))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1380))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 31))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1288))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 31))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1380))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 87))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1288))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 87))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1380))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 95))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1288))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + 95))] * placeholder_shared[(((((int)threadIdx.x) % 92) + 1380))]));
  }
  for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
    Conv2dOutput[(((((((((int)blockIdx.x) >> 3) * 23552) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + ((((int)blockIdx.x) & 7) * 368)) + (((int)threadIdx.x) % 92)))] = Conv2dOutput_local[(yy_inner)];
    Conv2dOutput[((((((((((int)blockIdx.x) >> 3) * 23552) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + ((((int)blockIdx.x) & 7) * 368)) + (((int)threadIdx.x) % 92)) + 92))] = Conv2dOutput_local[((yy_inner + 2))];
    Conv2dOutput[((((((((((int)blockIdx.x) >> 3) * 23552) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + ((((int)blockIdx.x) & 7) * 368)) + (((int)threadIdx.x) % 92)) + 184))] = Conv2dOutput_local[((yy_inner + 4))];
    Conv2dOutput[((((((((((int)blockIdx.x) >> 3) * 23552) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + ((((int)blockIdx.x) & 7) * 368)) + (((int)threadIdx.x) % 92)) + 276))] = Conv2dOutput_local[((yy_inner + 6))];
    Conv2dOutput[((((((((((int)blockIdx.x) >> 3) * 23552) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + ((((int)blockIdx.x) & 7) * 368)) + (((int)threadIdx.x) % 92)) + 11776))] = Conv2dOutput_local[((yy_inner + 8))];
    Conv2dOutput[((((((((((int)blockIdx.x) >> 3) * 23552) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + ((((int)blockIdx.x) & 7) * 368)) + (((int)threadIdx.x) % 92)) + 11868))] = Conv2dOutput_local[((yy_inner + 10))];
    Conv2dOutput[((((((((((int)blockIdx.x) >> 3) * 23552) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + ((((int)blockIdx.x) & 7) * 368)) + (((int)threadIdx.x) % 92)) + 11960))] = Conv2dOutput_local[((yy_inner + 12))];
    Conv2dOutput[((((((((((int)blockIdx.x) >> 3) * 23552) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + ((((int)blockIdx.x) & 7) * 368)) + (((int)threadIdx.x) % 92)) + 12052))] = Conv2dOutput_local[((yy_inner + 14))];
  }
}


