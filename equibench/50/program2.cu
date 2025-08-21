
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
  float Conv2dOutput[80];
  __shared__ float PaddedInput_shared[2880];
  __shared__ float placeholder_shared[48];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 4; ++nn_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 5; ++xx_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + ff_outer_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 72; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 7; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 216) + (((int)threadIdx.x) >> 1)) < 1440) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 432) + ((int)threadIdx.x)) < 2880) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 432) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 216) + (((int)threadIdx.x) >> 1)) / 360) * 518400) + (((int)blockIdx.x) * 51840)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 216) + (((int)threadIdx.x) >> 1)) % 360) * 144)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
        }
      }
    }
    if (((int)threadIdx.x) < 48) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 48) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 4; ++nn_outer_inner) {
        for (int xx_outer_inner = 0; xx_outer_inner < 5; ++xx_outer_inner) {
          for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
            Conv2dOutput[((((nn_outer_inner * 20) + (xx_outer_inner * 4)) + ff_outer_inner))] = (Conv2dOutput[((((nn_outer_inner * 20) + (xx_outer_inner * 4)) + ff_outer_inner))] + (PaddedInput_shared[(((((nn_outer_inner * 720) + ((((int)threadIdx.x) / 6) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 24) + ((((int)threadIdx.x) % 6) * 4)) + ff_outer_inner))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_add[(((((((ax0_inner * 86400) + (((int)blockIdx.x) * 8640)) + ((((int)threadIdx.x) / 6) * 120)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 6) * 4)) + ax3_inner))] = (placeholder2[(((((((ax0_inner * 86400) + (((int)blockIdx.x) * 8640)) + ((((int)threadIdx.x) / 6) * 120)) + (ax2_inner * 24)) + ((((int)threadIdx.x) % 6) * 4)) + ax3_inner))] + (Conv2dOutput[((((ax0_inner * 20) + (ax2_inner * 4)) + ax3_inner))] + placeholder3[((((((int)threadIdx.x) % 6) * 4) + ax3_inner))]));
      }
    }
  }
}


