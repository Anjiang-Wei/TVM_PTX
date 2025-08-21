
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
  float Conv2dOutput[2];
  __shared__ float PaddedInput_shared[120];
  __shared__ float placeholder_shared[480];
  for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
    Conv2dOutput[(ff_inner_init)] = 0.000000e+00f;
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 60; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)))] = placeholder[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)))];
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 240; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
    placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)))] = placeholder1[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)) >> 2) * 32) + (((int)blockIdx.x) * 4)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)) & 3)))];
  }
  __syncthreads();
  for (int rc_outer_inner = 0; rc_outer_inner < 60; ++rc_outer_inner) {
    for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
      for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
        Conv2dOutput[(ff_inner)] = (Conv2dOutput[(ff_inner)] + (PaddedInput_shared[(((rc_outer_inner * 2) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 8) + (rc_inner * 4)) + (((int)threadIdx.x) * 2)) + ff_inner))]));
      }
    }
  }
  for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
    T_relu[((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max((Conv2dOutput[(ax3_inner)] + placeholder2[((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
  }
}


