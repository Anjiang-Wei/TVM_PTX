
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[720];
  __shared__ float PaddedInput_shared[3600];
  __shared__ float placeholder_shared[128];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 3; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 3; ++xx_inner_init) {
        for (int ff_inner_init = 0; ff_inner_init < 4; ++ff_inner_init) {
          Conv2dOutput[(((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 72))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 144))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 216))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 288))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 360))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 432))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 504))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 576))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 24) + (xx_outer_inner_init * 12)) + (xx_inner_init * 4)) + ff_inner_init) + 648))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 40; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 400) + (((int)threadIdx.x) * 10)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) < 900) {
          if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1600) + (((int)threadIdx.x) * 40)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 3600) {
            if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 90) {
              PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1600) + (((int)threadIdx.x) * 40)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 102400) + (((int)threadIdx.x) * 2560)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2) * 256)) + (rc_outer_outer * 4)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s & 3)))];
            }
          }
        }
      }
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 40))] = placeholder1[(((((rc_outer_outer * 2048) + (((((int)threadIdx.x) + 40) >> 5) * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 8) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 80))] = placeholder1[(((((rc_outer_outer * 2048) + (((((int)threadIdx.x) + 80) >> 5) * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)))];
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[((((int)threadIdx.x) + 120))] = placeholder1[(((((rc_outer_outer * 2048) + (((((int)threadIdx.x) + 120) >> 5) * 512)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 24)))];
    }
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
      for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 3; ++yy_inner) {
          for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
            for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
              Conv2dOutput[(((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner))] = (Conv2dOutput[(((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner))] + (PaddedInput_shared[((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 72))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 72))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 360))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 144))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 144))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 720))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 216))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 216))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 1080))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 288))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 288))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 1440))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 360))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 360))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 1800))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 432))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 432))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 2160))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 504))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 504))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 2520))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 576))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 576))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 2880))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
              Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 648))] = (Conv2dOutput[((((((yy_inner * 24) + (xx_outer_inner * 12)) + (xx_inner * 4)) + ff_inner) + 648))] + (PaddedInput_shared[(((((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 24)) + (xx_outer_inner * 12)) + (xx_inner * 4)) + rc_inner) + 3240))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 6; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[(((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))] = max(((Conv2dOutput[((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[(((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 46080))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 72))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 46080))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 92160))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 144))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 92160))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 138240))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 216))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 138240))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 184320))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 288))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 184320))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 230400))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 360))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 230400))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 276480))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 432))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 276480))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 322560))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 504))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 322560))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 368640))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 576))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 368640))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 414720))] = max(((Conv2dOutput[(((((ax1_inner * 24) + (ax2_inner * 4)) + ax3_inner) + 648))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]) + placeholder3[((((((((ax1_inner * 15360) + ((((int)threadIdx.x) >> 3) * 3072)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 414720))]), 0.000000e+00f);
      }
    }
  }
}


