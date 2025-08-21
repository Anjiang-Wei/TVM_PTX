
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
  float Conv2dOutput[40];
  __shared__ float PaddedInput_shared[700];
  __shared__ float placeholder_shared[64];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 5; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 4) + ff_outer_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + ff_outer_inner_init) + 20))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 144; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) / 70)) < 10) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 140) + (((int)threadIdx.x) >> 1)) < 350) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 280) + ((int)threadIdx.x)) < 700) {
            PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 280) + ((int)threadIdx.x)))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) / 70)) / 5) * 352800) + ((((int)blockIdx.x) >> 1) * 50400)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) / 70)) % 5) * 10080)) + (((((int)threadIdx.x) % 70) >> 1) * 288)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 64) {
        if (((int)threadIdx.x) < 16) {
          placeholder_shared[(((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((rc_outer_outer * 128) + ((((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 31)))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 5; ++yy_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
          Conv2dOutput[(((yy_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((yy_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 350) + (yy_outer_inner * 70)) + (((((int)threadIdx.x) % 140) >> 2) * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 3) * 4)) + ff_outer_inner))]));
          Conv2dOutput[((((yy_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((yy_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 350) + (yy_outer_inner * 70)) + (((((int)threadIdx.x) % 140) >> 2) * 2)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 3) * 4)) + ff_outer_inner) + 16))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[(((((((((((int)threadIdx.x) / 140) * 78400) + ((((int)blockIdx.x) >> 1) * 11200)) + (ax1_inner * 2240)) + (((((int)threadIdx.x) % 140) >> 2) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 4) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) / 140) * 78400) + ((((int)blockIdx.x) >> 1) * 11200)) + (ax1_inner * 2240)) + (((((int)threadIdx.x) % 140) >> 2) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 20))] + placeholder2[((((((((int)blockIdx.x) & 1) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
    }
  }
}


