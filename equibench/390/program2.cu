
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
  float Conv2dOutput[1568];
  __shared__ float PaddedInput_shared[3136];
  __shared__ float placeholder_shared[320];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 7; ++xx_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
        for (int yy_inner_init = 0; yy_inner_init < 7; ++yy_inner_init) {
          Conv2dOutput[(((((nn_outer_inner_init * 196) + (yy_inner_init * 28)) + (xx_outer_inner_init * 4)) + ff_outer_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 196) + (yy_inner_init * 28)) + (xx_outer_inner_init * 4)) + ff_outer_inner_init) + 392))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 196) + (yy_inner_init * 28)) + (xx_outer_inner_init * 4)) + ff_outer_inner_init) + 784))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 196) + (yy_inner_init * 28)) + (xx_outer_inner_init * 4)) + ff_outer_inner_init) + 1176))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 46; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 40; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 3136) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 1568) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 56) * 56) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 2)) % 14) * 4)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 3)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 56) * 2576) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 2)) % 14) * 184)) + (rc_outer_outer * 4)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 3)))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 8; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 320) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int xx_outer_inner = 0; xx_outer_inner < 7; ++xx_outer_inner) {
          for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
            for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
              for (int yy_inner = 0; yy_inner < 7; ++yy_inner) {
                Conv2dOutput[(((((nn_outer_inner * 196) + (yy_inner * 28)) + (xx_outer_inner * 4)) + ff_outer_inner))] = (Conv2dOutput[(((((nn_outer_inner * 196) + (yy_inner * 28)) + (xx_outer_inner * 4)) + ff_outer_inner))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 20) * 1568) + (nn_outer_inner * 784)) + (yy_inner * 56)) + (((((int)threadIdx.x) % 20) / 10) * 28)) + (xx_outer_inner * 4)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 160) + (rc_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ff_outer_inner))]));
                Conv2dOutput[((((((nn_outer_inner * 196) + (yy_inner * 28)) + (xx_outer_inner * 4)) + ff_outer_inner) + 392))] = (Conv2dOutput[((((((nn_outer_inner * 196) + (yy_inner * 28)) + (xx_outer_inner * 4)) + ff_outer_inner) + 392))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 20) * 1568) + (nn_outer_inner * 784)) + (yy_inner * 56)) + (((((int)threadIdx.x) % 20) / 10) * 28)) + (xx_outer_inner * 4)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 160) + (rc_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ff_outer_inner) + 40))]));
                Conv2dOutput[((((((nn_outer_inner * 196) + (yy_inner * 28)) + (xx_outer_inner * 4)) + ff_outer_inner) + 784))] = (Conv2dOutput[((((((nn_outer_inner * 196) + (yy_inner * 28)) + (xx_outer_inner * 4)) + ff_outer_inner) + 784))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 20) * 1568) + (nn_outer_inner * 784)) + (yy_inner * 56)) + (((((int)threadIdx.x) % 20) / 10) * 28)) + (xx_outer_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 392))] * placeholder_shared[(((((rc_outer_inner * 160) + (rc_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ff_outer_inner))]));
                Conv2dOutput[((((((nn_outer_inner * 196) + (yy_inner * 28)) + (xx_outer_inner * 4)) + ff_outer_inner) + 1176))] = (Conv2dOutput[((((((nn_outer_inner * 196) + (yy_inner * 28)) + (xx_outer_inner * 4)) + ff_outer_inner) + 1176))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 20) * 1568) + (nn_outer_inner * 784)) + (yy_inner * 56)) + (((((int)threadIdx.x) % 20) / 10) * 28)) + (xx_outer_inner * 4)) + (rc_outer_inner * 2)) + rc_inner) + 392))] * placeholder_shared[((((((rc_outer_inner * 160) + (rc_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ff_outer_inner) + 40))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
          T_add[(((((((((((int)threadIdx.x) / 20) * 31360) + (ax0_inner * 15680)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 20) / 10) * 560)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ax3_inner))] = ((Conv2dOutput[(((((ax0_inner * 196) + (ax1_inner * 28)) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) % 10) * 4) + ax3_inner))]) + placeholder3[(((((((((((int)threadIdx.x) / 20) * 31360) + (ax0_inner * 15680)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 20) / 10) * 560)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ax3_inner))]);
          T_add[((((((((((((int)threadIdx.x) / 20) * 31360) + (ax0_inner * 15680)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 20) / 10) * 560)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ax3_inner) + 40))] = ((Conv2dOutput[((((((ax0_inner * 196) + (ax1_inner * 28)) + (ax2_inner * 4)) + ax3_inner) + 392))] + placeholder2[(((((((int)threadIdx.x) % 10) * 4) + ax3_inner) + 40))]) + placeholder3[((((((((((((int)threadIdx.x) / 20) * 31360) + (ax0_inner * 15680)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 20) / 10) * 560)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ax3_inner) + 40))]);
          T_add[((((((((((((int)threadIdx.x) / 20) * 31360) + (ax0_inner * 15680)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 20) / 10) * 560)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ax3_inner) + 7840))] = ((Conv2dOutput[((((((ax0_inner * 196) + (ax1_inner * 28)) + (ax2_inner * 4)) + ax3_inner) + 784))] + placeholder2[((((((int)threadIdx.x) % 10) * 4) + ax3_inner))]) + placeholder3[((((((((((((int)threadIdx.x) / 20) * 31360) + (ax0_inner * 15680)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 20) / 10) * 560)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ax3_inner) + 7840))]);
          T_add[((((((((((((int)threadIdx.x) / 20) * 31360) + (ax0_inner * 15680)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 20) / 10) * 560)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ax3_inner) + 7880))] = ((Conv2dOutput[((((((ax0_inner * 196) + (ax1_inner * 28)) + (ax2_inner * 4)) + ax3_inner) + 1176))] + placeholder2[(((((((int)threadIdx.x) % 10) * 4) + ax3_inner) + 40))]) + placeholder3[((((((((((((int)threadIdx.x) / 20) * 31360) + (ax0_inner * 15680)) + (ax1_inner * 1120)) + (((((int)threadIdx.x) % 20) / 10) * 560)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 10) * 4)) + ax3_inner) + 7880))]);
        }
      }
    }
  }
}


