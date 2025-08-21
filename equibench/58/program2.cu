
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
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[3072];
  __shared__ float placeholder_shared[9216];
  for (int xx_inner_init = 0; xx_inner_init < 4; ++xx_inner_init) {
    for (int ff_inner_init = 0; ff_inner_init < 4; ++ff_inner_init) {
      Conv2dOutput[(((xx_inner_init * 4) + ff_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 4) + ff_inner_init) + 16))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 6; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 64; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)))] = (((1 <= (((((int)blockIdx.x) >> 3) * 4) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) >> 9))) && ((((((int)blockIdx.x) >> 3) * 4) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) >> 9)) < 9)) ? placeholder[(((((((((int)blockIdx.x) >> 3) * 12288) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) >> 6) * 384)) + (rc_outer_outer * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) & 63)) - 3072))] : 0.000000e+00f);
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 192; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 48) + ((int)threadIdx.x)))] = placeholder1[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 >> 6) * 147456) + (rc_outer_outer * 24576)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 & 63) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int ry_inner = 0; ry_inner < 3; ++ry_inner) {
      for (int rc_inner = 0; rc_inner < 64; ++rc_inner) {
        for (int xx_inner = 0; xx_inner < 4; ++xx_inner) {
          for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
            Conv2dOutput[(((xx_inner * 4) + ff_inner))] = (Conv2dOutput[(((xx_inner * 4) + ff_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 12) * 512) + (ry_inner * 512)) + (xx_inner * 64)) + rc_inner))] * placeholder_shared[(((((ry_inner * 3072) + (rc_inner * 48)) + ((((int)threadIdx.x) % 12) * 4)) + ff_inner))]));
            Conv2dOutput[((((xx_inner * 4) + ff_inner) + 16))] = (Conv2dOutput[((((xx_inner * 4) + ff_inner) + 16))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 512) + (ry_inner * 512)) + (xx_inner * 64)) + rc_inner) + 256))] * placeholder_shared[(((((ry_inner * 3072) + (rc_inner * 48)) + ((((int)threadIdx.x) % 12) * 4)) + ff_inner))]));
          }
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 3072)) + (ax2_inner * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) % 12) * 4)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 4) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) % 12) * 4)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 3072)) + (ax2_inner * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) % 12) * 4)) + ax3_inner) + 1536))] = max((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) % 12) * 4)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


