
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[512];
  __shared__ float placeholder_shared[48];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 8; ++xx_inner_init) {
        for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
          Conv2dOutput[(((((yy_outer_inner_init * 32) + (yy_inner_init * 16)) + (xx_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 32) + (yy_inner_init * 16)) + (xx_inner_init * 2)) + ff_inner_init) + 64))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 72; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + (((int)threadIdx.x) >> 1)) < 256) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) < 512) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 73728) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + (((int)threadIdx.x) >> 1)) >> 5) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + (((int)threadIdx.x) >> 1)) & 31) * 144)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 48) {
        if (((int)threadIdx.x) < 24) {
          placeholder_shared[(((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[((((rc_outer_outer * 48) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
          for (int xx_inner = 0; xx_inner < 8; ++xx_inner) {
            for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
              Conv2dOutput[(((((yy_outer_inner * 32) + (yy_inner * 16)) + (xx_inner * 2)) + ff_inner))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (yy_inner * 16)) + (xx_inner * 2)) + ff_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 24) * 256) + (yy_outer_inner * 128)) + (yy_inner * 64)) + (((((int)threadIdx.x) % 24) / 12) * 16)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 24) + ((((int)threadIdx.x) % 12) * 2)) + ff_inner))]));
              Conv2dOutput[((((((yy_outer_inner * 32) + (yy_inner * 16)) + (xx_inner * 2)) + ff_inner) + 64))] = (Conv2dOutput[((((((yy_outer_inner * 32) + (yy_inner * 16)) + (xx_inner * 2)) + ff_inner) + 64))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 24) * 256) + (yy_outer_inner * 128)) + (yy_inner * 64)) + (((((int)threadIdx.x) % 24) / 12) * 16)) + (xx_inner * 2)) + rc_outer_inner) + 32))] * placeholder_shared[((((rc_outer_inner * 24) + ((((int)threadIdx.x) % 12) * 2)) + ff_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 8; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_add[((((((((((((int)blockIdx.x) >> 1) * 12288) + ((((int)threadIdx.x) / 24) * 6144)) + (ax1_inner * 1536)) + ((((int)blockIdx.x) & 1) * 768)) + (((((int)threadIdx.x) % 24) / 12) * 192)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 12) * 2)) + ax3_inner))] = (placeholder2[((((((((((((int)blockIdx.x) >> 1) * 12288) + ((((int)threadIdx.x) / 24) * 6144)) + (ax1_inner * 1536)) + ((((int)blockIdx.x) & 1) * 768)) + (((((int)threadIdx.x) % 24) / 12) * 192)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 12) * 2)) + ax3_inner))] + (Conv2dOutput[((((ax1_inner * 16) + (ax2_inner * 2)) + ax3_inner))] + placeholder3[((((((int)threadIdx.x) % 12) * 2) + ax3_inner))]));
        T_add[(((((((((((((int)blockIdx.x) >> 1) * 12288) + ((((int)threadIdx.x) / 24) * 6144)) + (ax1_inner * 1536)) + ((((int)blockIdx.x) & 1) * 768)) + (((((int)threadIdx.x) % 24) / 12) * 192)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 12) * 2)) + ax3_inner) + 384))] = (placeholder2[(((((((((((((int)blockIdx.x) >> 1) * 12288) + ((((int)threadIdx.x) / 24) * 6144)) + (ax1_inner * 1536)) + ((((int)blockIdx.x) & 1) * 768)) + (((((int)threadIdx.x) % 24) / 12) * 192)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 12) * 2)) + ax3_inner) + 384))] + (Conv2dOutput[(((((ax1_inner * 16) + (ax2_inner * 2)) + ax3_inner) + 64))] + placeholder3[((((((int)threadIdx.x) % 12) * 2) + ax3_inner))]));
      }
    }
  }
}


