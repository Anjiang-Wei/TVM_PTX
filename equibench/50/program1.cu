
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
  float Conv2dOutput[1800];
  __shared__ float PaddedInput_shared[10800];
  __shared__ float placeholder_shared[36];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 4; ++nn_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 15; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 5; ++xx_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 450) + (yy_inner_init * 30)) + (xx_inner_init * 6)))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 450) + (yy_inner_init * 30)) + (xx_inner_init * 6)) + 1))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 450) + (yy_inner_init * 30)) + (xx_inner_init * 6)) + 2))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 450) + (yy_inner_init * 30)) + (xx_inner_init * 6)) + 3))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 450) + (yy_inner_init * 30)) + (xx_inner_init * 6)) + 4))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 450) + (yy_inner_init * 30)) + (xx_inner_init * 6)) + 5))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 24; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 1800; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 6) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 450) * 518400) + ((((int)blockIdx.x) >> 3) * 129600)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 450) / 30) * 8640)) + (((((int)blockIdx.x) & 7) >> 2) * 4320)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 30) * 144)) + (rc_outer_outer * 6)) + ((int)threadIdx.x)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 144) + ((((int)blockIdx.x) & 3) * 6)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 6))] = placeholder1[(((((rc_outer_outer * 144) + ((((int)blockIdx.x) & 3) * 6)) + ((int)threadIdx.x)) + 24))];
    placeholder_shared[((((int)threadIdx.x) + 12))] = placeholder1[(((((rc_outer_outer * 144) + ((((int)blockIdx.x) & 3) * 6)) + ((int)threadIdx.x)) + 48))];
    placeholder_shared[((((int)threadIdx.x) + 18))] = placeholder1[(((((rc_outer_outer * 144) + ((((int)blockIdx.x) & 3) * 6)) + ((int)threadIdx.x)) + 72))];
    placeholder_shared[((((int)threadIdx.x) + 24))] = placeholder1[(((((rc_outer_outer * 144) + ((((int)blockIdx.x) & 3) * 6)) + ((int)threadIdx.x)) + 96))];
    placeholder_shared[((((int)threadIdx.x) + 30))] = placeholder1[(((((rc_outer_outer * 144) + ((((int)blockIdx.x) & 3) * 6)) + ((int)threadIdx.x)) + 120))];
    __syncthreads();
    for (int nn_outer_inner = 0; nn_outer_inner < 4; ++nn_outer_inner) {
      for (int rc_inner = 0; rc_inner < 6; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 15; ++yy_inner) {
          for (int xx_inner = 0; xx_inner < 5; ++xx_inner) {
            Conv2dOutput[((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)))] = (Conv2dOutput[((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)))] + (PaddedInput_shared[((((((nn_outer_inner * 2700) + (yy_inner * 180)) + (((int)threadIdx.x) * 30)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[((rc_inner * 6))]));
            Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 1))] = (Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 1))] + (PaddedInput_shared[((((((nn_outer_inner * 2700) + (yy_inner * 180)) + (((int)threadIdx.x) * 30)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[(((rc_inner * 6) + 1))]));
            Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 2))] = (Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 2))] + (PaddedInput_shared[((((((nn_outer_inner * 2700) + (yy_inner * 180)) + (((int)threadIdx.x) * 30)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[(((rc_inner * 6) + 2))]));
            Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 3))] = (Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 3))] + (PaddedInput_shared[((((((nn_outer_inner * 2700) + (yy_inner * 180)) + (((int)threadIdx.x) * 30)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[(((rc_inner * 6) + 3))]));
            Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 4))] = (Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 4))] + (PaddedInput_shared[((((((nn_outer_inner * 2700) + (yy_inner * 180)) + (((int)threadIdx.x) * 30)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[(((rc_inner * 6) + 4))]));
            Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 5))] = (Conv2dOutput[(((((nn_outer_inner * 450) + (yy_inner * 30)) + (xx_inner * 6)) + 5))] + (PaddedInput_shared[((((((nn_outer_inner * 2700) + (yy_inner * 180)) + (((int)threadIdx.x) * 30)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[(((rc_inner * 6) + 5))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 15; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 6; ++ax3_inner) {
          T_add[(((((((((ax0_inner * 86400) + ((((int)blockIdx.x) >> 3) * 21600)) + (ax1_inner * 1440)) + (((((int)blockIdx.x) & 7) >> 2) * 720)) + (((int)threadIdx.x) * 120)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 3) * 6)) + ax3_inner))] = (placeholder2[(((((((((ax0_inner * 86400) + ((((int)blockIdx.x) >> 3) * 21600)) + (ax1_inner * 1440)) + (((((int)blockIdx.x) & 7) >> 2) * 720)) + (((int)threadIdx.x) * 120)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 3) * 6)) + ax3_inner))] + (Conv2dOutput[(((((ax0_inner * 450) + (ax1_inner * 30)) + (ax2_inner * 6)) + ax3_inner))] + placeholder3[((((((int)blockIdx.x) & 3) * 6) + ax3_inner))]));
        }
      }
    }
  }
}


