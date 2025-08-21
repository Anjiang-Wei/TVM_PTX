
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
  float Conv2dOutput[90];
  __shared__ float PaddedInput_shared[900];
  __shared__ float placeholder_shared[8];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 3; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 5; ++xx_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        for (int xx_inner_init = 0; xx_inner_init < 3; ++xx_inner_init) {
          Conv2dOutput[(((((nn_inner_init * 45) + (yy_outer_inner_init * 15)) + (xx_outer_inner_init * 3)) + xx_inner_init))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 200; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 12; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + ((int)threadIdx.x)) < 900) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + ((int)threadIdx.x)))] = placeholder[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16000) + (((int)threadIdx.x) * 200)) + rc_outer_outer))];
      }
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 80) + (((int)blockIdx.x) * 8)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 3; ++yy_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 5; ++xx_outer_inner) {
        for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
          for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
            Conv2dOutput[(((((nn_inner * 45) + (yy_outer_inner * 15)) + (xx_outer_inner * 3)) + xx_inner))] = (Conv2dOutput[(((((nn_inner * 45) + (yy_outer_inner * 15)) + (xx_outer_inner * 3)) + xx_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 450) + (nn_inner * 225)) + (((((int)threadIdx.x) % 40) >> 3) * 45)) + (yy_outer_inner * 15)) + (xx_outer_inner * 3)) + xx_inner))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 15; ++ax2_inner) {
        T_add[(((((((((((int)threadIdx.x) / 40) * 36000) + (ax0_inner * 18000)) + (((((int)threadIdx.x) % 40) >> 3) * 3600)) + (ax1_inner * 1200)) + (ax2_inner * 80)) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7)))] = ((Conv2dOutput[((((ax0_inner * 45) + (ax1_inner * 15)) + ax2_inner))] + placeholder2[(((((int)blockIdx.x) * 8) + (((int)threadIdx.x) & 7)))]) + placeholder3[(((((((((((int)threadIdx.x) / 40) * 36000) + (ax0_inner * 18000)) + (((((int)threadIdx.x) % 40) >> 3) * 3600)) + (ax1_inner * 1200)) + (ax2_inner * 80)) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7)))]);
      }
    }
  }
}


