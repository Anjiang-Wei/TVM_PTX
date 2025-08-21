
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
  float Conv2dOutput[3136];
  __shared__ float PaddedInput_shared[6272];
  __shared__ float placeholder_shared[256];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 7; ++yy_outer_inner_init) {
    for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
      for (int yy_inner_init = 0; yy_inner_init < 4; ++yy_inner_init) {
        for (int xx_inner_init = 0; xx_inner_init < 7; ++xx_inner_init) {
          Conv2dOutput[(((((nn_inner_init * 196) + (yy_outer_inner_init * 28)) + (yy_inner_init * 7)) + xx_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 196) + (yy_outer_inner_init * 28)) + (yy_inner_init * 7)) + xx_inner_init) + 392))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 196) + (yy_outer_inner_init * 28)) + (yy_inner_init * 7)) + xx_inner_init) + 784))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 196) + (yy_outer_inner_init * 28)) + (yy_inner_init * 7)) + xx_inner_init) + 1176))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 196) + (yy_outer_inner_init * 28)) + (yy_inner_init * 7)) + xx_inner_init) + 1568))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 196) + (yy_outer_inner_init * 28)) + (yy_inner_init * 7)) + xx_inner_init) + 1960))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 196) + (yy_outer_inner_init * 28)) + (yy_inner_init * 7)) + xx_inner_init) + 2352))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 196) + (yy_outer_inner_init * 28)) + (yy_inner_init * 7)) + xx_inner_init) + 2744))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 196; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[(((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1024) + ((((int)threadIdx.x) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      ((float2*)(placeholder_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64) + (((int)threadIdx.x) * 2)))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 512) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) * 2)))))[0];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 7; ++yy_outer_inner) {
      for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
        for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
          for (int yy_inner = 0; yy_inner < 4; ++yy_inner) {
            for (int xx_inner = 0; xx_inner < 7; ++xx_inner) {
              Conv2dOutput[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner))] = (Conv2dOutput[(((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner))] + (PaddedInput_shared[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (yy_inner * 112)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[(((rc_inner * 64) + ((int)threadIdx.x)))]));
              Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 392))] = (Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 392))] + (PaddedInput_shared[((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (yy_inner * 112)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((int)threadIdx.x)) + 32))]));
              Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 784))] = (Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 784))] + (PaddedInput_shared[(((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (yy_inner * 112)) + (xx_inner * 4)) + rc_inner) + 28))] * placeholder_shared[(((rc_inner * 64) + ((int)threadIdx.x)))]));
              Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 1176))] = (Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 1176))] + (PaddedInput_shared[(((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (yy_inner * 112)) + (xx_inner * 4)) + rc_inner) + 28))] * placeholder_shared[((((rc_inner * 64) + ((int)threadIdx.x)) + 32))]));
              Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 1568))] = (Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 1568))] + (PaddedInput_shared[(((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (yy_inner * 112)) + (xx_inner * 4)) + rc_inner) + 56))] * placeholder_shared[(((rc_inner * 64) + ((int)threadIdx.x)))]));
              Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 1960))] = (Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 1960))] + (PaddedInput_shared[(((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (yy_inner * 112)) + (xx_inner * 4)) + rc_inner) + 56))] * placeholder_shared[((((rc_inner * 64) + ((int)threadIdx.x)) + 32))]));
              Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 2352))] = (Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 2352))] + (PaddedInput_shared[(((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (yy_inner * 112)) + (xx_inner * 4)) + rc_inner) + 84))] * placeholder_shared[(((rc_inner * 64) + ((int)threadIdx.x)))]));
              Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 2744))] = (Conv2dOutput[((((((nn_inner * 196) + (yy_outer_inner * 28)) + (yy_inner * 7)) + xx_inner) + 2744))] + (PaddedInput_shared[(((((((nn_inner * 3136) + (yy_outer_inner * 448)) + (yy_inner * 112)) + (xx_inner * 4)) + rc_inner) + 84))] * placeholder_shared[((((rc_inner * 64) + ((int)threadIdx.x)) + 32))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 28; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
        T_relu[((((((ax0_inner * 100352) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)))] = max((Conv2dOutput[((((ax0_inner * 196) + (ax1_inner * 7)) + ax2_inner))] + placeholder2[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 100352) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)) + 32))] = max((Conv2dOutput[(((((ax0_inner * 196) + (ax1_inner * 7)) + ax2_inner) + 392))] + placeholder2[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) + 32))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 100352) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)) + 896))] = max((Conv2dOutput[(((((ax0_inner * 196) + (ax1_inner * 7)) + ax2_inner) + 784))] + placeholder2[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 100352) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)) + 928))] = max((Conv2dOutput[(((((ax0_inner * 196) + (ax1_inner * 7)) + ax2_inner) + 1176))] + placeholder2[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) + 32))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 100352) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)) + 1792))] = max((Conv2dOutput[(((((ax0_inner * 196) + (ax1_inner * 7)) + ax2_inner) + 1568))] + placeholder2[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 100352) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)) + 1824))] = max((Conv2dOutput[(((((ax0_inner * 196) + (ax1_inner * 7)) + ax2_inner) + 1960))] + placeholder2[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) + 32))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 100352) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)) + 2688))] = max((Conv2dOutput[(((((ax0_inner * 196) + (ax1_inner * 7)) + ax2_inner) + 2352))] + placeholder2[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 100352) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)) + 2720))] = max((Conv2dOutput[(((((ax0_inner * 196) + (ax1_inner * 7)) + ax2_inner) + 2744))] + placeholder2[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) + 32))]), 0.000000e+00f);
      }
    }
  }
}


