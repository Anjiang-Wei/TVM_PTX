
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
  float Conv2dOutput[1920];
  __shared__ float PaddedInput_shared[4096];
  __shared__ float placeholder_shared[240];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 4; ++yy_outer_inner_init) {
      for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
        for (int ff_outer_inner_init = 0; ff_outer_inner_init < 15; ++ff_outer_inner_init) {
          Conv2dOutput[(((((nn_outer_inner_init * 960) + (yy_outer_inner_init * 240)) + (xx_outer_inner_init * 120)) + (ff_outer_inner_init * 2)))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 960) + (yy_outer_inner_init * 240)) + (xx_outer_inner_init * 120)) + (ff_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 960) + (yy_outer_inner_init * 240)) + (xx_outer_inner_init * 120)) + (ff_outer_inner_init * 2)) + 30))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 960) + (yy_outer_inner_init * 240)) + (xx_outer_inner_init * 120)) + (ff_outer_inner_init * 2)) + 31))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 960) + (yy_outer_inner_init * 240)) + (xx_outer_inner_init * 120)) + (ff_outer_inner_init * 2)) + 60))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 960) + (yy_outer_inner_init * 240)) + (xx_outer_inner_init * 120)) + (ff_outer_inner_init * 2)) + 61))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 960) + (yy_outer_inner_init * 240)) + (xx_outer_inner_init * 120)) + (ff_outer_inner_init * 2)) + 90))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 960) + (yy_outer_inner_init * 240)) + (xx_outer_inner_init * 120)) + (ff_outer_inner_init * 2)) + 91))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 5; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 512; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer >> 6) * 40960) + ((((int)blockIdx.x) >> 3) * 5120)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer & 63) >> 4) * 1280)) + (((((int)blockIdx.x) & 7) >> 2) * 640)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer & 15) * 40)) + (rc_outer_outer * 8)) + ((int)threadIdx.x)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 24; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 192) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 240) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)) < 10) {
            placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 192) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((rc_outer_outer * 960) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 192) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 30) * 120)) + ((((int)blockIdx.x) & 3) * 30)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 192) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 30)))];
          }
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int yy_outer_inner = 0; yy_outer_inner < 4; ++yy_outer_inner) {
          for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
            for (int ff_outer_inner = 0; ff_outer_inner < 15; ++ff_outer_inner) {
              Conv2dOutput[(((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)))] = (Conv2dOutput[(((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 1) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + (xx_outer_inner * 32)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 30) + (ff_outer_inner * 2)))]));
              Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 1))] = (Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 1) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + (xx_outer_inner * 32)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 30) + (ff_outer_inner * 2)) + 1))]));
              Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 30))] = (Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 30))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 1) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + (xx_outer_inner * 32)) + rc_outer_inner) + 8))] * placeholder_shared[(((rc_outer_inner * 30) + (ff_outer_inner * 2)))]));
              Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 31))] = (Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 31))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 1) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + (xx_outer_inner * 32)) + rc_outer_inner) + 8))] * placeholder_shared[((((rc_outer_inner * 30) + (ff_outer_inner * 2)) + 1))]));
              Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 60))] = (Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 60))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 1) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + (xx_outer_inner * 32)) + rc_outer_inner) + 16))] * placeholder_shared[(((rc_outer_inner * 30) + (ff_outer_inner * 2)))]));
              Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 61))] = (Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 61))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 1) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + (xx_outer_inner * 32)) + rc_outer_inner) + 16))] * placeholder_shared[((((rc_outer_inner * 30) + (ff_outer_inner * 2)) + 1))]));
              Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 90))] = (Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 90))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 1) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + (xx_outer_inner * 32)) + rc_outer_inner) + 24))] * placeholder_shared[(((rc_outer_inner * 30) + (ff_outer_inner * 2)))]));
              Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 91))] = (Conv2dOutput[((((((nn_outer_inner * 960) + (yy_outer_inner * 240)) + (xx_outer_inner * 120)) + (ff_outer_inner * 2)) + 91))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 1) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + (xx_outer_inner * 32)) + rc_outer_inner) + 24))] * placeholder_shared[((((rc_outer_inner * 30) + (ff_outer_inner * 2)) + 1))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 8; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 30; ++ax3_inner) {
          T_relu[(((((((((((((int)threadIdx.x) >> 1) * 245760) + (ax0_inner * 122880)) + ((((int)blockIdx.x) >> 3) * 15360)) + (ax1_inner * 3840)) + (((((int)blockIdx.x) & 7) >> 2) * 1920)) + ((((int)threadIdx.x) & 1) * 960)) + (ax2_inner * 120)) + ((((int)blockIdx.x) & 3) * 30)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 960) + (ax1_inner * 240)) + (ax2_inner * 30)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) & 3) * 30) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


