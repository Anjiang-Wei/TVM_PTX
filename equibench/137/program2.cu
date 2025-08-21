
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
  float Conv2dOutput[1536];
  __shared__ float PaddedInput_shared[128];
  __shared__ float placeholder_shared[192];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 8; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 4; ++xx_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 48; ++ff_outer_inner_init) {
        Conv2dOutput[((((yy_outer_inner_init * 192) + (xx_outer_inner_init * 48)) + ff_outer_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 512; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 32; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      ((float4*)(PaddedInput_shared + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4))))[0] = ((float4*)(placeholder + (((((((((int)blockIdx.x) >> 4) * 131072) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer >> 2) * 16384)) + (((((int)blockIdx.x) & 15) >> 3) * 8192)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer & 3) * 2048)) + (rc_outer_outer * 4)))))[0];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 192; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1)] = placeholder1[(((((rc_outer_outer * 1536) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 / 48) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 % 48)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 8; ++yy_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 4; ++xx_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 48; ++ff_outer_inner) {
          for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
            Conv2dOutput[((((yy_outer_inner * 192) + (xx_outer_inner * 48)) + ff_outer_inner))] = (Conv2dOutput[((((yy_outer_inner * 192) + (xx_outer_inner * 48)) + ff_outer_inner))] + (PaddedInput_shared[((((yy_outer_inner * 16) + (xx_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((rc_inner * 48) + ff_outer_inner))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 48; ++ax3_inner) {
        T_relu[((((((((((int)blockIdx.x) >> 4) * 24576) + (ax1_inner * 3072)) + (((((int)blockIdx.x) & 15) >> 3) * 1536)) + (ax2_inner * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 192) + (ax2_inner * 48)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) & 7) * 48) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


