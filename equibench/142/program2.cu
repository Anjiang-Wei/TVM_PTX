
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
  float Conv2dOutput[224];
  __shared__ float PaddedInput_shared[1792];
  __shared__ float placeholder_shared[2048];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 7; ++xx_inner_init) {
        for (int ff_inner_init = 0; ff_inner_init < 4; ++ff_inner_init) {
          Conv2dOutput[(((((yy_inner_init * 56) + (xx_outer_inner_init * 28)) + (xx_inner_init * 4)) + ff_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 56) + (xx_outer_inner_init * 28)) + (xx_inner_init * 4)) + ff_inner_init) + 112))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 28; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 4)) / 28) * 50176) + (((int)blockIdx.x) * 7168)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 4)) % 28) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 32; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 2048) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
        for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
          for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 7; ++xx_inner) {
              for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
                Conv2dOutput[(((((yy_inner * 56) + (xx_outer_inner * 28)) + (xx_inner * 4)) + ff_inner))] = (Conv2dOutput[(((((yy_inner * 56) + (xx_outer_inner * 28)) + (xx_inner * 4)) + ff_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 4) * 448) + (yy_inner * 224)) + (xx_outer_inner * 112)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 15) * 4)) + ff_inner))]));
                Conv2dOutput[((((((yy_inner * 56) + (xx_outer_inner * 28)) + (xx_inner * 4)) + ff_inner) + 112))] = (Conv2dOutput[((((((yy_inner * 56) + (xx_outer_inner * 28)) + (xx_inner * 4)) + ff_inner) + 112))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 4) * 448) + (yy_inner * 224)) + (xx_outer_inner * 112)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 15) * 4)) + ff_inner) + 64))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[((((((((((int)threadIdx.x) >> 4) * 25088) + (((int)blockIdx.x) * 3584)) + (ax1_inner * 1792)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 56) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 15) * 4) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)threadIdx.x) >> 4) * 25088) + (((int)blockIdx.x) * 3584)) + (ax1_inner * 1792)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner) + 64))] = max((Conv2dOutput[(((((ax1_inner * 56) + (ax2_inner * 4)) + ax3_inner) + 112))] + placeholder2[(((((((int)threadIdx.x) & 15) * 4) + ax3_inner) + 64))]), 0.000000e+00f);
      }
    }
  }
}


