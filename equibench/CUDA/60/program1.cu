
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
  float Conv2dOutput[120];
  __shared__ float PaddedInput_shared[16];
  __shared__ float placeholder_shared[1920];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
    for (int ff_inner_init = 0; ff_inner_init < 60; ++ff_inner_init) {
      Conv2dOutput[(((ff_outer_inner_init * 60) + ff_inner_init))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 16; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer)] = placeholder[(((rc_outer_outer * 16) + ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 1920; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1)] = placeholder1[(((rc_outer_outer * 1920) + ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1))];
    }
    __syncthreads();
    for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
      for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
        for (int ff_inner = 0; ff_inner < 60; ++ff_inner) {
          Conv2dOutput[(((ff_outer_inner * 60) + ff_inner))] = (Conv2dOutput[(((ff_outer_inner * 60) + ff_inner))] + (PaddedInput_shared[(rc_inner)] * placeholder_shared[((((rc_inner * 120) + (ff_outer_inner * 60)) + ff_inner))]));
        }
      }
    }
  }
  for (int ax3_inner = 0; ax3_inner < 120; ++ax3_inner) {
    T_divide[(ax3_inner)] = (max(min(((Conv2dOutput[(ax3_inner)] + placeholder2[(ax3_inner)]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f);
  }
}


