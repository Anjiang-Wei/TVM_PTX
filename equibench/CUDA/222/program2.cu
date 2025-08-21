
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
  float Conv2dOutput[2880];
  __shared__ float PaddedInput_shared[2700];
  __shared__ float placeholder_shared[1536];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 32; ++ff_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 3; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 15; ++xx_inner_init) {
        Conv2dOutput[((((yy_inner_init * 480) + (xx_inner_init * 32)) + ff_outer_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 480) + (xx_inner_init * 32)) + ff_outer_inner_init) + 1440))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 8; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 36; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 30) + (((int)threadIdx.x) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s / 12)) < 225) {
          if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 360) + (((int)threadIdx.x) * 36)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 2700) {
            if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 10) + ((int)threadIdx.x)) < 75) {
              PaddedInput_shared[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 3) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s / 12)) / 15)) % 15) * 180) + ((((((int)threadIdx.x) * 3) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s / 12)) % 15) * 12)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s % 12)))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 3) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s / 12)) / 15)) % 15) * 11520) + ((((((int)threadIdx.x) * 3) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s / 12)) % 15) * 768)) + (rc_outer_outer * 12)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s % 12)))];
            }
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 52; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 30) + (((int)threadIdx.x) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) < 1536) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 10) + ((int)threadIdx.x)) < 512) {
            placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 30) + (((int)threadIdx.x) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 30)) + (((int)threadIdx.x) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))];
          }
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 6; ++rc_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 32; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
          for (int yy_inner = 0; yy_inner < 3; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 15; ++xx_inner) {
              Conv2dOutput[((((yy_inner * 480) + (xx_inner * 32)) + ff_outer_inner))] = (Conv2dOutput[((((yy_inner * 480) + (xx_inner * 32)) + ff_outer_inner))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 540) + (yy_inner * 180)) + (xx_inner * 12)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 1) * 32)) + ff_outer_inner))]));
              Conv2dOutput[(((((yy_inner * 480) + (xx_inner * 32)) + ff_outer_inner) + 1440))] = (Conv2dOutput[(((((yy_inner * 480) + (xx_inner * 32)) + ff_outer_inner) + 1440))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 540) + (yy_inner * 180)) + (xx_inner * 12)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 1) * 32)) + ff_outer_inner) + 64))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 15; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 32; ++ax3_inner) {
        T_relu[(((((((((int)threadIdx.x) >> 1) * 5760) + (ax1_inner * 1920)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 1) * 32)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 480) + (ax2_inner * 32)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 32) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((((int)threadIdx.x) >> 1) * 5760) + (ax1_inner * 1920)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 1) * 32)) + ax3_inner) + 64))] = max((Conv2dOutput[(((((ax1_inner * 480) + (ax2_inner * 32)) + ax3_inner) + 1440))] + placeholder2[(((((((int)threadIdx.x) & 1) * 32) + ax3_inner) + 64))]), 0.000000e+00f);
      }
    }
  }
}


