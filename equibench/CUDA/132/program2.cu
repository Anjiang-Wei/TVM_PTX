
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
  float Conv2dOutput[112];
  __shared__ float PaddedInput_shared[672];
  __shared__ float placeholder_shared[3072];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 7; ++xx_outer_inner_init) {
    Conv2dOutput[(xx_outer_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 14))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 28))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 42))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 56))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 70))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 84))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 98))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 7))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 21))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 35))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 49))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 63))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 77))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 91))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 105))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 14; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 84; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)) / 336) * 32928) + ((((int)blockIdx.x) >> 1) * 4704)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)) % 336) / 48) * 672)) + (rc_outer_outer * 48)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)) % 48)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 384; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 6144) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)) & 63)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 24; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 7; ++xx_outer_inner) {
        for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
          Conv2dOutput[(xx_outer_inner)] = (Conv2dOutput[(xx_outer_inner)] + (PaddedInput_shared[((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)))]));
          Conv2dOutput[((xx_outer_inner + 14))] = (Conv2dOutput[((xx_outer_inner + 14))] + (PaddedInput_shared[((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 8))]));
          Conv2dOutput[((xx_outer_inner + 28))] = (Conv2dOutput[((xx_outer_inner + 28))] + (PaddedInput_shared[((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 16))]));
          Conv2dOutput[((xx_outer_inner + 42))] = (Conv2dOutput[((xx_outer_inner + 42))] + (PaddedInput_shared[((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 24))]));
          Conv2dOutput[((xx_outer_inner + 56))] = (Conv2dOutput[((xx_outer_inner + 56))] + (PaddedInput_shared[((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 32))]));
          Conv2dOutput[((xx_outer_inner + 70))] = (Conv2dOutput[((xx_outer_inner + 70))] + (PaddedInput_shared[((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 40))]));
          Conv2dOutput[((xx_outer_inner + 84))] = (Conv2dOutput[((xx_outer_inner + 84))] + (PaddedInput_shared[((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 48))]));
          Conv2dOutput[((xx_outer_inner + 98))] = (Conv2dOutput[((xx_outer_inner + 98))] + (PaddedInput_shared[((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 56))]));
          Conv2dOutput[((xx_outer_inner + 7))] = (Conv2dOutput[((xx_outer_inner + 7))] + (PaddedInput_shared[(((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)))]));
          Conv2dOutput[((xx_outer_inner + 21))] = (Conv2dOutput[((xx_outer_inner + 21))] + (PaddedInput_shared[(((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 8))]));
          Conv2dOutput[((xx_outer_inner + 35))] = (Conv2dOutput[((xx_outer_inner + 35))] + (PaddedInput_shared[(((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 16))]));
          Conv2dOutput[((xx_outer_inner + 49))] = (Conv2dOutput[((xx_outer_inner + 49))] + (PaddedInput_shared[(((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 24))]));
          Conv2dOutput[((xx_outer_inner + 63))] = (Conv2dOutput[((xx_outer_inner + 63))] + (PaddedInput_shared[(((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 32))]));
          Conv2dOutput[((xx_outer_inner + 77))] = (Conv2dOutput[((xx_outer_inner + 77))] + (PaddedInput_shared[(((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 40))]));
          Conv2dOutput[((xx_outer_inner + 91))] = (Conv2dOutput[((xx_outer_inner + 91))] + (PaddedInput_shared[(((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 48))]));
          Conv2dOutput[((xx_outer_inner + 105))] = (Conv2dOutput[((xx_outer_inner + 105))] + (PaddedInput_shared[(((((xx_outer_inner * 48) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((int)threadIdx.x)) + 56))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
      T_relu[((((((ax0_inner * 6272) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)))] = max((Conv2dOutput[(((ax0_inner * 7) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 1) * 64) + ((int)threadIdx.x)))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 6272) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 8))] = max((Conv2dOutput[((((ax0_inner * 7) + ax2_inner) + 14))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((int)threadIdx.x)) + 8))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 6272) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 16))] = max((Conv2dOutput[((((ax0_inner * 7) + ax2_inner) + 28))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((int)threadIdx.x)) + 16))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 6272) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 24))] = max((Conv2dOutput[((((ax0_inner * 7) + ax2_inner) + 42))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((int)threadIdx.x)) + 24))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 6272) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 32))] = max((Conv2dOutput[((((ax0_inner * 7) + ax2_inner) + 56))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((int)threadIdx.x)) + 32))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 6272) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 40))] = max((Conv2dOutput[((((ax0_inner * 7) + ax2_inner) + 70))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((int)threadIdx.x)) + 40))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 6272) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 48))] = max((Conv2dOutput[((((ax0_inner * 7) + ax2_inner) + 84))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((int)threadIdx.x)) + 48))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 6272) + ((((int)blockIdx.x) >> 1) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 56))] = max((Conv2dOutput[((((ax0_inner * 7) + ax2_inner) + 98))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((int)threadIdx.x)) + 56))]), 0.000000e+00f);
    }
  }
}


