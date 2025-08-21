
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[2176];
  __shared__ float placeholder_shared[8704];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 8; ++ff_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 32) + (ff_outer_inner_init * 4)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 32) + (ff_outer_inner_init * 4)) + 64))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 32) + (ff_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 32) + (ff_outer_inner_init * 4)) + 65))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 32) + (ff_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 32) + (ff_outer_inner_init * 4)) + 66))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 32) + (ff_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 32) + (ff_outer_inner_init * 4)) + 67))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 68; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) / 544) * 34816) + ((((int)blockIdx.x) >> 2) * 17408)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 544) / 136) * 4352)) + ((((int)blockIdx.x) & 3) * 1088)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 136) / 68) * 544)) + (rc_outer_outer * 68)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 68)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 272; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 32) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 8704) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 32)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 8; ++ff_outer_inner) {
          for (int rc_inner = 0; rc_inner < 34; ++rc_inner) {
            Conv2dOutput[(((yy_outer_inner * 32) + (ff_outer_inner * 4)))] = (Conv2dOutput[(((yy_outer_inner * 32) + (ff_outer_inner * 4)))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 272) + (yy_outer_inner * 136)) + (((((int)threadIdx.x) & 7) >> 2) * 68)) + (rc_outer_inner * 34)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 4352) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 4)))]));
            Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 64))] = (Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 64))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 272) + (yy_outer_inner * 136)) + (((((int)threadIdx.x) & 7) >> 2) * 68)) + (rc_outer_inner * 34)) + rc_inner) + 1088))] * placeholder_shared[(((((rc_outer_inner * 4352) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 4)))]));
            Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 1))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 272) + (yy_outer_inner * 136)) + (((((int)threadIdx.x) & 7) >> 2) * 68)) + (rc_outer_inner * 34)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 4352) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 4)) + 1))]));
            Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 65))] = (Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 65))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 272) + (yy_outer_inner * 136)) + (((((int)threadIdx.x) & 7) >> 2) * 68)) + (rc_outer_inner * 34)) + rc_inner) + 1088))] * placeholder_shared[((((((rc_outer_inner * 4352) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 4)) + 1))]));
            Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 2))] = (Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 2))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 272) + (yy_outer_inner * 136)) + (((((int)threadIdx.x) & 7) >> 2) * 68)) + (rc_outer_inner * 34)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 4352) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 4)) + 2))]));
            Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 66))] = (Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 66))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 272) + (yy_outer_inner * 136)) + (((((int)threadIdx.x) & 7) >> 2) * 68)) + (rc_outer_inner * 34)) + rc_inner) + 1088))] * placeholder_shared[((((((rc_outer_inner * 4352) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 4)) + 2))]));
            Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 3))] = (Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 3))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 272) + (yy_outer_inner * 136)) + (((((int)threadIdx.x) & 7) >> 2) * 68)) + (rc_outer_inner * 34)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 4352) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 4)) + 3))]));
            Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 67))] = (Conv2dOutput[((((yy_outer_inner * 32) + (ff_outer_inner * 4)) + 67))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 3) * 272) + (yy_outer_inner * 136)) + (((((int)threadIdx.x) & 7) >> 2) * 68)) + (rc_outer_inner * 34)) + rc_inner) + 1088))] * placeholder_shared[((((((rc_outer_inner * 4352) + (rc_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + (ff_outer_inner * 4)) + 3))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 32; ++ax3_inner) {
      T_relu[(((((((((((int)threadIdx.x) >> 4) * 8192) + ((((int)blockIdx.x) >> 2) * 4096)) + (((((int)threadIdx.x) & 15) >> 3) * 2048)) + (ax1_inner * 1024)) + ((((int)blockIdx.x) & 3) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 32) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 3) * 32) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 4) * 8192) + ((((int)blockIdx.x) >> 2) * 4096)) + (((((int)threadIdx.x) & 15) >> 3) * 2048)) + (ax1_inner * 1024)) + ((((int)blockIdx.x) & 3) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax3_inner) + 16384))] = max((Conv2dOutput[((((ax1_inner * 32) + ax3_inner) + 64))] + placeholder2[((((((int)threadIdx.x) & 3) * 32) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


