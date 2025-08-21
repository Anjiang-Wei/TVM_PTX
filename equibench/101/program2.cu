
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
  float Conv2dOutput[6272];
  __shared__ float PaddedInput_shared[392];
  __shared__ float placeholder_shared[64];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 7; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        for (int xx_inner_init = 0; xx_inner_init < 14; ++xx_inner_init) {
          Conv2dOutput[(((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 1))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 2))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 3))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 4))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 5))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 6))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 7))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 8))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 9))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 10))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 11))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 12))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 13))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 14))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 3136) + (yy_outer_inner_init * 448)) + (xx_inner_init * 32)) + (ff_outer_inner_init * 16)) + 15))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 192; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 392; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer)] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 196) * 75264) + ((((int)blockIdx.x) >> 2) * 37632)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 196) >> 1) * 384)) + (rc_outer_outer * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer & 1)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 64; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1)] = placeholder1[(((((rc_outer_outer * 256) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 & 31)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 7; ++yy_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
          for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
            for (int xx_inner = 0; xx_inner < 14; ++xx_inner) {
              Conv2dOutput[(((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)))] = (Conv2dOutput[(((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 32) + (ff_outer_inner * 16)))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 1))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 1))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 1))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 2))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 2))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 2))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 3))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 3))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 3))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 4))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 4))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 4))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 5))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 5))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 5))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 6))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 6))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 6))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 7))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 7))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 7))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 8))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 8))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 8))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 9))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 9))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 9))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 10))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 10))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 10))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 11))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 11))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 11))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 12))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 12))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 12))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 13))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 13))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 13))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 14))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 14))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 14))]));
              Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 15))] = (Conv2dOutput[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (xx_inner * 32)) + (ff_outer_inner * 16)) + 15))] + (PaddedInput_shared[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (xx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (ff_outer_inner * 16)) + 15))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 32; ++ax3_inner) {
          T_relu[(((((((ax0_inner * 25088) + ((((int)blockIdx.x) >> 2) * 12544)) + (ax1_inner * 1792)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 3136) + (ax1_inner * 448)) + (ax2_inner * 32)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) & 3) * 32) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


