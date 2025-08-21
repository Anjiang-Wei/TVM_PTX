
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
  float Conv2dOutput[64];
  __shared__ float PaddedInput_shared[4096];
  __shared__ float placeholder_shared[32];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 8; ++xx_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 16) + (xx_outer_inner_init * 8)) + xx_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 16) + (xx_outer_inner_init * 8)) + xx_inner_init) + 32))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 52; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 128; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[(((((((((int)blockIdx.x) >> 5) * 212992) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1664)) + ((((int)threadIdx.x) >> 3) * 416)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 32) {
        if (((int)threadIdx.x) < 16) {
          placeholder_shared[(((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((rc_outer_outer * 1024) + ((((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 3)))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
          for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
            for (int xx_inner = 0; xx_inner < 8; ++xx_inner) {
              Conv2dOutput[((((nn_outer_inner * 16) + (xx_outer_inner * 8)) + xx_inner))] = (Conv2dOutput[((((nn_outer_inner * 16) + (xx_outer_inner * 8)) + xx_inner))] + (PaddedInput_shared[(((((((nn_outer_inner * 2048) + ((((int)threadIdx.x) >> 2) * 128)) + (xx_outer_inner * 64)) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 8) + (rc_inner * 4)) + (((int)threadIdx.x) & 3)))]));
              Conv2dOutput[(((((nn_outer_inner * 16) + (xx_outer_inner * 8)) + xx_inner) + 32))] = (Conv2dOutput[(((((nn_outer_inner * 16) + (xx_outer_inner * 8)) + xx_inner) + 32))] + (PaddedInput_shared[((((((((nn_outer_inner * 2048) + ((((int)threadIdx.x) >> 2) * 128)) + (xx_outer_inner * 64)) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 1024))] * placeholder_shared[((((rc_outer_inner * 8) + (rc_inner * 4)) + (((int)threadIdx.x) & 3)))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 16; ++ax2_inner) {
      T_relu[((((((((((int)blockIdx.x) >> 5) * 65536) + (ax0_inner * 32768)) + ((((int)threadIdx.x) >> 2) * 2048)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((int)threadIdx.x) & 3)))] = max((Conv2dOutput[(((ax0_inner * 16) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 31) * 4) + (((int)threadIdx.x) & 3)))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 5) * 65536) + (ax0_inner * 32768)) + ((((int)threadIdx.x) >> 2) * 2048)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((int)threadIdx.x) & 3)) + 16384))] = max((Conv2dOutput[((((ax0_inner * 16) + ax2_inner) + 32))] + placeholder2[((((((int)blockIdx.x) & 31) * 4) + (((int)threadIdx.x) & 3)))]), 0.000000e+00f);
    }
  }
}


