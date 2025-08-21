
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
  float Conv2dOutput[112];
  __shared__ float PaddedInput_shared[8400];
  __shared__ float placeholder_shared[384];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 4; ++nn_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 7; ++xx_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 14) + (xx_inner_init * 2)) + ff_outer_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 14) + (xx_inner_init * 2)) + ff_outer_inner_init) + 56))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 56; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 56) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 8400) {
        if (((int)threadIdx.x) < 150) {
          PaddedInput_shared[(((((int)threadIdx.x) * 56) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[(((((((((((int)threadIdx.x) * 56) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 2100) * 235200) + (((int)blockIdx.x) * 33600)) + (((((((int)threadIdx.x) * 56) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 2100) / 12) * 192)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 56) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 12)))];
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 < 12; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) {
      if (((((int)threadIdx.x) * 12) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) < 384) {
        if (((int)threadIdx.x) < 32) {
          placeholder_shared[(((((int)threadIdx.x) * 12) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))] = placeholder1[((((rc_outer_outer * 384) + (((int)threadIdx.x) * 12)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 4; ++nn_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
          for (int rc_inner = 0; rc_inner < 6; ++rc_inner) {
            for (int xx_inner = 0; xx_inner < 7; ++xx_inner) {
              Conv2dOutput[((((nn_outer_inner * 14) + (xx_inner * 2)) + ff_outer_inner))] = (Conv2dOutput[((((nn_outer_inner * 14) + (xx_inner * 2)) + ff_outer_inner))] + (PaddedInput_shared[((((((nn_outer_inner * 2100) + ((((int)threadIdx.x) >> 3) * 84)) + (xx_inner * 12)) + (rc_outer_inner * 6)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 192) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 2)) + ff_outer_inner))]));
              Conv2dOutput[(((((nn_outer_inner * 14) + (xx_inner * 2)) + ff_outer_inner) + 56))] = (Conv2dOutput[(((((nn_outer_inner * 14) + (xx_inner * 2)) + ff_outer_inner) + 56))] + (PaddedInput_shared[((((((nn_outer_inner * 2100) + ((((int)threadIdx.x) >> 3) * 84)) + (xx_inner * 12)) + (rc_outer_inner * 6)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 192) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 2)) + ff_outer_inner) + 16))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[(((((((ax0_inner * 39200) + (((int)blockIdx.x) * 5600)) + ((((int)threadIdx.x) >> 3) * 224)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 14) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 7) * 2) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax0_inner * 39200) + (((int)blockIdx.x) * 5600)) + ((((int)threadIdx.x) >> 3) * 224)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 16))] = max((Conv2dOutput[(((((ax0_inner * 14) + (ax2_inner * 2)) + ax3_inner) + 56))] + placeholder2[(((((((int)threadIdx.x) & 7) * 2) + ax3_inner) + 16))]), 0.000000e+00f);
      }
    }
  }
}


