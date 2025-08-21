
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
  float Conv2dOutput[512];
  __shared__ float PaddedInput_shared[4096];
  __shared__ float placeholder_shared[2048];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
          for (int ff_inner_init = 0; ff_inner_init < 16; ++ff_inner_init) {
            Conv2dOutput[((((((nn_inner_init * 128) + (yy_outer_inner_init * 64)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + ff_inner_init))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_inner_init * 128) + (yy_outer_inner_init * 64)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + ff_inner_init) + 256))] = 0.000000e+00f;
          }
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 46; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 32; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      ((float2*)(PaddedInput_shared + (((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + (((int)threadIdx.x) * 2)) >> 10) * 1024) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer & 7) * 128)) + (((int)threadIdx.x) * 2)))))[0] = ((float2*)(placeholder + (((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + (((int)threadIdx.x) * 2)) >> 10) * 47104) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer & 7) * 5888)) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)))))[0];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 32; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 2048) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
          for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
            for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
              for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
                for (int ff_inner = 0; ff_inner < 16; ++ff_inner) {
                  Conv2dOutput[((((((nn_inner * 128) + (yy_outer_inner * 64)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + ff_inner))] = (Conv2dOutput[((((((nn_inner * 128) + (yy_outer_inner * 64)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + ff_inner))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 5) * 2048) + (nn_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 3) * 256)) + (yy_outer_inner * 128)) + (((((int)threadIdx.x) & 7) >> 2) * 32)) + (xx_inner * 16)) + (rc_outer_inner * 8)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 1024) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 16)) + ff_inner))]));
                  Conv2dOutput[(((((((nn_inner * 128) + (yy_outer_inner * 64)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + ff_inner) + 256))] = (Conv2dOutput[(((((((nn_inner * 128) + (yy_outer_inner * 64)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + ff_inner) + 256))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2048) + (nn_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 3) * 256)) + (yy_outer_inner * 128)) + (((((int)threadIdx.x) & 7) >> 2) * 32)) + (xx_inner * 16)) + (rc_outer_inner * 8)) + rc_inner) + 64))] * placeholder_shared[((((((rc_outer_inner * 1024) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 16)) + ff_inner))]));
                }
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 32; ++ax3_inner) {
          T_relu[((((((((((((int)threadIdx.x) >> 5) * 16384) + (ax0_inner * 8192)) + (((((int)threadIdx.x) & 31) >> 3) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 7) >> 2) * 256)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 128) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 3) * 32) + ax3_inner))]), 0.000000e+00f);
          T_relu[(((((((((((((int)threadIdx.x) >> 5) * 16384) + (ax0_inner * 8192)) + (((((int)threadIdx.x) & 31) >> 3) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 7) >> 2) * 256)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + ax3_inner) + 512))] = max((Conv2dOutput[((((((ax0_inner * 128) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax3_inner) + 256))] + placeholder2[((((((int)threadIdx.x) & 3) * 32) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


