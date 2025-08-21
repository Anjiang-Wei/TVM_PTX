
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
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[512];
  __shared__ float placeholder_shared[256];
  for (int ff_inner_init = 0; ff_inner_init < 4; ++ff_inner_init) {
    Conv2dOutput[(ff_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((ff_inner_init + 4))] = 0.000000e+00f;
    Conv2dOutput[((ff_inner_init + 8))] = 0.000000e+00f;
    Conv2dOutput[((ff_inner_init + 12))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 18; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 64; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)) >> 7) * 147456) + ((((int)blockIdx.x) >> 4) * 2304)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)) & 127) >> 5) * 576)) + (rc_outer_outer * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)) & 31)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 32; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 4096) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128)) + ((((int)blockIdx.x) & 15) * 8)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 32; ++rc_outer_inner) {
      for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
        Conv2dOutput[(ff_inner)] = (Conv2dOutput[(ff_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 128) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + ff_inner))]));
        Conv2dOutput[((ff_inner + 4))] = (Conv2dOutput[((ff_inner + 4))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 128) + rc_outer_inner) + 32))] * placeholder_shared[((((rc_outer_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + ff_inner))]));
        Conv2dOutput[((ff_inner + 8))] = (Conv2dOutput[((ff_inner + 8))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 128) + rc_outer_inner) + 64))] * placeholder_shared[((((rc_outer_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + ff_inner))]));
        Conv2dOutput[((ff_inner + 12))] = (Conv2dOutput[((ff_inner + 12))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 128) + rc_outer_inner) + 96))] * placeholder_shared[((((rc_outer_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + ff_inner))]));
      }
    }
  }
  for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
    T_relu[(((((((((int)threadIdx.x) >> 1) * 32768) + ((((int)blockIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 15) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner))] = max((Conv2dOutput[(ax3_inner)] + placeholder2[(((((((int)blockIdx.x) & 15) * 8) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner))]), 0.000000e+00f);
    T_relu[((((((((((int)threadIdx.x) >> 1) * 32768) + ((((int)blockIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 15) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 128))] = max((Conv2dOutput[((ax3_inner + 4))] + placeholder2[(((((((int)blockIdx.x) & 15) * 8) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner))]), 0.000000e+00f);
    T_relu[((((((((((int)threadIdx.x) >> 1) * 32768) + ((((int)blockIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 15) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 256))] = max((Conv2dOutput[((ax3_inner + 8))] + placeholder2[(((((((int)blockIdx.x) & 15) * 8) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner))]), 0.000000e+00f);
    T_relu[((((((((((int)threadIdx.x) >> 1) * 32768) + ((((int)blockIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 15) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 384))] = max((Conv2dOutput[((ax3_inner + 12))] + placeholder2[(((((((int)blockIdx.x) & 15) * 8) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner))]), 0.000000e+00f);
  }
}


