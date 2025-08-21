
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[576];
  __shared__ float placeholder_shared[288];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 4; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 8))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 32))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 64))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 96))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 33))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 65))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 97))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 34))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 66))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 98))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 35))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 67))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 99))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 36))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 68))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 100))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 37))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 69))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 101))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 38))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 70))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 102))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 39))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 71))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 8) + 103))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 144; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)))] = placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)) / 144) * 147456) + ((((int)blockIdx.x) >> 4) * 9216)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)) % 144) / 72) * 4608)) + (((((int)blockIdx.x) & 15) >> 1) * 576)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)) % 72) / 18) * 144)) + (rc_outer_outer * 18)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)) % 18)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 72; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 4) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 576) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 4) + ((int)threadIdx.x)) >> 4) * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 4) + ((int)threadIdx.x)) & 15)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 18; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 4; ++xx_outer_inner) {
        Conv2dOutput[((xx_outer_inner * 8))] = (Conv2dOutput[((xx_outer_inner * 8))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 32))] = (Conv2dOutput[(((xx_outer_inner * 8) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 144))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 64))] = (Conv2dOutput[(((xx_outer_inner * 8) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 288))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 96))] = (Conv2dOutput[(((xx_outer_inner * 8) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 432))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 1))] = (Conv2dOutput[(((xx_outer_inner * 8) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 33))] = (Conv2dOutput[(((xx_outer_inner * 8) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 65))] = (Conv2dOutput[(((xx_outer_inner * 8) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 97))] = (Conv2dOutput[(((xx_outer_inner * 8) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 432))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 2))] = (Conv2dOutput[(((xx_outer_inner * 8) + 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 2))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 34))] = (Conv2dOutput[(((xx_outer_inner * 8) + 34))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 2))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 66))] = (Conv2dOutput[(((xx_outer_inner * 8) + 66))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 2))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 98))] = (Conv2dOutput[(((xx_outer_inner * 8) + 98))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 432))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 2))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 3))] = (Conv2dOutput[(((xx_outer_inner * 8) + 3))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 3))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 35))] = (Conv2dOutput[(((xx_outer_inner * 8) + 35))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 3))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 67))] = (Conv2dOutput[(((xx_outer_inner * 8) + 67))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 3))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 99))] = (Conv2dOutput[(((xx_outer_inner * 8) + 99))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 432))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 3))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 4))] = (Conv2dOutput[(((xx_outer_inner * 8) + 4))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 4))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 36))] = (Conv2dOutput[(((xx_outer_inner * 8) + 36))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 4))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 68))] = (Conv2dOutput[(((xx_outer_inner * 8) + 68))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 4))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 100))] = (Conv2dOutput[(((xx_outer_inner * 8) + 100))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 432))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 4))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 5))] = (Conv2dOutput[(((xx_outer_inner * 8) + 5))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 5))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 37))] = (Conv2dOutput[(((xx_outer_inner * 8) + 37))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 5))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 69))] = (Conv2dOutput[(((xx_outer_inner * 8) + 69))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 5))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 101))] = (Conv2dOutput[(((xx_outer_inner * 8) + 101))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 432))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 5))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 6))] = (Conv2dOutput[(((xx_outer_inner * 8) + 6))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 6))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 38))] = (Conv2dOutput[(((xx_outer_inner * 8) + 38))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 6))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 70))] = (Conv2dOutput[(((xx_outer_inner * 8) + 70))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 6))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 102))] = (Conv2dOutput[(((xx_outer_inner * 8) + 102))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 432))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 6))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 7))] = (Conv2dOutput[(((xx_outer_inner * 8) + 7))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 7))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 39))] = (Conv2dOutput[(((xx_outer_inner * 8) + 39))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 7))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 71))] = (Conv2dOutput[(((xx_outer_inner * 8) + 71))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 7))]));
        Conv2dOutput[(((xx_outer_inner * 8) + 103))] = (Conv2dOutput[(((xx_outer_inner * 8) + 103))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 72) + (xx_outer_inner * 18)) + rc_outer_inner) + 432))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + 7))]));
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_add[(((((((((((int)blockIdx.x) >> 4) * 2048) + ((((int)threadIdx.x) >> 1) * 1024)) + (((((int)blockIdx.x) & 15) >> 1) * 128)) + (ax2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))] = (Conv2dOutput[(((ax2_inner * 8) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))]);
      T_add[((((((((((((int)blockIdx.x) >> 4) * 2048) + ((((int)threadIdx.x) >> 1) * 1024)) + (((((int)blockIdx.x) & 15) >> 1) * 128)) + (ax2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 32768))] = (Conv2dOutput[((((ax2_inner * 8) + ax3_inner) + 32))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))]);
      T_add[((((((((((((int)blockIdx.x) >> 4) * 2048) + ((((int)threadIdx.x) >> 1) * 1024)) + (((((int)blockIdx.x) & 15) >> 1) * 128)) + (ax2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 65536))] = (Conv2dOutput[((((ax2_inner * 8) + ax3_inner) + 64))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))]);
      T_add[((((((((((((int)blockIdx.x) >> 4) * 2048) + ((((int)threadIdx.x) >> 1) * 1024)) + (((((int)blockIdx.x) & 15) >> 1) * 128)) + (ax2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 98304))] = (Conv2dOutput[((((ax2_inner * 8) + ax3_inner) + 96))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))]);
    }
  }
}


