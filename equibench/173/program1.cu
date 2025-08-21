
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
  float Conv2dOutput[28];
  __shared__ float PaddedInput_shared[8400];
  __shared__ float placeholder_shared[192];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 7; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        Conv2dOutput[((((nn_inner_init * 14) + (yy_outer_inner_init * 2)) + ff_outer_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 49; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 49) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 8400) {
        if (((int)threadIdx.x) < 172) {
          PaddedInput_shared[(((((int)threadIdx.x) * 49) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[(((((((((((int)threadIdx.x) * 49) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 60) * 6720) + ((((int)blockIdx.x) >> 1) * 960)) + (((((((int)threadIdx.x) * 49) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 60) / 12) * 192)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 49) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 12)))];
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) {
      if (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) < 192) {
        if (((int)threadIdx.x) < 96) {
          placeholder_shared[(((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))] = placeholder1[(((((rc_outer_outer * 384) + ((((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) >> 4) * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) & 15)))];
        }
      }
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 7; ++yy_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 12; ++rc_inner) {
          for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
            Conv2dOutput[((((nn_inner * 14) + (yy_outer_inner * 2)) + ff_outer_inner))] = (Conv2dOutput[((((nn_inner * 14) + (yy_outer_inner * 2)) + ff_outer_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 200) * 4200) + (nn_inner * 2100)) + (((((int)threadIdx.x) % 200) / 40) * 420)) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 40) >> 3) * 12)) + rc_inner))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + ff_outer_inner))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[(((((((((((((int)threadIdx.x) / 200) * 78400) + (ax0_inner * 39200)) + (((((int)threadIdx.x) % 200) / 40) * 7840)) + (ax1_inner * 1120)) + ((((int)blockIdx.x) >> 1) * 160)) + (((((int)threadIdx.x) % 40) >> 3) * 32)) + ((((int)blockIdx.x) & 1) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 14) + (ax1_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


