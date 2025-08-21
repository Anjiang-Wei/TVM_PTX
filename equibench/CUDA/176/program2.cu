
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
  float Conv2dOutput[36];
  __shared__ float PaddedInput_shared[36];
  __shared__ float placeholder_shared[72];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 3; ++xx_outer_inner_init) {
    for (int nn_inner_init = 0; nn_inner_init < 4; ++nn_inner_init) {
      Conv2dOutput[(((nn_inner_init * 3) + xx_outer_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 3) + xx_outer_inner_init) + 12))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 3) + xx_outer_inner_init) + 24))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 24; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 5; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 36) {
        if (((int)threadIdx.x) < 8) {
          PaddedInput_shared[(((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 9) * 86400) + ((((int)blockIdx.x) / 20) * 4320)) + (((((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 9) / 3) * 1440)) + ((((int)blockIdx.x) % 20) * 72)) + ((((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 3) * 24)) + rc_outer_outer))];
        }
      }
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 72) + ((int)threadIdx.x)))];
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 3; ++xx_outer_inner) {
      for (int nn_inner = 0; nn_inner < 4; ++nn_inner) {
        Conv2dOutput[(((nn_inner * 3) + xx_outer_inner))] = (Conv2dOutput[(((nn_inner * 3) + xx_outer_inner))] + (PaddedInput_shared[(((nn_inner * 9) + xx_outer_inner))] * placeholder_shared[(((int)threadIdx.x))]));
        Conv2dOutput[((((nn_inner * 3) + xx_outer_inner) + 12))] = (Conv2dOutput[((((nn_inner * 3) + xx_outer_inner) + 12))] + (PaddedInput_shared[((((nn_inner * 9) + xx_outer_inner) + 3))] * placeholder_shared[(((int)threadIdx.x))]));
        Conv2dOutput[((((nn_inner * 3) + xx_outer_inner) + 24))] = (Conv2dOutput[((((nn_inner * 3) + xx_outer_inner) + 24))] + (PaddedInput_shared[((((nn_inner * 9) + xx_outer_inner) + 6))] * placeholder_shared[(((int)threadIdx.x))]));
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      T_relu[((((((ax0_inner * 259200) + ((((int)blockIdx.x) / 20) * 12960)) + ((((int)blockIdx.x) % 20) * 216)) + (ax2_inner * 72)) + ((int)threadIdx.x)))] = max((Conv2dOutput[(((ax0_inner * 3) + ax2_inner))] + placeholder2[(((int)threadIdx.x))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 259200) + ((((int)blockIdx.x) / 20) * 12960)) + ((((int)blockIdx.x) % 20) * 216)) + (ax2_inner * 72)) + ((int)threadIdx.x)) + 4320))] = max((Conv2dOutput[((((ax0_inner * 3) + ax2_inner) + 12))] + placeholder2[(((int)threadIdx.x))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 259200) + ((((int)blockIdx.x) / 20) * 12960)) + ((((int)blockIdx.x) % 20) * 216)) + (ax2_inner * 72)) + ((int)threadIdx.x)) + 8640))] = max((Conv2dOutput[((((ax0_inner * 3) + ax2_inner) + 24))] + placeholder2[(((int)threadIdx.x))]), 0.000000e+00f);
    }
  }
}


