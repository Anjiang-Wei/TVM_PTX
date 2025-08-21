
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
  float Conv2dOutput[60];
  __shared__ float PaddedInput_shared[9000];
  __shared__ float placeholder_shared[800];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int xx_inner_init = 0; xx_inner_init < 3; ++xx_inner_init) {
      for (int ff_inner_init = 0; ff_inner_init < 10; ++ff_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 30) + (xx_inner_init * 10)) + ff_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 10; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 30; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 300) + ((int)threadIdx.x)))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 90000) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 3000)) + ((((int)threadIdx.x) / 20) * 200)) + (rc_outer_outer * 20)) + (((int)threadIdx.x) % 20)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 300) + ((int)threadIdx.x)) < 800) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 300) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 1600) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 300) + ((int)threadIdx.x)) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 300) + ((int)threadIdx.x)) % 40)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int rc_inner = 0; rc_inner < 5; ++rc_inner) {
          for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
            for (int ff_inner = 0; ff_inner < 10; ++ff_inner) {
              Conv2dOutput[((((nn_outer_inner * 30) + (xx_inner * 10)) + ff_inner))] = (Conv2dOutput[((((nn_outer_inner * 30) + (xx_inner * 10)) + ff_inner))] + (PaddedInput_shared[((((((nn_outer_inner * 4500) + ((((int)threadIdx.x) >> 2) * 60)) + (xx_inner * 20)) + (rc_outer_inner * 5)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 200) + (rc_inner * 40)) + ((((int)threadIdx.x) & 3) * 10)) + ff_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 10; ++ax3_inner) {
        T_add[(((((((((((int)blockIdx.x) >> 1) * 36000) + (ax0_inner * 18000)) + ((((int)threadIdx.x) >> 2) * 240)) + (ax2_inner * 80)) + ((((int)blockIdx.x) & 1) * 40)) + ((((int)threadIdx.x) & 3) * 10)) + ax3_inner))] = ((Conv2dOutput[((((ax0_inner * 30) + (ax2_inner * 10)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 40) + ((((int)threadIdx.x) & 3) * 10)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 1) * 36000) + (ax0_inner * 18000)) + ((((int)threadIdx.x) >> 2) * 240)) + (ax2_inner * 80)) + ((((int)blockIdx.x) & 1) * 40)) + ((((int)threadIdx.x) & 3) * 10)) + ax3_inner))]);
      }
    }
  }
}


