
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
  float Conv2dOutput[5760];
  __shared__ float PaddedInput_shared[230400];
  __shared__ float placeholder_shared[65536];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 16; ++ff_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 3; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 3; ++xx_inner_init) {
        for (int ff_inner_init = 0; ff_inner_init < 8; ++ff_inner_init) {
          Conv2dOutput[(((((yy_inner_init * 384) + (xx_inner_init * 128)) + (ff_outer_inner_init * 8)) + ff_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 384) + (xx_inner_init * 128)) + (ff_outer_inner_init * 8)) + ff_inner_init) + 1152))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 384) + (xx_inner_init * 128)) + (ff_outer_inner_init * 8)) + ff_inner_init) + 2304))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 384) + (xx_inner_init * 128)) + (ff_outer_inner_init * 8)) + ff_inner_init) + 3456))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 384) + (xx_inner_init * 128)) + (ff_outer_inner_init * 8)) + ff_inner_init) + 4608))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 5760; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) >> 8) * 1024) + (rc_outer_outer * 256)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) & 255)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 1639; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)) < 65536) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 65536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40)) + ((int)threadIdx.x)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 16; ++rc_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 16; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
          for (int yy_inner = 0; yy_inner < 3; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
              for (int ff_inner = 0; ff_inner < 8; ++ff_inner) {
                Conv2dOutput[(((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner))] = (Conv2dOutput[(((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 10) * 57600) + (yy_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (xx_inner * 256)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 4096) + (rc_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + (ff_outer_inner * 8)) + ff_inner))]));
                Conv2dOutput[((((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner) + 1152))] = (Conv2dOutput[((((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner) + 1152))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 10) * 57600) + (yy_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (xx_inner * 256)) + (rc_outer_inner * 16)) + rc_inner) + 11520))] * placeholder_shared[((((((rc_outer_inner * 4096) + (rc_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + (ff_outer_inner * 8)) + ff_inner))]));
                Conv2dOutput[((((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner) + 2304))] = (Conv2dOutput[((((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner) + 2304))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 10) * 57600) + (yy_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (xx_inner * 256)) + (rc_outer_inner * 16)) + rc_inner) + 23040))] * placeholder_shared[((((((rc_outer_inner * 4096) + (rc_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + (ff_outer_inner * 8)) + ff_inner))]));
                Conv2dOutput[((((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner) + 3456))] = (Conv2dOutput[((((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner) + 3456))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 10) * 57600) + (yy_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (xx_inner * 256)) + (rc_outer_inner * 16)) + rc_inner) + 34560))] * placeholder_shared[((((((rc_outer_inner * 4096) + (rc_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + (ff_outer_inner * 8)) + ff_inner))]));
                Conv2dOutput[((((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner) + 4608))] = (Conv2dOutput[((((((yy_inner * 384) + (xx_inner * 128)) + (ff_outer_inner * 8)) + ff_inner) + 4608))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 10) * 57600) + (yy_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (xx_inner * 256)) + (rc_outer_inner * 16)) + rc_inner) + 46080))] * placeholder_shared[((((((rc_outer_inner * 4096) + (rc_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + (ff_outer_inner * 8)) + ff_inner))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 128; ++ax3_inner) {
        T_relu[((((((((((int)threadIdx.x) / 10) * 57600) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 384) + (ax2_inner * 128)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 128) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)threadIdx.x) / 10) * 57600) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + ax3_inner) + 11520))] = max((Conv2dOutput[(((((ax1_inner * 384) + (ax2_inner * 128)) + ax3_inner) + 1152))] + placeholder2[((((((int)threadIdx.x) & 1) * 128) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)threadIdx.x) / 10) * 57600) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + ax3_inner) + 23040))] = max((Conv2dOutput[(((((ax1_inner * 384) + (ax2_inner * 128)) + ax3_inner) + 2304))] + placeholder2[((((((int)threadIdx.x) & 1) * 128) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)threadIdx.x) / 10) * 57600) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + ax3_inner) + 34560))] = max((Conv2dOutput[(((((ax1_inner * 384) + (ax2_inner * 128)) + ax3_inner) + 3456))] + placeholder2[((((((int)threadIdx.x) & 1) * 128) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)threadIdx.x) / 10) * 57600) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 10) >> 1) * 768)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 1) * 128)) + ax3_inner) + 46080))] = max((Conv2dOutput[(((((ax1_inner * 384) + (ax2_inner * 128)) + ax3_inner) + 4608))] + placeholder2[((((((int)threadIdx.x) & 1) * 128) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


