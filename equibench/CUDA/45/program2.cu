
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
  float Conv2dOutput[48];
  __shared__ float PaddedInput_shared[360];
  __shared__ float placeholder_shared[8];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 3; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 4; ++nn_inner_init) {
        for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
          Conv2dOutput[(((((nn_inner_init * 12) + (yy_outer_inner_init * 4)) + (yy_inner_init * 2)) + ff_outer_inner_init))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 192; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 9; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 360) {
        if (((int)threadIdx.x) < 40) {
          PaddedInput_shared[(((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 90) * 172800) + ((((int)blockIdx.x) >> 3) * 34560)) + (((((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 90) / 15) * 5760)) + (((((int)blockIdx.x) & 7) >> 2) * 2880)) + ((((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 15) * 192)) + rc_outer_outer))];
        }
      }
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 32) + ((((int)blockIdx.x) & 3) * 8)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 3; ++yy_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
        for (int nn_inner = 0; nn_inner < 4; ++nn_inner) {
          for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
            Conv2dOutput[(((((nn_inner * 12) + (yy_outer_inner * 4)) + (yy_inner * 2)) + ff_outer_inner))] = (Conv2dOutput[(((((nn_inner * 12) + (yy_outer_inner * 4)) + (yy_inner * 2)) + ff_outer_inner))] + (PaddedInput_shared[(((((nn_inner * 90) + (yy_outer_inner * 30)) + (yy_inner * 15)) + (((int)threadIdx.x) >> 2)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 2) + ff_outer_inner))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 6; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_add[(((((((((ax0_inner * 28800) + ((((int)blockIdx.x) >> 3) * 5760)) + (ax1_inner * 960)) + (((((int)blockIdx.x) & 7) >> 2) * 480)) + ((((int)threadIdx.x) >> 2) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))] = (placeholder2[(((((((((ax0_inner * 28800) + ((((int)blockIdx.x) >> 3) * 5760)) + (ax1_inner * 960)) + (((((int)blockIdx.x) & 7) >> 2) * 480)) + ((((int)threadIdx.x) >> 2) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))] + (Conv2dOutput[((((ax0_inner * 12) + (ax1_inner * 2)) + ax3_inner))] + placeholder3[(((((((int)blockIdx.x) & 3) * 8) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]));
      }
    }
  }
}


