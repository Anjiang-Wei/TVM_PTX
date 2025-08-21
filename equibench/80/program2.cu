
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
  float Conv2dOutput[160];
  __shared__ float PaddedInput_shared[6400];
  __shared__ float placeholder_shared[4000];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 80; ++ff_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 80) + ff_outer_inner_init))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 100; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)))] = placeholder[(((((((int)blockIdx.x) * 25600) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) / 50) * 200)) + (rc_outer_outer * 50)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) % 50)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 63; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64) + ((int)threadIdx.x)) < 4000) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 4000) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64)) + ((int)threadIdx.x)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 10; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 80; ++ff_outer_inner) {
          for (int rc_inner = 0; rc_inner < 5; ++rc_inner) {
            Conv2dOutput[(((yy_outer_inner * 80) + ff_outer_inner))] = (Conv2dOutput[(((yy_outer_inner * 80) + ff_outer_inner))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 4) * 1600) + (yy_outer_inner * 800)) + ((((int)threadIdx.x) & 15) * 50)) + (rc_outer_inner * 5)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 400) + (rc_inner * 80)) + ff_outer_inner))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 80; ++ax3_inner) {
      T_add[((((((((int)blockIdx.x) * 10240) + ((((int)threadIdx.x) >> 4) * 2560)) + (ax1_inner * 1280)) + ((((int)threadIdx.x) & 15) * 80)) + ax3_inner))] = ((Conv2dOutput[(((ax1_inner * 80) + ax3_inner))] + placeholder2[(ax3_inner)]) + placeholder3[((((((((int)blockIdx.x) * 10240) + ((((int)threadIdx.x) >> 4) * 2560)) + (ax1_inner * 1280)) + ((((int)threadIdx.x) & 15) * 80)) + ax3_inner))]);
    }
  }
}


