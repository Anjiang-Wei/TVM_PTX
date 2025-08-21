
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
  float Conv2dOutput[24];
  __shared__ float PaddedInput_shared[1920];
  __shared__ float placeholder_shared[2304];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 12))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 12) + 11))] = 0.000000e+00f;
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 96; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + ((int)threadIdx.x)))] = placeholder[((((((int)blockIdx.x) * 1920) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20)) + ((int)threadIdx.x)))];
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 116; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)) < 2304) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)))] = placeholder1[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)))];
    }
  }
  __syncthreads();
  for (int rc_outer_inner = 0; rc_outer_inner < 48; ++rc_outer_inner) {
    for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 6; ++ff_outer_inner) {
        Conv2dOutput[(((xx_outer_inner * 12) + (ff_outer_inner * 2)))] = (Conv2dOutput[(((xx_outer_inner * 12) + (ff_outer_inner * 2)))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 192) + (xx_outer_inner * 96)) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 48) + ((((int)threadIdx.x) & 1) * 12)) + (ff_outer_inner * 2)))]));
        Conv2dOutput[((((xx_outer_inner * 12) + (ff_outer_inner * 2)) + 1))] = (Conv2dOutput[((((xx_outer_inner * 12) + (ff_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 192) + (xx_outer_inner * 96)) + (rc_outer_inner * 2)))] * placeholder_shared[(((((rc_outer_inner * 48) + ((((int)threadIdx.x) & 1) * 12)) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 12) + (ff_outer_inner * 2)))] = (Conv2dOutput[(((xx_outer_inner * 12) + (ff_outer_inner * 2)))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 192) + (xx_outer_inner * 96)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((rc_outer_inner * 48) + ((((int)threadIdx.x) & 1) * 12)) + (ff_outer_inner * 2)) + 24))]));
        Conv2dOutput[((((xx_outer_inner * 12) + (ff_outer_inner * 2)) + 1))] = (Conv2dOutput[((((xx_outer_inner * 12) + (ff_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 192) + (xx_outer_inner * 96)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((rc_outer_inner * 48) + ((((int)threadIdx.x) & 1) * 12)) + (ff_outer_inner * 2)) + 25))]));
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 12; ++ax3_inner) {
      T_add[((((((((int)blockIdx.x) * 480) + ((((int)threadIdx.x) >> 1) * 48)) + (ax2_inner * 24)) + ((((int)threadIdx.x) & 1) * 12)) + ax3_inner))] = (Conv2dOutput[(((ax2_inner * 12) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 12) + ax3_inner))]);
    }
  }
}


