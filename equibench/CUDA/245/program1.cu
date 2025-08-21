
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
  float Conv2dOutput[512];
  __shared__ float PaddedInput_shared[6144];
  __shared__ float placeholder_shared[3072];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 16; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 16) + (ff_outer_inner_init * 2)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 16) + (ff_outer_inner_init * 2)) + 256))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 16) + (ff_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 16) + (ff_outer_inner_init * 2)) + 257))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 16) + (ff_outer_inner_init * 2)) + 8))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 16) + (ff_outer_inner_init * 2)) + 264))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 16) + (ff_outer_inner_init * 2)) + 9))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 16) + (ff_outer_inner_init * 2)) + 265))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 384; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) / 96) * 12288) + ((((int)blockIdx.x) >> 1) * 384)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 96) / 48) * 192)) + (rc_outer_outer * 48)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 48)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 192; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 6144) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) & 63)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 16; ++yy_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 48; ++rc_inner) {
          Conv2dOutput[(((yy_outer_inner * 16) + (ff_outer_inner * 2)))] = (Conv2dOutput[(((yy_outer_inner * 16) + (ff_outer_inner * 2)))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 3072) + (yy_outer_inner * 192)) + (((((int)threadIdx.x) & 7) >> 2) * 48)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 8)) + (ff_outer_inner * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 256))] = (Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 256))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 3072) + (yy_outer_inner * 192)) + (((((int)threadIdx.x) & 7) >> 2) * 48)) + rc_inner))] * placeholder_shared[(((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 8)) + (ff_outer_inner * 2)) + 32))]));
          Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 3072) + (yy_outer_inner * 192)) + (((((int)threadIdx.x) & 7) >> 2) * 48)) + rc_inner))] * placeholder_shared[(((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 8)) + (ff_outer_inner * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 257))] = (Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 257))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 3072) + (yy_outer_inner * 192)) + (((((int)threadIdx.x) & 7) >> 2) * 48)) + rc_inner))] * placeholder_shared[(((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 8)) + (ff_outer_inner * 2)) + 33))]));
          Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 8))] = (Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 3072) + (yy_outer_inner * 192)) + (((((int)threadIdx.x) & 7) >> 2) * 48)) + rc_inner) + 96))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 8)) + (ff_outer_inner * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 264))] = (Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 264))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 3072) + (yy_outer_inner * 192)) + (((((int)threadIdx.x) & 7) >> 2) * 48)) + rc_inner) + 96))] * placeholder_shared[(((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 8)) + (ff_outer_inner * 2)) + 32))]));
          Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 9))] = (Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 9))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 3072) + (yy_outer_inner * 192)) + (((((int)threadIdx.x) & 7) >> 2) * 48)) + rc_inner) + 96))] * placeholder_shared[(((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 8)) + (ff_outer_inner * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 265))] = (Conv2dOutput[((((yy_outer_inner * 16) + (ff_outer_inner * 2)) + 265))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 3072) + (yy_outer_inner * 192)) + (((((int)threadIdx.x) & 7) >> 2) * 48)) + rc_inner) + 96))] * placeholder_shared[(((((rc_inner * 64) + ((((int)threadIdx.x) & 3) * 8)) + (ff_outer_inner * 2)) + 33))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 32; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_relu[(((((((((((int)threadIdx.x) >> 3) * 262144) + (ax1_inner * 8192)) + ((((int)blockIdx.x) >> 1) * 256)) + (((((int)threadIdx.x) & 7) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 8) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 3) * 262144) + (ax1_inner * 8192)) + ((((int)blockIdx.x) >> 1) * 256)) + (((((int)threadIdx.x) & 7) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner) + 32))] = max((Conv2dOutput[((((ax1_inner * 8) + ax3_inner) + 256))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner) + 32))]), 0.000000e+00f);
    }
  }
}


