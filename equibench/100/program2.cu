
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
  float Conv2dOutput[224];
  __shared__ float PaddedInput_shared[8960];
  __shared__ float placeholder_shared[1280];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 14; ++xx_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
      for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
        Conv2dOutput[((((yy_inner_init * 28) + (xx_outer_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 28) + (xx_outer_inner_init * 2)) + ff_inner_init) + 56))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 28) + (xx_outer_inner_init * 2)) + ff_inner_init) + 112))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 28) + (xx_outer_inner_init * 2)) + ff_inner_init) + 168))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 4480; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)) / 4480) * 62720) + ((((int)blockIdx.x) >> 4) * 8960)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)) % 4480) / 160) * 320)) + (rc_outer_outer * 160)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)) % 160)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 640; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 20480) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)) >> 3) * 128)) + ((((int)blockIdx.x) & 15) * 8)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)) & 7)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 14; ++xx_outer_inner) {
        for (int rc_inner = 0; rc_inner < 40; ++rc_inner) {
          for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
            for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
              Conv2dOutput[((((yy_inner * 28) + (xx_outer_inner * 2)) + ff_inner))] = (Conv2dOutput[((((yy_inner * 28) + (xx_outer_inner * 2)) + ff_inner))] + (PaddedInput_shared[(((((yy_inner * 2240) + (xx_outer_inner * 160)) + (rc_outer_inner * 40)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 320) + (rc_inner * 8)) + (((int)threadIdx.x) * 2)) + ff_inner))]));
              Conv2dOutput[(((((yy_inner * 28) + (xx_outer_inner * 2)) + ff_inner) + 56))] = (Conv2dOutput[(((((yy_inner * 28) + (xx_outer_inner * 2)) + ff_inner) + 56))] + (PaddedInput_shared[(((((yy_inner * 2240) + (xx_outer_inner * 160)) + (rc_outer_inner * 40)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 320) + (rc_inner * 8)) + (((int)threadIdx.x) * 2)) + ff_inner) + 4))]));
              Conv2dOutput[(((((yy_inner * 28) + (xx_outer_inner * 2)) + ff_inner) + 112))] = (Conv2dOutput[(((((yy_inner * 28) + (xx_outer_inner * 2)) + ff_inner) + 112))] + (PaddedInput_shared[((((((yy_inner * 2240) + (xx_outer_inner * 160)) + (rc_outer_inner * 40)) + rc_inner) + 4480))] * placeholder_shared[(((((rc_outer_inner * 320) + (rc_inner * 8)) + (((int)threadIdx.x) * 2)) + ff_inner))]));
              Conv2dOutput[(((((yy_inner * 28) + (xx_outer_inner * 2)) + ff_inner) + 168))] = (Conv2dOutput[(((((yy_inner * 28) + (xx_outer_inner * 2)) + ff_inner) + 168))] + (PaddedInput_shared[((((((yy_inner * 2240) + (xx_outer_inner * 160)) + (rc_outer_inner * 40)) + rc_inner) + 4480))] * placeholder_shared[((((((rc_outer_inner * 320) + (rc_inner * 8)) + (((int)threadIdx.x) * 2)) + ff_inner) + 4))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((((int)blockIdx.x) >> 4) * 3584) + (ax1_inner * 1792)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 15) * 8)) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 28) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 15) * 8) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)blockIdx.x) >> 4) * 3584) + (ax1_inner * 1792)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 15) * 8)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 4))] = max((Conv2dOutput[(((((ax1_inner * 28) + (ax2_inner * 2)) + ax3_inner) + 56))] + placeholder2[((((((((int)blockIdx.x) & 15) * 8) + (((int)threadIdx.x) * 2)) + ax3_inner) + 4))]), 0.000000e+00f);
        T_relu[(((((((((((int)blockIdx.x) >> 4) * 3584) + (ax1_inner * 1792)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 15) * 8)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 25088))] = max((Conv2dOutput[(((((ax1_inner * 28) + (ax2_inner * 2)) + ax3_inner) + 112))] + placeholder2[(((((((int)blockIdx.x) & 15) * 8) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)blockIdx.x) >> 4) * 3584) + (ax1_inner * 1792)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 15) * 8)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 25092))] = max((Conv2dOutput[(((((ax1_inner * 28) + (ax2_inner * 2)) + ax3_inner) + 168))] + placeholder2[((((((((int)blockIdx.x) & 15) * 8) + (((int)threadIdx.x) * 2)) + ax3_inner) + 4))]), 0.000000e+00f);
      }
    }
  }
}


