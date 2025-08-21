
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
  float Conv2dOutput[224];
  __shared__ float PaddedInput_shared[23328];
  __shared__ float placeholder_shared[512];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 8; ++ff_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 7; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
        Conv2dOutput[((((yy_inner_init * 16) + (xx_inner_init * 8)) + ff_outer_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 16) + (xx_inner_init * 8)) + ff_outer_inner_init) + 112))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 417; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) < 23328) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) >> 5) * 802816) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) / 11664) * 401408)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 11664) / 432) * 14336)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 432) >> 4) * 512)) + (rc_outer_outer * 16)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) & 15)))];
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 10; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 512) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 16384) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) >> 5) * 1024)) + ((((int)blockIdx.x) & 31) * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) & 31)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 8; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
          for (int yy_inner = 0; yy_inner < 7; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
              Conv2dOutput[((((yy_inner * 16) + (xx_inner * 8)) + ff_outer_inner))] = (Conv2dOutput[((((yy_inner * 16) + (xx_inner * 8)) + ff_outer_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 28) * 6048) + (yy_inner * 864)) + (((((int)threadIdx.x) % 28) >> 2) * 64)) + (xx_inner * 32)) + (rc_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 32)) + ((((int)threadIdx.x) & 3) * 8)) + ff_outer_inner))]));
              Conv2dOutput[(((((yy_inner * 16) + (xx_inner * 8)) + ff_outer_inner) + 112))] = (Conv2dOutput[(((((yy_inner * 16) + (xx_inner * 8)) + ff_outer_inner) + 112))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 28) * 6048) + (yy_inner * 864)) + (((((int)threadIdx.x) % 28) >> 2) * 64)) + (xx_inner * 32)) + (rc_outer_inner * 8)) + rc_inner) + 11664))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 32)) + ((((int)threadIdx.x) & 3) * 8)) + ff_outer_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
        T_add[((((((((((((int)blockIdx.x) >> 5) * 401408) + ((((int)threadIdx.x) / 28) * 100352)) + (ax1_inner * 14336)) + (((((int)threadIdx.x) % 28) >> 2) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 31) * 32)) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))] = (Conv2dOutput[((((ax1_inner * 16) + (ax2_inner * 8)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 31) * 32) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))]);
        T_add[(((((((((((((int)blockIdx.x) >> 5) * 401408) + ((((int)threadIdx.x) / 28) * 100352)) + (ax1_inner * 14336)) + (((((int)threadIdx.x) % 28) >> 2) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 31) * 32)) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner) + 200704))] = (Conv2dOutput[(((((ax1_inner * 16) + (ax2_inner * 8)) + ax3_inner) + 112))] + placeholder2[(((((((int)blockIdx.x) & 31) * 32) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))]);
      }
    }
  }
}


