
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
  float Conv2dOutput[16384];
  __shared__ float PaddedInput_shared[2048];
  __shared__ float placeholder_shared[256];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 32; ++yy_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 64; ++ff_outer_inner_init) {
        for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
          Conv2dOutput[(((((nn_outer_inner_init * 4096) + (yy_outer_inner_init * 128)) + (xx_inner_init * 64)) + ff_outer_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 4096) + (yy_outer_inner_init * 128)) + (xx_inner_init * 64)) + ff_outer_inner_init) + 8192))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 256; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)))] = placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 1)) >> 8) * 524288) + ((((int)blockIdx.x) >> 4) * 262144)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 1)) & 255) >> 3) * 8192)) + (((((int)blockIdx.x) & 15) >> 1) * 1024)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 1)) & 7) * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 32; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 512) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)) >> 7) * 256)) + ((((int)blockIdx.x) & 1) * 128)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)) & 127)))];
    }
    __syncthreads();
    for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 32; ++yy_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 64; ++ff_outer_inner) {
          for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
            for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
              Conv2dOutput[(((((nn_outer_inner * 4096) + (yy_outer_inner * 128)) + (xx_inner * 64)) + ff_outer_inner))] = (Conv2dOutput[(((((nn_outer_inner * 4096) + (yy_outer_inner * 128)) + (xx_inner * 64)) + ff_outer_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 3) >> 1) * 4)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + ff_outer_inner))]));
              Conv2dOutput[((((((nn_outer_inner * 4096) + (yy_outer_inner * 128)) + (xx_inner * 64)) + ff_outer_inner) + 8192))] = (Conv2dOutput[((((((nn_outer_inner * 4096) + (yy_outer_inner * 128)) + (xx_inner * 64)) + ff_outer_inner) + 8192))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 2) * 1024) + (nn_outer_inner * 512)) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 3) >> 1) * 4)) + (xx_inner * 2)) + rc_inner) + 8))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + ff_outer_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 32; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 64; ++ax3_inner) {
          T_relu[((((((((((((((int)threadIdx.x) >> 2) * 2097152) + (ax0_inner * 1048576)) + ((((int)blockIdx.x) >> 4) * 524288)) + (ax1_inner * 16384)) + (((((int)blockIdx.x) & 15) >> 1) * 2048)) + (((((int)threadIdx.x) & 3) >> 1) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 1) * 128)) + ((((int)threadIdx.x) & 1) * 64)) + ax3_inner))] = max(((Conv2dOutput[(((((ax0_inner * 4096) + (ax1_inner * 128)) + (ax2_inner * 64)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 128) + ((((int)threadIdx.x) & 1) * 64)) + ax3_inner))]) + placeholder3[((((((((((((((int)threadIdx.x) >> 2) * 2097152) + (ax0_inner * 1048576)) + ((((int)blockIdx.x) >> 4) * 524288)) + (ax1_inner * 16384)) + (((((int)blockIdx.x) & 15) >> 1) * 2048)) + (((((int)threadIdx.x) & 3) >> 1) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 1) * 128)) + ((((int)threadIdx.x) & 1) * 64)) + ax3_inner))]), 0.000000e+00f);
          T_relu[(((((((((((((((int)threadIdx.x) >> 2) * 2097152) + (ax0_inner * 1048576)) + ((((int)blockIdx.x) >> 4) * 524288)) + (ax1_inner * 16384)) + (((((int)blockIdx.x) & 15) >> 1) * 2048)) + (((((int)threadIdx.x) & 3) >> 1) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 1) * 128)) + ((((int)threadIdx.x) & 1) * 64)) + ax3_inner) + 1024))] = max(((Conv2dOutput[((((((ax0_inner * 4096) + (ax1_inner * 128)) + (ax2_inner * 64)) + ax3_inner) + 8192))] + placeholder2[(((((((int)blockIdx.x) & 1) * 128) + ((((int)threadIdx.x) & 1) * 64)) + ax3_inner))]) + placeholder3[(((((((((((((((int)threadIdx.x) >> 2) * 2097152) + (ax0_inner * 1048576)) + ((((int)blockIdx.x) >> 4) * 524288)) + (ax1_inner * 16384)) + (((((int)blockIdx.x) & 15) >> 1) * 2048)) + (((((int)threadIdx.x) & 3) >> 1) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 1) * 128)) + ((((int)threadIdx.x) & 1) * 64)) + ax3_inner) + 1024))]), 0.000000e+00f);
        }
      }
    }
  }
}


