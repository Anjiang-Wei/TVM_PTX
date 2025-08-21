
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
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[192];
  __shared__ float placeholder_shared[24];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 4; ++yy_outer_inner_init) {
      for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 8) + (yy_outer_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 8) + (yy_outer_inner_init * 2)) + ff_inner_init) + 16))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 96; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 48; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)))] = placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)) / 48) * 147456) + ((((int)blockIdx.x) / 192) * 36864)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)) % 48) / 12) * 9216)) + (((((int)blockIdx.x) % 192) / 24) * 1152)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)) % 12) / 6) * 576)) + (rc_outer_outer * 6)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + ((int)threadIdx.x)) % 6)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 4) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 576) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 96)) + ((((int)blockIdx.x) % 24) * 4)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 4; ++yy_outer_inner) {
        for (int rc_inner = 0; rc_inner < 6; ++rc_inner) {
          for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
            Conv2dOutput[((((nn_outer_inner * 8) + (yy_outer_inner * 2)) + ff_inner))] = (Conv2dOutput[((((nn_outer_inner * 8) + (yy_outer_inner * 2)) + ff_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 96) + (nn_outer_inner * 48)) + (yy_outer_inner * 12)) + rc_inner))] * placeholder_shared[((((rc_inner * 4) + ((((int)threadIdx.x) & 1) * 2)) + ff_inner))]));
            Conv2dOutput[(((((nn_outer_inner * 8) + (yy_outer_inner * 2)) + ff_inner) + 16))] = (Conv2dOutput[(((((nn_outer_inner * 8) + (yy_outer_inner * 2)) + ff_inner) + 16))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 96) + (nn_outer_inner * 48)) + (yy_outer_inner * 12)) + rc_inner) + 6))] * placeholder_shared[((((rc_inner * 4) + ((((int)threadIdx.x) & 1) * 2)) + ff_inner))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_add[((((((((((((int)threadIdx.x) >> 1) * 49152) + (ax0_inner * 24576)) + ((((int)blockIdx.x) / 192) * 6144)) + (ax1_inner * 1536)) + (((((int)blockIdx.x) % 192) / 24) * 192)) + ((((int)blockIdx.x) % 24) * 4)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))] = (placeholder2[((((((((((((int)threadIdx.x) >> 1) * 49152) + (ax0_inner * 24576)) + ((((int)blockIdx.x) / 192) * 6144)) + (ax1_inner * 1536)) + (((((int)blockIdx.x) % 192) / 24) * 192)) + ((((int)blockIdx.x) % 24) * 4)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))] + (Conv2dOutput[((((ax0_inner * 8) + (ax1_inner * 2)) + ax3_inner))] + placeholder3[(((((((int)blockIdx.x) % 24) * 4) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))]));
        T_add[(((((((((((((int)threadIdx.x) >> 1) * 49152) + (ax0_inner * 24576)) + ((((int)blockIdx.x) / 192) * 6144)) + (ax1_inner * 1536)) + (((((int)blockIdx.x) % 192) / 24) * 192)) + ((((int)blockIdx.x) % 24) * 4)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 96))] = (placeholder2[(((((((((((((int)threadIdx.x) >> 1) * 49152) + (ax0_inner * 24576)) + ((((int)blockIdx.x) / 192) * 6144)) + (ax1_inner * 1536)) + (((((int)blockIdx.x) % 192) / 24) * 192)) + ((((int)blockIdx.x) % 24) * 4)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner) + 96))] + (Conv2dOutput[(((((ax0_inner * 8) + (ax1_inner * 2)) + ax3_inner) + 16))] + placeholder3[(((((((int)blockIdx.x) % 24) * 4) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))]));
      }
    }
  }
}


