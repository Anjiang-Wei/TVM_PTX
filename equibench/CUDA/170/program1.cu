
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[512];
  __shared__ float placeholder_shared[64];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
          for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
            Conv2dOutput[((((((nn_outer_inner_init * 16) + (nn_inner_init * 8)) + (yy_inner_init * 4)) + (xx_inner_init * 2)) + ff_outer_inner_init))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_outer_inner_init * 16) + (nn_inner_init * 8)) + (yy_inner_init * 4)) + (xx_inner_init * 2)) + ff_outer_inner_init) + 32))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_outer_inner_init * 16) + (nn_inner_init * 8)) + (yy_inner_init * 4)) + (xx_inner_init * 2)) + ff_outer_inner_init) + 64))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_outer_inner_init * 16) + (nn_inner_init * 8)) + (yy_inner_init * 4)) + (xx_inner_init * 2)) + ff_outer_inner_init) + 96))] = 0.000000e+00f;
          }
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 512; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 512) {
        if (((int)threadIdx.x) < 128) {
          PaddedInput_shared[(((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 7) * 524288) + ((((int)blockIdx.x) >> 2) * 131072)) + (((((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 127) >> 4) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 15) * 512)) + rc_outer_outer))];
        }
      }
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
        for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
          for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
              Conv2dOutput[((((((nn_outer_inner * 16) + (nn_inner * 8)) + (yy_inner * 4)) + (xx_inner * 2)) + ff_outer_inner))] = (Conv2dOutput[((((((nn_outer_inner * 16) + (nn_inner * 8)) + (yy_inner * 4)) + (xx_inner * 2)) + ff_outer_inner))] + (PaddedInput_shared[(((((((nn_outer_inner * 256) + (nn_inner * 128)) + ((((int)threadIdx.x) >> 7) * 32)) + (yy_inner * 16)) + (((((int)threadIdx.x) & 127) >> 4) * 2)) + xx_inner))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
              Conv2dOutput[(((((((nn_outer_inner * 16) + (nn_inner * 8)) + (yy_inner * 4)) + (xx_inner * 2)) + ff_outer_inner) + 32))] = (Conv2dOutput[(((((((nn_outer_inner * 16) + (nn_inner * 8)) + (yy_inner * 4)) + (xx_inner * 2)) + ff_outer_inner) + 32))] + (PaddedInput_shared[(((((((nn_outer_inner * 256) + (nn_inner * 128)) + ((((int)threadIdx.x) >> 7) * 32)) + (yy_inner * 16)) + (((((int)threadIdx.x) & 127) >> 4) * 2)) + xx_inner))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
              Conv2dOutput[(((((((nn_outer_inner * 16) + (nn_inner * 8)) + (yy_inner * 4)) + (xx_inner * 2)) + ff_outer_inner) + 64))] = (Conv2dOutput[(((((((nn_outer_inner * 16) + (nn_inner * 8)) + (yy_inner * 4)) + (xx_inner * 2)) + ff_outer_inner) + 64))] + (PaddedInput_shared[((((((((nn_outer_inner * 256) + (nn_inner * 128)) + ((((int)threadIdx.x) >> 7) * 32)) + (yy_inner * 16)) + (((((int)threadIdx.x) & 127) >> 4) * 2)) + xx_inner) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
              Conv2dOutput[(((((((nn_outer_inner * 16) + (nn_inner * 8)) + (yy_inner * 4)) + (xx_inner * 2)) + ff_outer_inner) + 96))] = (Conv2dOutput[(((((((nn_outer_inner * 16) + (nn_inner * 8)) + (yy_inner * 4)) + (xx_inner * 2)) + ff_outer_inner) + 96))] + (PaddedInput_shared[((((((((nn_outer_inner * 256) + (nn_inner * 128)) + ((((int)threadIdx.x) >> 7) * 32)) + (yy_inner * 16)) + (((((int)threadIdx.x) & 127) >> 4) * 2)) + xx_inner) + 64))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
          T_relu[(((((((((((ax0_inner * 131072) + ((((int)blockIdx.x) >> 2) * 32768)) + ((((int)threadIdx.x) >> 7) * 8192)) + (ax1_inner * 4096)) + (((((int)blockIdx.x) & 3) >> 1) * 2048)) + (((((int)threadIdx.x) & 127) >> 4) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 8) + (ax1_inner * 4)) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
          T_relu[((((((((((((ax0_inner * 131072) + ((((int)blockIdx.x) >> 2) * 32768)) + ((((int)threadIdx.x) >> 7) * 8192)) + (ax1_inner * 4096)) + (((((int)blockIdx.x) & 3) >> 1) * 2048)) + (((((int)threadIdx.x) & 127) >> 4) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))] = max((Conv2dOutput[((((((ax0_inner * 8) + (ax1_inner * 4)) + (ax2_inner * 2)) + ax3_inner) + 32))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
          T_relu[((((((((((((ax0_inner * 131072) + ((((int)blockIdx.x) >> 2) * 32768)) + ((((int)threadIdx.x) >> 7) * 8192)) + (ax1_inner * 4096)) + (((((int)blockIdx.x) & 3) >> 1) * 2048)) + (((((int)threadIdx.x) & 127) >> 4) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 16384))] = max((Conv2dOutput[((((((ax0_inner * 8) + (ax1_inner * 4)) + (ax2_inner * 2)) + ax3_inner) + 64))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
          T_relu[((((((((((((ax0_inner * 131072) + ((((int)blockIdx.x) >> 2) * 32768)) + ((((int)threadIdx.x) >> 7) * 8192)) + (ax1_inner * 4096)) + (((((int)blockIdx.x) & 3) >> 1) * 2048)) + (((((int)threadIdx.x) & 127) >> 4) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 16416))] = max((Conv2dOutput[((((((ax0_inner * 8) + (ax1_inner * 4)) + (ax2_inner * 2)) + ax3_inner) + 96))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
        }
      }
    }
  }
}


