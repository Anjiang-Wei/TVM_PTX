
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[56];
  __shared__ float PaddedInput_shared[4704];
  __shared__ float placeholder_shared[288];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 7; ++xx_outer_inner_init) {
    for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
      for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
        Conv2dOutput[((((nn_inner_init * 14) + (xx_outer_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 14) + (xx_outer_inner_init * 2)) + ff_inner_init) + 28))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 12; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 168) + ((int)threadIdx.x)) < 392) {
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 12; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
          if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2016) + (((int)threadIdx.x) * 12)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 4704) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 168) + ((int)threadIdx.x)) / 196) * 2352) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 6) + (((int)threadIdx.x) / 28)) % 7) * 336)) + ((((int)threadIdx.x) % 28) * 12)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((((int)blockIdx.x) >> 4) * 903168) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 168) + ((int)threadIdx.x)) / 196) * 451584)) + (((((int)blockIdx.x) & 15) >> 1) * 56448)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 6) + (((int)threadIdx.x) / 28)) % 7) * 8064)) + ((((int)blockIdx.x) & 1) * 4032)) + ((((int)threadIdx.x) % 28) * 144)) + (rc_outer_outer * 12)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + (((int)threadIdx.x) / 24)) < 12) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 168) + ((int)threadIdx.x)) < 288) {
          placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 168) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 288) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 168)) + ((int)threadIdx.x)))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 7; ++xx_outer_inner) {
        for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
          for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
            for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
              Conv2dOutput[((((nn_inner * 14) + (xx_outer_inner * 2)) + ff_inner))] = (Conv2dOutput[((((nn_inner * 14) + (xx_outer_inner * 2)) + ff_inner))] + (PaddedInput_shared[((((((nn_inner * 2352) + ((((int)threadIdx.x) / 6) * 84)) + (xx_outer_inner * 12)) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 96) + (rc_inner * 24)) + ((((int)threadIdx.x) % 6) * 2)) + ff_inner))]));
              Conv2dOutput[(((((nn_inner * 14) + (xx_outer_inner * 2)) + ff_inner) + 28))] = (Conv2dOutput[(((((nn_inner * 14) + (xx_outer_inner * 2)) + ff_inner) + 28))] + (PaddedInput_shared[((((((nn_inner * 2352) + ((((int)threadIdx.x) / 6) * 84)) + (xx_outer_inner * 12)) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 96) + (rc_inner * 24)) + ((((int)threadIdx.x) % 6) * 2)) + ff_inner) + 12))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_add[(((((((((((((int)blockIdx.x) >> 4) * 150528) + (ax0_inner * 75264)) + (((((int)blockIdx.x) & 15) >> 1) * 9408)) + ((((int)threadIdx.x) / 24) * 1344)) + ((((int)blockIdx.x) & 1) * 672)) + (((((int)threadIdx.x) % 24) / 6) * 168)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 6) * 2)) + ax3_inner))] = (placeholder2[(((((((((((((int)blockIdx.x) >> 4) * 150528) + (ax0_inner * 75264)) + (((((int)blockIdx.x) & 15) >> 1) * 9408)) + ((((int)threadIdx.x) / 24) * 1344)) + ((((int)blockIdx.x) & 1) * 672)) + (((((int)threadIdx.x) % 24) / 6) * 168)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 6) * 2)) + ax3_inner))] + (Conv2dOutput[((((ax0_inner * 14) + (ax2_inner * 2)) + ax3_inner))] + placeholder3[((((((int)threadIdx.x) % 6) * 2) + ax3_inner))]));
        T_add[((((((((((((((int)blockIdx.x) >> 4) * 150528) + (ax0_inner * 75264)) + (((((int)blockIdx.x) & 15) >> 1) * 9408)) + ((((int)threadIdx.x) / 24) * 1344)) + ((((int)blockIdx.x) & 1) * 672)) + (((((int)threadIdx.x) % 24) / 6) * 168)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 6) * 2)) + ax3_inner) + 12))] = (placeholder2[((((((((((((((int)blockIdx.x) >> 4) * 150528) + (ax0_inner * 75264)) + (((((int)blockIdx.x) & 15) >> 1) * 9408)) + ((((int)threadIdx.x) / 24) * 1344)) + ((((int)blockIdx.x) & 1) * 672)) + (((((int)threadIdx.x) % 24) / 6) * 168)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 6) * 2)) + ax3_inner) + 12))] + (Conv2dOutput[(((((ax0_inner * 14) + (ax2_inner * 2)) + ax3_inner) + 28))] + placeholder3[(((((((int)threadIdx.x) % 6) * 2) + ax3_inner) + 12))]));
      }
    }
  }
}


