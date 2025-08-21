
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
  float Conv2dOutput[150];
  __shared__ float PaddedInput_shared[600];
  __shared__ float placeholder_shared[2048];
  for (int yy_inner_init = 0; yy_inner_init < 5; ++yy_inner_init) {
    for (int xx_inner_init = 0; xx_inner_init < 3; ++xx_inner_init) {
      Conv2dOutput[(((yy_inner_init * 3) + xx_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 15))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 30))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 45))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 60))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 75))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 90))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 105))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 120))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 135))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + (((int)threadIdx.x) >> 2)) < 150) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 512) + ((int)threadIdx.x)) < 600) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 512) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 38400) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + (((int)threadIdx.x) >> 2)) / 15) * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + (((int)threadIdx.x) >> 2)) % 15) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      ((float2*)(placeholder_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 2)))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 2048) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024)) + (((int)threadIdx.x) * 2)))))[0];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 5; ++yy_inner) {
          for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
            Conv2dOutput[(((yy_inner * 3) + xx_inner))] = (Conv2dOutput[(((yy_inner * 3) + xx_inner))] + (PaddedInput_shared[(((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 15))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 15))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 12))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 30))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 30))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 24))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 45))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 45))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 36))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 60))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 60))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 48))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 75))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 75))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 300))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 90))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 90))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 312))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 105))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 105))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 324))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 120))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 120))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 336))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
            Conv2dOutput[((((yy_inner * 3) + xx_inner) + 135))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 135))] + (PaddedInput_shared[((((((yy_inner * 60) + (xx_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 348))] * placeholder_shared[((((rc_outer_inner * 1024) + (rc_inner * 512)) + ((int)threadIdx.x)))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      T_relu[(((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)))] = max(((Conv2dOutput[(((ax1_inner * 3) + ax2_inner))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[(((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 1536))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 15))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 1536))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 3072))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 30))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 3072))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 4608))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 45))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 4608))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 6144))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 60))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 6144))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 76800))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 75))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 76800))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 78336))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 90))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 78336))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 79872))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 105))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 79872))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 81408))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 120))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 81408))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 82944))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 135))] + placeholder2[(((int)threadIdx.x))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 153600) + (ax1_inner * 15360)) + ((((int)blockIdx.x) & 1) * 7680)) + (ax2_inner * 512)) + ((int)threadIdx.x)) + 82944))]), 0.000000e+00f);
    }
  }
}


