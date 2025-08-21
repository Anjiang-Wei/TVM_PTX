
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
  __shared__ float PaddedInput_shared[960];
  __shared__ float placeholder_shared[1024];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 3; ++xx_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 5; ++xx_inner_init) {
        Conv2dOutput[((((yy_inner_init * 30) + (xx_outer_inner_init * 10)) + (xx_inner_init * 2)))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 30) + (xx_outer_inner_init * 10)) + (xx_inner_init * 2)) + 60))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 30) + (xx_outer_inner_init * 10)) + (xx_inner_init * 2)) + 120))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 30) + (xx_outer_inner_init * 10)) + (xx_inner_init * 2)) + 180))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 30) + (xx_outer_inner_init * 10)) + (xx_inner_init * 2)) + 1))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 30) + (xx_outer_inner_init * 10)) + (xx_inner_init * 2)) + 61))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 30) + (xx_outer_inner_init * 10)) + (xx_inner_init * 2)) + 121))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 30) + (xx_outer_inner_init * 10)) + (xx_inner_init * 2)) + 181))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 60; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) >> 3) * 61440) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 15) * 15360)) + (((((int)blockIdx.x) & 7) >> 1) * 3840)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 15) * 256)) + (rc_outer_outer * 16)) + ((int)threadIdx.x)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 32; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      ((float2*)(placeholder_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 32) + (((int)threadIdx.x) * 2)))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 32) + (((int)threadIdx.x) * 2)) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 32) + (((int)threadIdx.x) * 2)) & 63)))))[0];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 3; ++xx_outer_inner) {
        for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
          for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 5; ++xx_inner) {
              Conv2dOutput[((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)))] = (Conv2dOutput[((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 480) + (yy_inner * 240)) + (xx_outer_inner * 80)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 2)))]));
              Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 60))] = (Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 60))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 480) + (yy_inner * 240)) + (xx_outer_inner * 80)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
              Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 120))] = (Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 120))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 480) + (yy_inner * 240)) + (xx_outer_inner * 80)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 32))]));
              Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 180))] = (Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 180))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 480) + (yy_inner * 240)) + (xx_outer_inner * 80)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 48))]));
              Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 1))] = (Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 480) + (yy_inner * 240)) + (xx_outer_inner * 80)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
              Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 61))] = (Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 61))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 480) + (yy_inner * 240)) + (xx_outer_inner * 80)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
              Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 121))] = (Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 121))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 480) + (yy_inner * 240)) + (xx_outer_inner * 80)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 33))]));
              Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 181))] = (Conv2dOutput[(((((yy_inner * 30) + (xx_outer_inner * 10)) + (xx_inner * 2)) + 181))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 480) + (yy_inner * 240)) + (xx_outer_inner * 80)) + (xx_inner * 16)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 49))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 15; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((((((int)blockIdx.x) >> 3) * 30720) + ((((int)threadIdx.x) >> 3) * 15360)) + (ax1_inner * 7680)) + (((((int)blockIdx.x) & 7) >> 1) * 1920)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 30) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 3) * 30720) + ((((int)threadIdx.x) >> 3) * 15360)) + (ax1_inner * 7680)) + (((((int)blockIdx.x) & 7) >> 1) * 1920)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 16))] = max((Conv2dOutput[(((((ax1_inner * 30) + (ax2_inner * 2)) + ax3_inner) + 60))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 16))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 3) * 30720) + ((((int)threadIdx.x) >> 3) * 15360)) + (ax1_inner * 7680)) + (((((int)blockIdx.x) & 7) >> 1) * 1920)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 32))] = max((Conv2dOutput[(((((ax1_inner * 30) + (ax2_inner * 2)) + ax3_inner) + 120))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 3) * 30720) + ((((int)threadIdx.x) >> 3) * 15360)) + (ax1_inner * 7680)) + (((((int)blockIdx.x) & 7) >> 1) * 1920)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 48))] = max((Conv2dOutput[(((((ax1_inner * 30) + (ax2_inner * 2)) + ax3_inner) + 180))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 48))]), 0.000000e+00f);
      }
    }
  }
}


