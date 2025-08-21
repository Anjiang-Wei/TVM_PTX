
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
  float Conv2dOutput[240];
  __shared__ float PaddedInput_shared[1440];
  __shared__ float placeholder_shared[8192];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 4; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 15; ++yy_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 4)) + ff_outer_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 60; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 60) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 1440) {
        if (((int)threadIdx.x) < 24) {
          PaddedInput_shared[(((((int)threadIdx.x) * 60) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[(((((((((((int)threadIdx.x) * 60) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 24) * 15360) + (((int)blockIdx.x) * 3072)) + (((((((int)threadIdx.x) * 60) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 24) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((((int)threadIdx.x) * 60) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 7)))];
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 < 32; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) {
      if (((((int)threadIdx.x) * 32) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) < 8192) {
        if (((int)threadIdx.x) < 256) {
          placeholder_shared[(((((int)threadIdx.x) * 32) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))] = placeholder1[((((rc_outer_outer * 8192) + (((int)threadIdx.x) * 32)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 4; ++nn_outer_inner) {
        for (int yy_outer_inner = 0; yy_outer_inner < 15; ++yy_outer_inner) {
          for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
            for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
              Conv2dOutput[((((nn_outer_inner * 60) + (yy_outer_inner * 4)) + ff_outer_inner))] = (Conv2dOutput[((((nn_outer_inner * 60) + (yy_outer_inner * 4)) + ff_outer_inner))] + (PaddedInput_shared[((((((nn_outer_inner * 360) + (yy_outer_inner * 24)) + ((((int)threadIdx.x) >> 8) * 8)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 2048) + (rc_inner * 1024)) + ((((int)threadIdx.x) & 255) * 4)) + ff_outer_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 15; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[((((((ax0_inner * 230400) + (ax1_inner * 15360)) + (((int)blockIdx.x) * 3072)) + (((int)threadIdx.x) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 60) + (ax1_inner * 4)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 255) * 4) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


