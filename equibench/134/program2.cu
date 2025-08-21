
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
  float Conv2dOutput[28];
  __shared__ float PaddedInput_shared[2156];
  __shared__ float placeholder_shared[352];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int xx_inner_init = 0; xx_inner_init < 7; ++xx_inner_init) {
      for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 14) + (xx_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 39; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) < 2156) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) / 22) * 704) + (rc_outer_outer * 22)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 22)))];
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 112) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 352) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 176) {
            placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 4)) % 22) * 16) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 15)))] = placeholder1[(((((rc_outer_outer * 2816) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 4)) % 22) * 128)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 15)))];
          }
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 11; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
          for (int xx_inner = 0; xx_inner < 7; ++xx_inner) {
            for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
              Conv2dOutput[((((nn_outer_inner * 14) + (xx_inner * 2)) + ff_inner))] = (Conv2dOutput[((((nn_outer_inner * 14) + (xx_inner * 2)) + ff_inner))] + (PaddedInput_shared[((((((nn_outer_inner * 1078) + ((((int)threadIdx.x) >> 3) * 154)) + (xx_inner * 22)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 32) + (rc_inner * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[(((((((ax0_inner * 6272) + ((((int)threadIdx.x) >> 3) * 896)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 14) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


