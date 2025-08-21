
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
  __shared__ float PaddedInput_shared[2048];
  __shared__ float placeholder_shared[8192];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 1))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 2))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 3))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 4))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 5))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 6))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 7))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 16))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 17))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 18))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 19))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 20))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 21))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 22))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 64) + (yy_outer_inner_init * 32)) + (ff_outer_inner_init * 8)) + 23))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 64; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) >> 10) * 131072) + ((((int)blockIdx.x) >> 5) * 65536)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) & 1023) >> 6) * 4096)) + ((((int)blockIdx.x) & 31) * 128)) + (rc_outer_outer * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) & 63)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 256; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 32) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 8192) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 32)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 64; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
          for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
            Conv2dOutput[((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)))] = (Conv2dOutput[((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)))] + (PaddedInput_shared[(((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 1))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 1))] + (PaddedInput_shared[(((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 1))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 2))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 2))] + (PaddedInput_shared[(((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 2))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 3))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 3))] + (PaddedInput_shared[(((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 3))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 4))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 4))] + (PaddedInput_shared[(((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 4))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 5))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 5))] + (PaddedInput_shared[(((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 5))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 6))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 6))] + (PaddedInput_shared[(((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 6))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 7))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 7))] + (PaddedInput_shared[(((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 7))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 16))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 16))] + (PaddedInput_shared[((((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner) + 64))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 17))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 17))] + (PaddedInput_shared[((((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner) + 64))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 1))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 18))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 18))] + (PaddedInput_shared[((((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner) + 64))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 2))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 19))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 19))] + (PaddedInput_shared[((((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner) + 64))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 3))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 20))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 20))] + (PaddedInput_shared[((((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner) + 64))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 4))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 21))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 21))] + (PaddedInput_shared[((((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner) + 64))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 5))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 22))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 22))] + (PaddedInput_shared[((((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner) + 64))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 6))]));
            Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 23))] = (Conv2dOutput[(((((nn_outer_inner * 64) + (yy_outer_inner * 32)) + (ff_outer_inner * 8)) + 23))] + (PaddedInput_shared[((((((nn_outer_inner * 1024) + ((((int)threadIdx.x) >> 3) * 256)) + (yy_outer_inner * 128)) + rc_outer_inner) + 64))] * placeholder_shared[(((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (ff_outer_inner * 8)) + 7))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
        T_relu[((((((((ax0_inner * 131072) + ((((int)blockIdx.x) >> 5) * 65536)) + ((((int)threadIdx.x) >> 3) * 16384)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) & 31) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 64) + (ax1_inner * 16)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 7) * 16) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


