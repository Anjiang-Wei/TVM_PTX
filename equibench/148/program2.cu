
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
  __shared__ float PaddedInput_shared[90];
  __shared__ float placeholder_shared[128];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 5; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 3; ++xx_inner_init) {
        for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
          Conv2dOutput[(((((yy_inner_init * 12) + (xx_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 12) + (xx_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 60))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 12) + (xx_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 120))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 12) + (xx_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 180))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 512; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 10; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 5) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 1)) < 45) {
        if (((((int)threadIdx.x) * 10) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 90) {
          if (((int)threadIdx.x) < 9) {
            PaddedInput_shared[(((((int)threadIdx.x) * 10) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((int)blockIdx.x) / 20) * 230400) + ((((((int)threadIdx.x) * 5) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 1)) / 3) * 15360)) + (((((int)blockIdx.x) % 20) >> 2) * 3072)) + ((((((int)threadIdx.x) * 5) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 1)) % 3) * 1024)) + (rc_outer_outer * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s & 1)))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) < 128) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 32) {
            placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))] = placeholder1[(((((rc_outer_outer * 512) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) & 63)))];
          }
        }
      }
    }
    __syncthreads();
    for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
      for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 5; ++yy_inner) {
          for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
            for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
              Conv2dOutput[(((((yy_inner * 12) + (xx_inner * 4)) + (ff_outer_inner * 2)) + ff_inner))] = (Conv2dOutput[(((((yy_inner * 12) + (xx_inner * 4)) + (ff_outer_inner * 2)) + ff_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 30) + (yy_inner * 6)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 12) + (xx_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 60))] = (Conv2dOutput[((((((yy_inner * 12) + (xx_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 60))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 30) + (yy_inner * 6)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 16))]));
              Conv2dOutput[((((((yy_inner * 12) + (xx_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 120))] = (Conv2dOutput[((((((yy_inner * 12) + (xx_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 120))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 30) + (yy_inner * 6)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 32))]));
              Conv2dOutput[((((((yy_inner * 12) + (xx_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 180))] = (Conv2dOutput[((((((yy_inner * 12) + (xx_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 180))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 30) + (yy_inner * 6)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 48))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) >> 2) * 19200)) + (ax1_inner * 3840)) + (((((int)blockIdx.x) % 20) >> 2) * 768)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 12) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) >> 2) * 19200)) + (ax1_inner * 3840)) + (((((int)blockIdx.x) % 20) >> 2) * 768)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))] = max((Conv2dOutput[(((((ax1_inner * 12) + (ax2_inner * 4)) + ax3_inner) + 60))] + placeholder2[((((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) >> 2) * 19200)) + (ax1_inner * 3840)) + (((((int)blockIdx.x) % 20) >> 2) * 768)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 32))] = max((Conv2dOutput[(((((ax1_inner * 12) + (ax2_inner * 4)) + ax3_inner) + 120))] + placeholder2[((((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 32))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) >> 2) * 19200)) + (ax1_inner * 3840)) + (((((int)blockIdx.x) % 20) >> 2) * 768)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 48))] = max((Conv2dOutput[(((((ax1_inner * 12) + (ax2_inner * 4)) + ax3_inner) + 180))] + placeholder2[((((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 48))]), 0.000000e+00f);
      }
    }
  }
}


