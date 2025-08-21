
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
  float Conv2dOutput[3840];
  __shared__ float PaddedInput_shared[9600];
  __shared__ float placeholder_shared[1024];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 3; ++xx_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 32; ++ff_outer_inner_init) {
      for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
        for (int xx_inner_init = 0; xx_inner_init < 5; ++xx_inner_init) {
          Conv2dOutput[(((((yy_inner_init * 1920) + (xx_outer_inner_init * 640)) + (xx_inner_init * 128)) + (ff_outer_inner_init * 4)))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 1920) + (xx_outer_inner_init * 640)) + (xx_inner_init * 128)) + (ff_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 1920) + (xx_outer_inner_init * 640)) + (xx_inner_init * 128)) + (ff_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_inner_init * 1920) + (xx_outer_inner_init * 640)) + (xx_inner_init * 128)) + (ff_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 240; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)))] = placeholder[((((((((int)blockIdx.x) * 307200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1280)) + ((((int)threadIdx.x) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 26; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)) < 1024) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 1024) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40)) + ((int)threadIdx.x)))];
      }
    }
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 3; ++xx_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 32; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
          for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 5; ++xx_inner) {
              Conv2dOutput[(((((yy_inner * 1920) + (xx_outer_inner * 640)) + (xx_inner * 128)) + (ff_outer_inner * 4)))] = (Conv2dOutput[(((((yy_inner * 1920) + (xx_outer_inner * 640)) + (xx_inner * 128)) + (ff_outer_inner * 4)))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 960) + (yy_inner * 480)) + ((((int)threadIdx.x) & 3) * 120)) + (xx_outer_inner * 40)) + (xx_inner * 8)) + rc_inner))] * placeholder_shared[(((rc_inner * 128) + (ff_outer_inner * 4)))]));
              Conv2dOutput[((((((yy_inner * 1920) + (xx_outer_inner * 640)) + (xx_inner * 128)) + (ff_outer_inner * 4)) + 1))] = (Conv2dOutput[((((((yy_inner * 1920) + (xx_outer_inner * 640)) + (xx_inner * 128)) + (ff_outer_inner * 4)) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 960) + (yy_inner * 480)) + ((((int)threadIdx.x) & 3) * 120)) + (xx_outer_inner * 40)) + (xx_inner * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (ff_outer_inner * 4)) + 1))]));
              Conv2dOutput[((((((yy_inner * 1920) + (xx_outer_inner * 640)) + (xx_inner * 128)) + (ff_outer_inner * 4)) + 2))] = (Conv2dOutput[((((((yy_inner * 1920) + (xx_outer_inner * 640)) + (xx_inner * 128)) + (ff_outer_inner * 4)) + 2))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 960) + (yy_inner * 480)) + ((((int)threadIdx.x) & 3) * 120)) + (xx_outer_inner * 40)) + (xx_inner * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (ff_outer_inner * 4)) + 2))]));
              Conv2dOutput[((((((yy_inner * 1920) + (xx_outer_inner * 640)) + (xx_inner * 128)) + (ff_outer_inner * 4)) + 3))] = (Conv2dOutput[((((((yy_inner * 1920) + (xx_outer_inner * 640)) + (xx_inner * 128)) + (ff_outer_inner * 4)) + 3))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 960) + (yy_inner * 480)) + ((((int)threadIdx.x) & 3) * 120)) + (xx_outer_inner * 40)) + (xx_inner * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (ff_outer_inner * 4)) + 3))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 15; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 128; ++ax3_inner) {
        T_relu[(((((((((int)blockIdx.x) * 153600) + ((((int)threadIdx.x) >> 2) * 15360)) + (ax1_inner * 7680)) + ((((int)threadIdx.x) & 3) * 1920)) + (ax2_inner * 128)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 1920) + (ax2_inner * 128)) + ax3_inner))] + placeholder2[(ax3_inner)]), 0.000000e+00f);
      }
    }
  }
}


