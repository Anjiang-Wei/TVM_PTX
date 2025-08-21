
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
  float Conv2dOutput[8];
  __shared__ float PaddedInput_shared[112];
  __shared__ float placeholder_shared[1024];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[((((int)threadIdx.x) * 4))] = placeholder[((((((((int)threadIdx.x) >> 1) * 3584) + (((int)blockIdx.x) * 512)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) & 1) * 4)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder[((((((((((int)threadIdx.x) * 4) + 1) >> 3) * 3584) + (((int)blockIdx.x) * 512)) + (rc_outer_outer * 8)) + (((((int)threadIdx.x) * 4) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder[((((((((((int)threadIdx.x) * 4) + 2) >> 3) * 3584) + (((int)blockIdx.x) * 512)) + (rc_outer_outer * 8)) + (((((int)threadIdx.x) * 4) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder[((((((((((int)threadIdx.x) * 4) + 3) >> 3) * 3584) + (((int)blockIdx.x) * 512)) + (rc_outer_outer * 8)) + (((((int)threadIdx.x) * 4) + 3) & 7)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 1024) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((rc_outer_outer * 1024) + ((int)threadIdx.x)) + 224))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((rc_outer_outer * 1024) + ((int)threadIdx.x)) + 448))];
    placeholder_shared[((((int)threadIdx.x) + 672))] = placeholder1[((((rc_outer_outer * 1024) + ((int)threadIdx.x)) + 672))];
    if (((int)threadIdx.x) < 128) {
      placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[((((rc_outer_outer * 1024) + ((int)threadIdx.x)) + 896))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 8))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 4))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 56))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 4))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 2))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 3))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 3))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 128))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 128))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 129))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 129))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 130))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 130))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 131))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 131))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 256))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 58))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 256))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 257))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 58))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 257))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 258))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 58))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 258))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 259))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 58))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 259))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 384))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 59))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 384))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 385))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 59))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 385))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 386))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 59))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 386))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 387))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 59))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 387))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 512))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 60))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 512))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 513))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 60))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 513))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 514))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 60))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 514))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 515))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 60))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 515))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 640))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 61))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 640))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 641))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 61))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 641))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 642))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 61))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 642))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 643))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 61))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 643))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 768))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 62))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 768))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 769))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 62))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 769))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 770))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 62))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 770))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 771))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 62))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 771))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 896))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 63))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 896))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 897))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 63))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 897))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 898))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 63))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 898))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 899))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 63))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 899))]));
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[((((((ax0_inner * 6272) + ((((int)threadIdx.x) >> 5) * 896)) + (((int)blockIdx.x) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + ax3_inner))] = max((Conv2dOutput[(((ax0_inner * 4) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 31) * 4) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


