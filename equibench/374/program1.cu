
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
  float Conv2dOutput[1344];
  __shared__ float PaddedInput_shared[1792];
  __shared__ float placeholder_shared[24];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 14; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
          for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
            for (int ff_inner_init = 0; ff_inner_init < 3; ++ff_inner_init) {
              Conv2dOutput[(((((((nn_inner_init * 336) + (yy_outer_inner_init * 24)) + (yy_inner_init * 12)) + (xx_outer_inner_init * 6)) + (xx_inner_init * 3)) + ff_inner_init))] = 0.000000e+00f;
              Conv2dOutput[((((((((nn_inner_init * 336) + (yy_outer_inner_init * 24)) + (yy_inner_init * 12)) + (xx_outer_inner_init * 6)) + (xx_inner_init * 3)) + ff_inner_init) + 672))] = 0.000000e+00f;
            }
          }
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 96; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 56; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 43008) + ((((int)threadIdx.x) >> 2) * 5376)) + (((int)blockIdx.x) * 384)) + ((((int)threadIdx.x) & 3) * 96)) + rc_outer_outer))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 24) {
        if (((int)threadIdx.x) < 4) {
          placeholder_shared[(((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[((((rc_outer_outer * 24) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))];
        }
      }
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 14; ++yy_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
        for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
          for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
              for (int ff_inner = 0; ff_inner < 3; ++ff_inner) {
                Conv2dOutput[(((((((nn_inner * 336) + (yy_outer_inner * 24)) + (yy_inner * 12)) + (xx_outer_inner * 6)) + (xx_inner * 3)) + ff_inner))] = (Conv2dOutput[(((((((nn_inner * 336) + (yy_outer_inner * 24)) + (yy_inner * 12)) + (xx_outer_inner * 6)) + (xx_inner * 3)) + ff_inner))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 3) * 448) + (nn_inner * 224)) + (((((int)threadIdx.x) & 7) >> 2) * 112)) + (yy_outer_inner * 8)) + (yy_inner * 4)) + (xx_outer_inner * 2)) + xx_inner))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 3) + ff_inner))]));
                Conv2dOutput[((((((((nn_inner * 336) + (yy_outer_inner * 24)) + (yy_inner * 12)) + (xx_outer_inner * 6)) + (xx_inner * 3)) + ff_inner) + 672))] = (Conv2dOutput[((((((((nn_inner * 336) + (yy_outer_inner * 24)) + (yy_inner * 12)) + (xx_outer_inner * 6)) + (xx_inner * 3)) + ff_inner) + 672))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 3) * 448) + (nn_inner * 224)) + (((((int)threadIdx.x) & 7) >> 2) * 112)) + (yy_outer_inner * 8)) + (yy_inner * 4)) + (xx_outer_inner * 2)) + xx_inner))] * placeholder_shared[(((((((int)threadIdx.x) & 3) * 3) + ff_inner) + 12))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 28; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 3; ++ax3_inner) {
          T_add[((((((((((((int)threadIdx.x) >> 3) * 150528) + (ax0_inner * 75264)) + (((((int)threadIdx.x) & 7) >> 2) * 37632)) + (ax1_inner * 1344)) + (((int)blockIdx.x) * 96)) + (ax2_inner * 24)) + ((((int)threadIdx.x) & 3) * 3)) + ax3_inner))] = (Conv2dOutput[(((((ax0_inner * 336) + (ax1_inner * 12)) + (ax2_inner * 3)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 3) * 3) + ax3_inner))]);
          T_add[(((((((((((((int)threadIdx.x) >> 3) * 150528) + (ax0_inner * 75264)) + (((((int)threadIdx.x) & 7) >> 2) * 37632)) + (ax1_inner * 1344)) + (((int)blockIdx.x) * 96)) + (ax2_inner * 24)) + ((((int)threadIdx.x) & 3) * 3)) + ax3_inner) + 12))] = (Conv2dOutput[((((((ax0_inner * 336) + (ax1_inner * 12)) + (ax2_inner * 3)) + ax3_inner) + 672))] + placeholder2[(((((((int)threadIdx.x) & 3) * 3) + ax3_inner) + 12))]);
        }
      }
    }
  }
}


