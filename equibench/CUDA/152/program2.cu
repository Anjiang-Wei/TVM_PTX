
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
  float Conv2dOutput[640];
  __shared__ float PaddedInput_shared[93600];
  __shared__ float placeholder_shared[3328];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        for (int xx_inner_init = 0; xx_inner_init < 5; ++xx_inner_init) {
          for (int ff_inner_init = 0; ff_inner_init < 8; ++ff_inner_init) {
            Conv2dOutput[((((((nn_outer_inner_init * 160) + (nn_inner_init * 80)) + (xx_inner_init * 16)) + (ff_outer_inner_init * 8)) + ff_inner_init))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_outer_inner_init * 160) + (nn_inner_init * 80)) + (xx_inner_init * 16)) + (ff_outer_inner_init * 8)) + ff_inner_init) + 320))] = 0.000000e+00f;
          }
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 2080; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 45) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 45) + ((int)threadIdx.x)) / 104) * 416) + (rc_outer_outer * 104)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 45) + ((int)threadIdx.x)) % 104)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 74; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 45) + ((int)threadIdx.x)) < 3328) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 45) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 13312) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 45) + ((int)threadIdx.x)) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 45) + ((int)threadIdx.x)) & 31)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 104; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
          for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
            for (int xx_inner = 0; xx_inner < 5; ++xx_inner) {
              for (int ff_inner = 0; ff_inner < 8; ++ff_inner) {
                Conv2dOutput[((((((nn_outer_inner * 160) + (nn_inner * 80)) + (xx_inner * 16)) + (ff_outer_inner * 8)) + ff_inner))] = (Conv2dOutput[((((((nn_outer_inner * 160) + (nn_inner * 80)) + (xx_inner * 16)) + (ff_outer_inner * 8)) + ff_inner))] + (PaddedInput_shared[((((((nn_outer_inner * 46800) + (nn_inner * 23400)) + (((int)threadIdx.x) * 520)) + (xx_inner * 104)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 8)) + ff_inner))]));
                Conv2dOutput[(((((((nn_outer_inner * 160) + (nn_inner * 80)) + (xx_inner * 16)) + (ff_outer_inner * 8)) + ff_inner) + 320))] = (Conv2dOutput[(((((((nn_outer_inner * 160) + (nn_inner * 80)) + (xx_inner * 16)) + (ff_outer_inner * 8)) + ff_inner) + 320))] + (PaddedInput_shared[((((((nn_outer_inner * 46800) + (nn_inner * 23400)) + (((int)threadIdx.x) * 520)) + (xx_inner * 104)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 32) + (ff_outer_inner * 8)) + ff_inner) + 16))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
        T_relu[((((((ax0_inner * 28800) + (((int)threadIdx.x) * 640)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 80) + (ax2_inner * 16)) + ax3_inner))] + placeholder2[(((((int)blockIdx.x) * 32) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 28800) + (((int)threadIdx.x) * 640)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ax3_inner) + 16))] = max((Conv2dOutput[(((((ax0_inner * 80) + (ax2_inner * 16)) + ax3_inner) + 320))] + placeholder2[((((((int)blockIdx.x) * 32) + ax3_inner) + 16))]), 0.000000e+00f);
      }
    }
  }
}


