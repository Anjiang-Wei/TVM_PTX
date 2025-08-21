
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
  float Conv2dOutput[2048];
  __shared__ float PaddedInput_shared[8192];
  __shared__ float placeholder_shared[1024];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 8; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
        for (int ff_inner_init = 0; ff_inner_init < 32; ++ff_inner_init) {
          Conv2dOutput[(((((nn_outer_inner_init * 512) + (yy_inner_init * 64)) + (xx_inner_init * 32)) + ff_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 512) + (yy_inner_init * 64)) + (xx_inner_init * 32)) + ff_inner_init) + 1024))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 44; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 512; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)))] = placeholder[((((((((int)blockIdx.x) >> 1) * 360448) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 704)) + (rc_outer_outer * 16)) + ((int)threadIdx.x)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 64; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) & 63)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
          for (int yy_inner = 0; yy_inner < 8; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
              for (int ff_inner = 0; ff_inner < 32; ++ff_inner) {
                Conv2dOutput[(((((nn_outer_inner * 512) + (yy_inner * 64)) + (xx_inner * 32)) + ff_inner))] = (Conv2dOutput[(((((nn_outer_inner * 512) + (yy_inner * 64)) + (xx_inner * 32)) + ff_inner))] + (PaddedInput_shared[((((((((nn_outer_inner * 4096) + ((((int)threadIdx.x) >> 3) * 2048)) + (yy_inner * 256)) + (((((int)threadIdx.x) & 7) >> 1) * 32)) + (xx_inner * 16)) + (rc_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 512) + (rc_inner * 64)) + ((((int)threadIdx.x) & 1) * 32)) + ff_inner))]));
                Conv2dOutput[((((((nn_outer_inner * 512) + (yy_inner * 64)) + (xx_inner * 32)) + ff_inner) + 1024))] = (Conv2dOutput[((((((nn_outer_inner * 512) + (yy_inner * 64)) + (xx_inner * 32)) + ff_inner) + 1024))] + (PaddedInput_shared[(((((((((nn_outer_inner * 4096) + ((((int)threadIdx.x) >> 3) * 2048)) + (yy_inner * 256)) + (((((int)threadIdx.x) & 7) >> 1) * 32)) + (xx_inner * 16)) + (rc_outer_inner * 8)) + rc_inner) + 128))] * placeholder_shared[(((((rc_outer_inner * 512) + (rc_inner * 64)) + ((((int)threadIdx.x) & 1) * 32)) + ff_inner))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 32; ++ax3_inner) {
          T_relu[(((((((((((((int)blockIdx.x) >> 1) * 65536) + (ax0_inner * 32768)) + ((((int)threadIdx.x) >> 3) * 16384)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 7) >> 1) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 1) * 32)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 512) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 1) * 32)) + ax3_inner))]), 0.000000e+00f);
          T_relu[((((((((((((((int)blockIdx.x) >> 1) * 65536) + (ax0_inner * 32768)) + ((((int)threadIdx.x) >> 3) * 16384)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 7) >> 1) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 1) * 32)) + ax3_inner) + 1024))] = max((Conv2dOutput[((((((ax0_inner * 512) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax3_inner) + 1024))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 1) * 32)) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


