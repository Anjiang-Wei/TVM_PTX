
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
  float Conv2dOutput[20];
  __shared__ float PaddedInput_shared[84];
  __shared__ float placeholder_shared[1920];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
    for (int ff_inner_init = 0; ff_inner_init < 5; ++ff_inner_init) {
      Conv2dOutput[(((ff_outer_inner_init * 5) + ff_inner_init))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 56; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) < 84) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)))] = placeholder[(((((((int)blockIdx.x) * 4704) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) / 12) * 672)) + (rc_outer_outer * 12)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 12)))];
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 35; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 1920) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 1920) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56)) + ((int)threadIdx.x)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 6; ++rc_inner) {
          for (int ff_inner = 0; ff_inner < 5; ++ff_inner) {
            Conv2dOutput[(((ff_outer_inner * 5) + ff_inner))] = (Conv2dOutput[(((ff_outer_inner * 5) + ff_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 12) + (rc_outer_inner * 6)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 960) + (rc_inner * 160)) + ((((int)threadIdx.x) & 7) * 20)) + (ff_outer_inner * 5)) + ff_inner))]));
          }
        }
      }
    }
  }
  for (int ax3_inner = 0; ax3_inner < 20; ++ax3_inner) {
    T_add[((((((int)blockIdx.x) * 1120) + (((int)threadIdx.x) * 20)) + ax3_inner))] = (Conv2dOutput[(ax3_inner)] + placeholder2[((((((int)threadIdx.x) & 7) * 20) + ax3_inner))]);
  }
}


